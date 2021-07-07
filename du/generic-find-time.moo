>@dump #25063 with create
@create $thing named Generic Find Time (gft):Generic Find Time (gft),gft
@prop #25063."name_list" {} r
@prop #25063."tz_hour" 0 r
@prop #25063."tz_name" "UTC" r
@prop #25063."common_msg" "Common time is set to" rc
@prop #25063."help_msg" {} rc
;;#25063.("help_msg") = {"This tool will help people find common meeting times.
It knows about time", "zones, so people can enter their available times in
their time zone and", "then look at the overlap times.  For the examples, OBJ
is the name of this", "object.", "", "It is mainly designed to people to
interacively discuss good times to meet.", "Be careful when talking about times
that are around midnight for anyone's", "timezone, because the date will be
important!  A future version may include", "showing a meeting time with the
date and time clearly identified for each", "person's time zone.", "", "exam
OBJ", "  List the verbs that this object knows about.", "", "help OBJ:VERB", "
For help on VERB.  For example 'help OBJ:add'", "", "morehelp OBJ", "  This
will list directions, so that you can create and configure your own", "  \"find
meeting time\" object from this object (for builders).", "", "@about OBJ", "
Type this, if you are a programmer or just interested in some the", "
internals of this object.  Note: on DU OBJ needs to be the \"top\" generic", "
for this object.", "", "@timezone <timezone>", "  To use this object you need
to set your timezone with the system", "  '@timezone' verb.  Type 'help
@timezone' and '@timeszones' for help.", "", "l*ook OBJ", "  After setting
their timezone, users should use the 'register' and 'add'", "  verbs on this
object to set the times that they are available.  Anyone", "  can register and
add other users times to this object.  Dummy names can", "  be registered to
set different timezones, which can then be used to", "  figure out good times
for holding large worldwide meetings.", "", "  When the object is looked at a
chart will be displayed.  The top two", "  lines of the chart will show the
time scale for the user doing the", "  looking.  The lower time scale will be
common for all users, so people", "  should use the lower scale when talking
about times with others.  Use the", "  '@timzone ZONE on OBJ' to set this
common timezone.", "", "Example output from 'look OBJ':", "", "  You see a tool
that will help you and others find common meeting times", "  across time
zones.", "  111222200000000001111111 Your @timezone is offset", "
789012301234567890123456 US/Pacific timezone", "  ----++--------------+++-
Bruce (US/Pacific) *", "  ---++++-----------++++-- John (US/Central) *", "
------------+++++++++--- EDT-work-time (US/Eastern)", "
+---------------++++++++ Stainless (US/Pacific) *", "  3--3663---------3366A*63
overlap", "  222200000000001111111111 Use these times for reporting meeting
times", "  012301234567890123456789 US/Eastern timezone", "  Show the
percentage of marked (*) users available at each hour.", "  '-'=none, 1=10%,
2=20%, ..., 9=90%, *=all marked, A=all users", "", "From this example, you can
see the best meeting time, for Bruce, John and", "Stainless, would be one that
starts at 1600 (4pm) EDT and ends by 1800 (6pm)", "EDT.", "", "------", "NOTE:
This object is in beta test.  (If you are a builder, you may", "make create
your own object from this object's parent: #25063).", "Please send me any bugs
(tracebacks) or suggestions about this object with:", "  @send brucer
subject=\"gft: bug/suggestion\""}
@prop #25063."legend_msg" "Show the percentage of marked (*) users available at
each hour. '-'=none, 1=10%, 2=20%, ..., 9=90%, *=all marked, A=all users" rc
@prop #25063."more_help_msg" {} rc
;;#25063.("more_help_msg") = {"Creating and customizing your own Find-Time
object", "", "@create gft named \"Any Name You Want\",shortname,OBJ", "  Create
the object.", "", "@chmod OBJ +r", "  Make your object readable for others.",
"", "@describe OBJ as \"Add the times that you can meet.  Type: help OBJ for
directions\"", "  Change the description to something that is specific to the
meeting that you", "  are trying to setup.", "", "@set OBJ.user_msg to  \"Your
@timezone is set to\"", "  Header label for the identifying your timezone.",
"", "@set OBJ.common_msg to \"Common time is set to\"", "  Footer label for
identifying the common timezone setting.", "", "@set OBJ.timezone_msg to \"%z
timezone\"", "  This will be put on the line after the Header and Footer
messages.  Put %z", "  where you want the timezone name to be printed.  Put %Z
where the you want", "  the timezone hours offset from GMT to be printed.", "",
"@set OBJ.overlap_msg to \"overlap\"", "  Label after the line showing the
times that overlap.", "", "@set OBJ.legend_msg to \"Show the percentage of
marked (*) users available at each hour. '-'=none, 1=10%, 2=20%, ..., 9=90%,
*=all marked, A=all users\"", "  Legend.  This can be multiple lines (i.e. a
list)", "", "Message text placement:", "", "        <description>", "
111222200000000001111111 <user_msg>", "        789012301234567890123456
<timezone_msg>", "        +---------------++++++++ <name>", "
+---------------++++++++ <overlap_msg>", "        000000000011111111112222
<common_msg>", "        012345678901234567890123 <timezone_msg>", "
<legend_msg>"}
@prop #25063."overlap_msg" "<- possible meeting times" rc
@prop #25063."timezone_msg" "%z timezone" rc
@prop #25063."user_msg" "Times for your timezone" rc
;;#25063.("home") = #12825
;;#25063.("key") = 0
;;#25063.("aliases") = {"Generic Find Time (gft)", "gft"}
;;#25063.("description") = {"You see a tool that will help you and others find
common meeting times", "across time zones.  Type 'help gft' to get started."}
;;#25063.("object_size") = {25230, 1100331393}
;;#25063.("about_text") = {"Base: $Revision: 1.1 $", "$Source:
/mnt/ludwig.2/cms/moo.cms/com.db/bruce/ver.1.0/RCS/findtime.moo,v $",
"http://www.wenet.net/~adric/muve/moo.code/findtime.moo", "Orginal Author:", "
BruceR, DU, bar@techie.com, $Revision: 1.1 $, $Date: 2004/11/16 04:14:10 $",
"Contributing Authors:", "  <NAME, MOO, e-mail, Revision, DATE>", "",
"Copyleft", "--------", "1. You are free to copy this object to any MOO, so
long as you include", "   this copyleft text and the above text, so that any
derivative work", "   may also be freely copied.", "2. If you make any
enhancements, please add your name and the", "   following information: <NAME,
MOO, e-mail, Revision, DATE>.  The", "   revision should be of the form:
Revision: 1.10.1.0, where the", "   first pairs of numbers are the original
base revision that you", "   started from.  If starting your modifications from
someone elses", "   base, then include two more numbers for your revision
number, etc.", "3. Also if you make enhancements, send me an e-mail message
with the", "   <NAME, MOO, e-mail, Revision, DATE>, so that if I include it,",
"   people will know what version of your code was included.", "4. If you have
just copied this object, an e-mail message to me would", "   still be nice.",
"", "Data Structures", "---------------", "", ".name_list ::= {<record>,
<record>, ...}", "<record> ::= {<name>, <hours>, <mark>, <tz_name>,
<tz_hour>}", "<name> ::= player.name or <string>", "<hours> ::= string of 24
\"-\" or \"+\" characters.  Character 1 = midnight (UTC),", "  character 2 =
1am, etc.  If user is available at the corresponding hour a", "  \"+\"
character is used, otherwise a \"-\" character is used.", "<mark> ::= A \"*\"
character if marked, otherwise a null character \"\".", "<tz_hour> ::= Number
of hours the user <name> is offset from UTC.", "<tz_name> ::= If available, the
time-zone name.", "", ".tz_hour ::= The number of hours from UTC that the
common time is offset.", ".tz_name ::= The .tz_hour time-zone name.", "",
"Design Decisions", "----------------", "", "Most of the verb help text is put
with the verb rather than in .help_msg,", "so that if others add verbs, then
they don't need to update the help text,", "which will save space.", "", "The
chart layout, would be better if the hours could be shown with:", "    00 01 02
03 04 05 06 07 08 09 10 11 ... 22 23", "But then there would not be enough room
for the text to describe the chart", "lines.  The chart could be shown
vertically, with the hours going down, but", "then that would take up 24 or
more lines and how would the user names be", "displayed for the columns.", ""}
;;#25063.("unique_id") = 0
;;#25063.("last_modified") = 924900025
;;#25063.("creation_date") = 924114882
;;#25063.("web_calls") = 212
"#25063.("zap") => E_PERM (Permission denied)
;;#25063.("vrml_coords") = {{-1986, -305, 2736}, {0, 0, 0}, {1000, 1000, 1000}}
;;#25063.("vrml_desc") = {"Material {diffuseColor 0.3 0.87 0.79}", "Cylinder
{radius 0.61 height 0.64}"}
"#25063.("queued_task_limit") => E_PERM (Permission denied)

