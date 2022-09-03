package ua.pchel.nbainua.hibernate.models;

import javax.persistence.*;

@Entity
@Table(name = "players")
public class Player {
    @Id
    @Column(name = "id", nullable = false)
    private Long id;

    private String firstName;
    private String secondName;
    @ManyToOne
    @JoinColumn(name="team_id", nullable=false)
    private Team team;

    private String number;
    private String position;
    private String height;
    private String weight;
    private String fromOrAttended;
    private String points;
    private String assists;
    private String rebounds;


    public Player(String firstName, String secondName, Team team, String number, String position, String height, String weight, String fromOrAttended, String points, String assists, String rebounds) {
        this.firstName = firstName;
        this.secondName = secondName;
        this.team = team;
        this.number = number;
        this.position = position;
        this.height = height;
        this.weight = weight;
        this.fromOrAttended = fromOrAttended;
        this.points = points;
        this.assists = assists;
        this.rebounds = rebounds;
    }


    public Player() {

    }

    public String getPoints() {
        return points;
    }

    public void setPoints(String points) {
        this.points = points;
    }

    public String getAssists() {
        return assists;
    }

    public void setAssists(String assists) {
        this.assists = assists;
    }

    public String getRebounds() {
        return rebounds;
    }

    public void setRebounds(String rebounds) {
        this.rebounds = rebounds;
    }

    public Player(Long id, String name, String lastName, String valueOf, String number, String position, String height, String weight, String lastAttended, String country) {
    }

    public Player(Long valueOf, String name, String lastName, Team team, String number, String position, String height, String weight, String from) {
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getFromOrAttended() {
        return fromOrAttended;
    }

    public void setFromOrAttended(String fromOrAttended) {
        this.fromOrAttended = fromOrAttended;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Player{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", secondName='" + secondName + '\'' +
                ", team=" + team +
                ", number='" + number + '\'' +
                ", position='" + position + '\'' +
                ", height='" + height + '\'' +
                ", weight='" + weight + '\'' +
                ", from='" + fromOrAttended + '\'' +
                '}';
    }
}
