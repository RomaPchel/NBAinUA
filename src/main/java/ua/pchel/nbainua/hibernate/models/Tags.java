package ua.pchel.nbainua.hibernate.models;

import javax.persistence.*;

@Table
@Entity
public class Tags {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    private Long relatedPlayerId;
    private Long relatedTeamId;

    public Tags() {
    }

    public Tags(Long relatedPlayerId, Long relatedTeamId) {
        this.relatedPlayerId = relatedPlayerId;
        this.relatedTeamId = relatedTeamId;
    }

    public Long getRelatedPlayerId() {
        return relatedPlayerId;
    }

    public void setRelatedPlayerId(Long relatedPlayerId) {
        this.relatedPlayerId = relatedPlayerId;
    }

    public Long getRelatedTeamId() {
        return relatedTeamId;
    }

    public void setRelatedTeamId(Long relatedTeamId) {
        this.relatedTeamId = relatedTeamId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
