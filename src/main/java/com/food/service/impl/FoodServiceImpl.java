package com.food.service.impl;

import com.food.mapper.FoodMapper;
import com.food.pojo.Food;
import com.food.service.FoodService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FoodServiceImpl implements FoodService {

    @Autowired
    FoodMapper foodMapper;

    // 所有食品
    @Override
    public List<Food> shoAllFood() {
        return foodMapper.selAllFood();
    }

    // 新产品
    @Override
    public List<Food> shoSomeFood() {
        return foodMapper.selSomeFood();
    }

    // 某个食品的信息
    @Override
    public Food seacherOneFood(int id) {
        return foodMapper.selOneFood(id);
    }

    @Override
    public List<Food> pagingFoodShow(Integer pagNum,Integer pageSize) {

        int startIndex=0;
        if(pagNum ==null){
            pagNum=1;
        }
        if(pageSize == null){
            pageSize=6;
        }
        startIndex=(pagNum-1)*6;

        return foodMapper.PageShow(startIndex,pageSize);
    }

    @Override
    public PageInfo<Food> selectForPage(Integer pageNum, Integer pageSize) {

        if(pageNum == null) {
            pageNum = 1;
        }
        if (pageSize == null) {
            pageSize = 6;
        }
        // 构建分页参数对象Page
        PageHelper.startPage(pageNum, 3);

        List<Food> foods =foodMapper.selAllFood();

        PageInfo<Food> foodPageInfo =new PageInfo<>(foods);
        return foodPageInfo;
    }


    @Override
    public List<Food> showFoodByType(String type) {

        return foodMapper.foodTypePaging(type);
    }


}
