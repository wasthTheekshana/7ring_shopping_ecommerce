/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author wasat
 */
public class Customer {

    private int id;
    private String fname;
    private String lname;
    private String email;
    private String pwd;
    private String phone;
    private String address1;
    private String address2;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public Object fetchAdd(ArrayList<Customer> cusList, String email) {

        for (Customer u : cusList) {
            if (u.getEmail().equals(email)) {
                return u.getAddress1();
            }
        }
        return "";

    }
    
    public Object fetchemail(ArrayList<Customer> cusList, String email) {

        for (Customer u : cusList) {
            if (u.getEmail().equals(email)) {
                return u.getEmail();
            }
        }
        return "";

    }
    
    public Object fetchname(ArrayList<Customer> cusList, String email) {

        for (Customer u : cusList) {
            if (u.getEmail().equals(email)) {
                return u.getFname();
            }
        }
        return "";

    }

}
