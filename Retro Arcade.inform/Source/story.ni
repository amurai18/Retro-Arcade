"Retro Arcade" by Aaron Murai


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
The target score is a number variable.  The target score is 10.
	The maximum score is 10.
	Use the serial comma.

After taking the pager for the first time:
	increase score by 1;
	say "Looks like it will help you along the way.  You should keep it if you need hints.".

After taking quarter for the first time:
	increase score by 1.

After switching on flashlight for the first time:
	increase score by 1.

After taking paddles for the first time:
	increase score by 1.

[Start Descriptions and Inventory]
The description of player is "You are curious to see what lies in the abandoned building.  You brought your trusty phone, a pen and paper to jot down any thoughts you have.  As a young, and eager news reporter, this will be your first major scoop.  You can't mess this up!".

[Disabling take all]
Rule for deciding whether all includes something: It does not.

[Prolouge]
When game begins:
	Say "As you walk up to the old, abandoned building on Elk Street, a chill runs down your spine.  While old, the building contains an abandoned arcade from the 80s.".
	Pen is an object.
		Player is carrying pen.
		The description of pen is "A new, ball point pen used for writing down notes.  Don't lose it!".
	Notepad is an object.
		Player is carrying Notepad.
		The description of notepad is "Your trusty notepad that you have used over the past year.  It's riddled with sketches, doodles, and useless notes from stories that didn't make the website.  But, things will change with this story!".
	Phone is an object.
		Player is carrying Phone.
		The description of Phone is "An off brand phone that was assigned to you for stories.  It has standard call and text options, but no app store.  It also comes with a flashlight and bluetooth.".
	Flashlight is a device.
		Player is carrying Flashlight.
		The description of Flashlight is "The flashlight from your phone.".

[Flashlight and Dark Rooms]
A device can be lit or unlit.  A device is usually unlit.

The flashlight is unlit.
The flashlight is switched off.
Carry out switching on flashlight:
	now flashlight is lit.
Carry out switching off flashlight:
	now flashlight is unlit.
	
[Inform 7 Handbook By Jim Aikin]
Rule for printing the description of a dark room:
	say "It's super dark in here!  Well duh, if it's an abandoned building, there is no power.  Maybe you have a source of light already...".

[Rooms]
Spawn is a room.
	The printed name of Spawn is "Outside".	
	The description of spawn is "Outside the abonded building, you don't know what to expect.  As long as you have your phone, pen and notepad, you'll be just fine.  Make sure you have some sort of light...".
Spawn is south of Main Arcade Room.
The Main Arcade Room is dark.

[Help from Mrs. Kiang]
The description of the Main Arcade Room is "[if player is in Main Arcade room for the first time and the flashlight is switched on] This large room includes the air hockey table and food counter.  In the front, there are many arcade machines, coated with dust, dirt, and spider webs.  The room lights up after being in the dark for so long.  You can picture kids and adults alike spending countless hours engaged in killing aliens, or stacking blocks.  The door to the back alley is behind the hockey table and food counter.  You should probably find the power switch so you don't have to hold your flashlight the whole time.  While old and dusty, it seems as if people have broken in before to walk around and maybe even steal the arcade machines.  The bathroom is to the west, and a party room to the east, according to your boss, and the employees room is to the west of the hockey table. [else if the player is in Main Arcade room more than once and flashlight is switched on]Lots of dusty arcade machines around.  The whole room just gives off a classic, 80s vibe.  Oh boy, what simpler times.".
	
Bathroom is west of Main Arcade Room. 
Bathroom is dark.
	The description of Bathroom is "For an abandonded building, the bathroom doesn't smell bad and it isn't very dirty.  Strange.".
[Hockey Puck]
Puck is an object in Bathroom.
The printed name of puck is "Air Hockey Puck".
The description of puck is "A neon green air hockey puck.".
Puck is undescribed.

[Puzzle with hidden paddles behind boxes]
Party Room is east of Main Arcade Room.
Party Room is dark.
	The description of Party Room is "This was probably used to hold special party rooms.  There are portable tables set up and a couple boxes in the corner, but other than that, it's a plain room.  Wow, a birthday party in an arcade.  Must've been a 12 year old's dream.".
	
