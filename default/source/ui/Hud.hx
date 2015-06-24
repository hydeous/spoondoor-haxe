package ui;

import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.group.FlxGroup;
import flixel.FlxG;

import utils.TextHelper;
import utils.ColourConstants;

class Hud extends FlxGroup {

	public static inline var TOP: String = "top";
	public static inline var BOTTOM: String = "bottom";

	var _hitpoints: FlxText;
	var _topHudGroup: FlxGroup;
	var _bottomHudGroup: FlxGroup;

	public function new() {
		super();
		_createHitpoints(TOP);
		_createPowersPullup(BOTTOM);
		_createWeaponsPullup(BOTTOM);
	}

	public function updateHitpoints(value: Int) {
		_hitpoints.text = " " + value;
	}

	override public function update() {

	}

	function _createHitpoints(position: String) {
		var hudGroup: FlxGroup = _getHudGroupFor(position);
		var hpGroup: FlxGroup = new FlxGroup();
		// TODO: Get this width from the extracted hud component.
		var hudWidth: Int = FlxG.width;
		hpGroup.add(TextHelper.getHudTextField(0, 0, hudWidth / 2, "Hitpoints :", "right"));
		_hitpoints = TextHelper.getHudTextField(hudWidth / 2, 0, hudWidth / 2, " 200", "left");
		hpGroup.add(_hitpoints);
		hudGroup.add(hpGroup);
	}

	function _getHudGroupFor(position: String): FlxGroup {
		switch position {
			case TOP:
				if (_topHudGroup == null) {
					_createTopHudGroup();
				}
				return _topHudGroup;
			case BOTTOM:
				if (_bottomHudGroup == null) {
					_createBottomHudGroup();
				}
				return _bottomHudGroup;
			default:
				// whatever.
		}
		return null;
	}

	//TODO: Extract this into a separate component so it has a reference to a width and height
	function _createTopHudGroup() {
		// TODO: Scale this height based on the size of the screen.
		var topHudHeight: Int = 30;

		_topHudGroup = new FlxGroup();
		_topHudGroup.add(new FlxSprite(0, 0).makeGraphic(FlxG.width, topHudHeight, ColourConstants.HUD_GREY));
		add (_topHudGroup);
	}

	function _createBottomHudGroup() {
		_bottomHudGroup = new FlxGroup();
	}

	//TODO: Extract into it's own component.
	function _createPowersPullup(position: String) {

	}

	function _createWeaponsPullup(position: String) {

	}
}
