[Front Matter]
"Retro Arcade" by Aaron Murai
The story creation year is 2017. 
The story headline is "A Retro Mystery.". 
The story genre is "Mystery". 
The story description is "A retro, mystery of an abandoned arcade.  You are a young, eager news reporter that is investigating an arcade.  Will you be able to find the missing pieces in order to turn on the power?".
[Navigation from Get that Cat]
When play begins: 
	now left hand status line is "Possible Exits: [exit list]"; 
      now right hand status line is "[location]".
To say exit list: 
	let place be location; 
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, say " [way]".
[Scoring System]
Use scoring.
The target score is a number variable.  The target score is 5.
	The maximum score is 5.
	Use the serial comma.
After taking the pager for the first time:
	increase score by 1.
After taking quarter for the first time:
	increase score by 1.
After switching on flashlight for the first time:
	increase score by 1;
		say "Now you can see things easier with the flashlight from your phone.".
After taking paddles for the first time:
	increase score by 1.
After taking puck for the first time:
	increase score by 1.
[Start Descriptions and Inventory]	
[Disabling take all]
Rule for deciding whether all includes something: It does not.
[Prolouge]
When game begins:
	Say "As you walk up to the old, abandoned building on Elk Street, a chill runs down your spine.  You have been informed that it used to be a popular arcade that faded out with the times.  It hasn't been touched in many, many years.  It seems pretty dark in the building, so you should probably find the switch for the electric box in order to turn the power on.  Maybe you will find something interesting to write about.".
	Pen is an object.
		Player is carrying pen.
		The description of pen is "A new, ball point pen used for writing down notes.  Don't lose it!".
	Notepad is an object.
		Player is carrying Notepad.
		The description of notepad is "Your trusty notepad that you have used over the past year.  It's riddled with sketches, doodles, and useless notes from stories that didn't make the website.  But, things will change with this story!".
	Flashlight is a device.
		Player is carrying Flashlight.
		The description of Flashlight is "The flashlight from your phone.".
		Understand "light" as flashlight.
	Phone is an object.
		Player is carrying Phone.
		The description of phone is "A standard phone.  There is no real use for calling or texting anyone.".
	the description of player is "You are curious to see what lies in the abandoned building.  You brought your trusty phone, a pen and paper to jot down any thoughts you have.  As a young, and eager news reporter, this will be your first major scoop.  You can't mess this up!".
[Custom text if player tries to use phone, notepad or pen.]
Instead of switching on phone:
	say "There is nothing useful to use your phone.".
Instead of switching on notepad:
	say "You are already taking notes.".
Instead of switching on pen:
	say "You are already taking notes.".
Instead of playing phone:
	say "There isn't really much to do on your phone.".
[Flashlight and Dark Rooms]
A device can be lit or unlit.  A device is usually unlit.
The flashlight is unlit.
The flashlight is switched off.
Carry out switching on flashlight:
	now flashlight is lit.
Carry out switching off flashlight:
	now flashlight is unlit.
Understand "turn on [something]" as switching on.
Understand "use [something]" as switching on.
[Inform 7 Handbook By Jim Aikin]
Rule for printing the description of a dark room:
	say "It's super dark in here!  Well duh, if it's an abandoned building, there is no power.  Maybe you have a source of light already...".
[Outside and Main Arcade]
Spawn is a room.
	The printed name of Spawn is "Outside".	
	The description of spawn is "Outside the abandoned building, you don't know what to expect.  As long as you have your phone, pen and notepad, you'll be just fine.  Make sure you have some sort of light...".
Spawn is south of Main Arcade Room.
The Main Arcade Room is dark.
[Help from Mrs. Kiang]
The description of the Main Arcade Room is "[if player is in Main Arcade room for the first time and the flashlight is switched on] This large room includes the air hockey table and food counter.  But, they are to the northeast, and northwest.  In the front, there are many arcade machines, coated with dust, dirt, and spider webs.  The room lights up after being in the dark for so long.  You can picture kids and adults alike spending countless hours engaged in killing aliens, or stacking blocks.  The back alley is behind the hockey table and food counter.  You should probably find the power switch so you don't have to hold your flashlight the whole time.  While old and dusty, it seems as if people have broken in before to walk around and maybe even steal the arcade machines.  The bathroom is to the west, and a party room to the east, according to your boss, and the employees room is to the west of the hockey table. [else if the player is in Main Arcade room more than once and flashlight is switched on]Lots of dusty arcade machines around.  The whole room just gives off a classic, 80s vibe.  Oh boy, what simpler times.".
Bathroom is west of Main Arcade Room. 
Bathroom is dark.
	The description of Bathroom is "For an abandonded building, the bathroom doesn't smell bad and it isn't very dirty.  Strange.  There's only a sink in here as the toilets were destroyed.".
