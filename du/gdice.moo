@create $thing named Dice:Dice,gdice,Generic Dice (full)
@prop gdice."down" "/242513" rc
@prop gdice."hold" "" rc
@prop gdice."marker" "/" rc
@prop gdice."number" 6 rc
@prop gdice."pick" "" rc
@prop gdice."player" #-1 rc
@prop gdice."help_msg" {} rc
;;gdice.("help_msg") = {"Messages", "", "Just about all of the dice messages can be customized with the '.*_msg'", "properties.  Type '@messages dice' to see the names of the messages.", "If a dice message is a list of strings, then a string will be randomly", "selected from the list.  But only strings should be used with the", "inherited '@messages $thing' messages.  Type 'help dice:format' to get", "the list of '%tags' that will be replaced with the current dice values.", "", "Type 'exam dice' to get the list of dice verbs.", "Type 'help dice:VERB' to get help for a specific verb.", "Type 'about dice' for information about the dice object code.", "", "l*ook dice", "    If any of the dice are down on the table, then their values will be shown", "    to you and the user holding any other dice will be shown.", "", "If the  dice  have  problems, use   the  '@new' verb   to reset  the dice.", "Currently,  getting  and putting  the  dice to/from  container objects has", "nproblems.", "", "Quick Directions (These are on the web page too)", "  Get all the dice and roll them:", "    g di", "    r di", "  Pick up 3 dice showing 3 4 2, then roll them:", "    pick di with 342", "    r di", "  Pick up all dice but dice showing 1 5, then roll them:", "    leave dice with 1 5", "    r di"}
@prop gdice."create_msg" {} rc
;;gdice.("create_msg") = {"%op creates %nt new dice. The roll marker is '%om'."}
@prop gdice."down_msg" {} rc
;;gdice.("down_msg") = {"The %nd dice now show %sd", "%nd dice on the table now show %sd", "The dice show %sd", "The dice show %sd"}
@prop gdice."drop_msg" {} rc
;;gdice.("drop_msg") = {"%op drops all %nt of the dice, with out rolling.  They show: %sd", "%op drops all the dice, previously showing %sd", "%op puts back all the dice, now showing %sd"}
@prop gdice."get_msg" {} rc
;;gdice.("get_msg") = {"%op gets all %nt of the dice", "%op grabs all the dice", "%op snatches up all the dice"}
@prop gdice."hold_msg" {} rc
;;gdice.("hold_msg") = {"%ph is holding %nh %dh that previously shown %sh", "%ph is now holding %nh %dh that previously shown %sh", "%ph has picked up %nh %dh that previously shown %sh"}
@prop gdice."not_hold_msg" {} rc
;;gdice.("not_hold_msg") = {"You are not holding the dice.  %ph is holding the dice", "Whoops, %op is holding the dice!"}
@prop gdice."pick_msg" {} rc
;;gdice.("pick_msg") = {"%op picks up %np %dp showing %sp", "%op carefully picks out the %dp showing %sp", "%op quickly picks up the %sp %dp"}
@prop gdice."prev_roll_msg" {} rc
;;gdice.("prev_roll_msg") = {"The previously rolled dice show: %sd"}
@prop gdice."put_msg" {} rc
;;gdice.("put_msg") = {"%op puts down %np %dp showing %sp", "%op puts back the %sp %dp"}
@prop gdice."roll_msg" {} rc
;;gdice.("roll_msg") = {"%op rolls %nh %dh %oa (roll %nr)", "%op rolls %oa (roll %nr)", "%oa  %op rolls the dice (roll %nr)"}
;;gdice.("description") = "You see some dice here."
;;gdice.("about_text") = {"Base: $Revision: 1.2 $", "$Source: /repo/public.cvs/app/moo/du/gdice.moo,v $", "http://www.wenet.net/~adric/muve/moo.code/dice.full.moo", "Original Author:", "* Stainless, LambdaMOO, bar@techie.com, $Revision: 1.2 $ $Date: 2006/04/15 04:44:09 $", "Contributing Authors:", "* <NAME, MOO, e-mail, REVISION, DATE>", "", "Copyleft", "--------", "1. You are free to copy this object to any MOO, so long as you include", "   this copyleft text and the above text, so that any derivative work", "   may also be freely copied.", "2. If you make any enhancements, please add your name and the", "   following information: <NAME, MOO, e-mail, Revision, DATE>.  The", "   revision should be of the form: Revision: 1.10.1.0, where the", "   first pairs of numbers are the original base revision that you", "   started from.  If starting your modifications from someone else's", "   base, then include two more numbers for your revision number, etc.", "3. Also if you make enhancements, send me an e-mail message with the", "   <NAME, MOO, e-mail, Revision, DATE>, so that if I include it,", "   people will know what version of your code was included.", "4. If you have just copied this object, an e-mail message to me would", "   still be nice.", "", "Assertions:", "  .number = length(.hold) + length(.down)", "  length(.down) = .number - no dice are being held", "  length(.hold) = .number - all dice are being held", "  if length(.hold) != 0, .player should = a player #", "  .down[*] in {1,2,3,4,5,6, .marker}", "  .hold[*] in {1,2,3,4,5,6}", "  .number > 1", "", "Marked Roll Assertions:", "  In mark mode if length(.marker) == 1", "  Each roll puts a .marker character in .down", "  User can not pick up dice before the last .marker", "  Length of .down minus number of .marker char. in .down = number of dice down", "  The number of rolls is figured by counting the .marker char. in .down"}
;;gdice.("unique_id") = 0
;;gdice.("url") = {"<h2>Quick Help for Dice</h2>", "Get all the dice and roll them:", "<table border=\"2\" cellpadding=\"8\" cellspacing=\"2\">", "<tr><td><b>Long</b></td><td><b>Short</b></td></tr>", "<tr><td>get dice</td><td>g di</td></tr>", "<tr><td>roll dice</td><td>r di</td></tr>", "</table>", "<p>", "", "Pick up all dice but leave the dice showing 1 5, then roll them:", "<table border=\"2\" cellpadding=\"8\" cellspacing=\"2\">", "<tr><td><b>Long</b></td><td><b>Short</b></td></tr>", "<tr><td>leave dice with 1 5</td><td>le di with 15</td></tr>", "<tr><td>roll dice</td><td>r di</td></tr>", "</table>", "<p>", "", "Pick up 3 dice showing 3 4 2, then roll them:", "<table border=\"2\" cellpadding=\"8\" cellspacing=\"2\">", "<tr><td><b>Long</b></td><td><b>Short</b></td></tr>", "<tr><td>pick dice with 3, 4 2</td><td>pi di with 342</td></tr>", "<tr><td>roll dice</td><td>r di</td></tr>", "</table>", "<p>", "", "Opps, you picked up the dice before someone was done or you want", "pick up some other dice:", "<table border=\"2\" cellpadding=\"8\" cellspacing=\"2\">", "<tr><td><b>Long</b></td><td><b>Short</b></td></tr>", "<tr><td>drop dice</td><td>d di</td></tr>", "</table>", "<p>", "", "You want to put down a two dice with the values, 2, 3, that you didn't", "want to pick up:", "<table border=\"2\" cellpadding=\"8\" cellspacing=\"2\">", "<tr><td><b>Long</b></td><td><b>Short</b></td></tr>", "<tr><td>putdown dice with 2 3</td><td>pu di with 23</td></tr>", "</table>", "<p>", "", "Add some \"action\" to your roll (this doesn't change the odds in any", "way):", "<table border=\"2\" cellpadding=\"8\" cellspacing=\"2\">", "<tr><td><b>Long</b></td><td><b>Short</b></td></tr>", "<tr><td>toss dice with after blowing on them</td><td>to di with after blowing on them</td></tr>", "</table>", "<p>"}
;;gdice.("vrml_coords") = {{-166, -149, -1613}, {0, 0, 0}, {1000, 1000, 1000}}
;;gdice.("vrml_desc") = {"Material {diffuseColor 0.1 0.71 0.29}", "Sphere { radius 0.42}"}

