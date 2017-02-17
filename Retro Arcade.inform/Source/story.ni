"Retro Arcade" by Aaron Murai


[Navigation from Get that Cat]
When play begins: 
	now left hand status line is "Exits: [exit list]"; 
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


[Start Descriptions and Inventory]
The description of player is "You are curious to see what lies in the abandoned building.  You brought your trusty phone, a pen and paper to jot down any thoughts you have.  As a young, and eager news reporter, this will be your first major scoop.  You can't mess this up!".

[Disabling take all]
Rule for deciding whether all includes something: It does not.

[Prolouge]
When game begins:
	Say "As you walk up to the old, abandoned building on Elk Street, a chill runs down your spine.".
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
The flashlight is unlit.
The flashlight is switched off.
After switching on flashlight:
	say "Now you can see!";
	now flashlight is lit.
After switching off flashlight:
	say "Flashlight is now off.";
	now flashlight is unlit.

After deciding the scope of the player when the location is the Main Arcade Room:
	place Main Arcade Room in scope.

[Inform 7 Handbook By Jim Aikin]
Rule for printing the description of a dark room:
	say "It's super dark in here!  Well duh, if it's an abandoned building, there is no power.  Maybe you should look for a source of light...".
[Rule for printing the announcement of darkness:
	say "You can see now!". nneed help]

[Rooms]
Spawn is a room.
	The printed name of Spawn is "Outside".	
	The description of spawn is "Outside the abonded building, you don't know what to expect.  As long as you have your phone, pen and notepad, you'll be just fine.  Just go inside and explore!".
Spawn is south of Main Arcade Room.
	The description of Main Arcade Room is "Large aracde with machines.".
	The Main Arcade Room is dark.

Bathroom is west of Main Arcade Room. 
	The description of Bathroom is "For an abandonded building, the bathroom doesn't smell bad and it isn't very dirty.  Strange.".

Party Room is east of Main Arcade Room.
	The description of Party Room is "This was probably used to hold special party rooms.  There are portable tables set up and a couple boxes in the corner, but other than that, it's a plain room.  Wow, a birthday party in an arcade.  Must've been a 12 year old's dream.".

Hockey Table Room is northwest of Main Arcade Room.
	The description of Hockey Table Room is "This part of the Main Arcade Room must've been used for hockey table games.  The table is worn down and there are white marks, presumably from the paddles, on the sides.  It must've been very popular.".
	

[Hockey Table]
Table1 is a container.
	The printed name of Table1 is "Air Hockey Table".
	Understand "hockey table" as Table1.
	Understand "table" as Table1.
	Table1 is in the Hockey Table Room.
	The Table1 is locked.
	The Table1 can be unlocked.
[If player is carrying quarter;
If player is carrying green paddle;
If player is carrying blue paddle;
Then "unlock" hockey table]
	The Table1 is fixed in place.
	The description of Table1 is "A bright, neon green and blue air hockey table.  It looks like it's still in a playable condition.  If only you had the two paddles and a hockey puck, you could play it.  On the side, there is a sign that says '25 cents required'.".

Food Counter is northeast of Main Arcade Room. 
	The description of Food Counter is "This part of the Main Arcade Room was probably used to serve all the customers food like pizza, candy, and sodas.  The counter is painted bright red, and there is a bright blue neon sign on the wall saying, 'Food and Drink', and a pizza poster.".

Back Alley is northeast of Hockey Table Room.
Back Alley is northwest of Food Counter.
	The description of Back Alley is "A dark and dank back alley.  It seems really dirty and rats sneak past garbage cans and cardboard boxes.".

[Pager is a NPC]
Pager is an object in Main Arcade Room.
	Pager is not edible. 
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
	The printed name of Machine1 is "Pac-Man".
	Machine1 is fixed in place.
	Machine1 is not edible.  
	The description of Machine1 is "A classic Pac-Man machine.  Hey, I used to play this at my local arcade!  It's covered in dust from the top to the bottom.  Hey, what's this next to the controls?".
	
Machine2 is an object in Main Arcade Room.
	The printed name of Machine2 is "Space Invaders".
	Machine2 is fixed in place.
	Machine2 is not edible.
	The description of Machine2 is "Another classic arcade game.  In fact, I have a Space Invader's alien sticker on my laptop.  The control pad seems to be faded and dusty.  Nothing special seems to stick out.".
	
Machine3 is an object in Main Arcade Room.
	The printed name of Machine3 is "Donkey Kong".
	Machine3 is fixed in place.
	Machine3 is not edible.
	The description of Machine3 is "Donkey Kong?!  This is where Mario first appeared.  Wow, the colors really seem to pop off the machine.  Impressive for a game released in 1981.  Nothing special seems to stick out.".
	
Machine4 is an object in Main Arcade Room.
	The printed name of Machine4 is "Tetris".
	Machine4 is fixed in place.
	Machine4 is not edible.
	The description of Machine4 is "One of the most recognizable games.  On the side, there seems to be a ".
	










