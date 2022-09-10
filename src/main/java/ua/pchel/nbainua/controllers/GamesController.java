package ua.pchel.nbainua.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.pchel.nbainua.hibernate.models.Game;
import ua.pchel.nbainua.hibernate.repos.GamesRepository;
import ua.pchel.nbainua.hibernate.services.TeamService;
import ua.pchel.nbainua.utils.GamesUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/games")
public class GamesController {
    @Autowired
    private GamesRepository gamesRepository;
    @Autowired
    private TeamService teamService;
    public List<Game> getListOfGames(String date) {
        List<Game> gameList = new ArrayList<>();


        //for (int i = 0; i < 10; i++) {
            List<String> list = GamesUtil.parseGamePage(date);

            list.remove(0);

            for (String str : list) {
                String[] teams = GamesUtil.getTeamsNames(str).split("/");
                gameList.add(new Game(teamService.findByName(teams[0]), teamService.findByName(teams[1]), GamesUtil.getTime(str), "location", null, null, null, date, false));
            }
            System.out.println(gameList);
            // gamesRepository.saveAll(gameList);
       // }
        return gameList;
    }

    @GetMapping("")
    public String games(Model model, HttpServletRequest request){
        String date = request.getParameter("date");
        System.out.println(date);
        List<Game> gamesList = getListOfGames(date);

        if (getListOfGames(date).size() == 0)
            model.addAttribute("noGamesMessage", "На цей день ігор не заплановано");
        model.addAttribute("gamesList", gamesList);

        return "games";
    }
}
