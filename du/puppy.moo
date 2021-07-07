>@dump puppy with create
@create $player named Puppy:Puppy
@prop #26463."seek_failed_msg" "%n bounces off a topographical barrier, and
into the room." rc
@prop #26463."seek_arrive_msg" "%n arrives, of necessity by an ugly method." rc
@prop #26463."seek_leave_msg" "%n leaves, of necessity by an ugly method." rc
@prop #26463."home2" #1111 rc
@prop #26463."debug" 0 rc
@prop #26463."simulating" 1 rc
@prop #26463."command_ok" {} rc
@prop #26463."monitor_ok" {} rc
@prop #26463."echo_prefix_msg" "  (%n) " rc
@prop #26463."tell_forward" {} r
;;#26463.("tell_forward") = {#23981}
@prop #26463."listen_actions" {} c
@prop #26463."look_notify" 1 rc
@prop #26463."directions" {} r
;;#26463.("directions") = {"n", "ne", "e", "nw", "s", "sw", "w", "se", "up",
"u", "down", "d"}
@prop #26463."on" 1 rc
@prop #26463."player_arrive_msg" "teleports %n in." rc
@prop #26463."victim_port_msg" "teleports you." rc
@prop #26463."oplayer_port_msg" "teleports %n out." rc
@prop #26463."player_port_msg" "You teleport %n." rc
@prop #26463."self_arrive_msg" "teleports in." rc
@prop #26463."oself_port_msg" "teleports out." rc
@prop #26463."thing_port_msg" "You teleport %n." rc
@prop #26463."self_port_msg" "" rc
"#26463.("previous_connection") => E_PERM (Permission denied)
"#26463.("email_address") => E_PERM (Permission denied)
"#26463.("linebuffer") => E_PERM (Permission denied)
;;#26463.("current_folder") = #6
"#26463.("all_connect_places") => E_PERM (Permission denied)
"#26463.("last_connect_place") => E_PERM (Permission denied)
;;#26463.("messages_going") = {}
;;#26463.("responsible") = {}
;;#26463.("lines") = 10
;;#26463.("current_message") = {0, 0}
;;#26463.("messages") = {}
"#26463.("ownership_quota") => E_PERM (Permission denied)
"#26463.("password") => E_PERM (Permission denied)
;;#26463.("messages_kept") = {}
;;#26463.("feature_info") = {}
"#26463.("identity") => E_PERM (Permission denied)
"#26463.("age") => E_PERM (Permission denied)
"#26463.("vspo") => E_PERM (Permission denied)
"#26463.("notes") => E_PERM (Permission denied)
"#26463.("prof") => E_PERM (Permission denied)
"#26463.("field") => E_PERM (Permission denied)
;;#26463.("refusals") = {}
;;#26463.("not_refused") = {}
;;#26463.("refused") = {}
"#26463.("last_password_time") => E_PERM (Permission denied)
"#26463.("failed_connect_attempts") => E_PERM (Permission denied)
"#26463.("account_lockout") => E_PERM (Permission denied)
"#26463.("last_connect_user") => E_PERM (Permission denied)
;;#26463.("move_protected") = 0
"#26463.("size_quota") => E_PERM (Permission denied)
"#26463.("log") => E_PERM (Permission denied)
"#26463.("recording") => E_PERM (Permission denied)
"#26463.("connect_log") => E_PERM (Permission denied)
"#26463.("connect_log_enabled") => E_PERM (Permission denied)
"#26463.("connect_idle") => E_PERM (Permission denied)
"#26463.("memory") => E_PERM (Permission denied)
;;#26463.("last_paged") = ""
;;#26463.("machine_messages") = {}
"#26463.("diskmail_files") => E_PERM (Permission denied)
"#26463.("diskmail_old_files") => E_PERM (Permission denied)
"#26463.("diskmail_date") => E_PERM (Permission denied)
"#26463.("diskmail_from") => E_PERM (Permission denied)
"#26463.("diskmail_to") => E_PERM (Permission denied)
"#26463.("diskmail_subject") => E_PERM (Permission denied)
"#26463.("diskmail_timestamp") => E_PERM (Permission denied)
"#26463.("permanent_log") => E_PERM (Permission denied)
"#26463.("last_password_change") => E_PERM (Permission denied)
"#26463.("groups") => E_PERM (Permission denied)
;;#26463.("mcp_session_info") = {0, "", "1.0", "", {}}
;;#26463.("holding_output") = {}
"#26463.("webpass") => E_PERM (Permission denied)
"#26463.("last_connect_id") => E_PERM (Permission denied)
;;#26463.("key") = 0
;;#26463.("aliases") = {"Puppy"}
;;#26463.("description") = "For help with your new puppet, type help
<puppetname>.  (Additional help will be written soon.)"
;;#26463.("object_size") = {33609, 1100071863}
;;#26463.("unique_id") = 0
;;#26463.("last_modified") = 953452675
;;#26463.("creation_date") = 953340677
;;#26463.("web_calls") = 241
"#26463.("zap") => E_PERM (Permission denied)
;;#26463.("vrml_coords") = {{3905, 0, 2848}, {0, 0, 0}, {1000, 1000, 1000}}
"#26463.("queued_task_limit") => E_PERM (Permission denied)

