package ua.pchel.nbainua.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.pchel.nbainua.hibernate.models.Player;
import ua.pchel.nbainua.hibernate.repos.ArticlesRepository;
import ua.pchel.nbainua.hibernate.repos.PlayerRepository;
import ua.pchel.nbainua.hibernate.repos.TeamRepository;
import ua.pchel.nbainua.utils.PlayersUtil;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Controller
@RequestMapping("/players")
public class PlayersController {

    @Autowired
    private PlayerRepository playerRepository;
    @Autowired
    private TeamRepository teamRepository;
    @Autowired
    private ArticlesRepository articlesRepository;

    public void createPlayers(){
        String ids= "1629627\n" +
                "1628391\n" +
                "1629685\n" +
                "1626159\n" +
                "1630216\n" +
                "1630164\n" +
                "1626174\n" +
                "1630218\n" +
                "1630589\n" +
                "1626153\n" +
                "1630593\n" +
                "1629027\n" +
                "201152\n" +
                "1630209\n" +
                "1627826\n";
        String[] idArray = ids.split("\n");
        Player newPlayer = new Player();
        for (String str : idArray){
            Optional<Player> player = playerRepository.findById(Long.valueOf(str));
            newPlayer = player.get();
//            Map<String,String> stats = PlayersUtil.getStats(newPlayer);
//            newPlayer.setPoints(stats.get("points"));
//            newPlayer.setAssists(stats.get("assists"));
//            newPlayer.setRebounds(stats.get("rebounds"));
        }


        playerRepository.save(newPlayer);


    }

    @GetMapping("/show-all")
    public String getAllPlayers(Model model){

            List<Player> playersList =  playerRepository.findAll();
//        List<Player> updatedList = PlayersUtil.getStats(playersList);
//        for (Player player : updatedList){
//            System.out.println(player.getId() + " " + player.getSecondName() + " " + player.getPoints());
//        }
//        for (Player player : updatedList){
//            playerRepository.save(player);
//        }
        Player randomPlayer =  playersList.get((int) ((Math.random() * playersList.size()) + 0));
        model.addAttribute("playersList",playersList);
        model.addAttribute("randomPlayer", randomPlayer);
        model.addAttribute("newsList", articlesRepository.findAll());
        return "players";
    }

    @GetMapping("/{id}")
    public String getPlayer(@PathVariable String id, Model model){
        Optional<Player> player = playerRepository.findById(Long.valueOf(id));
        model.addAttribute("player", player.get());
        model.addAttribute("lastFive", PlayersUtil.getLastFiveGames(player.get()));
        return "player";
    }
}
