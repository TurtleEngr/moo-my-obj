@create $container named Score Dice Games:Score Dice Games,score,gscore
@prop #24329."former_contents" {} rc
;;#24329.("former_contents") = {#24331, #23306, #25288}
@prop #24329."help_msg" {} rc
;;#24329.("help_msg") = {"Type 'exam score' to see all the verbs for this score object.", "Type 'help score:VERB' to get help on specific verbs.", "", "Mainly this is a score card object that is used with dice games, but it", "could be used with other games that need to keep running scores.  Type", "'games score' to see dice game notes. 'read NAME in score' will read the", "game rules.  If you wish to add some rules for other dice games, just", "create a $note object, and put it in this score object.", "", "After all of the playing users have 'joined' this score object, then one of", "the users should type 'start'.", "", "Quick help (these are on the web page too):", "- When it is your turn, you can add, subtract, and zero your current score.", "  For example, 'add 30 to score', 'sub 10 from score', or 'zero score'.", "- When your turn is over, record your current score with 'record score'.", "- Look at the score to see the last few scores, totals, and whose turn it", "  is.", "- 'show score' will show you the scores for all the turns."}
@prop #24329."score" {} rc
@prop #24329."time_elapsed" 3600 rc
@prop #24329."time_done" 927401347 rc
@prop #24329."tmp" 0 rc
@prop #24329."turn" 1 rc
;;#24329.("dark") = 0
;;#24329.("opened") = 1
;;#24329.("open_key") = 0
;;#24329.("home") = #16325
;;#24329.("key") = 0
;;#24329.("aliases") = {"Score Dice Games", "score", "gscore"}
;;#24329.("description") = "You see Score Dice Games.  Type: 'help score' for dice game help."
;;#24329.("object_size") = {22806, 1100071863}
;;#24329.("about_text") = {"Base: $Revision: 1.1 $", "$Source: /repo/public.cvs/app/moo/du/gscore.moo,v $", "http://www.wenet.net/~adric/muve/moo.code/score.full.moo", "Original Author:", "* Stainless, LambdaMOO, bar@techie.com, $Revision: 1.1 $ $Date: 2004/11/17 06:36:44 $", "Contributing Authors:", "* <NAME, MOO, e-mail, REVISION, DATE>", "", "Copyleft", "--------", "1. You are free to copy this object to any MOO, so long as you include", "   this copyleft text and the above text, so that any derivative work", "   may also be freely copied.", "2. If you make any enhancements, please add your name and the", "   following information: <NAME, MOO, e-mail, Revision, DATE>.  The", "   revision should be of the form: Revision: 1.10.1.0, where the", "   first pairs of numbers are the original base revision that you", "   started from.  If starting your modifications from someone else's", "   base, then include two more numbers for your revision number, etc.", "3. Also if you make enhancements, send me an e-mail message with the", "   <NAME, MOO, e-mail, Revision, DATE>, so that if I include it,", "   people will know what version of your code was included.", "4. If you have just copied this object, an e-mail message to me would", "   still be nice.", "", "Assertions:", "  -Users can only join if turn is 1 or less.", "  -The user order in .score determines the play order", "  -Only users in .score can use the verbs that write to score", "  -Only the user, whose turn is up, can record a score", "  -Only the user, whose turn is up, can use the add/sub/zero verbs", "  -Only the user, whose turn is up, can unsave/erase a previous score.", "   This passes turn back to previous user.", "  -Number of \"rounds\" is determined by length of first .score element, minus 2", "", "Data Structure:", "  .score {{Player#, Total, Score, Score, ...}, ...}", "  .turn - index into .score for user who's turn it is", "  .tmp - Temp. score for zero/add/sub verbs", "", "After a new score object is created, the .home property should be set", "to the room number of its home.  And the .time_elapsed should be set", "the the number of seconds to wait before any non-joined user can use", "the score object. In other word, this would be the length of a typical", "game.  This should probably be set to around 60 minutes (3600 sec)."}
;;#24329.("unique_id") = 0
;;#24329.("last_modified") = 927399321
;;#24329.("creation_date") = 925086431
;;#24329.("web_calls") = 226
;;#24329.("url") = {"<h2>Quick Help for Scoring Object</h2>", "", "Each user joins the game in their turn order, with the '<b>join_game", "score</b>' verb.<p>", "", "<ol> <li>When it is your turn, you can add, subtract, and zero your", "current score.<br> For example, '<b>add 30 to score</b>', '<b>sub 10", "from score</b>', or '<b>zero score</b>'.  These verbs can be", "abbreviated to \"a\", \"s\", and \"z\".<p>", "", "<li>When your turn is over, record your current score with '<b>record", "score</b>' (or '<b>rec score</b>').  The next user will be prompted", "for their turn.<p>", "", "<li>If you make a mistake recording your score, then the current user", "will need to be convinced to type '<b>backup score</b>' (or '<b>erase", "score</b>') to erase your score and give the turn back to you, so that", "you can record the correct score.<p>", "", "<li>You can look at the score anytime to see the last few scores,", "totals, and whose turn it is.<p>", "", "<li>'<b>show score</b>' will show you the scores for all the turns.<p>", "", "</ol>", "", "When you are done with a game, someone should type '<b>go_home", "score</b>' to clear all the users and return all objects to their", "original places.<p>\"}"}
"#24329.("zap") => E_PERM (Permission denied)
;;#24329.("vrml_coords") = {{3280, -156, 2446}, {0, 0, 0}, {1000, 1000, 1000}}
;;#24329.("vrml_desc") = {"Material {diffuseColor 0.87 0.18 0.48}", "Sphere { radius 0.31}"}
"#24329.("queued_task_limit") => E_PERM (Permission denied)

