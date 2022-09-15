package ua.pchel.nbainua.hibernate.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.pchel.nbainua.hibernate.models.Game;
import ua.pchel.nbainua.hibernate.models.Team;
import ua.pchel.nbainua.hibernate.repos.GamesRepository;

import java.util.List;

@Service
public class GameService {

    @Autowired
    private GamesRepository gamesRepository;

    public List<Game> findByDate(String date){
        return (List<Game>) gamesRepository.findByDate(date);
    }

}
