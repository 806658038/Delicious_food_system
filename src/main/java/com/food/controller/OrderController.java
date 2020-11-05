package com.food.controller;

import com.food.pojo.Cart;
import com.food.pojo.Order;
import com.food.pojo.dto.OrderDto;
import com.food.service.CartService;
import com.food.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("all")
@Controller
@RequestMapping("order")
public class OrderController {

    @Autowired
    OrderService orderServiceImpl;

    @Autowired
    CartService cartServiceImpl;

    // 生成订单
    @RequestMapping("/getNewOrder")
    public String getNewOrders(OrderDto orderDto, HttpServletRequest request) {
        orderDto.setTime(new java.sql.Date(new java.util.Date().getTime()));    // 设置时间
        Cart cart = cartServiceImpl.selNumCart(orderDto.getUid(),orderDto.getFid());
        orderDto.setOrdNumber(cart.getNumber());
        cartServiceImpl.delFoodCart(orderDto.getUid(),orderDto.getFid());
        int flag = orderServiceImpl.insNewOrder(orderDto);
        return "redirect:/cart/showMyCart?uid="+orderDto.getUid();
    }

    // 查看所有的订单
    @RequestMapping("/showAllOrders")
    public String showAllOrders(Integer uid,HttpServletRequest request) {
        List<Order> ordersList = orderServiceImpl.showAllOrder(uid);
        System.out.println(ordersList);

        request.setAttribute("orderInfo",ordersList);
        return "/view/myOrders";
    }

    //  ajax 实现生产订单
    // 清空订单
    @ResponseBody
    @RequestMapping("/getNewByAjaxOrder")
    public int getNewByAjaxOrders(OrderDto orderDto, @RequestParam("fids") String fids, HttpServletRequest request) {
        System.out.println(orderDto.getUid());

        orderDto.setTime(new java.sql.Date(new java.util.Date().getTime()));    // 设置时间
        String[] f=fids.split(",");
        List<Integer> fidList = new ArrayList<>();

        for (int i=0;i<f.length;i++){
            Integer fid =Integer.parseInt(f[i]);
            fidList.add(fid);
            orderDto.setFid(fid);
            Cart cart = cartServiceImpl.selNumCart(orderDto.getUid(),fid);
            orderDto.setOrdNumber(cart.getNumber());
            int j = orderServiceImpl.insNewOrder(orderDto);
            if(j==0){
                new RuntimeException("错误");
            }
        }

        int i = cartServiceImpl.delClearCart(orderDto.getUid(), fidList);
        return i;
    }

    // 删除订单
    @RequestMapping("delOrderByid")
    public String delOrders(Integer uid,Integer id,HttpServletRequest request){
        int flag=orderServiceImpl.delMyOrders(uid,id);
        return "redirect:/order/showAllOrders?uid="+uid;
    }


}