@verb #24329:"check" this none this
@program #24329:check
"if arg[1] is 0, error if user has not joined, and less than .time_elapsed.";
"if arg[1] is 1, error if user has not joined score.";
"if arg[1] is 2, error if user has not joined score, and it is not";
"user's turn";
{p_flag, p_verb} = args;
if (p_flag == 0)
  if (length(this.score) == 0)
    return 1;
  endif
  if (time() >= this.time_done)
    return 1;
  endif
  if ($list_utils:iassoc(player, this.score, 1) == 0)
    player:tell("Sorry, you can not use ", p_verb, " until you have joined ", this:title(), " or until the game is over in ", tostr((this.time_done - time()) / 60), " minutes.  Or you could ask one of the joined users to do a 'reset score' when they are done.");
    return 0;
  else
    return 1;
  endif
endif
if (length(this.score) == 0)
  player:tell("Sorry, you can not use ", p_verb, ", because you have not joined ", this:title());
  return 0;
endif
i = $list_utils:iassoc(player, this.score, 1);
if (((p_flag == 0) || (p_flag == 1)) && i)
  return 1;
endif
if ((p_flag == 1) && (i == 0))
  player:tell("Sorry, you can not use ", p_verb, " until you have joined ", this:title());
  return 0;
endif
if ((p_flag == 2) && (i != this.turn))
  player:tell("Sorry, you can not use ", p_verb, ", because it is not your turn.");
  return 0;
endif
return 1;
"Last modified Sat May 22 14:55:21 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"look_self" this none this
@program #24329:look_self
"look score";
"   Show everyone's scores for the last 2 rounds, the total scores, and";
"   your current score";
desc = this:description();
if (desc)
  player:tell_lines(desc);
else
  player:tell("You see ", this:title());
endif
if (length(this.score))
  this:showit("last", 2);
else
  player:tell("No one has joined " + this:title());
endif
"Last modified Sat May 22 14:02:21 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"next_turn" this none this
@program #24329:next_turn
if ((this.turn = this.turn + 1) > length(this.score))
  this.turn = 1;
endif
player.location:announce_all(this:whose_turn());
"Last modified Sat May 22 14:02:28 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"prev_turn" this none this
@program #24329:prev_turn
if ((this.turn = this.turn = 1) < 1)
  this.turn = length(this.score);
endif
this.tmp = this.score[this.turn][$];
this.score[this.turn] = listdelete(this.score[this.turn], length(this.score[this.turn]));
player.location:announce_all(this:whose_turn());
"Last modified Sat May 22 14:02:29 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"showit" this none this
@program #24329:showit
"showit('all' [, start [, end]]) - start=1, end=last";
"showit('last', [, start]) - start=2 => start=last-2, end=last";
{?type = "all", ?start = 1, ?end = 0} = args;
"Calculate start and end indices.";
if ((end <= 0) || (end < start))
  end = length(this.score[1]) - 2;
endif
if (type == "all")
  start = max(1, start) + 2;
  end = min(length(this.score[1]) - 2, end) + 2;
else
  start = max(2, start);
  start = (length(this.score[1]) - start) + 1;
  start = max(3, start);
  end = length(this.score[1]);
endif
"Output header.  Trim long names, so all fit.";
NumCol = length(this.score) + 1;
MaxChar = (70 / NumCol) - 1;
name = {"Turn"};
for p in [1..length(this.score)]
  n = this.score[p][1]:title();
  name = {@name, n[1..min(length(n), MaxChar)]};
