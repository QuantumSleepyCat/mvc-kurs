package com.javakurs.kursovaya.mvc.controllers;

import com.javakurs.kursovaya.beans.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;

/**
 * Created by QuantumCat on 15.05.2017.
 */
@Controller
@RequestMapping(value = "/stat")
@SessionAttributes( value = "authUser")
public class StatisticController {

    public void init(ModelMap model, HttpSession httpSession)
    {
        if(httpSession.getAttribute("authUser")==null)
        {
            model.addAttribute("user", new User());
        }
    }

    @RequestMapping(value = "/pie", method = RequestMethod.GET)
    public String getPie(ModelMap model, HttpSession httpSession)
    {
        init(model, httpSession);

        return "/statistics/piechart";

    }

    @RequestMapping(value = "/column", method = RequestMethod.GET)
    public String getColumn(ModelMap model, HttpSession httpSession)
    {
        init(model, httpSession);

        return "/statistics/columnchart";

    }

}
