package weapon;

import flixel.FlxSprite;
import flixel.util.FlxRandom;

class Weapon extends FlxSprite {
	public function new() {
		super();
		_setupAssets();
	}

	public function use() {
		_animate();
	}

	function _setupAssets() {
		loadGraphic(Reg.SLASH_ANIM, true, 192, 192);
		animation.frameIndex = 10;
		animation.add("idle", [0, 1, 2, 3], 10, true);
		animation.add("slash1", [4, 5, 6, 7], 10, false);
		animation.add("slash2", [8, 9, 10, 11], 10, false);
		animation.add("slash3", [12, 13, 14, 15], 10, false);
		animation.add("slash4", [16, 17, 18, 19], 10, false);
		animation.add("slash5", [20, 21, 22, 23], 10, false);
		animation.play("idle");
	}

	function _animate() {
		var randomNum: Int = FlxRandom.intRanged(1, 5);
		var randomAnim: String = "slash" + randomNum;
		animation.play(randomAnim, true);
	}
}
