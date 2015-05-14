package weapon;

import flixel.FlxSprite;

class Weapon extends FlxSprite {
	public function new() {
		super();
		loadGraphic(Reg.SPOON, true);
		height = 5;
		width = 2;
		offset.set(10, 10);
	}
}