@verb gdice:"num_down" this none this
@program gdice:num_down
"Return number of down dice, independent of markers";
return length(this.marker) ? length(strsub(this.down, this.marker, "")) | length(this.down);
"Last modified Sat May 22 14:26:21 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"num_roll" this none this
@program gdice:num_roll
"Return number of rolls, which is a count of the markers.";
if (length(this.marker))
  down = strsub(this.down, this.marker, "");
  return length(this.down) - length(down);
else
  return 0;
endif
"Last modified Sat May 22 14:26:22 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"format" this none this
@program gdice:format
"Format the messages. The following 'tags' will be replaced with the";
"current dice values:";
"%%  - %";
"%dd - 'di' if %nd is 1, 'dice' if %nd is not 1";
"%dh - 'di' if %nh is 1, 'dice' if %nh is not 1";
"%dp - 'di' if %np is 1, 'dice' if %np is not 1";
"%nd - number of down dice";
"%nh - number of dice held";
"%np - number of dice picked up or put down";
"%nr - number of rolls (if mark)";
"%nt - total number of dice";
"%oa  - additional text added by verb";
"%om  - marker value";
"%on - object name";
"%op  - user doing the verb";
"%ph - user holding the dice";
"%sd - values of down dice";
"%sh - values of the dice held";
"%sp - values of picked up or put down dice";
{p_msg, ?p_add = ""} = args;
if (typeof(p_msg) == STR)
  p_msg = {p_msg};
