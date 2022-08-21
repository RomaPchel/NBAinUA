package ua.pchel.nbainua.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.pchel.nbainua.hibernate.repos.TeamRepository;

@Controller
@RequestMapping("/teams")
public class TeamsController {

    @Autowired
    private TeamRepository teamRepository;

    @GetMapping("/show-all")
    public String getAllPlayers(Model model){
        model.addAttribute("teamsList", teamRepository.findAll());
        return "teams";
    }
}
