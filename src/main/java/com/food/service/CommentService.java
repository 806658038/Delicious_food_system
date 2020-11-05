package com.food.service;

import com.food.pojo.Comment;

import java.util.List;

public interface CommentService {

    List<Comment> showFoodComment(Integer fid);

    int insCommentInfo(Comment comment);

}
