package com.javakurs.kursovaya.beans;

/**
 * Created by QuantumCat on 06.05.2017.
 */
public class Links {

    private long id;

    private String link;

    private Book book;

    public Links(){}

    public Links(long id, String link, Book book)
    {
        this.id=id;
        this.link=link;
        this.book=book;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public long getId() {
        return id;
    }

    public Book getBook() {
        return book;
    }

    public String getLink() {
        return link;
    }

}
