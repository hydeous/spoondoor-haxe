package interactable;

import flixel.group.FlxGroup;
import flixel.FlxSprite;

class InteractableObject extends FlxGroup {

	var _level: Int;
	var _id: String;
	var _asset: FlxSprite;

	var _hitpoints: Int;
	var _type: String;

	public function new() {
		super();
		_createAssets();
		_setupLevel();
	}

	public function takeHit() {
		_animate();
		_calculateDamage();
	}

	function _calculateDamage() {
		_hitpoints--;
	}

	function _animate() {
	}

	function _createAssets() {
	}

	function _setupLevel() {
		_hitpoints = 100;
	}
}