endif
"Select one of the messages at random.";
msg = p_msg[random(length(p_msg))];
if (!index(msg, "%"))
  return msg;
endif
if (index(msg, "%%"))
  msg = strsub(msg, "%%", "@@@@");
endif
if (index(msg, "%dd"))
  msg = strsub(msg, "%dd", (this:num_down() == 1) ? "di" | "dice");
endif
if (index(msg, "%dh"))
  msg = strsub(msg, "%dh", (length(this.hold) == 1) ? "di" | "dice");
endif
if (index(msg, "%dp"))
  msg = strsub(msg, "%dp", (length(this.pick) == 1) ? "di" | "dice");
endif
if (index(msg, "%nd"))
  msg = strsub(msg, "%nd", tostr(this:num_down()));
endif
if (index(msg, "%nh"))
  if (length(this.hold))
    hold = "";
    for i in [1..length(this.hold)]
      hold = (hold + this.hold[i]) + " ";
    endfor
    msg = strsub(msg, "%nh", tostr(length(this.hold)));
  else
    hold = " none ";
    msg = strsub(msg, "%nh", "0");
  endif
endif
if (index(msg, "%np"))
  msg = strsub(msg, "%np", tostr(length(this.pick)));
endif
if (index(msg, "%nr"))
  msg = strsub(msg, "%nr", tostr(this:num_roll()));
endif
if (index(msg, "%nt"))
  msg = strsub(msg, "%nt", tostr(this.number));
endif
if (index(msg, "%oa"))
  msg = strsub(msg, "%oa", p_add);
endif
if (index(msg, "%om"))
  msg = strsub(msg, "%om", length(this.marker) ? this.marker | "none");
endif
if (index(msg, "%on"))
  msg = strsub(msg, "%on", this:title());
endif
if (index(msg, "%op"))
  msg = strsub(msg, "%op", player:title());
