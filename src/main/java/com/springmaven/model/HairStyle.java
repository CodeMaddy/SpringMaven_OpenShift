package com.springmaven.model;

public class HairStyle {

    private int hairstyleId;
    private String hairstyleName;
    private String hairstyleFor;
    private String[] hairstylePics;
    private String saloonName;
    private String saloonEmail;
    private String[] suitableFor;
    private float actualPrice;
    private float discount;
    private String hairstyleDescription;

    public int getHairstyleId() {
        return hairstyleId;
    }

    public void setHairstyleId(int hairstyleId) {
        this.hairstyleId = hairstyleId;
    }

    public String getHairstyleName() {
        return hairstyleName;
    }

    public void setHairstyleName(String hairstyleName) {
        this.hairstyleName = hairstyleName;
    }

    public String getHairstyleFor() {
        return hairstyleFor;
    }

    public void setHairstyleFor(String hairstyleFor) {
        this.hairstyleFor = hairstyleFor;
    }

    public String getSaloonName() {
        return saloonName;
    }

    public String[] getHairstylePics() {
        return hairstylePics;
    }

    public void setHairstylePics(String[] hairstylePics) {
        this.hairstylePics = hairstylePics;
    }

    public void setSaloonName(String saloonName) {
        this.saloonName = saloonName;
    }

    public String getSaloonEmail() {
        return saloonEmail;
    }

    public void setSaloonEmail(String saloonEmail) {
        this.saloonEmail = saloonEmail;
    }

    public String[] getSuitableFor() {
        return suitableFor;
    }

    public void setSuitableFor(String[] suitableFor) {
        this.suitableFor = suitableFor;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public String getHairstyleDescription() {
        return hairstyleDescription;
    }

    public void setHairstyleDescription(String hairstyleDescription) {
        this.hairstyleDescription = hairstyleDescription;
    }

    public float getActualPrice() {
        return actualPrice;
    }

    public void setActualPrice(float actualPrice) {
        this.actualPrice = actualPrice;
    }
}
