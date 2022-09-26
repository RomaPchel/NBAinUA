package ua.pchel.nbainua.hibernate.models;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "articles")
public class Article {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String date;
    private String title;
    private String snippet;
    private String content;
    private String image;
    private String author;
    @ElementCollection(targetClass = Tags.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "article_tags", joinColumns = @JoinColumn(name = "id"))
    @Enumerated(EnumType.STRING)
    private Set<Tags> tags;
    private String mainImage;
    private boolean hasVideo;
    private String videoLink;

    public Article(String date, String title, String snippet, String content, String image, String author, Set<Tags> tags, String mainImage, boolean hasVideo, String videoLink) {
        this.date = date;
        this.title = title;
        this.snippet = snippet;
        this.content = content;
        this.image = image;
        this.author = author;
        this.tags = tags;
        this.mainImage = mainImage;
        this.hasVideo = hasVideo;
        this.videoLink = videoLink;
    }

    public String getVideoLink() {
        return videoLink;
    }

    public void setVideoLink(String videoLink) {
        this.videoLink = videoLink;
    }

    public boolean isHasVideo() {
        return hasVideo;
    }

    public void setHasVideo(boolean hasVideo) {
        this.hasVideo = hasVideo;
    }

    public Article() {
    }

    public String getImage() {
        return image;
    }

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Set<Tags> getTags() {
        return tags;
    }

    public void setTags(Set<Tags> tags) {
        this.tags = tags;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSnippet() {
        return snippet;
    }

    public void setSnippet(String snippet) {
        this.snippet = snippet;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
