package com.food.service.impl;

import com.food.mapper.OrderMapper;
import com.food.pojo.Order;
import com.food.pojo.dto.OrderDto;
import com.food.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderMapper orderMapper;

    @Override
    public int insNewOrder(OrderDto orderDto) {

        return orderMapper.insOrder(orderDto);
    }

    @Override
    public List<Order> showAllOrder(int uid) {

        return orderMapper.selAllOrdersByUid(uid);
    }

    @Override
    public int delMyOrders(Integer uid, Integer id) {

        return orderMapper.delOrderByUidndFid(uid,id);
    }


}
