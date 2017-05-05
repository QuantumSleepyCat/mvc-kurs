package com.javakurs.kursovaya.beans;

//import java.sql.Date;
import java.sql.Time;
import java.util.Date;

/**
 * Created by QuantumCat on 05.05.2017.
 */
public class News {


    private long id;

    private String title;

    private String description;

    private String all_info;

    private Date date;

    private String time;

    private User user;

    public News(){}

    public News(long id, String title, String description, String all_info, Date date, User user)
    {
        this.id=id;
        this.title=title;
        this.description=description;
        this.date=date;
        this.all_info=all_info;
        this.date=date;
        this.user=user;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setAll_info(String all_info) {
        this.all_info = all_info;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public Date getDate() {
        return date;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTime() {
        return time;
    }

    public String getAll_info() {
        return all_info;
    }

    public String getDescription() {
        return description;
    }

    public User getUser() {
        return user;
    }
}
