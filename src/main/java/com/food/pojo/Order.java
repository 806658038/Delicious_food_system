package com.food.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.sql.Date;

public class Order implements Serializable {
    private Integer id;
    private String fid;
    private String foodName;
    private  String img;
    private double unitprice;
    private Integer ordnumber;
    private double totalPrice;

    @DateTimeFormat( pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss" , timezone = "GMT+8")
    private Date time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFid() {
        return fid;
    }

    public void setFid(String fid) {
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

    public double getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(double unitprice) {
        this.unitprice = unitprice;
    }

    public Integer getOrdnumber() {
        return ordnumber;
    }

    public void setOrdnumber(Integer ordnumber) {
        this.ordnumber = ordnumber;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", foodName='" + foodName + '\'' +
                ", img='" + img + '\'' +
                ", unitprice=" + unitprice +
                ", ordnumber=" + ordnumber +
                ", totalPrice=" + totalPrice +
                ", time=" + time +
                '}';
    }

}