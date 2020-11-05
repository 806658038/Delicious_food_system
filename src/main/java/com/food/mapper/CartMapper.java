package com.food.mapper;

import com.food.pojo.Cart;
import org.apache.ibatis.annotations.*;
import org.omg.PortableInterceptor.INACTIVE;

import java.util.List;

public interface CartMapper {

    // 查找 是否 加入相同的商品
    @Select("select cid from cart where uid=#{uid} and fid=#{fid}")
    Cart selCartByUidAndFid(@Param("uid") Integer uid,@Param("fid") Integer fid);

    // 加入购物车
    @Insert("insert into cart(uid,fid,number)  values(#{uid},#{fid},#{number})")
    int insFoodInMyCart(@Param("uid")Integer uid,@Param("fid")Integer fid,@Param("number")Integer number);

    // 展示 购物车
    @Select("select c.cid,f.id fid,f.food_name,f.img,f.descr,f.unit_price,number " +
            "from cart c,food f " +
            "where c.fid=f.id and uid=#{uid}")
    List<Cart> myCart(@Param("uid")Integer uid);

    // 减
    @Update("update cart set number=number-1 where uid=#{uid} and fid=#{fid}")
    int updMyCartReduce(@Param("uid") Integer uid,@Param("fid") Integer fid);

    // 加
    @Update("update cart set number=number+1 where uid=#{uid} and fid=#{fid}")
    int updMyCartAdd(@Param("uid") Integer uid,@Param("fid") Integer fid);

    // 删除某个商品
    @Delete("delete from cart where uid=#{uid} and fid=#{fid}")
    int delFoodsInCart(@Param("uid") Integer uid,@Param("fid") Integer fid);

    // 清理清单
    int delClearCart(@Param("uid")Integer uid,@Param("fidList") List<Integer> fid);

    @Select("select number from cart where uid=#{uid} and fid=#{fid}")
    Cart selNumById(@Param("uid") Integer uid,@Param("fid") Integer fid);

}
