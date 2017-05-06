package com.javakurs.kursovaya.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by QuantumCat on 06.05.2017.
 */

@Controller
@RequestMapping(value = "/books")
public class BooksController {

    @RequestMapping(method = RequestMethod.GET)
    public String getBooksPage(ModelMap model)
    {




        return "/catalog/books";
    }

}
