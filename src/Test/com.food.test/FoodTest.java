package com.food.test;

import com.food.service.FoodService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext.xml")
public class FoodTest {

    @Autowired
    FoodService foodServiceImpl;

    @Test
    public void allFoodTest(){
        System.out.println(foodServiceImpl.shoAllFood());

    }

    @Test
    public void someFoodTest(){
        System.out.println(foodServiceImpl.shoSomeFood());

    }

    @Test
    public void findOneFoodTest(){
        System.out.println(foodServiceImpl.seacherOneFood(1));

    }

    @Test
    public void  pagingFoodTest(){
        System.out.println(foodServiceImpl.pagingFoodShow(2,6));

    }





}