endfor
out = {};
out = {@out, @$string_utils:columnise(name, NumCol)};
if (start >= 3)
  "Output scores for turn range; all but the last turn";
  for t in [start..min(end, length(this.score[1]) - 1)]
    out = {@out, @$string_utils:columnise({tostr(t - 2), @$list_utils:slice(this.score, t)}, NumCol)};
  endfor
  "Output the last turn.  Done separately, because it's not a complete turn.";
  if (end == length(this.score[1]))
    t = length(this.score[1]);
    score = {};
    for p in [1..length(this.score)]
      if (length(this.score[p]) == t)
        score = {@score, this.score[p][t]};
      else
        score = {@score, "-"};
      endif
    endfor
    out = {@out, @$string_utils:columnise({tostr(t - 2), @score}, NumCol)};
  endif
endif
"Output totals";
out = {@out, @$string_utils:columnise({"Total", @$list_utils:slice(this.score, 2)}, NumCol)};
"Output score card settings and current turn";
out2 = "";
if (length(out2))
  out = {@out, out2};
endif
player:tell_lines(out);
player:tell_lines(this:whose_turn());
"Last modified Sat May 22 14:02:38 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"whose_turn" this none this
@program #24329:whose_turn
if (player == this.score[this.turn][1])
  out = ("*** It is now your turn and your current score is: " + tostr(this.tmp)) + " ***";
else
  out = ("*** It is now " + this.score[this.turn][1]:title()) + "'s turn. ***";
endif
return out;
"Last modified Sat May 22 14:02:27 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"@about" this none none
@program #24329:@about
"Show internal information about this object.";
player:tell_lines(this.about_text);
"Last modified Sat May 22 14:02:39 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"a*dd" any to this
@program #24329:add
"a*dd n to score";
"plus n to score";
"   Add to your score (only if your turn)";
if (!this:check(2, verb))
  return;
endif
this.tmp = this.tmp + tonum(dobjstr);
player:tell("You added ", tostr(tonum(dobjstr)), ".  Your score is now = ", tostr(this.tmp));
player:tell("When you are done with your turn, type: record ", this:title());
"Last modified Sat May 22 14:03:09 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"erase unsav*e backup" this none none
@program #24329:erase
"erase score";
"   If it is your turn, this verb will remove the last user's score from";
"   their total, and prompt that user to redo their score.";
if (!this:check(2, verb))
  return;
endif
player.location:announce_all($string_utils:pronoun_sub("%n thinks there may be a problem with the previous score, so %s backs up %t."));
this:prev_turn();
"Last modified Sat May 22 14:03:30 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"game*s" this none none
@program #24329:games
"game*s score";
"   List all game 'notes' and other objects contained in score.";
if (this.contents)
  player:tell("Rules for the following games:");
  for thing in (this:contents())
    o = "  * ";
    for a in (thing.aliases)
      o = (o + a) + ", ";
    endfor
    o[length(o) - 1] = " ";
    player:tell("  ", o);
  endfor
  player:tell("To read a game's rules type 'read NOTE in ", this:title());
elseif (msg = this:empty_msg())
  player:tell(msg);
endif
"Last modified Sat May 22 14:03:33 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"join_game" this none none
@program #24329:join_game
"join score";
"  Add yourself to score card.  Join order determines order of";
"  user's turns. You can't join after the first user starts turn 2.";
if (p = $list_utils:iassoc(player, this.score, 1))
  player:tell("You have already joined ", this:title(), ". You are user number ", tostr(p));
  return;
endif
if ((length(this.score) > 0) && ((length(this.score[1]) - 2) > 1))
  player:tell("Sorry, you can only join during the first round of a game.");
  return;
endif
this.score = {@this.score, {player, 0}};
player.location:announce_all($string_utils:pronoun_sub("%n has joined %t.  %S is user number " + tostr(length(this.score))));
this.time_done = time() + this.time_elapsed;
"Last modified Sat May 22 14:03:04 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"p*ut in*sert d*rop" any in this
@program #24329:put
"put OBJ in score";
"  This is just like the $container put, but the contents will be remembered";
"  for the 'go_home' verb.";
pass(@args);
if (dobj in this.contents)
  "If obj added to contents, remember it.";
  this.former_contents = setadd(this.former_contents, dobj);
endif
"Last modified Sat May 22 14:03:02 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"unjoin_game unjoin quit" this none none
@program #24329:unjoin_game
"quit score";
"unjoin_game score";
"   Remove yourself from score card.";
if (!this:check(1, verb))
  return;