endif
if (index(msg, "%ph"))
  msg = strsub(msg, "%ph", (this.player == #-1) ? "no-one" | this.player:title());
endif
if (index(msg, "%sd"))
  if (this:num_down())
    down = " ";
    for i in [1..length(this.down)]
      down = (down + this.down[i]) + " ";
    endfor
  else
    down = " none ";
  endif
  msg = strsub(msg, "%sd", down);
endif
if (index(msg, "%sh"))
  msg = strsub(msg, "%sh", hold);
endif
if (index(msg, "%sp"))
  if (length(this.pick))
    pick = "";
    for i in [1..length(this.pick)]
      pick = (pick + this.pick[i]) + " ";
    endfor
  else
    pick = " none ";
  endif
  msg = strsub(msg, "%sp", pick);
endif
if (index(msg, "@@@@"))
  msg = strsub(msg, "@@@@", "%");
endif
return msg;
"Last modified Sat May 22 14:26:35 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"check" this none this
@program gdice:check
"Check if user should be holding or not holding dice for a verb.";
holding = args[1];
if (holding)
  "Problem if not already being held.";
  if (length(this.hold) == 0)
    player:tell(this:format(this.not_hold_msg));
    this.player = #-1;
    return 0;
  endif
  if (this.player != player)
    player:tell(this:format(this.not_hold_msg));
    return 0;
  endif
  return 1;
else
  "Problem if already being held by someone else.";
  if ((length(this.hold) != 0) && (this.player != player))
    player:tell(this:format(this.hold_msg));
    return 0;
  endif
  return 1;
endif
"Last modified Sat May 22 14:26:39 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"rollit" this none this
@program gdice:rollit
"Common roll function.";
{?add = ""} = args;
if (!this:check(1))
  return;
endif
this:moveto(player.location);
if (this.location != player.location)
  player:tell_lines("You can't roll dice here!");
  return;
endif
if (this:num_down())
  player.location:announce_all(this:format(this.prev_roll_msg));
endif
for i in [1..length(this.hold)]
  this.hold[i] = tostr(random(this.number));
endfor
if (length(this.marker))
  this.down = this.down + this.marker;
endif
player.location:announce_all(this:format(this.roll_msg, add));
this.down = this.down + this.hold;
this.hold = "";
this.player = #-1;
player.location:announce_all(this:format(this.down_msg));
"Last modified Sat May 22 14:26:42 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"description" this none this
@program gdice:description
value = {};
if (length(this.hold))
  value = {@value, this:format(this.hold_msg)};
endif
if (this:num_down())
  value = {@value, this:format(this.down_msg)};
endif
if (typeof(this.description) == STR)
  return {this.description, @value};
else
  return {@this.description, @value};
endif
"Last modified Sat May 22 14:26:44 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"@new" this with any
@program gdice:@new
"@new dice with N [R]";
"    Create N dice. N must be 2 or larger.  If a character (R) is put after";
"    N, then that character will be used as a marker, to separate the rolls";
"    where some dice are left on the table.";
{p_num, ?p_mark = ""} = $string_utils:explode(iobjstr);
if (this.location != player)
  player:tell(this:format({"You must be holding %on to use 'new'."}));
  return;
endif
if (tonum(p_num) < 1)
  player:tell(this:format({"You must create 2 or more dice."}));
  return;
endif
this.number = tonum(p_num);
this.hold = "";
this.down = "";
this.pick = "";
for i in [1..this.number]
  this.hold = this.hold + tostr(random(6));
endfor
this.player = player;
if (length(p_mark))
  this.marker = p_mark[1];
else
  this.marker = "";
endif
player.location:announce_all(this:format(this.create_msg));
"Last modified Sat May 22 14:27:05 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"g*et t*ake" this none none
@program gdice:get
"g*et dice";
"t*ake dice";
"    Pickup all of the dice. No-one else but you can be holding any of the";
"    dice.  Use 'pickup' or 'leave' to pickup or leave particular dice.";
if (!this:check(0))
  return;
endif
"set_task_perms(callers() ? caller_perms() | player);";
if (this.location == player)
  player:tell("You already have that!");
  return;
endif
if (this.location != player.location)
  player:tell("I don't see that here.");
  return;
endif
this:moveto(player);
if (this.location != player)
  player:tell(this:take_failed_msg() || "You can't pick that up.");
  if (msg = this:otake_failed_msg())
    player.location:announce(player.name, " ", msg);
  endif
  return;
endif
this.hold = this.hold + strsub(this.down, this.marker, "");
this.down = "";
this.player = player;
player.location:announce_all(this:format(this.get_msg));
"Last modified Sat May 22 14:27:10 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"pi*ckup ch*oose" this with any
@program gdice:pickup
"pi*ckup dice with V";
"ch*oose dice with V";
"    Pickup the dice with the values shown. V can be one or more numbers";
"    between 1 an 6.  Use 'get' to get all of the dice.  Also see 'leave'.";
if (!this:check(0))
  return;
endif
p_pick = iobjstr;
mark_index = length(this.marker) ? rindex(this.down, this.marker) | 1;
this.pick = "";
for i in [1..length(p_pick)]
  if (p_pick[i] in {"1", "2", "3", "4", "5", "6"})
    if (f = rindex(this.down, p_pick[i]))
      if (f < mark_index)
        player:tell("You can not pickup the ", p_pick[i], " di from a previous roll");
        continue;
      endif
      this.hold = this.hold + p_pick[i];
      this.pick = this.pick + p_pick[i];
      this.down[f] = " ";
      this.player = player;
    else
      player:tell("No dice are showing a " + p_pick[i]);
    endif
  endif
endfor
this.down = strsub(this.down, " ", "");
if (length(this.pick))
  if (length(this.hold) != 0)
    player.location:announce_all(this:format(this.pick_msg));
    player.location:announce_all(this:format(this.hold_msg));
  endif
  if (this:num_down() == 0)
    this:moveto(player);
    this.down = "";
  else
    player.location:announce_all(this:format(this.down_msg));
  endif
  this.pick = "";
endif
"Last modified Sat May 22 14:27:15 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"le*ave ke*ep" this with any
@program gdice:leave
"le*ave dice with V";
"ke*ep dice with V";
"     Pickup all dice, but leave the ones with the values shown.";
if (!this:check(0))
  return;
endif
p_leave = iobjstr;
mark_index = length(this.marker) ? rindex(this.down, this.marker) + 1 | 1;
"Look at each di in .down to see if it is to be left or picked";
this.pick = "";
for di in [mark_index..length(this.down)]
  if (!length(p_leave))
    "Pick up all the rest, since all of p_leave has been left.";
    len = length(this.down);
    rest = this.down[di..len];
    this.pick = this.pick + rest;
    this.hold = this.hold + rest;
    this.down[di..len] = " ";
    break;
  endif
  if (li = index(p_leave, this.down[di]))
    p_leave[li] = " ";
    p_leave = strsub(p_leave, " ", "");
  else
    d = this.down[di];
    this.pick = this.pick + d;
    this.hold = this.hold + d;
    this.down[di] = " ";
    this.player = player;
  endif
endfor
this.down = strsub(this.down, " ", "");
this.pick = strsub(this.pick, " ", "");
this.hold = strsub(this.hold, " ", "");
if (length(p_leave))
  player:tell("No dice are showing " + p_leave);
endif
if (length(this.pick))
  if (length(this.hold) != 0)
    if (this.pick != this.hold)
      player.location:announce_all(this:format(this.pick_msg));
    endif
    this.player = player;
    player.location:announce_all(this:format(this.hold_msg));
  else
    this.player = #-1;
  endif
  if (this:num_down() == 0)
    this:moveto(player);
    this.down = "";
  else
    player.location:announce_all(this:format(this.down_msg));
  endif
  this.pick = "";
endif
"Last modified Sat May 22 14:27:22 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"pu*tdown" this with any
@program gdice:putdown
"pu*tdown dice with V";
"    If you made a mistake, you can put down some of the dice that you are";
"    holding. V is the same as for pickup.  Use 'drop' to drop all the dice.";
if (!this:check(0))
  return;
endif
this.pick = "";
for i in [1..length(iobjstr)]
  if (iobjstr[i] in {"1", "2", "3", "4", "5", "6"})
    if (f = index(this.hold, iobjstr[i]))
      this.down = this.down + iobjstr[i];
      this.pick = this.pick + iobjstr[i];
      this.hold[f] = " ";
    else
      player:tell(this:format({"You holding no dice with a " + iobjstr[i]}));
    endif
  endif
endfor
this.hold = strsub(this.hold, " ", "");
if (length(this.hold) != 0)
  player.location:announce_all(this:format(this.put_msg));
  player.location:announce_all(this:format(this.hold_msg));
else
  this.player = #-1;
endif
if (this:num_down() != 0)
  player.location:announce_all(this:format(this.down_msg));
endif
this.pick = "";
"Last modified Sat May 22 14:27:27 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"d*rop th*row" this none none
@program gdice:drop
"d*rop dice";
"th*row dice";
"    Put down all of the dice without rolling them. Use this if you made a";
"    mistake by picking up all of the dice. This can also be used to reorder";
"    the dice showing, by 'picking' up the dice in the desired order, then";
"    dropping them.";
if (!this:check(1))
  return 1;
endif
if (this.location == player)
  "set_task_perms(callers() ? caller_perms() | player);";
  if (!player.location:acceptable(this))
    player:tell("You can't drop that here.");
  else
    this:moveto(player.location);
    if (this.location != player.location)
      player:tell_lines(this:drop_failed_msg() || "You can't seem to drop that here.");
      if (msg = this:odrop_failed_msg())
        player.location:announce(player.name, " ", msg);
      endif
      return;
    endif
  endif
endif
this.down = this.down + this.hold;
this.hold = "";
this.player = #-1;
player.location:announce_all(this:format(this.drop_msg));
player.location:announce_all(this:format(this.down_msg));
"Last modified Sat May 22 14:27:37 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"r*oll" this none none
@program gdice:roll
"r*oll dice";
"    Roll all of the dice that you are holding.";
this:rollit("");
"Last modified Sat May 22 14:27:38 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb gdice:"to*ss" this with any
@program gdice:toss
"to*ss dice with ACTION";
"    Roll all of the dice, that you are holding, adding the ACTION text to";
"    the roll message.  For example: 'toss dice with after blowing on them'";
this:rollit(iobjstr);
"Last modified Sat May 22 14:27:39 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

;"***finished***"
