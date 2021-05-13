/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author wasat
 */
public class Products {
    
    
    private int product_id;
    private String title;
    private String description;
    private int price;
    private int discount;
    private int quantity;
    private String mainCate;
    private String subCate;
    private String feature;
    private String default_image;
    private String sub_image1;
    private String sub_image2;
    private String sub_image3;
    private int stockPrice;
    private int status;
    private String material_color;
    private String stone;
    private Date created_on;
    private Date updated_on;

    public Products() {
    }



    public Date getUpdated_on() {
        return updated_on;
    }

    public void setUpdated_on(Date updated_on) {
        this.updated_on = updated_on;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getMainCate() {
        return mainCate;
    }

    public void setMainCate(String mainCate) {
        this.mainCate = mainCate;
    }

    public String getSubCate() {
        return subCate;
    }

    public void setSubCate(String subCate) {
        this.subCate = subCate;
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }

    public String getDefault_image() {
        return default_image;
    }

    public void setDefault_image(String default_image) {
        this.default_image = default_image;
    }

    public String getSub_image1() {
        return sub_image1;
    }

    public void setSub_image1(String sub_image1) {
        this.sub_image1 = sub_image1;
    }

    public String getSub_image2() {
        return sub_image2;
    }

    public void setSub_image2(String sub_image2) {
        this.sub_image2 = sub_image2;
    }

    public String getSub_image3() {
        return sub_image3;
    }

    public void setSub_image3(String sub_image3) {
        this.sub_image3 = sub_image3;
    }

    public int getStockPrice() {
        return stockPrice;
    }

    public void setStockPrice(int stockPrice) {
        this.stockPrice = stockPrice;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getCreated_on() {
        return created_on;
    }

    public void setCreated_on(Date created_on) {
        this.created_on = created_on;
    }

    /**
     * @return the material_color
     */
    public String getMaterial_color() {
        return material_color;
    }

    /**
     * @param material_color the material_color to set
     */
    public void setMaterial_color(String material_color) {
        this.material_color = material_color;
    }

    /**
     * @return the stone
     */
    public String getStone() {
        return stone;
    }

    /**
     * @param stone the stone to set
     */
    public void setStone(String stone) {
        this.stone = stone;
    }
    
    
    
}
