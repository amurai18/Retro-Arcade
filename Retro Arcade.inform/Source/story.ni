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
		The description of camera is "An old but ".


[Rooms]

Spawn is a room.
	The printed name of Spawn is "Outside".	
	The description of spawn is "".
Spawn is south of Main Arcade Room.

Bathroom is west of Main Arcade Room.

Party Room is east of Main Arcade Room.

Hockey Table is northwest of Main Arcade Room.








