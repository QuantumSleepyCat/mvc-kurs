package com.javakurs.kursovaya.beans.collections;

import com.javakurs.kursovaya.beans.News;

import java.util.List;

/**
 * Created by QuantumCat on 05.05.2017.
 */
public class NewsCollect {

    public NewsCollect(){}
    private List<News> list = null;

    public void setList(List<News> list) {
        this.list = list;
    }

    public List<News> getList() {
        return list;
    }

}
