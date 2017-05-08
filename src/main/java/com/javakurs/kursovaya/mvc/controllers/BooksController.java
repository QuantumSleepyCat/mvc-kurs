package com.javakurs.kursovaya.mvc.controllers;

import com.javakurs.kursovaya.beans.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;

/**
 * Created by QuantumCat on 06.05.2017.
 */

@Controller
@RequestMapping(value = "/books")
@SessionAttributes( value = "authUser")
public class BooksController {

    @RequestMapping(method = RequestMethod.GET)
    public String getBooksPage(ModelMap model, HttpSession httpSession)
    {
        if(httpSession.getAttribute("authUser")==null)
        {
            model.addAttribute("user", new User());
        }



        return "/catalog/books";
    }

}
