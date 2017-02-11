"Retro Arcade" by Aaron Murai


[Navigation and Points]
When play begins: 
	now left hand status line is "Exits: [exit list]"; 
      now right hand status line is "[location]".
To say exit list: 
	let place be location; 
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, say " [way]".


[Start Descriptions and Inventory]
The description of player is "You are".

When game begins:
	say "As you walk up to the old, abandoned building on Elk Street, a chill runs down your spine.".
	Pencil is an object.
		Player is carrying pencil.
	Notepad is an object.
		Player is carrying Notepad.
	Camera is an object.
		Player is carrying Camera.


[ROOMS]
Spawn is a room.
The printed name of Spawn is "Outside".	

Spawn is south of Main Arcade Room.

Bathroom is west of Main Arcade Room.

Party Room is east of Main Arcade Room.

Hockey Table is northwest of Main Arcade Room.








