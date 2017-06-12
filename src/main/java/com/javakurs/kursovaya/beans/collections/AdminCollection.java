package com.javakurs.kursovaya.beans.collections;

import com.javakurs.kursovaya.beans.Book;
import com.javakurs.kursovaya.beans.News;
import com.javakurs.kursovaya.beans.User;

import java.util.List;

/**
 * Created by QuantumCat on 15.05.2017.
 */
public class AdminCollection {

    private List<User> userList=null;
    private List<Book> bookList=null;
    private List<News> newsList=null;

    public void setBookList(List<Book> bookList) {
        this.bookList = bookList;
    }

    public List<Book> getBookList() {
        return bookList;
    }

    public void setNewsList(List<News> newsList) {
        this.newsList = newsList;
    }

    public List<News> getNewsList() {
        return newsList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public List<User> getUserList() {
        return userList;
    }
}
