package com.food.mapper;

import com.food.pojo.Order;
import com.food.pojo.dto.OrderDto;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OrderMapper {
    // 生成订单
    @Insert("insert into orders(uid,fid,ord_number,time)  values(#{uid},#{fid},#{ordNumber},#{time})")
    int insOrder(OrderDto orderDto);

    // 查询某个订单
    Order selOneOrder(int id);

    // 查询所有订单
    @Select("select r.id,f.food_name,f.id fid ,f.img,unit_price,r.ord_number, unit_price*r.ord_number totalPrice,r.time " +
            "from orders r,food f  " +
            "where r.fid=f.id and uid=#{uid}")
    List<Order> selAllOrdersByUid(@Param("uid") int uid);

    @Delete("delete from orders where uid=#{uid} and id=#{id}")
    int delOrderByUidndFid(@Param("uid")Integer uid,@Param("id")Integer id);

}
