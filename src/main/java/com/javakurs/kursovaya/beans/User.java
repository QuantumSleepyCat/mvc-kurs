package com.javakurs.kursovaya.beans;


import java.util.ArrayList;
import java.util.List;

/**
 * Created by QuantumCat on 05.05.2017.
 */

public class User {

    private long id;

    private String login;

    private String pass;

    private String role;

    private String email;


    public User(){
        this.id=0;
        this.login=null;
        this.pass=null;
        this.role=null;
        this.email=null;
    }

    public User(long id, String login, String pass, String role, String email)
    {
        this.id=id;
        this.login=login;
        this.pass=pass;
        this.role=role;
        this.email=email;
    }

    private List<Bookmarks> bookmarksList;

    public List<Bookmarks> getBookmarksList() {
        return bookmarksList;
    }

    public void setBookmarksList(List<Bookmarks> bookmarksList) {
        this.bookmarksList = bookmarksList;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getEmail() {
        return email;
    }

    public String getRole() {
        return role;
    }

    public String getLogin() {
        return login;
    }

    public long getId() {
        return id;
    }

    public String getPass() {
        return pass;
    }
}
