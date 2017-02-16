package com.springmaven.model;

/**
 * Created by Harsha on 11/17/2016.
 */
public class User {
private String firstname;
    private String lastname;
    private String email;
    private String password;
    private String mobilenumber;

    public String getFirstname(){return firstname;}

    public String getLastname() {
        return lastname;
    }

    public String getMail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getMobilenumber() {
        return mobilenumber;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public void setMail(String mail) {
        this.email = mail;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setMobilenumber(String mobilenumber) {
        this.mobilenumber = mobilenumber;
    }
}
