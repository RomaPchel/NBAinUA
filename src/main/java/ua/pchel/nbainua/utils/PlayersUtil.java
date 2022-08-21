package ua.pchel.nbainua.utils;

import org.springframework.beans.factory.annotation.Autowired;
import ua.pchel.nbainua.hibernate.models.Player;
import ua.pchel.nbainua.hibernate.models.Team;
import ua.pchel.nbainua.hibernate.services.TeamService;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class PlayersUtil {




    public static List<Player> parsePlayersPage() {
        StringBuilder result = new StringBuilder();
        List<Player> playerList = new ArrayList<>();

        try {
            File inputFile = new File("D:\\NBAinUA\\src\\main\\java\\ua\\pchel\\nbainua\\utils\\newPlayers.txt");

            BufferedReader reader = new BufferedReader(new FileReader(inputFile));

            String lineToRemove = "\n\n";
            String currentLine;
            while ((currentLine = reader.readLine()) != null) {
                // trim newline when comparing with lineToRemove
                String name = currentLine.trim();
                String lastName = reader.readLine();
                String infoStr = reader.readLine();
                System.out.println(infoStr);
                String[] info = infoStr.replaceAll("\t"," ").split(" ");
                if (info.length > 1) {
                    String abbrv = info[0];
                    String number = info[1];
                    String position = info[2];
                    String height = info[3];
                    String weight = info[4] + " " +  info[5];
                    String from = info[6] + " " + info[7];
                    if (info.length == 9) {
                        from += " " + info[8];
                    }
                    if (info.length == 10) {
                        from += " " + info[8] + " " + info[9];
                    }
                    System.out.println(name + " " + lastName + " " + info[0] + " " + info[1] + " " + info[2] + " " + info[3] + " " + info[4]+ " " + info[5]+ " " + info[6]);
                    playerList.add(new Player(name, lastName, new Team(abbrv), number, position, height, weight, from));
                }
            }
            reader.close();

            System.out.println(result);

        } catch (IOException e) {
            e.printStackTrace();
        }
        List<String> list = new ArrayList<>();
        return playerList;
    }
        public static String getName(String tr){
        String[] container = tr.split("t6 mr-1\">");
        return container[1].substring(0, container[1].indexOf("<"));
    }

    public static String getLastName(String tr){
        String[] container = tr.split("class=\"t6\">");
        return container[1].substring(0, container[1].indexOf("<"));
    }

//    public static String getTeam(String tr){
//        <a href="/team/1610612761/raptors/" class="t6">TOR</a>
//                String[] container = tr.split("t6 mr-1\">");
//
//    }

    public static void main(String[] args) {
        parsePlayersPage();
    }
}
