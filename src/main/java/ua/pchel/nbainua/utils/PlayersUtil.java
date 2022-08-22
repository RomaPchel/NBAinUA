package ua.pchel.nbainua.utils;

import net.minidev.json.JSONArray;
import net.minidev.json.JSONObject;
import net.minidev.json.parser.JSONParser;
import net.minidev.json.parser.ParseException;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import ua.pchel.nbainua.hibernate.models.Player;
import ua.pchel.nbainua.hibernate.models.Team;

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
    public static List<Long> parseId() {
        List<Long> idList = new ArrayList<>();

        try {
            File inputFile = new File("D:\\NBAinUA\\src\\main\\java\\ua\\pchel\\nbainua\\utils\\idtext.txt");

            BufferedReader reader = new BufferedReader(new FileReader(inputFile));

            String currentLine;
            String str = "";
            while ((currentLine = reader.readLine()) != null) {
                 str += currentLine;

            }
            String[] split = str.split("</tr>");
            for (String line : split){
                //System.out.println(line);
                if (line.length() > 8) {
                    String id = line.substring(line.indexOf("href=\"/player/") + 14, line.indexOf("\" class=\"flex items-center t6 Anchor_complexL"));
                    id = id.substring(0, id.indexOf("/"));
                    idList.add(Long.valueOf(id));
                }
            }

          //  System.out.println(str);

            reader.close();


        } catch (IOException e) {
            e.printStackTrace();
        }
      //  System.out.println(idList);
        return idList;
    }

    public static List<Long> getPlayerId() throws FileNotFoundException, ParseException {
        JSONParser parser = new JSONParser();

        JSONArray a = (JSONArray) parser.parse(new FileReader("D:\\NBAinUA\\src\\main\\resources\\static\\players.json"));
        Integer id = 0;
        List<Long> listOfIds = new ArrayList<>();
        for (Object o : a)
        {
            JSONObject person = (JSONObject) o;
            System.out.println("i am gere");
            id = (Integer) person.get("playerId");
            System.out.println(id);
            listOfIds.add(Long.valueOf(id));

        }
        return listOfIds;
    }

    public static void main(String[] args) {
        parseId();
    }
}
