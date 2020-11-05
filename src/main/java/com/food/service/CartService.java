package com.food.service;

import com.food.pojo.Cart;

import java.util.List;

public interface CartService {

    Cart CheckCartFood(Integer uid, Integer fid);

    int insMyCart(Integer uid,Integer fid,Integer number);

    List<Cart> selMyCart(Integer uid);

    int updCartReduce(Integer uid,Integer fid);

    int updCartAdd(Integer uid,Integer fid);

    int delFoodCart( Integer uid,Integer fid);

    int delClearCart(Integer uid,List<Integer> fidList);

    Cart selNumCart(Integer uid,Integer fid);

}



