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

[Possible Point System]


[Start Descriptions and Inventory]

The description of player is "You are curious to see what lies in the abandoned building.  You brought your trusty camera, a pen and paper to jot down any thoughts you have.  As a young, and eager news reporter, this will be your first major scoop.  You can't mess this up!".

When game begins:
	Say "As you walk up to the old, abandoned building on Elk Street, a chill runs down your spine.".
	Pen is an object.
		Player is carrying pen.
		The description of pen is "A new, ball point pen used for writing down notes.  Don't lose it!".
	Notepad is an object.
		Player is carrying Notepad.
		The description of notepad is "Your trusty notepad that you have used over the past year.  It's riddled with sketches, doodles, and useless notes from stories that didn't make the website.  But, things will change with this story!".
	Camera is an object.
		Player is carrying Camera.
		The description of camera is "An old but trusty Nikon camera.".


[Rooms]

Spawn is a room.
	The printed name of Spawn is "Outside".	
	The description of spawn is "".
Spawn is south of Main Arcade Room.

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

Machine1 is an object in Main Arcade Room.  
	Understand "Pac-Man Machine" as Machine1.
	The printed name of Machine1 is "Pac-Man Machine".
	Machine1 is fixed in place.
	Machine1 is not edible.  
	The description of Machine1 is "A classic Pac-Man Machine.  Hey, I used to play this at my local arcade!  It's covered in dust from the top to the bottom.  Hey, what's this next to the controls?".
	

Bathroom is west of Main Arcade Room.

Party Room is east of Main Arcade Room.

Hockey Table Room is northwest of Main Arcade Room.

The Hockey Table is a container.
	The Hockey Table is in the Hockey Table Room.
	The Hockey Table is locked.
	The Hockey Table is fixed in place.

Food Counter is northeast of Main Arcade Room.

Back Alley is northeast of Hockey Table Room.

Back Alley is northwest of Food Counter.










