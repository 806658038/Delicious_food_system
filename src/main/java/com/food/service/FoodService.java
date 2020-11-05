package com.food.service;

import com.food.pojo.Food;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface FoodService {

    List<Food>  shoAllFood();

    List<Food>  shoSomeFood();

    Food seacherOneFood(int id);

    List<Food>  pagingFoodShow(Integer pagNum,Integer pageSize);

    List<Food> showFoodByType(String type);

    PageInfo<Food> selectForPage(Integer pageNum, Integer pageSize);

}
