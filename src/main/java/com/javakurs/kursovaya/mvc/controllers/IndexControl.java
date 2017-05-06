package com.javakurs.kursovaya.mvc.controllers;
import com.javakurs.kursovaya.beans.Book;
import com.javakurs.kursovaya.beans.collections.BooksCollect;
import com.javakurs.kursovaya.beans.collections.NewsCollect;
import com.javakurs.kursovaya.service.ServiceHost;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

/**
 * Created by QuantumCat on 26.04.2017.
 */
//@RequestParam(value="name", required = false, defaultValue = "World") String name,
@Controller
public class IndexControl {


    @RequestMapping(value="/")
    public String index(ModelMap model)
    {
        String uri = ServiceHost.getUrl("news"); //"http://localhost:8085/books-service/user/1";

        RestTemplate restTemplate = new RestTemplate();
        NewsCollect result = restTemplate.getForObject(uri, NewsCollect.class);

        RestTemplate rest= new RestTemplate();
        uri= ServiceHost.getUrl("books/forindex");
        BooksCollect booksCollect=rest.getForObject(uri, BooksCollect.class);


        for(int i=0;i<3;i++) {
            //Заполнение для новостей
            model.addAttribute("title"+i,result.getList().get(i).getTitle());
            model.addAttribute("description"+i,result.getList().get(i).getDescription());
            model.addAttribute("id"+i,result.getList().get(i).getId());
           //Заполнение для книг
            model.addAttribute("idbook"+i, booksCollect.getBooksCollects().get(i).getId());
            model.addAttribute("booktitle"+i, booksCollect.getBooksCollects().get(i).getTitle());
            model.addAttribute("userAut"+i, booksCollect.getBooksCollects().get(i).getUser().getLogin());
            String timeDate= booksCollect.getBooksCollects().get(i).getDate()+" "+ booksCollect.getBooksCollects().get(i).getTime();
            model.addAttribute("time"+i, timeDate);
            model.addAttribute("bookdescrip"+i, booksCollect.getBooksCollects().get(i).getDescription());
        }
        return "/index";
    }



}
