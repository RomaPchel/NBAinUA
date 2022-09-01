package ua.pchel.nbainua.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ua.pchel.nbainua.hibernate.models.Article;
import ua.pchel.nbainua.hibernate.repos.ArticlesRepository;
import ua.pchel.nbainua.hibernate.models.Game;
import ua.pchel.nbainua.hibernate.repos.GamesRepository;
import ua.pchel.nbainua.hibernate.services.TeamService;
import ua.pchel.nbainua.utils.GamesUtil;

import java.util.*;

@Controller
public class MainController {

    @Autowired
    private TeamService teamService;
    @Autowired
    private ArticlesRepository articlesRepository;
    @Autowired
    private GamesRepository gamesRepository;

    public List<Game> getListOfGames() {
        List<String> list = GamesUtil.parseGamePage();

        List<Game> gameList = new ArrayList<>();

        list.remove(0);

        for (String str : list) {
            String[] teams = GamesUtil.getTeamsNames(str).split("/");
            gameList.add(new Game(teamService.findByName(teams[0]), teamService.findByName(teams[1]), GamesUtil.getTime(str), "location", null,null,null,null, false));
        }
        return gameList;
    }

    @GetMapping("/")
    public String home(Model model){
        List<Game> gamesList = gamesRepository.findAll();
        List<Article> list = articlesRepository.findAll();
        int size = list.size();
        System.out.println(gamesList);
       // gamesRepository.saveAll(gamesList);
        if (getListOfGames().size() == 0)
            model.addAttribute("noGamesMessage", "На цей день ігор не заплановано");

        List<Article> first
                = list.subList(0, (int) Math.ceil((double) (size + 1) / 2));
        List<Article> second =
                list.subList((int) Math.ceil((double) ((size)+1) / 2), size);
        System.out.println(first);
        System.out.println(second);
        model.addAttribute("firstNewsList",first);
        model.addAttribute("secondNewsList", second);

        model.addAttribute("gamesList", gamesRepository.findAll());


        return "home";
    }

    @GetMapping("/games")
    public String games(Model model){
        List<Game> gamesList = gamesRepository.findAll();
        for (Game game : getListOfGames())
            System.out.println(game.getDate());
        if (getListOfGames().size() == 0)
            model.addAttribute("noGamesMessage", "На цей день ігор не заплановано");
        model.addAttribute("gamesList", gamesList);

        return "games";
    }
    @GetMapping("/player")
    public String player(){
        return "player";
    }
}
