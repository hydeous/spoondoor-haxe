package interactable;

import flixel.group.FlxGroup;
import flixel.FlxSprite;

class InteractableObject extends FlxGroup {

	private var _level: Int;
	private var _id: String;
	private var _asset: FlxSprite;

	public function new() {
		super();
		createAssets();
		setupLevel();
		setupInput();
	}

	function createAssets() {
	}

	function setupLevel() {
	}

	function setupInput() {
	}

}
