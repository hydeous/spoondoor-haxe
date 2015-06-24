package interactable;

import flixel.FlxSprite;
import flixel.FlxG;

class Door extends InteractableObject {

	inline static var DOOR_WIDTH: Int = 450;
	inline static var DOOR_HEIGHT: Int = 563;


	public function new() {
		super();
	}

	override function _createAssets() {
		super._createAssets();

		var scale: Float = _allowedHeight / DOOR_HEIGHT;

		_asset = new FlxSprite();
		_asset.loadGraphic(Reg.DOOR, false, DOOR_WIDTH, DOOR_HEIGHT);
		_asset.scale.x = _asset.scale.y = scale;
		_asset.updateHitbox();
		_asset.x = (FlxG.width - _asset.width) / 2;
		_asset.y = _topOffset;
		add(_asset);
	}
}