@verb #25063:"addit" this none this
@program #25063:addit
":addit(p_dobjstr, p_verb)";
"  Functional part of the add/del verbs.";
su = $string_utils;
lu = $list_utils;
{p_dobj, p_dobjstr, p_verb} = args;
p_input = su:explode(p_dobjstr);
if (valid(p_dobj) && is_player(p_dobj))
  p_name = p_dobj.name;
  p_input = listdelete(p_input, 1);
elseif (match(p_input[1], "^[0-9]") != {})
  "No name specified, so assume add/del is for caller.";
  p_name = player.name;
else
  p_name = p_input[1];
  p_input = listdelete(p_input, 1);
endif
{p_obj, p_name, p_recnum} = this:findname(p_name);
if (p_recnum == 0)
  if (valid(p_obj))
    "Add the player";
    if (!length(tz_name = this:tz_name(p_obj.timezone)))
      return;
    endif
    this.name_list = {@this.name_list, {p_name, "------------------------",
"*", tz_name, this:tz_hour(tz_name)}};
    this.name_list = lu:sort_alist(this.name_list, 1);
    p_recnum = lu:iassoc(p_name, this.name_list);
    this:tell_msg(("%n registers " + p_name) + " on %t", 1);
  else
    this:tell_msg(("You need to register the name: " + p_name) + " on %t");
    return;
  endif
