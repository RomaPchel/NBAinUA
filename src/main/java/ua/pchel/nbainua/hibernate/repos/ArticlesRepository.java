package ua.pchel.nbainua.hibernate.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.pchel.nbainua.hibernate.models.Article;

public interface ArticlesRepository extends JpaRepository<Article, Long> {
}