endif
if (p = $list_utils:iassoc(player, this.score, 1))
  this.score = listdelete(this.score, p);
  player.location:announce_all(player:title(), " has quit from ", this:title());
else
  player:tell("You were not joined to ", this:title());
endif
"Last modified Sat May 22 14:03:07 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"remove ta*ke g*et" any from this
@program #24329:remove
"remove OBJ from score";
"  This is just like the $container remove, but the OBJ will also be removed";
"  from the remembered objects.  Use 'get' or 'take' for the OBJ to remain";
"  remembered.";
pass(@args);
if (verb == "remove")
  "Forget that obj was in this object's contents.";
  this.former_contents = setremove(this.former_contents, dobj);
endif
"Last modified Sat May 22 14:02:59 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"read" any in this
@program #24329:read
"read NOTE in score";
try
  p_obj = $match_utils:match(dobjstr, this.contents);
except (ANY)
  player:tell(dobjstr, " could not be found in ", this:title());
  return;
endtry
if ("text" in $object_utils:all_properties(p_obj))
  player:tell("You read ", p_obj:title());
  player:tell_lines(p_obj.text);
else
  player:tell(p_obj:title(), " is not a note object:");
  player:tell_lines(p_obj.description);
endif
"Last modified Sat May 22 14:03:37 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"rec*ord sav*e" this none none
@program #24329:record
"rec*ord score";
"sav*e score";
"   Add your score to your total score, zero the score, then prompt the";
"   next user";
if (!this:check(2, verb))
  return;
endif
score = this.score[i = $list_utils:iassoc(player, this.score)];
score = {@score, this.tmp};
score[2] = score[2] + this.tmp;
this.score[i] = score;
player.location:announce_all($string_utils:pronoun_sub((("%n adds " + tostr(this.tmp)) + " to %p score.  %P total is now ") + tostr(score[2])));
this.tmp = 0;
this:next_turn();
"Last modified Sat May 22 14:03:28 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"reset start clear go_home" this none none
@program #24329:reset
"reset score";
"  Remove all users from the object so that others can use it.  Use";
"  'go_home' if no other users are waiting to use this object";
"start score";
"clear score";
"  Clear all scores to Start a new game with the currently joined";
"  users.  Set all joined user's scores to 0.  New users can join,";
"  until the first user starts their second turn.";
"go_home score";
"  Same as 'reset' but all the note rules and dice are put away and";
"  this object is moved to it's home.";
if (!this:check(0, verb))
  return;
endif
player.location:announce_all(player:title(), " does a ", verb, " ", this:title());
"#f Settings common to all verbs.";
this.turn = 1;
this.tmp = 0;
if (verb == "start")
  for i in [1..length(this.score)]
    this.score[i] = {this.score[i][1], 0};
  endfor
  player.location:announce_all(("All the scores from " + this:title()) + " have been cleared for a new game.");
  return;
endif
"#f Settings common to reset and go_home verbs.";
this.score = {};
player.location:announce_all("All users have been removed from ", this:title());
if (verb == "reset")
  return;
endif
"#f go_home";
for i in (this.former_contents)
  if (!(i in this.contents))
    i:moveto(this);
    if (i in this.contents)
      player.location:announce((i:title() + " is put in ") + this:title());
    else
      player.location:announce((i:title() + " could not be put in ") + this:title());
    endif
  endif
endfor
"#f Update remembered contents, because all objects may not have moved OK.";
this.former_contents = this.contents;
if (this.home != #-1)
  player.location:announce((this:title() + " is moved to: ") + this.home:title());
  this:moveto(this.home);
endif
"Last modified Sat May 22 14:50:39 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"s*ub" any from this
@program #24329:sub
"s*ubtract n from score";
"minus n from score";
"   Subtract from your score (only if your turn)";
if (!this:check(2, verb))
  return;
endif
this.tmp = this.tmp - tonum(dobjstr);
player:tell("You subtracted ", tostr(tonum(dobjstr)), ".  Your score is now = ", tostr(this.tmp));
"Last modified Sat May 22 14:03:11 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"show*all" this none none
@program #24329:showall
"show score";
"   Show all turns for all users";
this:showit("all");
"Last modified Sat May 22 14:03:30 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #24329:"z*ero" this none none
@program #24329:zero
"z*ero score";
"   Zero your score (only if your turn)";
if (!this:check(2, verb))
  return;
endif
this.tmp = 0;
player:tell("You set ", this:title(), " your score to 0");
"Last modified Sat May 22 14:03:08 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

;"***finished***"
