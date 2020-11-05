package com.food.mapper;

import com.food.pojo.Comment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CommentMapper {

    @Insert("insert into comments(uid,fid,img,time,descr)  values(#{uid},#{fid},#{img},#{time},#{descr} )")
    int insCommentByFoodid(Comment comment);

    List<Comment> selFoodComment(@Param("fid") Integer fid);

}
