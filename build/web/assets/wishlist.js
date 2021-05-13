var iWishCnt = 0;
var iWishlistmain = {};
var iWishsync = !1;
var iWishUrl = 'https://iwish.myshopapps.com/ajax/';
if (typeof iwishWrapperClass === 'undefined') { var iwishWrapperClass = 'form' }
if (typeof iWishVarSelector === 'undefined') { var iWishVarSelector = '[name=id]' }
if (typeof iWishQtySelector === 'undefined') { var iWishQtySelector = '[name=quantity]' }
if (typeof iWishSelectClass === 'undefined') { var iWishSelectClass = "#product-select, .single-option-selector, .single-option-selector__radio, select[id|='product-select'], select[id|='product-variants-option'], select[id|='variant-listbox-option']" }

function iWishPost(e, t) {
    method = "post";
    var n = document.createElement("form");
    n.setAttribute("method", method);
    n.setAttribute("action", e);
    for (var r in t) {
        if (t.hasOwnProperty(r)) {
            var i = document.createElement("input");
            i.setAttribute("type", "hidden");
            i.setAttribute("name", r);
            i.setAttribute("value", t[r]);
            n.appendChild(i)
        }
    }
    document.head.appendChild(n);
    n.submit()
}

function getSession() {
    if (typeof(Storage) !== "undefined") {
        if (iwish_cid == '' && localStorage.iWishsync == 'true') {
            localStorage.removeItem('iWishlistmain');
            localStorage.removeItem('iWishCnt');
            localStorage.removeItem('iWishsync')
        }
        if (localStorage.iWishlistmain) { iWishlistmain = JSON.parse(localStorage.getItem('iWishlistmain')) }
        if (localStorage.iWishCnt && !isNaN(localStorage.iWishCnt)) { iWishCnt = parseInt(localStorage.iWishCnt) }
        if (localStorage.iWishsync) { if (parseInt(iwish_cid) > 0 && localStorage.iWishsync == 'true') { iWishsync = !0 } }
        localStorage.setItem('iWishsync', iWishsync)
    }
}

function pushToSession() {
    if (typeof(Storage) !== "undefined") {
        if (iWishlistmain !== 'undefined') { localStorage.setItem("iWishlistmain", JSON.stringify(iWishlistmain)) }
        if (iWishCnt !== 'undefined') { localStorage.setItem("iWishCnt", iWishCnt) }
    }
}

function isInWishlist(pId, vId) { if (typeof iWishlistmain[pId] === 'undefined' || vId == null) { return !1 } else { if (iWishlistmain[pId].indexOf(vId) >= 0) { return !0 } else { return !1 } } }
getSession();

