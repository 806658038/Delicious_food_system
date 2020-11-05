package com.food.controller;

import com.food.pojo.Comment;
import com.food.pojo.Food;
import com.food.service.CommentService;
import com.food.service.FoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/food")
public class FoodController {

    @Autowired
    FoodService foodServiceImpl;

    @Autowired
    CommentService commentServiceImpl;

    // 展示 最新产品
    @RequestMapping("/showSomefoods")
    public String showFoods(HttpServletRequest request) {
        List<Food> foodsList = foodServiceImpl.shoSomeFood();
        request.setAttribute("foods",foodsList);
        return "/view/index";
    }

    // 查看某个食物 同时 也将评论查出来
    @RequestMapping("findFoodInfo")
    public String findFood(Integer id,HttpServletRequest request) {
        // 某个美食
        Food food = foodServiceImpl.seacherOneFood(id);
        request.setAttribute("foodInfo",food);
        // 评论
        List<Comment> commentsList = commentServiceImpl.showFoodComment(id);
        request.setAttribute("commentsList",commentsList);

        return "/view/single-product";
    }

    // 食品 分页 信息
    @RequestMapping("pagingFoodInfo")
    public String pagingFoodInfo(Integer pageNum,
                                  HttpServletRequest request) {

        List<Food> foodPageInfo = foodServiceImpl.pagingFoodShow(pageNum, 6);
        request.setAttribute("foodPageInfo",foodPageInfo);

        return "/view/products";
    }

    // 食品 类型查找
    @RequestMapping("FoodTypeFindInfo")
    public String FoodTypeFindInfo(String type,HttpServletRequest request) {

        List<Food> foodsList = foodServiceImpl.showFoodByType(type);
        request.setAttribute("foodsList",foodsList);
        return "/view/products";
    }



}