Boxes is a thing.
Boxes is in Party Room.
Boxes is undescribed.
Boxes is fixed in place.
The description of boxes is "A bunch of old, dusty cardboard boxes stacked in the corner.  They seem to make up the shape of a pyramid.  The boxes were placed with such effort and precision, it seems like it would be hiding something.".

Looking behind is an action applying to one thing and requiring light.
	Understand "Look behind [something]" as looking behind.

Placing is an action applying to two things.
	Understand "Place [something] on top of [something]" as placing.
	Understand "Place [something] on [something]" as placing.
	
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
		say "Just a lot of dirt, dust, and spider webs.";
	Otherwise:
		now paddles is found;
		now player carries paddles;
		say "You found the two missing paddles for the air hockey table.  Go put it on the table.".

Hockey Table Room is northwest of Main Arcade Room.
Hockey Table Room is dark.
	The description of Hockey Table Room is "This part of the Main Arcade Room must've been used for hockey table games.  The table is worn down and there are white marks, presumably from the paddles, on the sides.  It must've been very popular.".
	
[Hockey Table]
Table1 is a container.
	The printed name of Table1 is "Air Hockey Table".
	Understand "hockey table" as Table1.
	Understand "table" as Table1.
	Table1 is in the Hockey Table Room.
	The Table1 is locked.
	The Table1 can be unlocked.

Rule for printing the name of Table1:
	If Table1 is closed:
		say "Air Hockey Table".

An every turn rule:
	If player is carrying quarter:
		If player is carrying paddles:
			If player is carrying puck:
				Now Table1 is unlocked;
	Otherwise:
		Continue the action.
	
	The Table1 is fixed in place.
	The description of Table1 is "A bright, neon green and blue air hockey table.  It looks like it's still in a playable condition.  If only you had the two paddles and a hockey puck, you could play it.  On the side, there is a sign that says '25 cents required'.".

Food Counter is northeast of Main Arcade Room. 
Food Counter is dark.
	The description of Food Counter is "This part of the Main Arcade Room was probably used to serve all the customers food like pizza, candy, and sodas.  The counter is painted bright red, and there is a bright blue neon sign on the wall saying, 'Food and Drink', and a pizza poster.".

Back Alley is northeast of Hockey Table Room.
Back Alley is northwest of Food Counter.
Back Alley is dark.
	The description of Back Alley is "A dark and dank back alley.  It seems really dirty and rats sneak in and out past garbage cans and cardboard boxes.".

[Pager is a NPC]
Pager is a man in Main Arcade Room.
	The description of Pager is "The brightly lit green screen gives off some light.  Strange to find a working pager in an abonded arcade.  Nevertheless, it seems useful.  Might as well take it.".

[First Puzzle with Quarter]
Quarter is undescribed.
	The description of Quarter is "A normal quarter used to play games.".
	The Quarter is not edible.
	Quarter is on top of Machine1.

[Gives a clue as to where quarter is]
Controls is an object.
	Controls is on top of Machine1.
	Controls is fixed in place.
	Controls is not edible.
	Controls is undescribed.
	The description of Controls is "It's used to control Pac-Man.  There is a dusty quarter next to it.".

[Arcade Machines]
Machine1 is an object in Main Arcade Room.  
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
	The description of Machine2 is "Another classic arcade game.  In fact, I have a Space Invader's alien sticker on my laptop.  The control pad seems to be faded and dusty.  Nothing special seems to stick out.".
	
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
	The description of Machine3 is "Donkey Kong?!  This is where Mario first appeared.  Wow, the colors really seem to pop off the machine.  Impressive for a game released in 1981.  Nothing special seems to stick out.".
	
Machine4 is an object in Main Arcade Room.
	The printed name of Machine4 is "Tetris".
	Understand "Tetris Machine" as Machine4.
	Understand "Tetris game" as Machine4.
	Machine4 is fixed in place.
	Machine4 is not edible.
	The description of Machine4 is "One of the most recognizable games.  The colors have faded from the blocks on the side of the machine.  It's also covered in dust and spider webs.".
	
[End]
An every turn rule:
	if player unlocks Table1:
		say "The power turned on!";
		end the story finally.


[Fastest Way to win game]
[turn on flashlight
 go north
 x Pac-man machine
 x controls
 then take quarter
 go east
 look behind boxes 
 take paddles
 go w, then west again
 take puck
 go to hockey table
 place paddles and puck on top of table
 insert quarter]