function syncWithServer() {
    var dataString = JSON.stringify(iWishlistmain);
    jQuery.ajax({
        url: iWishUrl + 'syncWishlist.php',
        data: { shop: iwish_shop, cId: iwish_cid, iwishlist: dataString },
        dataType: 'jsonp',
        jsonpCallback: 'iWishSyncCallback',
        success: function(json) {
            console.log(JSON.stringify(json));
            jQuery.extend(iWishlistmain, json.jsonDt);
            iWishCnt = json.iwishCnt;
            pushToSession();
            jQuery('.iWishCount').html(iWishCnt);
            console.log('iWishsync done :: ' + JSON.stringify(iWishlistmain));
            iWishsync = !0;
            localStorage.setItem('iWishsync', iWishsync);
            if (typeof iWishsyncFn !== 'undefined' && typeof iWishsyncFn === 'function') { iWishsyncFn() }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {}
    })
}

function checkIwish(iwishFrmObj, iWishvId) {
    var iwishCurrObj = iwishFrmObj.find('.iWishAdd');
    var iWishpId = iwishCurrObj.attr('data-product');
    var checkAganId = isInWishlist(iWishpId, iWishvId);
    console.log("checkIwish " + iWishpId + ' :: ' + iWishvId);
    if (checkAganId) { iwishCurrObj.addClass('iwishAdded').html(iwish_added_txt) } else { iwishCurrObj.removeClass('iwishAdded').html(iwish_add_txt) }
    if (typeof iWishSelectChangeFn !== 'undefined' && typeof iWishSelectChangeFn === 'function') { iWishSelectChangeFn(iwishCurrObj) }
}

function iwish_addOnly(iWishpId, iWishvId, iwishpTitle, iwishAdd) {
    if (typeof(iWishlistmain[iWishpId]) === "undefined") { iWishlistmain[iWishpId] = [] }
    console.log("Adding " + iWishpId + " :: " + iWishvId);
    if (iWishlistmain[iWishpId].indexOf(iWishvId) < 0) {
        iWishlistmain[iWishpId].push(iWishvId);
        iWishCnt++;
        pushToSession();
        jQuery(".iWishCount").html(iWishCnt);
        if (parseInt(iwish_cid) > 0) {
            var iWishQty = 1;
            if (iwishAdd.parents(iwishWrapperClass).find(iWishQtySelector).length > 0) { iWishQty = iwishAdd.parents(iwishWrapperClass).find(iWishQtySelector).val() }
            jQuery.ajax({
                url: iWishUrl + 'iwishAdd.php',
                data: { shop: iwish_shop, cId: iwish_cid, pId: iWishpId, vId: iWishvId, pTitle: iwishpTitle, qty: iWishQty },
                dataType: "jsonp",
                jsonpCallback: "iWishAddCallback",
                success: function(json) {
                    console.log("iwish_add added :: shop: " + iwish_shop + " cId: " + iwish_cid + " pId: " + iWishpId + " vId: " + iWishvId + " pTitle: " + iwishpTitle + " qty: " + iWishQty)
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) { console.log("iwish_add errorThrown: " + errorThrown) }
            })
        }
    }
}

function iwish_add(iwishAdd, iWishvId) {
    var iWishpId = iwishAdd.attr("data-product");
    if (iwishAdd.hasClass("iwishAdded") || iWishvId == null || iWishpId == null) { return !1 }
    var iwishpTitle = iwishAdd.attr("data-pTitle");
    iwish_addOnly(iWishpId, iWishvId, iwishpTitle, iwishAdd);
    if (iWishlistmain[iWishpId].indexOf(iWishvId) >= 0) {
        iwishAdd.addClass("iwishAdded").html(iwish_added_txt);
        if (iwish_cid == '') {
            var iwishFrmObj = iwishAdd.parents(iwishWrapperClass);
            iwishFrmObj.find(".iWishLoginMsg").fadeIn(500);
            setTimeout(function() { iwishFrmObj.find('.iWishLoginMsg').fadeOut() }, 6000)
        }
    }
    if (typeof iWishAddFn !== 'undefined' && typeof iWishAddFn === 'function') { iWishAddFn() }
}

function iwish_addCollection(iwishAdd, iWishvId) {
    var iWishpId = iwishAdd.attr("data-product");
    if (iwishAdd.hasClass("iwishAdded") || iWishvId == null || iWishpId == null) { return !1 }
    var iwishpTitle = iwishAdd.attr("data-pTitle");
    iwish_addOnly(iWishpId, iWishvId, iwishpTitle, iwishAdd);
    if (iWishlistmain[iWishpId].indexOf(iWishvId) >= 0) { iwishAdd.addClass("iwishAdded").html(iwish_added_txt_col) }
    if (typeof iWishaddCollFn !== 'undefined' && typeof iWishaddCollFn === 'function') { iWishaddCollFn() }
}

function iwish_remove(iwishRemove, vId, iwishProxy) {
    var returnTp = !1;
    pId = iwishRemove.attr("data-product");
    if (typeof iWishlistmain[pId] === 'undefined') { return returnTp }
    console.log('iwish remove :: ' + vId);
    var delindex = iWishlistmain[pId].indexOf(vId);
    if (delindex >= 0) {
        iWishlistmain[pId].splice(delindex, 1);
        if (Object.keys(iWishlistmain[pId]).length == 0) { delete iWishlistmain[pId] }
        if (iWishCnt > 0) { iWishCnt-- }
        jQuery('.iWishCount').html(iWishCnt);
        pushToSession();
        var iwishProxy = iwishProxy || !1;
        if (iwishProxy == !1) { iwishRemove.removeClass("iwishAdded") }
        if (parseInt(iwish_cid) > 0) { jQuery.ajax({ url: iWishUrl + 'iwishRemove.php', data: { shop: iwish_shop, cId: iwish_cid, pId: pId, vId: vId }, dataType: 'jsonp', jsonpCallback: 'iWishRemoveCallback', success: function(json) {}, error: function(XMLHttpRequest, textStatus, errorThrown) {} }) }
        returnTp = !0
    }
    if (typeof iWishRemoveFn !== 'undefined' && typeof iWishRemoveFn === 'function') { iWishRemoveFn() }
    return returnTp
}

function iwish_initQV() {
    setTimeout(function() {
        if (jQuery(iwish_qvWrapper + ':visible').find('.iWishAdd').length > 0) {
            var iWishvarId = jQuery(iwish_qvWrapper + ':visible').find(iWishVarSelector).val();
            if (iWishvarId != '') { checkIwish(jQuery(iwish_qvWrapper + ':visible').find(iwishWrapperClass), iWishvarId) }
            if (typeof iWishQvFn !== 'undefined' && typeof iWishQvFn === 'function') { iWishQvFn() }
        } else { iwish_initQV() }
    }, 300)
}

function iwish_updateQty(iWishvarId, iwishProQty) { jQuery.ajax({ url: iWishUrl + 'iwishUpdateQty.php', data: { shop: iwish_shop, cId: iwish_cid, iwishpQty: iwishProQty, vId: iWishvarId }, dataType: "jsonp", jsonpCallback: "iWishUpdateQtyCallback", success: function(json) {}, error: function(XMLHttpRequest, textStatus, errorThrown) {} }); if (typeof iwishUpdateQtyFn !== 'undefined' && typeof iwishUpdateQtyFn === 'function') { iwishUpdateQtyFn() } }

function iwishInit() {
    var iCanUseOn = !!jQuery.fn.on;
    if (iwish_pro_template) { var iwishProductWrap = jQuery(".iWishAdd:visible").parents(iwishWrapperClass); var iWishvarId = iwishProductWrap.find(iWishVarSelector).val(); if (iWishvarId != '') { checkIwish(iwishProductWrap, iWishvarId) } }
    jQuery(".iWishCount").html(iWishCnt);
    if (parseInt(iwish_cid) > 0) {
        if (!iWishsync) {
            console.log("Sync Need to be done");
            syncWithServer()
        }
    }
    if (typeof iwish_qvButton !== 'undefined' && typeof iwish_qvWrapper !== 'undefined') { if (iCanUseOn) { jQuery("body").on('click', iwish_qvButton, function() { iwish_initQV() }) } else { jQuery("body").delegate(iwish_qvButton, 'click', function() { iwish_initQV() }) } }
    if (iCanUseOn) {
        jQuery(document).on('change', iWishSelectClass, function() {
            selectedClass = jQuery(this).parents(iwishWrapperClass);
            setTimeout(function() { var iWishvarId = selectedClass.find(iWishVarSelector).val(); if (iWishvarId != '') { checkIwish(selectedClass, iWishvarId) } else { selectedClass.removeClass('iwishAdded').html(iwish_add_txt) } }, 400)
        })
    } else {
        jQuery(document).delegate(iWishSelectClass, 'change', function() {
            selectedClass = jQuery(this).parents(iwishWrapperClass);
            setTimeout(function() { var iWishvarId = selectedClass.find(iWishVarSelector).val(); if (iWishvarId != '') { checkIwish(selectedClass, iWishvarId) } else { selectedClass.removeClass('iwishAdded').html(iwish_add_txt) } }, 400)
        })
    }
    if (typeof iWishinitFn !== 'undefined' && typeof iWishinitFn === 'function') { iWishinitFn() }
    jQuery(".iwishRemoveBtn").click(function() {
        if (jQuery(this).hasClass('iwishRemoved')) { return !1 }
        var currentVid = jQuery(this).attr('data-variant');
        if (iwish_remove(jQuery(this), currentVid, !0)) {
            jQuery(this).addClass('iwishRemoved');
            jQuery(this).parents('.iwishItem').remove();
            jQuery(".iwishMsgSuccess").show();
            setTimeout(function() { jQuery(".iwishMsgSuccess").fadeOut(); if (iWishCnt == 0) { jQuery(".iwishMsgInfo").fadeIn() } }, 3000)
        }
        return !1
    });
    jQuery("input[name=iwishProQuantity]").change(function() {
        var iwishInpQty = jQuery(this);
        var iwishProQty = parseInt(iwishInpQty.val());
        var iWishvarId = iwishInpQty.parents(".iwishItem").find(iWishVarSelector).val();
        if (parseInt(iwish_cid) > 0) {
            if (iwishProQty > 0) {
                iwish_updateQty(iWishvarId, iwishProQty);
                iwishInpQty.parents('.iwishItem').find('[name=quantity]').val(iwishProQty);
                iwishInpQty.addClass('iwishProQtyAdded');
                setTimeout(function() { iwishInpQty.removeClass('iwishProQtyAdded') }, 2000);
                iwishInpQty.parents('.iwishItem').find('.iwishQtyMsg').fadeIn().delay(3000).fadeOut()
            } else {
                iwishInpQty.val(1).addClass('iwishProQtyError');
                setTimeout(function() { iwishInpQty.removeClass('iwishProQtyError') }, 1000)
            }
        }
    })
}
if (window.addEventListener) { window.addEventListener("load", iwishInit, !0) } else if (window.attachEvent) { window.attachEvent("onload", iwishInit) } else { window.onload = iwishInit }