@verb #26463:"com*mand" this to any rxd
@program #26463:command
"command <puppet> to <cmdline>";
"Command the puppet to `do' the given command line, processing it as if it were
a command issued by a player.";
who = (callers() && (caller != this)) ? caller_perms() | player;
if (!this:command_ok(who))
  who:tell($string_utils:pronoun_sub("%n %<ignores> your command.", this));
  return E_PERM;
endif
text = substitute("%1", match(argstr, ("%<" + prepstr) + "%> *%(.+%)$"));
if (!text)
  who:tell("Transmit what to ", this.name, "?");
else
  who:tell("You transmit the command \"", text, "\" to ", this.name, ".");
  this:do(text);
endif
"Last modified Fri Mar 17 20:00:51 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"mon*itor" this none none rxd
@program #26463:monitor
"mon*itor <puppet>";
"Have everything heard by the puppet relayed back to you.";
who = (callers() && (caller != this)) ? caller_perms() | player;
if (!this:monitor_ok(who))
  who:tell($string_utils:pronoun_sub("%n %<doesn't> want you monitoring %o.",
this));
  this:tell($string_utils:nn(who), " is refused permission to monitor.");
  return E_PERM;
endif
this:add_monitor(who);
this:tell(who.name, " starts monitoring.");
"Last modified Fri Mar 17 20:00:56 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"ign*ore" this none none rxd
@program #26463:ignore
"ignore <puppet>";
"Stop monitoring the puppet.";
who = (callers() && (caller != this)) ? caller_perms() | player;
if (!(who in this.tell_forward))
  who:tell("You aren't listening to ", this.name, ".");
else
  this:tell(who.name, " stops monitoring.");
  this:remove_monitor(who);
endif
"Last modified Fri Mar 17 20:01:03 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"tell" this none this
@program #26463:tell
pass(@args);
this:tell2(@args);
"Last modified Fri Mar 17 20:01:09 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"moveto" this none this
@program #26463:moveto
"Do a fake :look_self check with the puppet as `player'.";
old = this.location;
pass(@args);
if ((this.location != old) && this.tell_forward)
  if (valid(where = this.location))
    this:call_as_puppet(where, "look_self", {this.brief});
  endif
endif
"Last modified Fri Mar 17 20:01:17 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"wh*isper" any to this rxd
@program #26463:whisper
this:tell(player.name, " whispers, \"", dobjstr, "\"");
player:tell("You whisper, \"", dobjstr, "\" to ", this.name, ".");
"Last modified Fri Mar 17 20:01:23 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"do" this none this
@program #26463:do
"WIZARDLY";
if ((caller != this) && (!this:command_ok(caller_perms())))
  return E_PERM;
endif
"if (caller_perms().wizard)";
"  who = player;";
"else";
who = caller_perms();
"endif";
text = args[1];
now = listdelete(args, 1);
for k in ({{"\"", "say "}, {":", "emote "}, {";", "eval"}, {"?", "help"}})
  if (index(text, k[1]) == 1)
    text = k[2] + text[length(k[1]) + 1..length(text)];
  endif
