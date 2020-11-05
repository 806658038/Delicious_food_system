package com.food.controller;


import com.food.pojo.Comment;
import com.food.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;

@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    CommentService commentServiceImpl;

    // 发送 评论
    @RequestMapping(value = "giveComments")
    public String insFoodComment(Integer uid,Integer fid,String descr,HttpServletRequest request){
        Comment comment = new Comment();
        comment.setUid(uid);
        comment.setFid(fid);
        comment.setImg("/view/images/author.jpg");
        comment.setTime(new Date(new java.util.Date().getTime()));
        comment.setDescr(descr);
        commentServiceImpl.insCommentInfo(comment);
        return "redirect:/food/findFoodInfo?id="+fid;

    }


}
