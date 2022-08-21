package ua.pchel.nbainua.hibernate.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.pchel.nbainua.hibernate.models.Player;

public interface PlayerRepository extends JpaRepository<Player, Long> {
}