endfor
y = this:parse_command(text, this);
if ((y != {}) && valid(this.location))
  player = this;
  verb = y[1];
  dobj = y[2][1];
  dobjstr = y[2][2];
  prep = y[3][1];
  prepstr = y[3][2];
  iobj = y[4][1];
  iobjstr = y[4][2];
  args = y[5][1];
  argstr = y[5][2];
  verbargs = {y[6], {dobj, prep, iobj}};
  if (this:find_verb(player, verb, @verbargs))
    this:call(who, player, verb, args, @now);
  elseif (this:find_verb(player.location, verb, @verbargs))
    this:call(who, player.location, verb, args, @now);
  elseif (this:find_verb(dobj, verb, @verbargs))
    this:call(who, dobj, verb, args, @now);
  elseif (this:find_verb(iobj, verb, @verbargs))
    this:call(who, iobj, verb, args, @now);
  else
    "Comment out for now; should replace with correct huh sequence.";
    "this:call(who, player.location, \"huh2\", {verb, args}, @now)";
    "... Rog suggests:";
    this:call(who, $command_utils, "do_huh", {verb, args}, @now);
  endif
else
  player:tell("Problem with :do");
endif
"Last modified Sun Mar 19 02:55:21 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"acceptable" this none this
@program #26463:acceptable
return !is_player(args[1]);
"Last modified Fri Mar 17 20:01:50 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"find_verb" this none this
@program #26463:find_verb
where = args[1];
vrb = args[2];
match = args[3];
do = args[4][1];
pn = args[4][2];
io = args[4][3];
if (valid(where) && (def = $object_utils:has_verb(where, vrb)))
  inf = verb_args(def[1], vrb);
  if ((inf[2] == "none") && (inf[3] == "this"))
    return 0;
    "make sure to exclude this none this verbs";
  endif
  return index(verb_info(def[1], vrb)[2], "x") && (((((inf[1] == "this") &&
(where == do)) || (inf[1] in match[1])) && (inf[2] in match[2])) && (((inf[3]
== "this") && (where == io)) || (inf[3] in match[3])));
endif
return 0;
"Last modified Fri Mar 17 20:02:00 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"sweep_msg" this none this
@program #26463:sweep_msg
y = this.tell_forward;
if (y)
  who = {};
  for k in (y)
    who = listappend(who, ((k.name + " (") + tostr(k)) + ")");
  endfor
  return "is listening for " + $string_utils:english_list(who);
endif
"Last modified Sun Mar 19 02:44:27 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"call" this none this
@program #26463:call
"WIZARDLY";
"if (caller_perms().wizard)";
who = args[1];
set_task_perms(who.wizard ? $no_one | who);
return args[2]:(args[3])(@args[4]);
"Grump 6/19/93: try it without the 'fork' for a while";
if ((length(args) > 4) && args[5])
  args[2]:(args[3])(@args[4]);
else
  suspend(1);
  fork (3)
    args[2]:(args[3])(@args[4]);
  endfork
endif
"else";
"  return E_PERM;";
"endif";
"Last modified Sun Mar 19 02:57:55 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"monitor_ok command_ok" this none this
@program #26463:monitor_ok
who = args[1];
return ((who in this.(verb)) || (who == this.owner)) || (who ==
$code_utils:verb_loc().owner);
"Last modified Fri Mar 17 20:02:27 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"idle_time" this none this
@program #26463:idle_time
time = time0 = 999999999;
for who in (setadd((typeof(y = this.command_ok) == LIST) ? y | {}, this.owner))
  if (((who in connected_players()) && ((who in this.tell_forward) ||
(who.location == this.location))) && (time > (y = idle_seconds(who))))
    time = y;
  endif
endfor
return time;
"Last modified Fri Mar 17 20:02:36 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"seek" any none none rxd
@program #26463:seek
#7069:(verb)(@args);
"Last modified Fri Mar 17 20:02:42 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"custom_initialize" this none this
@program #26463:custom_initialize
"WIZARDLY";
if (caller_perms() == this.owner)
  this.home = this.owner.home;
  this.debug = 0;
  this.command_ok = {};
  this.listen_actions = {};
  this.monitor_ok = {};
  this.tell_forward = {};
endif
pass(@args);
"Last modified Fri Mar 17 20:02:53 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"tell2" this none this rx
@program #26463:tell2
"WIZARDLY";
if (typeof(set_task_perms(this.owner)) == ERR)
  return E_PERM;
