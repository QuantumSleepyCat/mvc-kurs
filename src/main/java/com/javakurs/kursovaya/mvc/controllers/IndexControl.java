package com.javakurs.kursovaya.mvc.controllers;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.javakurs.kursovaya.beans.News;
import com.javakurs.kursovaya.beans.NewsCollect;
import com.javakurs.kursovaya.beans.User;
import com.javakurs.kursovaya.service.ServiceHost;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by QuantumCat on 26.04.2017.
 */
//@RequestParam(value="name", required = false, defaultValue = "World") String name,
@Controller
public class IndexControl {


    @RequestMapping(value="/index")
    public String index(ModelMap model)
    {
        final String uri = ServiceHost.getUrl("news"); //"http://localhost:8085/books-service/user/1";

        RestTemplate restTemplate = new RestTemplate();
        NewsCollect result = restTemplate.getForObject(uri, NewsCollect.class);
              System.out.println(result.getList().get(0).getTitle());
        System.out.println(result.getList().get(1).getTitle());
        System.out.println(result.getList().get(2).getTitle());

        for(int i=0;i<3;i++) {
            model.addAttribute("title"+i,result.getList().get(i).getTitle());
            model.addAttribute("description"+i,result.getList().get(i).getDescription());
            model.addAttribute("id"+i,result.getList().get(i).getId());
        }
        return "/index";
    }

}
