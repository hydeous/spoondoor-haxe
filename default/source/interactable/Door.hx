package interactable;

import flixel.FlxSprite;

class Door extends InteractableObject {
	public function new() {
		super();
	}

	override function _createAssets() {
		_asset = new FlxSprite();
		_asset.loadGraphic(Reg.DOOR, true);
		_asset.width = 10;
		_asset.height = 15;
		_asset.offset.set(1, 1);
		add(_asset);
	}

}
