package interactable;

import flixel.group.FlxGroup;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.ui.FlxBar;

class InteractableObject extends FlxGroup {

	var _level: Int;
	var _id: String;
	var _asset: FlxSprite;

	var _allowedHeight: Float;
	var _topOffset: Float;

	var _hitpointsBar: FlxBar;
	var _hitpoints: Int;
	var _type: String;

	public function new() {
		super();
		_createAssets();
		_setupLevel();
		_createHitpointsBar();
	}

	public function takeHit(): Int {
		_animate();
		_calculateDamage();
		return _hitpoints;
	}

	public function removeObject(animate: Bool): Void {
		if (animate) {
			_animateDestroy();
		} else {
			destroy();
		}
	}

	override public function destroy() {
		_asset.destroy();
		_asset = null;
		super.destroy();
	}

	function _calculateDamage() {
		_hitpoints--;
	}

	function _animate() {
	}

	function _createAssets() {
		// TODO: Get this offset from the top hud height.
		_topOffset = 30 + 20; // hud height + a little bit.
		_allowedHeight = Math.round(FlxG.height * 0.66) - _topOffset;
	}

	function _createHitpointsBar() {
		_hitpointsBar = new FlxBar(0, 0, FlxBar.FILL_LEFT_TO_RIGHT, Math.round(_asset.width), 5, _asset, "", 0, _hitpoints, true);
		_hitpointsBar.trackParent(0, -10);
		add(_hitpointsBar);
	}

	function _setupLevel() {
		_hitpoints = 100;
	}

	function _animateDestroy() {
		FlxTween.tween(_asset.scale, {x: 0.5, y: 0.5}, 2, {complete: _onDestroyAnimationComplete, type: FlxTween.ONESHOT});
	}

	function _onDestroyAnimationComplete(tween: FlxTween) {
		destroy();
	}
}
