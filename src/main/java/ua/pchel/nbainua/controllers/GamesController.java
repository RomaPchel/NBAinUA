package ua.pchel.nbainua.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.pchel.nbainua.hibernate.models.Game;
import ua.pchel.nbainua.hibernate.repos.GamesRepository;
import ua.pchel.nbainua.hibernate.services.GameService;
import ua.pchel.nbainua.hibernate.services.TeamService;
import ua.pchel.nbainua.utils.GamesUtil;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/games")
public class GamesController {
    @Autowired
    private GamesRepository gamesRepository;
    @Autowired
    private TeamService teamService;

    @Autowired
    private GameService gameService;


    public List<Game> getListOfGames(String date) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String formatted = df.format(new Date());
        List<Game> gameList = new ArrayList<>();


       // for (int i = 5; i < 9; i++) {
            List<String> list = GamesUtil.parseGamePage(date);
            System.out.println(date);

            list.remove(0);

            for (String str : list) {
                String[] teams = GamesUtil.getTeamsNames(str).split("/");
                String id = GamesUtil.getId(str).substring(77,87);
                gameList.add(new Game(Long.valueOf(id),teamService.findByName(teams[0]), teamService.findByName(teams[1]), GamesUtil.getTime(str), "location", null, null, null, date, false));
           // }
            //gamesRepository.saveAll(gameList);
        }
        return gameList;
    }

    @GetMapping("")
    public String games(Model model, HttpServletRequest request){
        String date = request.getParameter("date");
        System.out.println(date);
        List<Game> gamesList = gameService.findByDate(date);
        System.out.println(gamesList);
        if (getListOfGames(date).size() == 0)
            model.addAttribute("noGamesMessage", "");
        model.addAttribute("gamesList", gamesList);

        return "games";
    }
    @GetMapping("/{id}")
    public String getPlayer(@PathVariable String id, Model model){
        Optional<Game> game = gamesRepository.findById(Long.valueOf(id));
        model.addAttribute("game", game.get());
        return "game";
    }
}
