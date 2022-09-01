package ua.pchel.nbainua.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.pchel.nbainua.hibernate.models.Article;
import ua.pchel.nbainua.hibernate.models.Player;
import ua.pchel.nbainua.hibernate.repos.ArticlesRepository;

import javax.validation.Valid;
import java.util.Date;
import java.util.Optional;

@Controller
@RequestMapping("/articles")
public class ArticlesController {

    @Autowired
    private ArticlesRepository articlesRepository;


    @GetMapping("/create")
    private String createArticle(){
        return "add-article";
    }

    @PostMapping("/create")
    private String create(@Valid Article article){
        System.out.println("i am gere");
        article.setDate(String.valueOf(new Date()));
        articlesRepository.save(article);
        return "redirect:/";
    }

    @GetMapping("/{id}")
    public String getArticle(@PathVariable String id, Model model){
        Optional<Article> article = articlesRepository.findById(Long.valueOf(id));
        model.addAttribute("article", article.get());
        return "article";
    }

}
