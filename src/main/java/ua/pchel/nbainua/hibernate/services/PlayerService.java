package ua.pchel.nbainua.hibernate.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.pchel.nbainua.hibernate.models.Team;
import ua.pchel.nbainua.hibernate.repos.PlayerRepository;
import ua.pchel.nbainua.hibernate.repos.TeamRepository;
@Service
public class PlayerService {
    @Autowired
    private PlayerRepository playerRepository;

}
