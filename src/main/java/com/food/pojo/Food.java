package com.food.pojo;

import java.io.Serializable;

public class Food implements Serializable {
    private Integer id;
    private String foodName;
    private String img;
    private double unitPrice;
    private  String type;
    private String descr;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    @Override
    public String toString() {
        return "Food{" +
                "id=" + id +
                ", foodName='" + foodName + '\'' +
                ", img='" + img + '\'' +
                ", unitPrice=" + unitPrice +
                ", type='" + type + '\'' +
                ", descr='" + descr + '\'' +
                '}';
    }

}