endif
tz_hour = this.name_list[p_recnum][5];
hour = {};
for t in (p_input)
  if (match(t, "^[0-9]") == {})
    this:tell_msg(("%t problem: " + t) + " is not a valid hour.");
    continue;
  endif
  m = match(t, "-");
  if (m != {})
    t[m[1]] = " ";
    r = su:explode(t);
    r1 = tonum(r[1]);
    r2 = tonum(r[2]);
    if ((((r1 < 0) || (r1 > 23)) || (r2 < 0)) || (r2 > 23))
      this:tell_msg(("%t problem: range " + t) + " is not a valid hour
range.");
      continue;
    endif
    for n in [r1..r2]
      hour = {@hour, n};
    endfor
  else
    n = tonum(t);
    if ((n < 0) || (n > 23))
      this:tell_msg(("%t problem: " + tostr(n)) + " is not a valid hour.");
      continue;
    endif
    hour = {@hour, n};
  endif
endfor
for n in (hour)
  "Calc. tz_hour";
  n = n + tz_hour;
  if (n < 0)
    n = 24 + n;
  endif
  if (n > 23)
    n = n - 24;
  endif
  n = n + 1;
  this.name_list[p_recnum][2][n] = (p_verb == "add") ? "+" | "-";
endfor
this:tell_msg(((("You " + p_verb) + "ed ") + p_dobjstr) + ((p_verb == "add") ?
" to %t." | " from %t."));
"Last modified Fri Apr 23 16:24:59 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"header" this none this
@program #25063:header
":header(p_tz_hour, p_tz_name, p_label)";
"  Output the time header lines.  The hours are shifted by p_tz_hour hours.";
"  The first line will output the 'tens' part of the hours followed by";
"  p_label.  The second line will output the 'ones' part of the hours";
"  follwed by the this.timezone_msg.  this.trim is called to do the pronoun";
"  sub. and to trim the text.";
{p_tz_hour, p_tz_name, p_label} = args;
for l in [1..2]
  line = "";
  for i in [0..23]
    t = i - p_tz_hour;
    if (t < 0)
      t = 24 + t;
    endif
    if (t > 23)
      t = t - 24;
    endif
    ts = tostr(t);
    if (t < 10)
      ts = "0" + ts;
    endif
    line = line + ts[l];
  endfor
  if (l == 1)
    player:tell((line + " ") + this:trim(p_label, 45));
  else
    player:tell((line + " ") + this:trim(this.timezone_msg, 45, p_tz_hour,
p_tz_name));
  endif
endfor
"Last modified Fri Apr 23 16:25:00 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"look_self" this none this
@program #25063:look_self
":look_self";
"  Called by the 'look' verb.  Display the chart with the top line relative";
"  to player.timezone.";
pass(@args);
overlap = "AAAAAAAAAAAAAAAAAAAAAAAA";
if ((tz_hour = this:tz_hour()) > 24)
  return;
endif
this:header(tz_hour, player.timezone, this.user_msg);
total = 0;
c = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
for i in [1..24]
  for n in (this.name_list)
    if (n[2][i] == "+")
      if (n[3] == "*")
        c[i] = c[i] + 1;
      endif
    else
      overlap[i] = "-";
    endif
  endfor
endfor
for n in (this.name_list)
  if (n[3] == "*")
    total = total + 1;
  endif
  player:tell((((((n[2] + " ") + n[1]) + " (") + n[4]) + ") ") + n[3]);
endfor
if (total != 0)
  for i in [1..24]
    p = (c[i] * 10) / total;
    if (p == 0)
      overlap[i] = "-";
    elseif (p == 10)
      if (overlap[i] == "-")
        overlap[i] = "*";
      endif
    else
      overlap[i] = tostr(p);
    endif
  endfor
endif
player:tell((overlap + " ") + this:trim(this.overlap_msg, 45));
this:header(this.tz_hour, this.tz_name, this.common_msg);
this:tell_msg(this.legend_msg);
"Last modified Fri Apr 23 16:25:01 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"tell_msg" this none this
@program #25063:tell_msg
":tell_msg(p_msg, p_all)";
"  General tell messages use this verb, because it does the pronoun";
"  substitution and if p_all is set to non-zero, it will call announce.";
{p_msg, ?p_all = 0} = args;
su = $string_utils;
if (typeof(p_msg) == STR)
  p_msg = {su:pronoun_sub(p_msg)};
elseif (typeof(p_msg) == LIST)
  msg = {};
  for i in (p_msg)
    msg = {@msg, su:pronoun_sub(i)};
  endfor
  p_msg = msg;
else
  p_msg = tostr(p_msg);
endif
if (p_all)
  for line in (p_msg)
    player.location:announce_all(line);
  endfor
else
  player:tell_lines(p_msg);
endif
"Last modified Fri Apr 23 16:40:25 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"trim" this none this
@program #25063:trim
":trim(p_str, p_len, p_tz_hour, p_tz_name)";
"  This is used to output the chart p_str line.  It will do the pronoun";
"  substitutions and it will trim the text to 'p_len'.  The timezone args";
"  are optional.";
{p_str, p_len, ?p_tz_hour = 0, ?p_tz_name = "UTC"} = args;
su = $string_utils;
p_str = strsub(p_str, "%z", p_tz_name, 1);
p_str = strsub(p_str, "%Z", tostr(p_tz_hour), 1);
p_str = su:pronoun_sub(p_str);
return p_str[1..min(p_len, length(p_str))];
"Last modified Fri Apr 23 16:25:02 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"tz_hour" this none this
@program #25063:tz_hour
":tz_hour()";
"  return number of hours offset from UTC for player.timezone";
":tz_hour(p_zone)";
"  return number of hours offset for p_zone";
lu = $list_utils;
tu = $time_utils;
{?p_zone = player.timezone} = args;
tz_hour = lu:assoc(p_zone, tu.tz_zone_offsets);
if (length(tz_hour) != 3)
  this:tell_msg(("%t could not find timezone " + tostr(p_zone)) + ". Please
check '@timezones' for valid values.");
  return 100;
endif
hour = tz_hour[2];
if (tu.dst)
  hour = hour + tz_hour[3];
endif
return (-hour) / 3600;
"Last modified Fri Apr 23 16:25:03 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"tz_name" this none this
@program #25063:tz_name
":tz_name(p_zone)";
"  Return full timezone name (p_zone may be an abreviation).  Return empty";
"  string if nothing found.";
lu = $list_utils;
tu = $time_utils;
{p_zone} = args;
if (length(lu:assoc(p_zone, tu.tz_zone_offsets)))
  return p_zone;
endif
if (length(tz = lu:assoc(p_zone, tu.tz_zone_abbrs)))
  return tz[2];
else
  this:tell_msg(("%t could not find timezone " + tostr(p_zone)) + ". Please
check '@timezones' for valid values.");
  return "";
endif
"Last modified Fri Apr 23 16:25:03 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"@clear" this none none
@program #25063:@clear
"@clear OBJ";
"  Clear all names and times.  Example: clear OBJ";
this.name_list = {};
this.tz_name = "UTC";
this.tz_hour = 0;
this:tell_msg("%n cleared %t", 1);
"Last modified Fri Apr 23 16:25:03 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"@timezone" any on this
@program #25063:@timezone
"@timezone <timezone> on OBJ";
"  Set the common timezone.  Abbreviations can be used, but if it is not";
"  recognized or the wrong zone is selected, then use one to the longer";
"  timezone names returned by @timezones.  Usually this is set to a common";
"  timezone that people can relate to when trying to find a common meeting";
"  time.  Example: @timezone EST on OBJ";
if (!length(z = this:tz_name(dobjstr)))
  return;
endif
this.tz_name = z;
this.tz_hour = this:tz_hour(z);
this:tell_msg("%n sets the 'common' timezone to " + z, 1);
"Last modified Fri Apr 23 16:25:04 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"add" any to this
@program #25063:add
"add <hours> to OBJ";
"  Add your available times.  If you are adding your times for the first";
"  time, then your current @timezone setting will be used to convert your";
"  times to the 'common' time.  Example: add 8-11 13-15 18 17 to OBJ";
"add <name> <hours> to OBJ";
"  Add available times for someone else.  If the name is being added for the";
"  first time and it is an actual user's name, then that user's timezone";
"  setting will be used for the <hours> entered.  See the 'register' verb for";
"  a more flexible way of adding users, and labels, with different";
"  timezones.  Example: add joe 8-18 to OBJ";
this:addit(dobj, dobjstr, verb);
"Last modified Fri Apr 23 16:25:08 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"del*ete" any from this
@program #25063:delete
"del*ete <hours> from OBJ";
"  Use this verb to remove your available times .  Example: del 9 18 from";
"  OBJ";
"del*ete <name> <hours> from OBJ";
"  Use the verb to remove times from other user's available times.  Example:";
"  del PST-work 9 18 from OBJ";
this:addit(dobj, dobjstr, verb);
"Last modified Fri Apr 23 16:25:08 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"mark unmark" any on this
@program #25063:mark
"mark/unmark <name> on OBJ";
"  Mark or unmark a name.  Unmark names of users who don't have to attend.";
"  If you are adding yourself to a meeting where you are just interested,";
"  but it would not matter if you missed it, then unmark your name.  Only";
"  marked users are included in the percentage calculations.  Newly added";
"  names are automatically marked with a '*'";
{p_obj, p_name, p_recnum} = this:findname(dobjstr);
if (p_recnum == 0)
  this:tell_msg(dobjstr + " is not in %t.");
  return;
endif
if (verb == "mark")
  this.name_list[p_recnum][3] = "*";
else
  this.name_list[p_recnum][3] = "";
endif
this:tell_msg((("You " + verb) + "ed ") + p_name);
"Last modified Fri Apr 23 16:25:09 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"morehelp" this none none
@program #25063:morehelp
this:tell_msg("More help for %t (%[#t]):");
player:tell("----");
player:tell_lines(this.more_help_msg);
"Last modified Fri Apr 23 16:25:09 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"reg*ister" any on this
@program #25063:register
"reg*ister <name> [<timezone>] [<mark>] on OBJ";
"  Register a user or name on this object.";
"  If <name> is a user or a user object number, then that user's timezone";
"  will be used, unless you provide a <timezone>.";
"  If <name> is not a user, then you must specify a <timezone>.";
"  If specified, <mark> can be set to a 1 (mark) or 0 (unmark).";
su = $string_utils;
lu = $list_utils;
{p_name, ?p_timezone = "", ?p_mark = "1"} = su:explode(dobjstr);
if (valid(dobj) && is_player(dobj))
  p_name = dobj.name;
endif
{p_obj, p_name, p_recnum} = this:findname(p_name);
if (p_recnum)
  this:tell_msg(p_name + " is already registered on %t");
  return;
endif
if (valid(p_obj))
  p_timezone = length(p_timezone) ? p_timezone | p_obj.timezone;
elseif (!length(p_timezone))
  this:tell_msg("You have to specify a timezone to register non-user names on
%t");
  return;
endif
if (!length(tz_name = this:tz_name(p_timezone)))
  return;
endif
p_mark = (tonum(p_mark) == 0) ? "" | "*";
this.name_list = {@this.name_list, {p_name, "------------------------", p_mark,
tz_name, this:tz_hour(tz_name)}};
this.name_list = lu:sort_alist(this.name_list, 1);
this:tell_msg(("%n registers " + p_name) + " on %t", 1);
"Last modified Fri Apr 23 16:25:10 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"unreg*ister" any from this
@program #25063:unregister
"unreg*ister <name> from OBJ";
"  Remove a name from the the object.  Example: 'unreg pst-work from OBJ'";
if (valid(dobj) && is_player(dobj))
  p_name = dobj.name;
else
  p_name = dobjstr;
endif
{p_obj, p_name, p_recnum} = this:findname(p_name);
if (p_recnum == 0)
  this:tell_msg(dobjstr + " is not in %t.");
  return;
endif
this.name_list = listdelete(this.name_list, p_recnum);
this:tell_msg(("%n has unregistered " + p_name) + " from %t.", 1);
"Last modified Fri Apr 23 16:25:45 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

@verb #25063:"findname" this none this
@program #25063:findname
":findname(p_name)";
"  Return: {r_obj, r_name, r_recnum}";
"  If p_name is a player name, then set r_obj to player, and set r_name";
"  to trimed player.name.";
"  If p_name is not a player, set r_name to the trimed p_name.";
"  If r_name is found in .name_list, then set r_recnum to index, else 0";
su = $string_utils;
lu = $list_utils;
{p_name} = args;
if (valid(r_obj = su:match_player(p_name)))
  r_name = this:trim(r_obj.name, 16);
else
  r_name = this:trim(p_name, 16);
endif
r_recnum = lu:iassoc(r_name, this.name_list);
return {r_obj, r_name, r_recnum};
"Last modified Fri Apr 23 16:25:00 1999 EDT by BruceR (#23981@DU_MainMOO).";
.

;"***finished***"
