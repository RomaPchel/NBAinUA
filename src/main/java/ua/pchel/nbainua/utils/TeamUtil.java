package ua.pchel.nbainua.utils;

import ua.pchel.nbainua.hibernate.models.Player;

import java.util.List;
import java.util.Objects;

public class TeamUtil {

    public static Long getPointsLeader(List<Player> playerList){
        Long id = 0L;
        double max = 0;

        for (Player player : playerList){
            System.out.println(player.getPoints());
            if (!Objects.equals(player.getPoints(), "--") && !Objects.equals(player.getPoints(), null) && Double.parseDouble(player.getPoints()) > max ){
                id = player.getId();
                max = Double.parseDouble(player.getPoints());

            }
        }

        return id;
    }
    public static Long getAssistsLeader(List<Player> playerList){
        Long id = 0L;
        double max = 0;

        for (Player player : playerList){
            if (!Objects.equals(player.getAssists(), "--")  && !Objects.equals(player.getAssists(), null)&& Double.parseDouble(player.getAssists()) > max ){
                id = player.getId();
                max = Double.parseDouble(player.getAssists());

            }
        }

        return id;
    }
    public static Long getReboundsLeader(List<Player> playerList){
        Long id = 0L;
        double max = 0;

        for (Player player : playerList){
            if (!Objects.equals(player.getRebounds(), "--") && !Objects.equals(player.getRebounds(), null) && Double.parseDouble(player.getRebounds()) > max  ){
                id = player.getId();
                max = Double.parseDouble(player.getRebounds());
            }
        }
        System.out.println(id);
        return id;
    }

}
