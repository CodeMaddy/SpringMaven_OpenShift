package com.springmaven.model;

/**
 * Created by Gourav on 1/13/2017.
 */
public class Spa {

    private int spaId;
    private String vendorEmail;
    private String vendorSaloonName;
    private String spaName;
    private String spaDesc;
    private String spaFor;
    private float spaPrice;
    private float spaDiscount;
    private String[] spaPics;

    public int getSpaId() {
        return spaId;
    }

    public void setSpaId(int spaId) {
        this.spaId = spaId;
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

    public String getSpaName() {
        return spaName;
    }

    public void setSpaName(String spaName) {
        this.spaName = spaName;
    }

    public String getSpaDesc() {
        return spaDesc;
    }

    public void setSpaDesc(String spaDesc) {
        this.spaDesc = spaDesc;
    }

    public String getSpaFor() {
        return spaFor;
    }

    public void setSpaFor(String spaFor) {
        this.spaFor = spaFor;
    }

    public float getSpaPrice() {
        return spaPrice;
    }

    public void setSpaPrice(float spaPrice) {
        this.spaPrice = spaPrice;
    }

    public float getSpaDiscount() {
        return spaDiscount;
    }

    public void setSpaDiscount(float spaDiscount) {
        this.spaDiscount = spaDiscount;
    }

    public String[] getSpaPics() {
        return spaPics;
    }

    public void setSpaPics(String[] spaPics) {
        this.spaPics = spaPics;
    }
}