endif
for q in (this.tell_forward)
  q:tell($string_utils:pronoun_sub(this.echo_prefix_msg, this), @args);
endfor
text = tostr(@args);
for q in (this.listen_actions)
  if (y = $string_utils:match_string(text, q[1]))
    fork (0)
      comm = q[2][random(length(q[2]))];
      if (typeof(y) == LIST)
        for w in (y)
          comm = strsub(comm, "%" + tostr(w in y), w);
        endfor
      endif
      this:do(comm, @q[3..length(q)]);
      return;
    endfork
  endif
endfor
"Last modified Fri Mar 17 20:03:07 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"is_listening" this none this
@program #26463:is_listening
for x in (this.tell_forward)
  if (x:is_listening())
    return 1;
  endif
endfor
return 0;
"Last modified Fri Mar 17 20:03:13 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"linelen" this none this
@program #26463:linelen
len = 10000;
for x in (this.tell_forward)
  if ($object_utils:has_verb(x, "linelen"))
    len = min(len, x:linelen());
  endif
endfor
return len - length($string_utils:pronoun_sub(this.echo_prefix_msg, this));
"Last modified Fri Mar 17 20:03:20 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"parse_command" this none this
@program #26463:parse_command
":parse_command(cmdline-string) Pass to $string_utils by default.";
return $string_utils:parse_command(@args);
"Last modified Fri Mar 17 20:03:26 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"call_as_puppet" this none this
@program #26463:call_as_puppet
"-- WIZARDLY --";
":call_as_puppet(object, verbname, args)";
"Calls the given verb, after setting 'player' to this 'puppet'.";
if ((caller == this) || $perm_utils:controls(caller_perms(), this))
  actual = player;
  player = this;
  this:call(this, @args);
  player = actual;
else
  return E_PERM;
endif
"Last modified Fri Mar 17 20:03:36 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"do(new)" this none this
@program #26463:do(new)
if ((caller != this) && (!this:command_ok(caller_perms())))
  return E_PERM;
endif
if (caller_perms().wizard)
  who = player;
else
  who = caller_perms();
endif
text = args[1];
now = listdelete(args, 1);
for k in ({{"\"", "say "}, {":", "emote "}, {";", "eval"}, {"?", "help"}})
  if (index(text, k[1]) == 1)
    text = k[2] + text[length(k[1]) + 1..length(text)];
  endif
endfor
y = this:parse_command(text, this);
if ((y != {}) && valid(this.location))
  player = this;
  verb = y[1];
  dobj = y[2][1];
  dobjstr = y[2][2];
  prep = y[3][1];
  prepstr = y[3][2];
  iobj = y[4][1];
  iobjstr = y[4][2];
  args = y[5][1];
  argstr = y[5][2];
  verbargs = {y[6], {dobj, prep, iobj}};
  if (this:find_verb(player, verb, @verbargs))
    this:call(who, player, verb, args, @now);
  elseif (this:find_verb(player.location, verb, @verbargs))
    this:call(who, player.location, verb, args, @now);
  elseif (this:find_verb(dobj, verb, @verbargs))
    this:call(who, dobj, verb, args, @now);
  elseif (this:find_verb(iobj, verb, @verbargs))
    this:call(who, iobj, verb, args, @now);
  else
    "Comment out for now; should replace with correct huh sequence.";
    "this:call(who, player.location, \"huh2\", {verb, args}, @now)";
    "... Rog suggests:";
    this:call(who, $command_utils, "do_huh", {verb, args}, @now);
  endif
endif
"Last modified Fri Mar 17 20:03:55 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"add_monitor" this none this
@program #26463:add_monitor
":add_monitor(who)";
if ((caller != this) && (!$perm_utils:controls(caller_perms(), this)))
  return E_PERM;
endif
return this.tell_forward = setadd(this.tell_forward, args[1]);
"Last modified Fri Mar 17 20:04:01 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"remove_monitor" this none this
@program #26463:remove_monitor
":remove_monitor(who)";
if ((caller != this) && (!$perm_utils:controls(caller_perms(), this)))
  return E_PERM;
