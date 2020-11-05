package com.food.controller;


import com.food.pojo.Cart;
import com.food.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    CartService cartServiceImpl;

    // 加入购物车
    @ResponseBody
    @RequestMapping(value = "/addCart",produces = "text/html;charset=UTF-8")
    public String insMyCart(Integer uid, Integer fid, Integer number,
                            HttpServletRequest request) throws UnsupportedEncodingException {

        if(uid==null){
            return "未登录，不能操作";
        }

        Cart cart = cartServiceImpl.CheckCartFood(uid, fid);  //  检查 该商品是否 已经加入了的购物车
        int flag=0;
        if(cart==null){
            number=1;
             flag = cartServiceImpl.insMyCart(uid, fid, number);
        }else{
            flag=cartServiceImpl.updCartAdd(uid,fid);
        }
        List<Cart> carts = cartServiceImpl.selMyCart(uid);
        request.setAttribute("cartItems",carts);

        return "加入成功";
    }

    // 操作购物车
    @RequestMapping("/changeCart")
    @ResponseBody
    public void changeMyCart(Integer uid, Integer fid, String action){
        if("add".equals(action)){
            cartServiceImpl.updCartAdd(uid,fid);
        }else if("reduce".equals(action)){
            cartServiceImpl.updCartReduce(uid,fid);
        }

    }

    // 展示 我的购物车
    @RequestMapping("/showMyCart")
    public String showMyCart(Integer uid, HttpServletRequest request){
        List<Cart> carts = cartServiceImpl.selMyCart(uid);
        request.setAttribute("cartItems",carts);
        return "/view/cart";
    }

    // ajax删除某个商品
    @RequestMapping("/delMyCartAjax")
    @ResponseBody
    public void delFoodsFromMyCart(Integer uid,Integer fid, HttpServletRequest request){
        cartServiceImpl.delFoodCart(uid,fid);
    }

    // 删除某个商品
    @RequestMapping("/delMyCart")
    public String delFoodsFromCart(Integer uid,Integer fid, HttpServletRequest request){
        cartServiceImpl.delFoodCart(uid,fid);
        return "redirect:/cart/showMyCart?uid="+uid;

    }



}
