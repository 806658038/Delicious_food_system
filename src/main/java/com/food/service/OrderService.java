package com.food.service;

import com.food.pojo.Order;
import com.food.pojo.dto.OrderDto;

import java.util.List;

public interface OrderService {

    public int insNewOrder(OrderDto orderDto);

    public List<Order> showAllOrder(int uid);

    int delMyOrders(Integer uid,Integer id);

}
