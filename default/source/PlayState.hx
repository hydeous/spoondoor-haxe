package;

import flixel.FlxState;
import flixel.FlxG;
import interactable.InteractableObject;
import interactable.Door;
import weapon.Weapon;
import ui.Hud;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{

	private var _interactableObject: InteractableObject;
	private var _weapon: Weapon;
	private var _hud: Hud;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		// Create the current interactable object
		_interactableObject = new Door();
		_weapon = new Weapon();
		_hud = new Hud();

		add(_interactableObject);
		add(_weapon);
		add(_hud);

		super.create();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		if (FlxG.touches.justReleased().length > 0) {
			_weapon.use();
			var hitpoints: Int = _interactableObject.takeHit();
			if (hitpoints < 0) {
				//set up next level
				_interactableObject.removeObject(true);
			}
			_hud.updateHitpoints(hitpoints);

		}

		super.update();
	}
}