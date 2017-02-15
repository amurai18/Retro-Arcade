"Retro Arcade" by Aaron Murai


[Navigation]
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
	say "Looks like it will help you along the way.  Keep it if you need hints.".
	


[Start Descriptions and Inventory]

The description of player is "You are curious to see what lies in the abandoned building.  You brought your trusty phone, a pen and paper to jot down any thoughts you have.  As a young, and eager news reporter, this will be your first major scoop.  You can't mess this up!".

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

[Rooms]

Spawn is a room.
	The printed name of Spawn is "Outside".	
	The description of spawn is "Outside the abonded building, you don't know what to expect.  As long as you have your phone ".
Spawn is south of Main Arcade Room.

[Pager is a NPC]
Pager is an object in Main Arcade Room.
	Pager is not edible. 
	The description of Pager is "The brightly lit green screen gives off some light.  Strange to find a working pager in an abonded arcade.  Nevertheless, it seems useful.  Might as well take it.".

[First Puzzle with Quarter]
	Quarter is undescribed.
		The description of Quarter is "A normal quarter used to play games.".
		The Quarter unlocks the Hockey Table.
		The Quarter is not edible.
		Quarter is on top of Machine1.

[Gives a clue as to where quarter is]
	Controls is an object.
		Controls is on top of Machine1.
		Controls is fixed in place.
		Controls is not edible.
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
	The description of Machine4 is "One of the most recognizable games.".
	

Bathroom is west of Main Arcade Room.

Party Room is east of Main Arcade Room.

Hockey Table Room is northwest of Main Arcade Room.

[Hockey Table]
	The Hockey Table is a container.
		The Hockey Table is in the Hockey Table Room.
		The Hockey Table is locked.
		The Hockey Table is fixed in place.

Food Counter is northeast of Main Arcade Room.

Back Alley is northeast of Hockey Table Room.

Back Alley is northwest of Food Counter.










