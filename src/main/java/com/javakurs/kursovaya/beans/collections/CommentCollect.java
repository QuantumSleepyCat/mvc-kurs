package com.javakurs.kursovaya.beans.collections;

import com.javakurs.kursovaya.beans.Comments;

import java.util.List;

/**
 * Created by QuantumCat on 13.05.2017.
 */
public class CommentCollect {
    public CommentCollect(){}

    private List<Comments> commentsListCollects=null;

    public void setCommentsListCollects(List<Comments> commentsListCollects) {
        this.commentsListCollects = commentsListCollects;
    }

    public List<Comments> getCommentsListCollects() {
        return commentsListCollects;
    }
}
