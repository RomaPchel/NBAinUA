package ua.pchel.nbainua.hibernate.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ua.pchel.nbainua.hibernate.models.Team;
public interface TeamRepository extends JpaRepository<Team, Long> {

    Team findByName(String name);
    Team findByAbbreviation(String abbrv);

}
