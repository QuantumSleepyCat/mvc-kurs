package com.javakurs.kursovaya.mvc.controllers;

import com.javakurs.kursovaya.beans.Book;
import com.javakurs.kursovaya.beans.User;
import com.javakurs.kursovaya.beans.collections.BooksCollect;
import com.javakurs.kursovaya.service.ServiceHost;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by QuantumCat on 06.05.2017.
 */

@Controller
@RequestMapping(value = "/books")
@SessionAttributes( value = "authUser")
public class BooksController {


    public void init(ModelMap model, HttpSession httpSession)
    {
        if(httpSession.getAttribute("authUser")==null)
        {
            model.addAttribute("user", new User());
        }
    }

    @RequestMapping(method = RequestMethod.GET)
    public String getBooksPage(ModelMap model, HttpSession httpSession)
    {

        init(model, httpSession);

        RestTemplate rest = new RestTemplate();

        String uri= ServiceHost.getUrl("books/page/1");
        BooksCollect booksCollect=rest.getForObject(uri, BooksCollect.class);

        model.addAttribute("bookList", booksCollect.getBooksCollects());

        int count = rest.getForObject(ServiceHost.getUrl("books/count"), Integer.class);
        System.out.println(count);
        int countPage = count/10 +1;

        List<String> pageList = new ArrayList<>();

        for(int i=0;i<countPage;i++)
        {
            if(i+1!=1)
            {
                pageList.add("<li><a href=\"/books/"+(i+1)+"\" class=\"pagin\">"+(i+1)+"</a></li>");
            }
            else
            {
                pageList.add("<li><a href=\"/books\" class=\"pagin act\">"+(i+1)+"</a></li>");
            }
        }

        model.addAttribute("pageList", pageList);

        return "/catalog/books";
    }

    @RequestMapping(value = "/{page}", method = RequestMethod.GET)
    public String nextPage(@PathVariable int page, ModelMap model, HttpSession httpSession)
    {

        init(model, httpSession);

        RestTemplate rest = new RestTemplate();

        String uri= ServiceHost.getUrl("books/page/"+page);
        BooksCollect booksCollect=rest.getForObject(uri, BooksCollect.class);

        model.addAttribute("bookList", booksCollect.getBooksCollects());

        int count = rest.getForObject(ServiceHost.getUrl("books/count"), Integer.class);

        int countPage = count/10 +1;

        List<String> pageList = new ArrayList<>();

        for(int i=0;i<countPage;i++)
        {
            if(i+1!=page)
            {
                if(i+1==1){
                    pageList.add("<li><a href=\"/books\" class=\"pagin\">"+(i+1)+"</a></li>");
                }
                else {
                pageList.add("<li><a href=\"/books/"+(i+1)+"\" class=\"pagin\">"+(i+1)+"</a></li>");}
            }
            else
            {
                pageList.add("<li><a href=\"/books/"+(i+1)+"\" class=\"pagin act\">"+(i+1)+"</a></li>");
            }
        }

        model.addAttribute("pageList", pageList);

        return "/catalog/books";
    }

//    @RequestMapping(value = "/sort", method = RequestMethod.POST)
//    public String sort(@RequestParam String sort_pol, @ModelAttribute List<Book> bookList, ModelMap model)
//    {
//         //List<Book> bookList=new ArrayList<>();
//        List<Book> list = new ArrayList<>();
//        System.out.println(sort_pol);
//        if(sort_pol.equals("По рейтингу"))
//        {
//            float max=0;
//            List<Float> listReit=new ArrayList<>();
//            for(Book bo: bookList)
//            {
//                listReit.add(bo.getReit());
//            }
//            Collections.sort(listReit);
//            for(int i =0; i<bookList.size();i++)
//            {
//                for(Book bo: bookList)
//                {
//                    //listReit.add(bo.getReit());
//                    if(bo.getReit()==listReit.get(bookList.size()-1-i))
//                    {
//                        list.add(bo);
//                    }
//                }
//            }
//            model.addAttribute("bookList", list);
//        }
//
//        return "/catalog/books";
//
//    }

}
