package com.food.test;

import com.food.pojo.Customer;
import com.food.pojo.Order;
import com.food.pojo.dto.OrderDto;
import com.food.service.CustomerService;
import com.food.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext.xml")
public class OrderTest {

    @Autowired
    OrderService orderServiceImpl;

    //  生成订单
    @Test
    public void getNewOrderTest(){
        OrderDto orderDto = new OrderDto();
        orderDto.setUid(1);
        orderDto.setFid(1);
        orderDto.setOrdNumber(2);
        orderDto.setTime((java.sql.Date) new Date());
        System.out.println(orderServiceImpl.insNewOrder(orderDto));
    }

    // 查询该用户所有的订单
    @Test
    public void allOrderTest(){
        System.out.println(orderServiceImpl.showAllOrder(1));
    }

    // 删除订单
    @Test
    public void delOrderTest(){
        System.out.println(orderServiceImpl.delMyOrders(1,1));
    }



}
