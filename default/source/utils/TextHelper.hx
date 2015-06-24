package utils;

import flixel.util.FlxColor;
import flixel.text.FlxText;

class TextHelper {
	public static function getHudTextField(x: Float, y: Float, width: Float, text: String, aligned: String = "center"): FlxText {
		return new FlxText(x, y, width, text).setFormat("data/Herculanum.ttf", 20, FlxColor.WHITE, aligned);
	}
}
