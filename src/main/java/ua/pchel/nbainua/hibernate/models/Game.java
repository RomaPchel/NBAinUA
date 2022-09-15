package ua.pchel.nbainua.hibernate.models;

import javax.persistence.*;
import java.util.Date;
@Entity
@Table(name = "games")
public class Game {

    @Id
    private Long id;
    @OneToOne
    private Team firstTeam;
    @OneToOne
    private Team secondTeam;
    private String time;
    private String location;
    private String winner;
    private String firstTeamScore;
    private String secondTeamScore;
    private String date;
    private boolean hasEnded;


    public Game(Long id, Team firstTeam, Team secondTeam, String time, String location, String winner, String firstTeamScore, String secondTeamScore, String date, boolean hasEnded) {
        this.id = id;
        this.firstTeam = firstTeam;
        this.secondTeam = secondTeam;
        this.time = time;
        this.location = location;
        this.winner = winner;
        this.firstTeamScore = firstTeamScore;
        this.secondTeamScore = secondTeamScore;
        this.date = date;

        this.hasEnded = hasEnded;
    }



    public boolean isHasEnded() {
        return hasEnded;
    }

    public void setHasEnded(boolean hasEnded) {
        this.hasEnded = hasEnded;
    }

    public Game() {

    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getWinner() {
        return winner;
    }

    public void setWinner(String winner) {
        this.winner = winner;
    }

    public String getFirstTeamScore() {
        return firstTeamScore;
    }

    public void setFirstTeamScore(String firstTeamScore) {
        this.firstTeamScore = firstTeamScore;
    }

    public String getSecondTeamScore() {
        return secondTeamScore;
    }

    public void setSecondTeamScore(String secondTeamScore) {
        this.secondTeamScore = secondTeamScore;
    }

    public Team getFirstTeam() {
        return firstTeam;
    }

    public void setFirstTeam(Team firstTeam) {
        this.firstTeam = firstTeam;
    }

    public Team getSecondTeam() {
        return secondTeam;
    }

    public void setSecondTeam(Team secondTeam) {
        this.secondTeam = secondTeam;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
