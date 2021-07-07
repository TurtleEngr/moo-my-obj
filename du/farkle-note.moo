@create $note named Farkle-Zilch-Chicken-Dice Rules:Farkle-Zilch-Chicken-Dice Rules
;;#24331.("encryption_key") = 0
;;#24331.("text") = {"-----------------------------------------------", "Farkle is also known as Zilch, Chicken, or Dice", "-----------------------------------------------", "", "Rules", "-----", "1. Use 6 Dice", "2. Each player rolls until someone gets a 1 for the first die.  That", "   player starts.", "3. Roll all 6 dice.  You must have a \"counter\" for each throw of the", "   dice or you \"farkle\" and lose your turn.  See the \"Scoring\" below", "   for the list of counters.", "4. You first have to get at least 250 points to start adding to your score.", "5. You may pick any number of dice to throw again, so long as at least", "   one \"counter\" is left for each throw.", "6. Once all dice are counters, you can roll all the dice again.", "7. You can stop at anytime, but if no counters result from a throw,", "   then you have \"farkled\" and all points for that round are forfeited.", "8. Game ends when a person reaches 5,000 points.  Winner is highest score", "   after the round is over.", "", "Scoring", "-------", "1. 5 = 50", "2. 1 = 100", "3. 111 = 1000", "4. 3 of anything = 100 times the number, ex. 3 4's = 400", "5. All 6 dice in one throw", "   * 6 of a kind = twice the score of 2 three of a kind score", "     ex.6 4's = 2400", "   * 2 three of a kinds = double the value", "     ex. 3 3's and 4 4's = (300 + 400)*2 = 1400", "   * Straight = 1500", "   * 3 pairs = 750", "", "Setup the Dice", "--------------", "* Get the dice out of the Score object: 'get dice from score'", "* Create 6 new dice: '@new dice with 6 /'", "  (The '/' is a separator that will be used between rolls)", "* 'roll dice' will roll all of the dice that you are holding.", "* 'get dice' will pick up all of the dice.", "* Use 'pick dice with XXX' or 'leave dice with XXX' to select dice to pick", "  up or leave.  For more help, type: 'help dice:pick' and 'help dice:leave'.", "* If you make a mistake picking up dice, then 'drop dice' to drop all held", "  dice without rolling them.  Or use 'put dice with XX' to put down single", "  dice.", "* Anyone can 'look dice' to see the values of the dice and who is holding", "  them.  Previous values of dice held are shown, to prevent game errors.", "", "Setup the Score Pad", "-------------------", "* Now that the dice are setup, get 2 to about 6 people to together to play.", "* Each person should type: 'join_game score'.  The turn order is determined by", "  the join_game order.", "* Anyone can look a the latest scores and to see whose turn it is.", "* Someone should type 'start score' to make sure the score pad is reset.", "", "Look at this note with the web interface for a sample game.", "", "Alternate Farkle Rules", "----------------------", "These alternate rules were derived from: http://www.fares.com/newfarkle.html", "1. Use 6 Dice", "2. Each player rolls, the highest scoring player starts first.  Use", "   the first di value then use the next dice values, if there is a", "   tie.  Since there is no left-right playing order here, users can", "   add themselves to the Scoring object in their score order.", "3. Roll all 6 dice.  You must have a \"counter\" for each throw of the", "   dice or you \"farkle\" and lose your turn.  See the \"Scoring\" below", "   for the list of counters.", "4. You may pick any number of dice to throw again, so long as at least", "   one \"counter\" is left for each throw.", "5. Once all dice are counters, you can roll all the dice again.", "6. You first have to get at least 1000 points to start adding to your", "   score.", "7. You can stop at anytime, once you have scored at least 350 points,", "   but if no counters result from a throw, then you have \"farkled\" and", "   all points for that round are forfeited.", "8. Game ends when a person reaches 10,000 points.  Winner is highest", "   score after the round is over.", "", "Alternate Farkle Scoring", "------------------------", "        Number Of Dice With Same Value", "Value   1       3       4       5       6", "1 .   100    1000    2000    4000    8000", "2 :           200     400     800    1600", "3 :.          300     600    1200    2400", "4 ::          400     800    1600    3200", "5 :.:  50     500    1000    2000    4000", "6 :::         600    1200    2400    4800", "", "All 6 dice in one throw:", "2 triples       double each score (ex: 333444 = (300 + 400)*2 = 1400)", "3 pairs         500               (ex. 332255)", "straight        1500              (ex. 123456)"}
;;#24331.("key") = 0
;;#24331.("aliases") = {"Farkle-Zilch-Chicken-Dice Rules"}
;;#24331.("object_size") = {14331, 1100071863}
;;#24331.("unique_id") = 0
;;#24331.("last_modified") = 925086930
;;#24331.("creation_date") = 925086865
;;#24331.("web_calls") = 222
;;#24331.("url") = {"Farkle is also known as Zilch, Chicken, or Dice.<p>", "", "<h2>Farkle Rules</h2>", "<ol>", "", "<li>Use 6 Dice", "", "<li>Each player rolls until someone gets a 1 for the first die.  That", "player starts.", "", "<li>Roll all 6 dice.  You must have a \"counter\" for each throw of the", "dice or you \"farkle\" and lose your turn.  See the \"Scoring\" below for", "the list of counters.", "", "<li>You first have to get at least 250 points to start adding to your score.", "", "<li>You may pick any number of dice to throw again, so long as at", "least one \"counter\" is left for each throw.", "", "<li>Once all dice are counters, you can roll all the dice again.", "", "<li>You can stop at anytime, but if no counters result from a throw,", "then you have \"farkled\" and all points for that round are forfeited.", "", "<li>Game ends when a person reaches 5,000 points.  Winner is highest", "score after the round is over.", "", "</ol>", "", "<h2>Farkle Scoring</h2>", "<ol>", "<li>5 = 50", "<li>1 = 100", "<li>111 = 1000", "<li>3 of anything = 100 times the number, ex. 3 4's = 400", "<li>All 6 dice in one throw", "   <ul>", "   <li>6 of a kind = twice the score of 2 three of a kind score<br>", "       ex.6 4's = 2400", "   <li>2 three of a kinds = double the value<br>", "       ex. 3 3's and 4 4's = (300 + 400)*2 = 1400", "   <li>Straight = 1500", "   <li>3 pairs = 750", "   </ul>", "</ol>", "", "<a name=\"setup\"><h2>Setup the Dice</h2></a>", "<ul>", "", "<li>Get the dice out of the Score object: 'get dice from score'", "", "<li>Create 6 new dice: '<b>@new dice with 6 /</b>' (The '/' is a", "separator that will be shown between rolls)", "", "<li>'<b>r*oll di*ce</b>' will roll all of the dice that you are holding.", "<li>'<b>g*et di*ce</b>' will pick up all of the dice.", "", "<li>Use '<b>pi*ck dice with XXX</b>' or '<b>le*ave di*ce with XXX</b>'", "to select dice to pick up or leave.  For more help, type: '<b>help", "dice:pick</b>' and '<b>help dice:leave</b>'.", "", "<li>If you make a mistake picking up dice, then '<b>drop dice</b>' to", "drop all held dice without rolling them.  Or use '<b>put dice with", "XX</b>' to put down single dice showing XX.", "", "<li>Anyone can '<b>l*ook dice</b>' to see the values of the dice and", "who is holding them.  Previous values of dice held are shown, to", "prevent game errors.", "", "</ul>", "<em>(* - shows the point where a verb or object name can be abbreviated.)</em>", "", "<h2>Setup the Score Pad</h2>", "<ul>", "", "<li>Now that the dice are setup, get 2 to about 6 people to together", "to play.", "", "<li>Each person should type: '<b>join_game score</b>'.  The turn order", "is determined by the join_game order.", "", "<li>Anyone can look at the score object to see the latest scores and", "whose turn it is.", "", "<li>Someone may need to type '<b>start score</b>' to make sure the", "score pad is reset.", "", "</ul>", "", "<h2>Sample Play</h2>", "<pre>", "<b>>join_game score</b>", "BruceR has joined Score Dice Games.  He is user number 1", "", "Sapphire_Guest joins you.", "Sapphire_Guest arrives from nowhere.", "Sapphire_Guest has joined Score Dice Games.  It is user number 2", "", "<b>>start score</b>", "BruceR does a start Score Dice Games", "All the scores from Score Dice Games have been cleared for a new game.", "", "<b>>l score</b>", "You see Score Dice Games.  Type: 'help score' for dice game help.", "Turn                      BruceR                     Sapphire_Guest", "0                         0                          0", "Total                     0                          0", "*** It is now your turn and your current score is: 0 ***", "", "<b>>g di</b>", "BruceR gets all 6 of the dice", "", "<b>>r di</b>", "  BruceR rolls the dice (roll 1)", "The dice show  / 4 4 3 5 5 3 ", "", "<b>>le di with 5</b>", "BruceR has picked up 5 dice that previously shown 4 4 3 5 3 ", "The 1 dice now show  / 5 ", "", "<b>>r di</b>", "The previously rolled dice show:  / 5 ", "BruceR rolls  (roll 2)", "The 6 dice now show  / 5 / 5 4 5 4 5 ", "", "<b>>le di with 5</b>", "BruceR is now holding 4 dice that previously shown 4 5 4 5 ", "The dice show  / 5 / 5 ", "", "<b>>r di</b>", "The previously rolled dice show:  / 5 / 5 ", "  BruceR rolls the dice (roll 3)", "The 6 dice now show  / 5 / 5 / 4 4 2 1 ", "", "<b>>\"I'll stop with this</b>", "You say, \"I'll stop with this\"", "", "<b>>add 200 to score</b>", "You added 200.  Your score is now = 200", "When you are done with your turn, type: record Score Dice Games", "", "<b>>rec score</b>", "BruceR adds 200 to his score.  His total is now 200", "*** It is now Sapphire_Guest's turn. ***", "", "<b>>l score</b>", "You see Score Dice Games.  Type: 'help score' for dice game help.", "Turn                      BruceR                     Sapphire_Guest", "1                         200                        -", "Total                     200                        0", "*** It is now Sapphire_Guest's turn. ***", "", "Sapphire_Guest snatches up all the dice", "  Sapphire_Guest rolls the dice (roll 1)", "The 6 dice now show  / 3 5 3 1 1 5 ", "Sapphire_Guest is holding 4 dice that previously shown 3 5 3 5 ", "The dice show  / 1 1 ", "The previously rolled dice show:  / 1 1 ", "Sapphire_Guest rolls 4 dice  (roll 2)", "The dice show  / 1 1 / 2 1 6 4 ", "Sapphire_Guest adds 300 to its score.  Its total is now 300", "*** It is now BruceR's turn. ***", "", "<b>>get di</b>", "BruceR gets all 6 of the dice", "", "<b>>r di</b>", "BruceR rolls  (roll 1)", "6 dice on the table now show  / 6 6 2 1 4 5 ", "", "<b>>pi di with 2 6 64</b>", "BruceR quickly picks up the 2 6 6 4  dice", "BruceR is now holding 4 dice that previously shown 2 6 6 4 ", "2 dice on the table now show  / 1 5 ", "", "<b>>r di</b>", "The previously rolled dice show:  / 1 5 ", "  BruceR rolls the dice (roll 2)", "6 dice on the table now show  / 1 5 / 2 2 3 5 ", "", "<b>>le di with 5</b>", "BruceR has picked up 3 dice that previously shown 2 2 3 ", "3 dice on the table now show  / 1 5 / 5 ", "", "<b>>r di</b>", "The previously rolled dice show:  / 1 5 / 5 ", "BruceR rolls  (roll 3)", "6 dice on the table now show  / 1 5 / 5 / 1 3 5 ", "", "<b>>a 350 to score</b>", "You added 350.  Your score is now = 350", "When you are done with your turn, type: record Score Dice Games", "", "<b>>pi di with 3</b>", "BruceR quickly picks up the 3  di", "BruceR is holding 1 di that previously shown 3 ", "The dice show  / 1 5 / 5 / 1 5 ", "", "<b>>r di</b>", "The previously rolled dice show:  / 1 5 / 5 / 1 5 ", "BruceR rolls 1 di  (roll 4)", "The dice show  / 1 5 / 5 / 1 5 / 2 ", "", "<b>>:farkles!</b>", "BruceR farkles!", "", "<b>>z score</b>", "You set Score Dice Games your score to 0", "", "<b>>rec score</b>", "BruceR adds 0 to his score.  His total is now 200", "*** It is now Sapphire_Guest's turn. ***", "<b>>l score</b>", "You see Score Dice Games.  Type: 'help score' for dice game help.", "Turn                      BruceR                     Sapphire_Guest", "1                         200                        300", "2                         0                          -", "Total                     200                        300", "*** It is now Sapphire_Guest's turn. ***", "", "You say, \"When the game is over, cleanup with go_home, otherwise the", "score object will be 'locked' for 30min. after we are done playing.\"", "", "<b>>go_home score</b>", "BruceR does a go_home Score Dice Games", "All users have been removed from Score Dice Games", "</pre>"}
"#24331.("zap") => E_PERM (Permission denied)
"#24331.("queued_task_limit") => E_PERM (Permission denied)
;"***finished***"