[Hockey Puck]
Puck is on top of the sink.
The printed name of puck is "Air Hockey Puck".
The description of puck is "A neon green air hockey puck.".
Puck is undescribed.
Sink is scenery in Bathroom. 
The description of the sink is "A normal white sink with dust in the middle.  There seems to be...Oh hey it's the puck.  It looks like a bar of soap.".
[Puzzle with hidden paddles behind boxes]
Party Room is east of Main Arcade Room.
Party Room is dark.
	The description of Party Room is "This was probably used to hold special party rooms.  There are portable tables set up and a couple boxes in the corner, but other than that, it's a plain room.  Wow, a birthday party in an arcade.  Must've been a 12 year old's dream.".
Tables is scenery in Party Room.
	The printed name of tables is "Portable Tables".
	Understand "table" as Tables.
	Understand "portabletables" as tables.
	The description of tables is "Just some portable, plastic tables.  These must've been used because they're easy to clean.  Understandable...".
	Tables is undescribed.
[Boxes hide paddles]
Boxes is a thing.
Boxes is in Party Room.
Boxes is undescribed.
Boxes is fixed in place.
The description of boxes is "A bunch of old, dusty cardboard boxes stacked in the corner.  They seem to make up the shape of a pyramid.  The boxes were placed with such effort and precision, it seems like it would be hiding something.".
Understand "box" as boxes.
Understand "dusty cardboard boxes" as boxes.
Understand "cardboard boxes" as boxes.
Understand "dusty boxes" as boxes.
Understand "cardboard box" as boxes.
Understand "pyramid" as boxes.
Understand "boxes" as boxes.
Understand "stack of boxes" as boxes.
Understand "corner boxes" as boxes.
Understand "cardboardboxes" as boxes.
Understand "cardboardbox" as boxes.
[Look behind action for finding paddles and key]
Looking behind is an action applying to one thing and requiring light.
	Understand "Look behind [something]" as looking behind.
	Understand "Look behind the [something]" as looking behind.
	Understand "peak behind [something]" as looking behind.
	Understand "Look over [something]" as looking behind.
	Understand "Look around the [something]" as looking behind.
	Understand "Look through the [something]" as looking behind.
[Commonly used action for players]
Moving is an action applying to one thing.
	Understand "move [something]" as moving.
	Understand "move the [something]" as moving.
	Understand "move [something] to the side" as moving.
	Understand "move [something] aside" as moving.
	Understand "move the [something] to the side" as moving.
