package com.food.pojo.dto;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

public class OrderDto {

    private Integer uid;
    private Integer fid;
    private Integer ordNumber;

    @DateTimeFormat( pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss" , timezone = "GMT+8")
    private Date time;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public Integer getOrdNumber() {
        return ordNumber;
    }

    public void setOrdNumber(Integer ordNumber) {
        this.ordNumber = ordNumber;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "OrderDto{" +
                "uid=" + uid +
                ", fid='" + fid + '\'' +
                ", ordNumber='" + ordNumber + '\'' +
                ", time=" + time +
                '}';
    }

}
