package com.javakurs.kursovaya.mvc.controllers;

import com.javakurs.kursovaya.beans.User;
import com.javakurs.kursovaya.beans.collections.AdminCollection;
import com.javakurs.kursovaya.beans.collections.BooksCollect;
import com.javakurs.kursovaya.service.ServiceHost;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;

/**
 * Created by QuantumCat on 15.05.2017.
 */
@Controller
@RequestMapping(value = "/admin")
@SessionAttributes( value = "authUser")
public class AdminController {

    public void init(ModelMap model, HttpSession httpSession)
    {
        if(httpSession.getAttribute("authUser")==null)
        {
            model.addAttribute("user", new User());
        }
    }


    @RequestMapping(method = RequestMethod.GET)
    public String adminTools(ModelMap model, HttpSession httpSession)
    {
        init(model,httpSession);

        RestTemplate rest = new RestTemplate();

        String uri= ServiceHost.getUrl("admin/getall");
        AdminCollection booksCollect=rest.getForObject(uri, AdminCollection.class);
        model.addAttribute("users",booksCollect.getUserList());
        model.addAttribute("news", booksCollect.getNewsList());
        model.addAttribute("books", booksCollect.getBookList());
        return "/admin/admin";
    }


}
