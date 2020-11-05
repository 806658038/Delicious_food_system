package com.food.test;

import com.food.pojo.Cart;
import com.food.service.CartService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext.xml")
public class CartTest {

    @Autowired
    CartService cartServiceImpl;

    @Test
    public void showCartTest(){
        System.out.println(cartServiceImpl.selMyCart(1));

    }

    @Test
    public void addCartTest(){
        System.out.println(cartServiceImpl.insMyCart(2,1,1));

    }

    @Test
    public void changeCartTest(){
        int f=cartServiceImpl.updCartAdd(1,3);
        System.out.println(f);

        int s=cartServiceImpl.updCartReduce(1,1);
        System.out.println(s);

    }

    @Test
    public void getNumCartTest(){
        Cart cart=cartServiceImpl.selNumCart(1,1);
        System.out.println(cart.getNumber());


    }







}
