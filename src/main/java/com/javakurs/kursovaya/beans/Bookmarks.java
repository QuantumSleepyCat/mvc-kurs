package com.javakurs.kursovaya.beans;

/**
 * Created by QuantumCat on 15.05.2017.
 */
public class Bookmarks {

    private long id;
    private Book book;
    private User user;

    public long getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Bookmarks(){}

    public Bookmarks(int id,Book book, User user)
    {
        this.id=id;
        this.book=book;
        this.user=user;
    }
}
