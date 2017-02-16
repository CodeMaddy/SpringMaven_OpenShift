package com.springmaven.model;

/**
 * Created by Gourav on 1/2/2017.
 */
public class SkinTreatment {

    private int stId;
    private String vendorEmail;
    private String vendorSaloonName;
    private String stName;
    private String stDesc;
    private String stFor;
    private float stPrice;
    private float stDiscount;
    private String[] stPics;

    public int getStId() {
        return stId;
    }

    public void setStId(int stId) {
        this.stId = stId;
    }

    public String getVendorEmail() {
        return vendorEmail;
    }

    public void setVendorEmail(String vendorEmail) {
        this.vendorEmail = vendorEmail;
    }

    public String getVendorSaloonName() {
        return vendorSaloonName;
    }

    public void setVendorSaloonName(String vendorSaloonName) {
        this.vendorSaloonName = vendorSaloonName;
    }

    public String getStName() {
        return stName;
    }

    public void setStName(String stName) {
        this.stName = stName;
    }

    public String getStDesc() {
        return stDesc;
    }

    public void setStDesc(String stDesc) {
        this.stDesc = stDesc;
    }

    public String getStFor() {
        return stFor;
    }

    public void setStFor(String stFor) {
        this.stFor = stFor;
    }

    public float getStPrice() {
        return stPrice;
    }

    public void setStPrice(float stPrice) {
        this.stPrice = stPrice;
    }

    public float getStDiscount() {
        return stDiscount;
    }

    public void setStDiscount(float stDiscount) {
        this.stDiscount = stDiscount;
    }

    public String[] getStPics() {
        return stPics;
    }

    public void setStPics(String[] stPics) {
        this.stPics = stPics;
    }

}
