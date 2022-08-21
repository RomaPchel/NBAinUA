package ua.pchel.nbainua.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ua.pchel.nbainua.models.Game;
import ua.pchel.nbainua.hibernate.services.TeamService;
import ua.pchel.nbainua.utils.GamesUtil;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class MainController {

    @Autowired
    private TeamService teamService;

    public List<Game> getListOfGames() {
        List<String> list = GamesUtil.parseGamePage();
        List<Game> gameList = new ArrayList<>();
        list.remove(0);
        TimeZone tz = TimeZone.getTimeZone("Etc/GMT+3");
        long offset = tz.getOffset(System.currentTimeMillis()) / (1000 * 3600);
        System.out.println(tz.getID() + ":" + tz.useDaylightTime() + "/" + offset);
        for (String str : list) {
            String[] teams = GamesUtil.getTeamsNames(str).split("/");
            gameList.add(new Game(teamService.findByName(teams[0]), teamService.findByName(teams[1]), GamesUtil.getTime(str), "location"));
        }

        return gameList;
    }


    @GetMapping("/")
    public String home(Model model){
        for (Game game : getListOfGames())
            System.out.println(game.getFirstTeam());
        if (getListOfGames().size() == 0)
            model.addAttribute("noGamesMessage", "На цей день ігор не заплановано");
        model.addAttribute("gamesList", getListOfGames());

        return "home";
    }
    @GetMapping("/player")
    public String player(){
        return "player";
    }
}
