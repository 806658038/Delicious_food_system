package com.food.service.impl;

import com.food.mapper.CartMapper;
import com.food.pojo.Cart;
import com.food.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    CartMapper cartMapper;

    @Override
    public Cart CheckCartFood(Integer uid, Integer fid) {
        return cartMapper.selCartByUidAndFid(uid,fid);
    }

    @Override
    public int insMyCart(Integer uid, Integer fid, Integer number) {

        return cartMapper.insFoodInMyCart(uid,fid,number);
    }

    @Override
    public List<Cart> selMyCart(Integer uid) {
        return cartMapper.myCart(uid);
    }

    @Override
    public int updCartReduce(Integer uid, Integer fid) {
        return cartMapper.updMyCartReduce(uid,fid);
    }

    @Override
    public int updCartAdd(Integer uid, Integer fid) {
        return cartMapper.updMyCartAdd(uid,fid);
    }

    // 清空订单
    @Override
    public int delFoodCart(Integer uid, Integer fid) {
        return cartMapper.delFoodsInCart(uid, fid);
    }

    // 清空购物车
    @Override
    public int delClearCart(Integer uid, List<Integer> fidList) {

        return cartMapper.delClearCart(uid,fidList);
    }


    @Override
    public Cart selNumCart(Integer uid, Integer fid) {
        return cartMapper.selNumById(uid,fid);
    }

}
