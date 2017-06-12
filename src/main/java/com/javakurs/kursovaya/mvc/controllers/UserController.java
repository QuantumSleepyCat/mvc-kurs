package com.javakurs.kursovaya.mvc.controllers;

import com.javakurs.kursovaya.beans.Bookmarks;
import com.javakurs.kursovaya.beans.User;
import com.javakurs.kursovaya.beans.collections.BookmarksCollection;
import com.javakurs.kursovaya.service.ServiceHost;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.HttpStatusCodeException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

/**
 * Created by QuantumCat on 08.05.2017.
 */
@Controller
@SessionAttributes( value = "authUser")
@RequestMapping(value = "/user")
public class UserController {


    public void init(ModelMap model, HttpSession httpSession)
    {
        if(httpSession.getAttribute("authUser")==null)
        {
            model.addAttribute("user", new User());
        }
    }

//    @RequestMapping(value = "/authorization",method = RequestMethod.POST)
//    public ModelAndView authorization(@Valid @ModelAttribute User user)
//    {
//
//        String uri = ServiceHost.getUrl("user/authorization");
//        System.out.println(user.getLogin());
//        System.out.println(user.getPass());
//        ModelAndView modelAndView = new ModelAndView("redirect:/");//it's stupid
//        User user1=new User();
//        user1.setLogin("admin");
//        user1.setPass("admin");
//        user1.setEmail("sdas");
//        user1.setId(23);
//        user1.setRole("user");
//
//        MultiValueMap<String, Object> headers = new LinkedMultiValueMap<String, Object>();
//        headers.add("Accept", "application/json");
//        headers.add("Content-Type", "application/json");
//        RestTemplate restTemplate = new RestTemplate();
//        ResponseEntity<User> userResponseEntity = null;
//        try {
//            System.out.println("sssss");
//            userResponseEntity = restTemplate.postForEntity(uri, user1, User.class, headers);   // the same
//            System.out.println(userResponseEntity.getBody());
//        } catch (HttpStatusCodeException e) {
//            e.printStackTrace();
//        }
//
//
//        //user.setIdUser(1L);
//        user = userResponseEntity.getBody();
//        System.out.println(user);
//        modelAndView.addObject("authUser", user);
//        // System.out.println(user);
//        return modelAndView;
//
//    }

    @RequestMapping(value = "test", method = RequestMethod.GET)
    public ModelAndView test()
    {
        ModelAndView modelAndView = new ModelAndView("");//it's stupid


        final String uri = "http://localhost:8085/books-service/user/test";

        User user = new User(2, "asdad","dssad","adasd","asdsa");

        RestTemplate restTemplate = new RestTemplate();
        User result = restTemplate.postForObject( uri, user, User.class);

        return modelAndView;

    }

    @RequestMapping(value = "/authorization", method = RequestMethod.POST)
    public ModelAndView auth(@Valid @ModelAttribute User user) {
        String uri = ServiceHost.getUrl("user/authorization");
        ModelAndView modelAndView = new ModelAndView("redirect:/");//it's stupid

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<User> userResponseEntity = null;
        try {
            System.out.println("sssss");
            userResponseEntity = restTemplate.postForEntity(uri, user, User.class);   // the same
            System.out.println(userResponseEntity.getBody());
        } catch (HttpStatusCodeException e) {
            e.printStackTrace();
        }


        //user.setIdUser(1L);
        user = userResponseEntity.getBody();
        System.out.println(user);
        modelAndView.addObject("authUser", user);
        // System.out.println(user);
        return modelAndView;
    }

    @RequestMapping(value = "/profile/{id}",method = RequestMethod.GET)
    public String getProfile(@PathVariable int id, ModelMap model, HttpSession httpSession)
    {
        init(model, httpSession);
        RestTemplate rest = new RestTemplate();
        String uri= ServiceHost.getUrl("user/"+id);
        User user = rest.getForObject(uri, User.class);
        RestTemplate rest2 = new RestTemplate();
        BookmarksCollection bookmarksCollection = rest2.getForObject(ServiceHost.getUrl("user/profile/"+id), BookmarksCollection.class);
        System.out.println(user.getLogin());
        for(Bookmarks b : bookmarksCollection.getBookmarksList())
       {
           System.out.println(b.getBook().getTitle());
      }
        Bookmarks bookmarks = rest2.getForObject(ServiceHost.getUrl("user/bo/"+id), Bookmarks.class);
        System.out.println(bookmarks.getBook().getTitle());
        model.addAttribute("login", user.getLogin());
        model.addAttribute("date", "01.01.1990");
        model.addAttribute("pol", "Мужской");
        model.addAttribute("role",user.getRole());
        model.addAttribute("bookmarks",bookmarksCollection.getBookmarksList());

        return "/user/profile";
    }

    @RequestMapping(value = "/exit", method = RequestMethod.GET)
    public ModelAndView exit()
    {
        ModelAndView modelAndView = new ModelAndView("redirect:/");
        modelAndView.addObject("authUser", new User());
        return modelAndView;
    }


    public static boolean isUser(@ModelAttribute("authUser") User user) {
        if (user.getRole() == null) return false;
        return user.getRole() == "user" ? true : false;
    }


    public static boolean isAdmin(@ModelAttribute("authUser") User user) {
        return user.getRole() == "admin" ? true : false;
    }


}
