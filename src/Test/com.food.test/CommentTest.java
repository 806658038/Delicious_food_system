package com.food.test;


import com.food.pojo.Comment;
import com.food.service.CommentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext.xml")
public class CommentTest {

    @Autowired
    CommentService commentServiceImpl;

    @Test
    public void insComment(){
        Comment comment =new Comment();
        comment.setUid(1);
        comment.setFid(1);
        comment.setImg("/view/images/author.jpg");
        comment.setTime(new java.sql.Date(new java.util.Date().getTime()));
        comment.setDescr("好吃");
        int flag = commentServiceImpl.insCommentInfo(comment);

    }

    @Test
    public void showComment(){
        List<Comment> comments = commentServiceImpl.showFoodComment(2);
        System.out.println(comments);

    }



}
