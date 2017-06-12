package com.javakurs.kursovaya.beans.collections;

import com.javakurs.kursovaya.beans.Bookmarks;

import java.util.List;

/**
 * Created by QuantumCat on 15.05.2017.
 */
public class BookmarksCollection {

    public BookmarksCollection() {
    }

    private List<Bookmarks> bookmarksList = null;

    public void setBookmarksList(List<Bookmarks> bookmarksList) {
        this.bookmarksList = bookmarksList;
    }

    public List<Bookmarks> getBookmarksList() {
        return bookmarksList;
    }
}
