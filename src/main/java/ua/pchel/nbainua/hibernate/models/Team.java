package ua.pchel.nbainua.hibernate.models;

import net.bytebuddy.implementation.bind.annotation.Default;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "team")
public class Team {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    private String name;
    private String fullName;
    private String standings;
    private String logo;
    private String conference;
    private String division;
    private String gamesWon;
    private String gamesLost;
    private String abbreviation;
    @OneToMany(mappedBy="team")
    private Set<Player> players;
    private Long pointsLeader;
    private Long assistsLeader;
    private Long reboundsLeader;

    public Team(String name, String fullName, String standings, String logo, String conference, String division, String gamesWon, String gamesLost, String abbreviation, Set<Player> players, Long pointsLeader, Long assistsLeader, Long reboundsLeader) {
        this.name = name;
        this.fullName = fullName;
        this.standings = standings;
        this.logo = logo;
        this.conference = conference;
        this.division = division;
        this.gamesWon = gamesWon;
        this.gamesLost = gamesLost;
        this.abbreviation = abbreviation;
        this.players = players;
        this.pointsLeader = pointsLeader;
        this.assistsLeader = assistsLeader;
        this.reboundsLeader = reboundsLeader;
    }

    public Long getPointsLeader() {
        return pointsLeader;
    }

    public void setPointsLeader(Long pointsLeader) {
        this.pointsLeader = pointsLeader;
    }

    public Long getAssistsLeader() {
        return assistsLeader;
    }

    public void setAssistsLeader(Long assistsLeader) {
        this.assistsLeader = assistsLeader;
    }

    public Long getReboundsLeader() {
        return reboundsLeader;
    }

    public void setReboundsLeader(Long reboundsLeader) {
        this.reboundsLeader = reboundsLeader;
    }

    public Team(String s) {
        this.abbreviation = s;
    }

    public String getAbbreviation() {
        return abbreviation;
    }

    public void setAbbreviation(String abbreviation) {
        this.abbreviation = abbreviation;
    }

    public String getGamesWon() {
        return gamesWon;
    }

    public void setGamesWon(String gamesWon) {
        this.gamesWon = gamesWon;
    }

    public String getGamesLost() {
        return gamesLost;
    }

    public void setGamesLost(String gamesLost) {
        this.gamesLost = gamesLost;
    }

    public String getConference() {
        return conference;
    }

    public void setConference(String conference) {
        this.conference = conference;
    }

    public String getDivision() {
        return division;
    }

    public void setDivision(String division) {
        this.division = division;
    }


    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Set<Player> getPlayers() {
        return players;
    }

    public void setPlayers(Set<Player> players) {
        this.players = players;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Team() {
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getStandings() {
        return standings;
    }

    public void setStandings(String standings) {
        this.standings = standings;
    }
}
