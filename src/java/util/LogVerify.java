/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author wasat
 */
public class LogVerify {
    
    public static boolean isLogin(HttpServletRequest request){
		HttpSession ses=request.getSession();
		if(ses.getAttribute("isLogined")!=null
			&& ses.getAttribute("isLogined").equals(true) && ses.getAttribute("loginUser")!=null){
			return true;
		}
		return false;
	}
}
