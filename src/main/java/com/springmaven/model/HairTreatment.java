package com.springmaven.model;

public class HairTreatment {
    private int htId;
    private String vendorEmail;
    private String vendorSaloonName;
    private String htName;
    private String htDesc;
    private String htInstruct;
    private String htQty;
    private String htFor;
    private float htPrice;
    private float htDiscount;
    private String[] htPics;

    public int getHtId() {
        return htId;
    }

    public void setHtId(int htId) {
        this.htId = htId;
    }

    public String getHtFor() {
        return htFor;
    }

    public void setHtFor(String htFor) {
        this.htFor = htFor;
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

    public String getHtName() {
        return htName;
    }

    public void setHtName(String htName) {
        this.htName = htName;
    }

    public String getHtDesc() {
        return htDesc;
    }

    public void setHtDesc(String htDesc) {
        this.htDesc = htDesc;
    }

    public String getHtInstruct() {
        return htInstruct;
    }

    public void setHtInstruct(String htInstruct) {
        this.htInstruct = htInstruct;
    }

    public String getHtQty() {
        return htQty;
    }

    public void setHtQty(String htQty) {
        this.htQty = htQty;
    }

    public float getHtPrice() {
        return htPrice;
    }

    public void setHtPrice(float htPrice) {
        this.htPrice = htPrice;
    }

    public float getHtDiscount() {
        return htDiscount;
    }

    public void setHtDiscount(float htDiscount) {
        this.htDiscount = htDiscount;
    }

    public String[] getHtPics() {
        return htPics;
    }

    public void setHtPics(String[] htPics) {
        this.htPics = htPics;
    }
}
