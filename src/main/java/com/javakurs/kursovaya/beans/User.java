package com.javakurs.kursovaya.beans;

/**
 * Created by QuantumCat on 05.05.2017.
 */
public class User {

    private long id;

    private String login;

    private String pass;

    private String role;

    private String email;


    public User(){}

    public User(long id, String login, String pass, String role, String email)
    {
        this.id=id;
        this.login=login;
        this.pass=pass;
        this.role=role;
        this.email=email;
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
