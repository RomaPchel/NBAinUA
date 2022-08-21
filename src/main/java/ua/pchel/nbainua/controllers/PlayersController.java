package ua.pchel.nbainua.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.pchel.nbainua.hibernate.models.Player;
import ua.pchel.nbainua.hibernate.repos.PlayerRepository;
import ua.pchel.nbainua.hibernate.repos.TeamRepository;
import ua.pchel.nbainua.utils.PlayersUtil;

import java.util.List;

@Controller
@RequestMapping("/players")
public class PlayersController {

    @Autowired
    private PlayerRepository playerRepository;
    @Autowired
    private TeamRepository teamRepository;

//    public void createPlayers(List<Player> playerList){
//        for (Player player : playerList){
//         //   System.out.println("team " + player.getTeam().getAbbreviation() + " for player " + player.getSecondName());
//            player.setTeam(teamRepository.findByAbbreviation(player.getTeam().getAbbreviation()));
//            System.out.println(player.toString());
//          //  playerRepository.save(player);
//        }
//
//    }

    @GetMapping("/show-all")
    public String getAllPlayers(Model model){
        model.addAttribute("playersList", playerRepository.findAll());
        return "players";
    }
}
