package ua.pchel.nbainua.hibernate.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.pchel.nbainua.hibernate.models.Team;
import ua.pchel.nbainua.hibernate.repos.TeamRepository;

@Service
public class TeamService {

    @Autowired
    private TeamRepository teamRepository;

    public Team findByName(String name){
        return teamRepository.findByName(name);
    }
    public Team findByAbbreviation(String abbrv){
        return teamRepository.findByAbbreviation(abbrv);
    }

}
