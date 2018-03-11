package com.labratorij.gameshop.controller;


import com.labratorij.gameshop.entity.ClientEntity;
import com.labratorij.gameshop.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "/")
public class MainController {

    @Autowired
    private ClientService clientService;

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public List<ClientEntity> index() {
        return clientService.getAll();
    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(ModelMap model) {
        model.addAttribute("clients", clientService.getAll());
        return "welcome";
    }

}
