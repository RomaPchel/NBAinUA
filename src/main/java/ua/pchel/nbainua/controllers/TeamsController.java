package ua.pchel.nbainua.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.pchel.nbainua.hibernate.models.Player;
import ua.pchel.nbainua.hibernate.models.Team;
import ua.pchel.nbainua.hibernate.repos.PlayerRepository;
import ua.pchel.nbainua.hibernate.repos.TeamRepository;
import ua.pchel.nbainua.utils.TeamUtil;

import java.util.*;

@Controller
@RequestMapping("/teams")
public class TeamsController {

    @Autowired
    private TeamRepository teamRepository;

    @Autowired
    private PlayerRepository playerRepository;

    @GetMapping("/show-all")
    public String getAllPlayers(Model model){
        model.addAttribute("westernTeamsList", sortByRecord(sortByConference(teamRepository.findAll(), "Western")));
        model.addAttribute("easternTeamsList", sortByRecord(sortByConference(teamRepository.findAll(), "Eastern")));

        return "teams";
    }

    @GetMapping("/{id}")
    public String getTeam(@PathVariable String id, Model model){
        Map<String, Player> leadersMap = new HashMap<>();
        Optional<Team> teamOptional = teamRepository.findById(Long.valueOf(id));
        if (!teamOptional.isPresent()){
            return null;
        }
        Team team = teamOptional.get();
        leadersMap.put("pointsLeader", playerRepository.findById(TeamUtil.getPointsLeader(sortByTeam(playerRepository.findAll(), team.getName()))).get());
        leadersMap.put("assistsLeader", playerRepository.findById(TeamUtil.getAssistsLeader(sortByTeam(playerRepository.findAll(), team.getName()))).get());
        leadersMap.put("reboundsLeader", playerRepository.findById(TeamUtil.getReboundsLeader(sortByTeam(playerRepository.findAll(), team.getName()))).get());


        model.addAttribute("team", team);
        model.addAttribute("playersList", sortByTeam(playerRepository.findAll(), team.getName()));
        model.addAttribute("leadersMap", leadersMap);
        return "team";
    }

    public List<Team> sortByConference(List<Team> teamList, String option){
        List<Team> sortedList = new ArrayList<>();
        for (Team team : teamList){
            if (Objects.equals(team.getConference(), option))
                sortedList.add(team);
        }

        return sortedList;

    }
    public List<Team> sortByRecord(List<Team> teamList){
        teamList.sort(new Comparator<Team>() {
            public int compare(Team o1, Team o2) {
                // compare two instance of `Score` and return `int` as result.
                return o2.getGamesWon().compareTo(o1.getGamesWon());
            }
        });

        return teamList;

    }
    public List<Player> sortByTeam(List<Player> players, String teamName){
        List<Player> sortedList = new ArrayList<>();
        for (Player player : players){
            if (Objects.equals(player.getTeam().getName(), teamName))
                sortedList.add(player);
        }

        return sortedList;


    }
}
