package com.food.service.impl;

import com.food.mapper.CommentMapper;
import com.food.pojo.Comment;
import com.food.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    CommentMapper commentMapper;

    @Override
    public List<Comment> showFoodComment(Integer fid) {

        return commentMapper.selFoodComment(fid);
    }

    @Override
    public int insCommentInfo(Comment comment) {

        return commentMapper.insCommentByFoodid(comment);
    }

}