[Can't move boxes or open them, makes them look behind.]
Instead of moving the boxes:
	say "You don't really want to touch them as they are super old and moldy.  They also seem really heavy, therefore they won't really budge.  Maybe you could see behind them...".
Instead of opening the boxes:
	say "The boxes are sealed shut.  There doesn't seem to be anything special in the boxes.  But it looks like something might be behind it...".
[New Action definition]
Placing is an action applying to two things.
	Understand "Place [something] on top of [something]" as placing.
	Understand "Place [something] on [something]" as placing.
[If player tries to place paddles but doesn't have it, say where are the paddles?]
Check placing:
	If player is not carrying the paddles:
		say "Where are the paddles?";
	If player is not carrying the puck:
		say "Where is the puck?";
	Otherwise:
		Continue the action.
Hockey Paddles is a thing.
Hockey paddles is in Party Room.
Understand "Paddles" as Hockey Paddles.
The description of paddles is "A pair of air hockey paddles.  The white has faded, and has turned a brown shade.  There are scratches and dents from hitting the puck too hard.  The air hockey table must have been a popular game.".
Hockey paddles is undescribed.
Hockey paddles can be found.  
Hockey paddles is not found.
Instead of looking behind the boxes:
	If paddles is found:
		say "Nothing much.";
	Otherwise:
		now paddles is found;
		now player carries paddles;
		say "You found the two missing paddles for the air hockey table.  Go put it on the table.".
[Hockey Table Room]
Hockey Table Room is northwest of Main Arcade Room.
Hockey Table Room is dark.
	The description of Hockey Table Room is "This part of the Main Arcade Room must've been used for hockey table games.  The table is worn down and there are white marks, presumably from the paddles, on the sides.  It must've been very popular.".
[Hockey Table]
[Player can't play with hockey table b/c power is turned off.]
Instead of playing Table1:
	say "You can't play with the air hockey table as the power is turned off.  Shucks.".
Table1 is fixed in place.
The description of Table1 is "A bright, neon green and blue air hockey table.  It looks like it's still in a playable condition, but it's turned off.  If only you had the two paddles and a hockey puck, you could play it.  You look on the side to see that there is a coin slot that says '25 cents required'.  It looks like you could put the paddles and puck on top of the table, and then put the quarter in the coin slot".
Table1 is a supporter.  
Table1 can be on or off. 
Table1 is off.
The printed name of Table1 is "Air Hockey Table".
	Understand "hockey table" as Table1.
	Understand "table" as Table1.
	Understand "air hockey table" as Table1.
	Understand "hockeytable" as Table1.
	Understand "hockey-table" as Table1.
	Understand "airhockeytable" as Table1.
Table1 is in the Hockey Table Room.
Table1 is locked.
Table1 can be unlocked.
[Inform Handbook Jim Aikins]
[Unlocking table]
[When player has all the objects, he/she can switch the table on.]
An every turn rule:
	if puck is on top of table1:
		if paddles is on top of table1:
			if quarter is in coin slot:
				now Table1 is on;
				say "The table seems like it would turn on now, but you remember there is no power supply for the table.  There must be a key that unlocks the Electric Box so you can turn on the power.";
				 say "The pager lights up and says: The electric box must be outside or in the back alley.  But, you can't open it without a key.  It must be where the employees work...".

[Toggling is an action applying to one thing.
Understand "toggle [something]" and "switch [something]" as toggling.
Check toggling:
	if the noun is not a device:
		say "[The noun] can't be toggled on and off.".
Carry out toggling:
	if the noun is switched off:
		try switching on the noun instead;
	otherwise:
		continue the action.
		
If player placing paddles on top of Table1;
		If player placing puck on top of table1;
			If player inserting quarter into table1;
				Switch table1 on;
					say "You have all the components of the Air Hockey Table.  Now, just find the key that unlocks the Electric Box so you can turn on the power.".]
					
[I tried to make it so that once you placed the paddles and puck on the table, and inserted the quarter, the table would "unlock" and say some special dialouge, but it wasn't working.  So, I made the table a device and once you have all the items, it switches on, which gives a hint to where the key is and then unlocking the electric box.]
Food Counter is northeast of Main Arcade Room. 
Food Counter is dark.
	The description of Food Counter is "This part of the Main Arcade Room was probably used to serve all the customers food like pizza, candy, and sodas.  The counter is painted bright red, and there is a bright blue neon sign on the wall saying, 'Food and Drink', and a pizza poster.".
[Key for electric box]
Key is an object.
Key is in Food Counter.
Key is undescribed.
Key unlocks Electric Box.
Key can be found.  
Key is not found.
The description of key is "A shiny, metal key that sparkles in your flashlight.  There is a little lightning bolt inscribed in the key.  It must mean power.".
[look behind counter to find the key]
Instead of looking behind the redcounter:
	If key is found:
		say "There is nothing else here.";
	Otherwise:
		now key is found;
		now player carries key;
		say "You found a key!  It might be useful for turning on something...".

RedCounter is a thing in Food Counter.
RedCounter is fixed in place.
Redcounter is undescribed.
The printed name of redcounter is "Counter".
Understand "red counter" as redcounter.
Understand "counter" as redcounter.
Understand "the counter" as redcounter.
Understand "bright red counter" as redcounter.

NeonSign is scenery in Food Counter.
The printed name of NeonSign is "Neon Sign".
Understand "neon sign" as neonsign.
Understand "sign" as neonsign.
Understand "neon" as neonsign.
Understand "neonsign" as neonsign.
The description of neonsign is "It isn't glowing right now but the reflection of your flashlight off the sign hits a shiny metal object behind the counter.  It looks like a key....".

PizzaPoster is scenery in Food Counter.
The printed name of PizzaPoster is "Pizza Poster".
Understand "poster" as pizzaposter.
Understand "pizza poster" as pizzaposter.
Understand "the poster" as pizzaposter.
Understand "pizzaposter" as pizzaposter.

Back Alley is northeast of Hockey Table Room.
Back Alley is northwest of Food Counter.
Back Alley is dark.
	The description of Back Alley is "A dark and dank back alley.  It seems really dirty and rats sneak in and out past garbage cans.".
[The electric box that turns on the power.  Once you unlock it with the key, you should win.]
Electric Box is a container in Back Alley.
Electric Box is locked and lockable.
Electric Box is undescribed.
Electric box is fixed in place.
The description of electric box is "The box is currently locked, but it looks like a key will unlock it.  This serves as the main power.".  

GarbageCans is scenery in Back Alley.
	The printed name of GarbageCans is "Garbage Cans".
	Understand "trash cans" as GarbageCans.
	Understand "Garbage cans" as GarbageCans.
	Understand "trash can" as GarbageCans.
	Understand "Garbage can" as GarbageCans.
	Understand "garbagecan" as GarbageCans.
	Understand "dumpster" as GarbageCans.
	Understand "trash" as GarbageCans.
	The description of GarbageCans is "A couple of garbage cans that are no longer in use.  They look pretty disgusting as it hasn't been touched in many, many years."
[Pager is like a NPC]
Pager is a thing in Main Arcade Room.
	The description of Pager is "The brightly lit green screen gives off some light.  Strange to find a working pager in an abandoned arcade.  Nevertheless, it seems useful.  Might as well take it.".
[Inform 7 Handbook By Jim Aikin]
[Tried to make pager an NPC, but decided to make it a thing that triggers after an event has occured]
[Every turn:
	if the location of Pager is not the location of the player:
		let the way be the best route from the location of Pager to the location of the player;
		try Pager going the way.]
Instead of taking Pager:
	say "The pager glows and says: There might be some loose change in the Main Arcade Room.";
	move Pager to player.
Instead of taking quarter:
	say "The pager glows again and says: If you had a birthday party, wouldn't you want to control the air hockey table?";
	move quarter to player.
Instead of taking puck:
	say "The pager glows once again and says: If you have the paddles and quarter, it's time to play.";
	move puck to player.
Instead of taking paddles:
	say "The pager lights up and says: Now you need something to hit.  The puck looks like a bar of soap though...";
	move paddles to player.
[First Puzzle with Quarter]
Quarter is an object.
Quarter is undescribed.
The description of Quarter is "A normal quarter used to play games.".
Understand "coin" as quarter.
Understand "token" as quarter.
Understand "25 cents" as quarter.
The Quarter is not edible.
Quarter is on top of Machine1.			
[If player has quarter, then the description of player changes.]
An every turn rule:
	If player is carrying quarter:
		Now description of player is "You can feel the excitement on your face as things are starting to get interesting.".	
Check inserting:
	If player is not carrying quarter:
		say "You don't have a quarter.  I think there might be one near the arcade machines.".
[A place for the quarter to go in.]
[Help from Mrs. Kiang]
Coin Slot is a container in Hockey Table Room. 
	Coin slot is openable.
	Coin slot is fixed in place.
	Understand "slot" as Coin slot.
	Coin slot is undescribed. 
	The description of coin slot is "The coin slot for the air hockey table. Insert one quarter in coin slot to play air hockey. Only a quarter? What a deal!".
After inserting quarter into Coin slot:
	now coin slot is open;
		say "It makes a clinking sound.".
[Defining Inserting as an action]
Inserting is an action applying to two things.
	Understand "insert [something] into [something]" as inserting.
	Understand "put [something] into [something]" as inserting.
	Understand "Place [something] in [something]" as inserting.
	Understand "insert [something] in the [something]" as inserting.
	Understand "slide [something] into [something]" as inserting.
	Understand "put [something] in the [something]" as inserting.
[Gives a clue as to where quarter is]
Controls is an object.
	Controls is on top of Machine1.
	Controls is fixed in place.
	Controls is not edible.
	Controls is undescribed.
	The description of Controls is "It's used to control Pac-Man.  There is a dusty quarter next to it.".
	Understand "pac man controls" as controls.
	Understand "game controls" as controls.
	Understand "game control" as controls.
	Understand "pac-man controls" as controls.
[Arcade Machines]
[They have seperate descriptions, but you can't play them as the electricity is off.]
[When player tries to play machine, it says you can't]
Instead of playing Machine1:
	say "You can't play the arcade machines as the power is turned off.  Shucks.".
[Dirt, dust, and spider webs.]
Dirt is scenery in Main Arcade Room.
	The description of dirt is "Regular dirt from years of inactivity.  Pretty gross.".
Dust is scenery in Main Arcade Room.
	The description of dust is "A buildup of many different small particles.  Pretty much expected in an abandoned building.".
Spider Webs is scenery in Main Arcade Room.
	The description of spider webs is "Some gross spider webs on top of the machines.  It's all over... Gross.".
	Understand "web" as spider webs.
	Understand "spider web" as spider webs.
	Understand "spider" as spider webs.
	Understand "webs" as spider webs.
Machine1 is a supporter in Main Arcade Room.  
	Understand "Pac-Man Machine" as Machine1.
	Understand "Pac Man" as Machine1.
	Understand "Pac-Man" as Machine1.
	Understand "PacMan" as Machine1.
	Understand "Pac Man" as Machine1.
	Understand "Pac Man Game" as Machine1.
	Understand "Pac Man Machine" as Machine1.
	Understand "Pac-Man game" as Machine1.
	The printed name of Machine1 is "Pac-Man".
	Machine1 is fixed in place.
	Machine1 is not edible.  
	The description of Machine1 is "A classic Pac-Man machine.  Hey, I used to play this at my local arcade!  It's covered in dust from the top to the bottom.  Hey, what's this next to the controls?".
Instead of playing Machine2:
	say "You can't play the arcade machines as the power is turned off.  Shucks.".
Machine2 is an object in Main Arcade Room.
	The printed name of Machine2 is "Space Invaders".
	Understand "Space" as Machine2.
	Understand "Invaders" as Machine2.
	Understand "space-invaders" as Machine2.
	Understand "spaceinvaders" as Machine2.
	Understand "space invaders game" as Machine2.
	Understand "Space invaders machine" as Machine2.
	Machine2 is fixed in place.
	Machine2 is not edible.
	The description of Machine2 is "Another classic arcade game.  In fact, I have a Space Invader's alien sticker on my laptop at my office.  Nothing special seems to stick out.".
Instead of playing Machine3:
	say "You can't play the arcade machines as the power is turned off.  Shucks.".	
Machine3 is an object in Main Arcade Room.
	The printed name of Machine3 is "Donkey Kong".
	Understand "Donkey" as Machine3.
	Understand "kong" as Machine3.
	Understand "DonkeyKong" as Machine3.
	Understand "Donkey-kong" as Machine3.
	Understand "Donkey Kong Machine" as Machine3.
	Understand "Donkey Kong Game" as Machine3.
	Machine3 is fixed in place.
	Machine3 is not edible.
	The description of Machine3 is "Donkey Kong?!  This is where Mario first appeared.  Wow, the colors of the game used to pop off the screen.  Too bad it doesn't work.  Impressive for a game released in 1981.  Nothing special seems to stick out.".
Instead of playing Machine4:
	say "You can't play the arcade machines as the power is turned off.  Shucks.".
Machine4 is an object in Main Arcade Room.
	The printed name of Machine4 is "Tetris".
	Understand "Tetris Machine" as Machine4.
	Understand "Tetris game" as Machine4.
	Understand "Tetris" as Machine4.
	Machine4 is fixed in place.
	Machine4 is not edible.
	The description of Machine4 is "One of the most recognizable games.  The colors have faded from the blocks on the side of the machine.  It's also covered in dust and spider webs.".
[Playing action, people commonly want to play with phone or games, but they can't.]
Playing is an action applying to one thing.
	Understand "play [something]" as playing.
	Understand "play with [something]" as playing.

[End.  Player must have puck, paddles, and quarter, and then unlock the box with the key to win.]
After unlocking Electric Box with key:
	If player has puck:
		If player has paddles:
			If player has quarter:
				say "You turned the power on!  After that, everything else came to life and it was like you were a child again, spending a weekend grinding the machines.  Eventually, you quit your job as a reporter and aquired the arcade.  You run one of the most popular arcades in the city now.  Business is booming!";
				end the story finally.
			


[Fastest Way to win game]
[turn on flashlight
 n
 x pac man
 x controls
 take quarter
 e
 look behind boxes 
 take paddles
 w 
 w
 x sink
 take puck 
 e
 nw
 put paddles on table
 put puck on table
 insert quarter into coin slot
 se
 ne
 Look behind counter
 take key
 nw
 unlock electric box with key
 ]





