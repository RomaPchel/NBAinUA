package ua.pchel.nbainua.controllers;

import net.minidev.json.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.pchel.nbainua.hibernate.models.Player;
import ua.pchel.nbainua.hibernate.repos.PlayerRepository;
import ua.pchel.nbainua.hibernate.repos.TeamRepository;
import ua.pchel.nbainua.utils.PlayersUtil;

import java.io.FileNotFoundException;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Controller
@RequestMapping("/players")
public class PlayersController {

    @Autowired
    private PlayerRepository playerRepository;
    @Autowired
    private TeamRepository teamRepository;

//    public void createPlayers(List<Player> playerList, List<Long> listOfIds){
//        int j = 0;
//        for (int i = 0; i < playerList.size(); i++){
//            if (Objects.equals(playerList.get(i).getFirstName(), "Michael") && Objects.equals(playerList.get(i).getSecondName(), "Foster Jr.") || (Objects.equals(playerList.get(i).getFirstName(), "Simone") && Objects.equals(playerList.get(i).getSecondName(), "Fontecchio"))){
//                j=j+2;
//                System.out.println("added 1 " + i + " " + j);
//                continue;
//            }
//            playerList.get(i).setTeam(teamRepository.findByAbbreviation(playerList.get(i).getTeam().getAbbreviation()));
//            playerList.get(i).setId(listOfIds.get(j));
//            System.out.println(playerList.get(145).getSecondName() + " " + listOfIds.get(145));
//
//             playerRepository.save(playerList.get(i));
//            System.out.println(i + " " + j);
//            j++;
//        }
//
//    }

    @GetMapping("/show-all")
    public String getAllPlayers(Model model){
        model.addAttribute("playersList", playerRepository.findAll());
        return "players";
    }

    @GetMapping("/{id}")
    public String getPlayer(@PathVariable String id, Model model){
        Optional<Player> player = playerRepository.findById(Long.valueOf(id));
        model.addAttribute("player", player.get());
        return "player";
    }
}
