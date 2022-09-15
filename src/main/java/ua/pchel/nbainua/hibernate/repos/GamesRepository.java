package ua.pchel.nbainua.hibernate.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.pchel.nbainua.hibernate.models.Game;
import ua.pchel.nbainua.hibernate.models.Team;

import java.util.List;

public interface GamesRepository extends JpaRepository<Game,Long> {
    List<Game> findByDate(String date);

}
