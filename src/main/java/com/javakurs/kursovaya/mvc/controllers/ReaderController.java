package com.javakurs.kursovaya.mvc.controllers;

import com.javakurs.kursovaya.beans.User;
import com.javakurs.kursovaya.javaconfig.Reader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;

/**
 * Created by QuantumCat on 14.05.2017.
 */


@Controller
@RequestMapping(value = "/reader")
@SessionAttributes( value = "authUser")
public class ReaderController {

    public void init(ModelMap model, HttpSession httpSession)
    {
        if(httpSession.getAttribute("authUser")==null)
        {
            model.addAttribute("user", new User());
        }
    }

    @RequestMapping(value = "/{bookId}", method = RequestMethod.GET)
    public String read(@PathVariable int bookId, ModelMap model, HttpSession httpSession)
    {
        init(model, httpSession);


            //model.addAttribute("glav", glav);
        //String[] glav= Reader.reader(str);
       // model.addAttribute("size",glav.length);
        model.addAttribute("id", bookId);
        return "/catalog/book/pdfreader";
    }

}
