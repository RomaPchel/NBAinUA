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

import java.text.SimpleDateFormat;
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
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String formatted = df.format(new Date());
        List<Game> gameList = new ArrayList<>();


        // for (int i = 5; i < 9; i++) {
        List<String> list = GamesUtil.parseGamePage(formatted);
        System.out.println(formatted);

        list.remove(0);

        for (String str : list) {
            String[] teams = GamesUtil.getTeamsNames(str).split("/");
            String id = GamesUtil.getId(str).substring(77,87);
            gameList.add(new Game(Long.valueOf(id),teamService.findByName(teams[0]), teamService.findByName(teams[1]), GamesUtil.getTime(str), "location", null, null, null, formatted, false));
            // }
            //gamesRepository.saveAll(gameList);
        }
        return gameList;
    }

    @GetMapping("/")
    public String home(Model model){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String formatted = df.format(new Date());
        List<Game> gamesList = gamesRepository.findByDate(formatted);
        List<Article> list = articlesRepository.findAll();
        Collections.reverse(list);
        int size = list.size();
        if (getListOfGames().size() == 0)
            model.addAttribute("noGamesMessage", "На цей день ігор не заплановано");

        List<Article> first
                = list.subList(0, (int) Math.ceil((double) (size + 1) / 2));
        List<Article> second =
                list.subList((int) Math.ceil((double) ((size)+1) / 2), size);

        model.addAttribute("firstNewsList",first);
        model.addAttribute("secondNewsList", second);
        System.out.println(gamesList);
        model.addAttribute("gamesList", gamesList);


        return "home";
    }


    @GetMapping("/player")
    public String player(){
        return "player";
    }
}
