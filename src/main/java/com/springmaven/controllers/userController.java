package com.springmaven.controllers;
import com.springmaven.dao.UserDAOImpl;


import com.springmaven.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


/**
 * Created by Harsha on 11/17/2016.
 */
@Controller
public class userController {

    @Autowired
    private UserDAOImpl userDAO;


    @RequestMapping(value = "/user_signup")
    public ModelAndView helloWorld() {
        ModelAndView modelView = new ModelAndView("user_signup");
        return modelView;
    }

    @RequestMapping(value = "/userSignupSubmitForm", method = RequestMethod.POST)
    public ModelAndView userRegister(@ModelAttribute("user")User user){
              System.out.println(user.getFirstname()+""+user.getLastname()+""+user.getMail()+""+user.getPassword()+""+user.getMobilenumber());

//        String uuid = UUID.randomUUID().toString();
//        user.setPassword(uuid);
        userDAO.insertUserData(user);
        ModelAndView modelAndView=new ModelAndView("redirect:/user_signin");
        return modelAndView;
    }
     @RequestMapping(value ="/user_signin")
    public ModelAndView signin()
     {
         ModelAndView modelAndView=new ModelAndView("user_signin");
         return modelAndView;
     }

    @RequestMapping(value = "/authenticateuserLogin", method = RequestMethod.POST)
    public
    @ResponseBody
    ModelAndView authenticateuserLogin(@RequestParam String email, @RequestParam String password) {
        ModelAndView modelView = new ModelAndView("user_signin");
        System.out.println(email+password);
        User v = userDAO.authenticateuserLogin(email,password);
        if (v == null) {
            modelView.addObject("error", "Invalid Email/Password !!");
            modelView.setViewName("redirect:/hairtrt_homepage");
            return modelView;
        }

        modelView.setViewName("redirect:/hairtrt_homepage");
        return modelView;
    }




}