endif
return this.tell_forward = setremove(this.tell_forward, args[1]);
"Last modified Fri Mar 17 20:04:17 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"teleport" this none this
@program #26463:teleport
thing = args[1];
source = thing.location;
dest = args[2];
if (valid(dest))
  dest_name = dest.name;
else
  dest_name = tostr(dest);
endif
if (source == dest)
  player:tell(thing.name, " is already at ", dest_name, ".");
  return;
endif
thing:moveto(dest);
if (thing.location == dest)
  tsd = {thing, source, dest};
  if (thing == player)
    this:teleport_messages(@tsd, this:self_port_msg(@tsd),
this:oself_port_msg(@tsd), this:self_arrive_msg(@tsd), "");
  elseif (is_player(thing))
    this:teleport_messages(@tsd, this:player_port_msg(@tsd),
this:oplayer_port_msg(@tsd), this:player_arrive_msg(@tsd),
this:victim_port_msg(@tsd));
  else
    this:teleport_messages(@tsd, this:thing_port_msg(@tsd),
this:othing_port_msg(@tsd), this:thing_arrive_msg(@tsd),
this:object_port_msg(@tsd));
  endif
elseif (thing.location == source)
  if ($object_utils:contains(thing, dest))
    player:tell("Ooh, it's all twisty. ", dest_name, " is inside ", thing.name,
".");
  else
    if ($object_utils:has_property(thing, "po"))
      pronoun = thing.po;
    else
      pronoun = "it";
    endif
    player:tell("Either ", thing.name, " doesn't want to go, or ", dest_name, "
didn't accept ", pronoun, ".");
  endif
else
  thing_name = (thing == player) ? "you" | thing.name;
  player:tell("A strange force deflects ", thing_name, " from the
destination.");
endif
"Last modified Fri Mar 17 20:04:37 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"teleport_messages" this none this rx
@program #26463:teleport_messages
"Send teleport messages. There's a slight complication in that the source and
dest need not be valid objects.";
thing = args[1];
source = args[2];
dest = args[3];
if (msg = args[4])
  "The player's own message.";
  player:tell(msg);
endif
if ((msg = args[5]) && valid(source))
  "A message to the victim's original location, if it is a room.";
  if ($room in $object_utils:ancestors(source))
    source:announce_all_but({thing, player}, msg);
  endif
endif
if ((msg = args[6]) && valid(dest))
  "A message to the destination, if it is a room.";
  if ($room in $object_utils:ancestors(dest))
    dest:announce_all_but({thing, player}, msg);
  endif
endif
if (msg = args[7])
  "A message to the victim being teleported.";
  thing:tell(msg);
endif
"Last modified Fri Mar 17 20:04:50 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"self_port_msg player_port_msg thing_port_msg join_msg" this none
this
@program #26463:self_port_msg
"This verb returns messages that go only to you. You don't need to have your
name tacked on to the beginning of these. Heh.";
msg = this.(verb);
if (msg && (length(args) >= 3))
  msg = this:msg_sub(msg, @args);
endif
return msg;
"Last modified Fri Mar 17 20:04:58 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"oself_port_msg self_arrive_msg oplayer_port_msg player_arrive_msg
victim_port_msg othing_port_msg thing_arrive_msg object_port_msg" this none
this
@program #26463:oself_port_msg
"This verb returns messages that go to other players. It does pronoun
substitutions; if your name is not included in the final string, it adds the
name in front.";
msg = this.(verb);
if (msg && (length(args) >= 3))
  msg = this:msg_sub(msg, @args);
endif
if (msg && (!$string_utils:index_delimited(msg, player.name)))
  msg = (player.name + " ") + msg;
endif
return msg;
"Last modified Fri Mar 17 20:05:11 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"@join" any none none rxd
@program #26463:@join
"'@join <player>' - Teleport yourself to the location of any player, whether
connected or not.";
if (dobjstr == "")
  player:tell("Usage: @join <player>. For example, '@join frand'.");
  return;
endif
target = $string_utils:match_player(dobjstr);
$command_utils:player_match_result(target, dobjstr);
if (valid(target))
  if ((msg = this:join_msg()) && (player.location != target.location))
    player:tell_lines($string_utils:pronoun_sub(msg, target));
  endif
  this:teleport(this, target.location);
endif
"Last modified Fri Mar 17 20:05:21 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"index_room" this none this
@program #26463:index_room
"Look up a room in your personal database of room names, returning its index in
the list.";
room = args[1];
if (typeof(room) != STR)
  player:tell("Somebody made a mistake in calling \"Frand's player
class\":index_room. Maybe you'd better check it out.");
  return;
endif
size = length(room);
index = 1;
for item in (this.rooms)
  item_name = item[1];
  if ((length(item_name) >= size) && (room == item_name[1..size]))
    return index;
  endif
  index = index + 1;
endfor
return 0;
"Last modified Fri Mar 17 20:05:31 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"@go" any none none rxd
@program #26463:@go
"'@go <place>' - Teleport yourself somewhere. Example: '@go liv' to go to the
living room.";
dest = this:lookup_room(dobjstr);
if (dest == $failed_match)
  player:tell("There's no such place known.");
else
  this:teleport(player, dest);
endif
"Last modified Fri Mar 17 20:05:39 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"lookup_room" this none this
@program #26463:lookup_room
room = args[1];
if (room == "home")
  return player.home;
endif
index = this.owner:index_room(room);
if (index)
  return this.owner.rooms[index][2];
else
  source = player.location;
  if (!(valid(source) && ($room in $object_utils:ancestors(source))))
    source = $room;
  endif
  return source:match_object(room);
endif
"Last modified Fri Mar 17 20:05:48 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"home" none none none rxd
@program #26463:home
if (this.location == this.home)
  player:tell("You're already home!");
  return;
elseif ((typeof(this.home) != OBJ) || (!valid(this.home)))
  this.home = this.owner.home;
endif
if (valid(this.location))
  this.location:announce(player.name, " goes home.");
endif
player:tell("You click your heels three times.");
this:moveto(this.home);
this.location:announce(player.name, " comes home.");
if (this.location != this.home)
  player:tell("Either home doesn't want you, or you don't really want to go.");
  if (valid(this.location))
    this.location:announce(player.name, " learns that you can never go
home...");
  endif
endif
"Last modified Fri Mar 17 20:05:58 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"msg_sub" this none this
@program #26463:msg_sub
"Do pronoun and other substitions on the teleport messages. The arguments are:
1. The original message, before any substitutions; 2. object being teleported;
3. from location; 4. to location. The return value is the final message.";
msg = args[1];
thing = args[2];
from = args[3];
to = args[4];
msg = $string_utils:pronoun_sub(msg, thing);
msg = $string_utils:substitute(msg, {{"%<from room>", valid(from) ? from.name |
"Nowhere"}, {"%<to room>", valid(to) ? to.name | "Nowhere"}});
return msg;
"Last modified Fri Mar 17 20:06:06 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"look_self" this none this
@program #26463:look_self
if (this.look_notify)
  this.owner:tell("[", player.name, " looked at ", this.name, "]");
endif
return pass(@args);
"Last modified Fri Mar 17 20:06:14 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"@sethome" none none none rxd
@program #26463:@sethome
"WIZARDLY";
if (player != this)
  return E_PERM;
endif
if (this.location:accept_for_abode(this))
  this.home = this.location;
  player:tell("This is your new home.");
else
  player:tell("This place doesn't want to be your home.");
endif
"Last modified Fri Mar 17 20:06:21 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"help_msg" this none this
@program #26463:help_msg
all_help = this:description();
if (typeof(all_help) == STR)
  all_help = {all_help};
endif
for vrb in (verbs(this))
  code = verb_code(this, vname = $string_utils:explode(strsub(vrb, "*",
""))[1]);
  line = 1;
  help = {};
  while ((line <= length(code)) && (code[line][1] == "\""))
    help = {@help, code[line][2..length(code[line]) - 2]};
    line = line + 1;
  endwhile
  if (help)
    all_help = {@all_help, "", tostr(this, ":", vrb, (verb_args(this, vname) ==
{"this", "none", "this"}) ? " - Programmer Verb" | ""), @help};
  endif
endfor
return {@all_help, "----"};
"Last modified Fri Mar 17 20:26:20 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"@features" any none none rxd
@program #26463:@features
"Usage: @features [<name>]";
"List the feature objects matching <name> used by this puppet.";
linelen = this:linelen();
features = {};
for feature in (this:features())
  if (!valid(feature))
    this:remove_feature(feature);
  elseif ((!dobjstr) || ((dobjstr in feature.aliases) || ((pref =
$string_utils:find_prefix(dobjstr, feature.aliases)) || (pref ==
$ambiguous_match))))
    features = listappend(features, feature);
  endif
endfor
if (features)
  len = max(length("Feature"), length(tostr(max_object()))) + 1;
  header = {tostr($string_utils:left("Feature", len), "Name"),
tostr($string_utils:left("-------", len), "----")};
  flist = {};
  for feature in (features)
    flist = {@flist, tostr($string_utils:left(tostr(feature), len),
feature.name)};
  endfor
  if (length(flist) > 1)
    player:tell_lines({@$string_utils:columnize({@header, @header}, 2,
abs(linelen))});
    player:tell_lines({@#783:alt_columnize({@flist}, 2, " ",
$string_utils:space(len), abs(linelen))});
  else
    player:tell_lines({@header, @flist});
  endif
elseif (dobjstr)
  player:tell("No features found on ", this.name, " (", this, ") matching \"",
dobjstr, "\".");
else
  player:tell("No features found on ", this.name, " (", this, ").");
endif
"Last modified Fri Mar 17 20:06:44 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"@add-feature @addfeature" any none none rxd
@program #26463:@add-feature
"Usage:  @add-feature <feature object>";
"Add an object to this puppet's .features list. To use this verb, command the
puppet to `@rmfeature <object>'";
if (dobjstr)
  if (!$command_utils:object_match_failed(dobj, dobjstr))
    if (dobj in player:features())
      player:tell(dobjstr, " is already one of your features.");
    elseif (player:add_feature(dobj))
      player:tell(dobj, " (", dobj.name, ") added as a feature.");
    else
      player:tell("You can't seem to add ", dobj, " (", dobj.name, ") to your
features list.");
    endif
  endif
else
  player:tell("Usage:  @add-feature <object>");
endif
"Last modified Fri Mar 17 20:06:52 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"@remove-feature @rmfeature" any none none rxd
@program #26463:@remove-feature
"Usage:  @remove-feature <feature object>";
"Remove an object from this puppet's .features list. To use this verb, command
the puppet to `@rmfeature <object>'";
if (dobjstr)
  features = player:features();
  if (!valid(dobj))
    dobj = $string_utils:match(dobjstr, features, "name", features, "aliases");
  endif
  if (!$command_utils:object_match_failed(dobj, dobjstr))
    if (dobj in features)
      player:remove_feature(dobj);
      player:tell(dobj, " (", dobj.name, ") removed from your features list.");
    else
      player:tell(dobjstr, " is not one of your features.");
    endif
  endif
else
  player:tell("Usage:  @remove-feature <object>");
endif
"Last modified Fri Mar 17 20:07:00 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"notify" this none this
@program #26463:notify
if (!$list_utils:assoc("tell", callers(), 2))
  this:tell2(args[1]);
endif
"... without this, puppets never see text that bypasses :tell";
"Last modified Fri Mar 17 20:07:06 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"notify_lines" this none this
@program #26463:notify_lines
for line in ((typeof(lines = args[1]) != LIST) ? {lines} | lines)
  this:notify(line);
endfor
"Last modified Fri Mar 17 20:07:12 2000 EST by BruceR (#23981@DU_MainMOO).";
.

@verb #26463:"my_huh" this none this rx
@program #26463:my_huh
"Extra parsing of player commands.  Called by $command_utils:do_huh.";
if ((caller != this) && (!$perm_utils:controls(caller_perms(), this)))
  raise(E_PERM);
endif
set_task_perms(this);
if (r = pass(@args))
  return r;
else
  "... old LambdaMOO style features support ...";
  {data, @rest} = args;
  for fobj in (this.lambda_features)
    if (fobj:match_command(data))
      {verb, args} = $huh_data:get_multiple(data, {"verb", "args"});
      return fobj:(verb)(@args) || 1;
    endif
  endfor
  return 0;
endif
"Last modified Fri Mar 17 20:07:25 2000 EST by BruceR (#23981@DU_MainMOO).";
.

;"***finished***"
