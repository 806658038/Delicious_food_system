package com.food.mapper;

import com.food.pojo.Food;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface FoodMapper {

    @Select("select * from food LIMIT 0,8")
    List<Food> selSomeFood();

    //  新产品
    @Select("select * from food")
    List<Food> selAllFood();

    @Select("select * from food where id=#{id}")
    Food selOneFood(@Param("id") int id);

    // 购物 分页
    @Select("select * from food limit  #{startIndex},#{pageSize}")
    List<Food> PageShow(@Param("startIndex") int startIndex,@Param("pageSize") int pageSize);

    @Select("select * from food where type=#{type}")
    List<Food> foodTypePaging(@Param("type")String type);

}
