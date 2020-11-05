package com.food.pojo;

import java.io.Serializable;
import java.util.Map;

public class Cart implements Serializable {

    private Integer cid;
    private Integer fid;
    private String foodName;
    private String img;
    private String descr;
    private double unitPrice;
    private  Integer number;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cid=" + cid +
                ", fid=" + fid +
                ", foodName='" + foodName + '\'' +
                ", img='" + img + '\'' +
                ", descr='" + descr + '\'' +
                ", unitPrice=" + unitPrice +
                ", number=" + number +
                '}';
    }

}
