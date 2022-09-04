package ua.pchel.nbainua.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class GamesUtil {



    public static List<String> parseGamePage() {
            StringBuilder result = new StringBuilder();
            //Access the page
            try {
                // Create a URL for the desired page
                URL url = new URL("https://www.nba.com/games?date=2022-10-21");
                // Read all the text returned by the server
                BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream()));
                String str;
                while ((str = in.readLine()) != null) {
                    // str is one line of text; readLine() strips the newline character(s)
                    result.append(str);
                }
                in.close();
            } catch (IOException ignored) {
            }

            String body = String.valueOf(result);
            String[] container = body.split("class=\"shadow-block bg-white flex md:rounded text-sm relative mb-4\"");
            List<String> list = new ArrayList(Arrays.asList(container));
           return list;

        }

    public static String getTeamsNames(String main){

        String[] arrOfNames = main.split("class=\"MatchupCardTeamName_teamName__3i23P\">");
        String firstTeam = arrOfNames[1].substring(0, arrOfNames[1].indexOf("<"));
        String secondTeam = arrOfNames[2].substring(0, arrOfNames[2].indexOf("<"));

        return firstTeam+"/"+secondTeam;

    }

    public static String getTime(String main){
        String[] arrForTime = main.split("class=\"h9 text-xs uppercase\">");
        return arrForTime[1].substring(0, arrForTime[1].indexOf("<"));
    }

}



