package ua.pchel.nbainua.hibernate.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.pchel.nbainua.hibernate.models.Game;

public interface GamesRepository extends JpaRepository<Game,Long> {
}
