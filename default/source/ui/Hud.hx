package ui;

import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.FlxG;
import flixel.group.FlxGroup;

class Hud extends FlxGroup {

	var _hitpoints: FlxText;
	var _hpGroup: FlxGroup;

	public function new() {
		super();
		_createHitpoints();
	}

	override public function update() {

	}

	function _createHitpoints() {
		_hpGroup = new FlxGroup();
		_hpGroup.add(new FlxSprite(0, FlxG.height - 22).makeGraphic(FlxG.width, 24, 0xff131c1b));
		_hpGroup.add(new FlxText(0, FlxG.height - 22, FlxG.width, "Hitpoints : ").setFormat(null, 16, 0xd8eba2, "center"));
		_hitpoints = new FlxText(FlxG.width / 4, 0, Math.floor(FlxG.width / 2), 20);
		_hpGroup.add(_hitpoints);
		add(_hpGroup);
	}
}
