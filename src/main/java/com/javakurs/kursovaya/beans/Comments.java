package com.javakurs.kursovaya.beans;

/**
 * Created by QuantumCat on 13.05.2017.
 */
public class Comments {


    private long id;

    private String message;

    private String date;

    private String time;

    private int type;

    private Book book;

    private User user;

    public void setBook(Book book) {
        this.book = book;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public Book getBook() {
        return book;
    }

    public long getId() {
        return id;
    }

    public String getDate() {
        return date;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getTime() {
        return time;
    }

    public String getMessage() {
        return message;
    }

}
