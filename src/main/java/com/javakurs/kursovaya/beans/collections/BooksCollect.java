package com.javakurs.kursovaya.beans.collections;

import com.javakurs.kursovaya.beans.Book;

import java.util.List;

/**
 * Created by QuantumCat on 06.05.2017.
 */
public class BooksCollect {
    public BooksCollect(){}

    private List<Book> booksCollects=null;

    public void setBooksCollects(List<Book> booksCollects) {
        this.booksCollects = booksCollects;
    }

    public List<Book> getBooksCollects() {
        return booksCollects;
    }
}
