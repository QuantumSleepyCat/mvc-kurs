package com.javakurs.kursovaya.beans;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by QuantumCat on 06.05.2017.
 */
public class Book {
    private long id;
    private String title;
    private String author;
    private String genre;
    private String description;
    private int year;
    private String date;
    private String time;
    private String edition;
    private float reit;
    private int count_people;
    private User user;
    private List<Links> linksList = new ArrayList<>();
    public Book(){}
    private List<Comments> commentsList=new ArrayList<>();

    public Book(long id, String title, String author, String genre, String description, int year, String date, String time, String edition, float reit,int count_people, User user)
    {
        this.id=id;
        this.title=title;
        this.author=author;
        this.genre=genre;
        this.description=description;
        this.year=year;
        this.date=date;
        this.time=time;
        this.edition=edition;
        this.reit=reit;
        this.count_people=count_people;
        this.user=user;
    }

    public void setLinksList(List<Links> linksList) {
        this.linksList = linksList;
    }

    public List<Links> getLinksList() {
        return linksList;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setCommentsList(List<Comments> commentsList) {
        this.commentsList = commentsList;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setCount_people(int count_people) {
        this.count_people = count_people;
    }

    public void setEdition(String edition) {
        this.edition = edition;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public void setReit(float reit) {
        this.reit = reit;
    }

    public String getTitle() {
        return title;
    }

    public String getTime() {
        return time;
    }

    public User getUser() {
        return user;
    }

    public String getDescription() {
        return description;
    }

    public List<Comments> getCommentsList() {
        return commentsList;
    }

    public String getDate() {
        return date;
    }

    public float getReit() {
        return reit;
    }

    public int getCount_people() {
        return count_people;
    }

    public int getYear() {
        return year;
    }

    public long getId() {
        return id;
    }

    public String getAuthor() {
        return author;
    }

    public String getEdition() {
        return edition;
    }

    public String getGenre() {
        return genre;
    }
}
