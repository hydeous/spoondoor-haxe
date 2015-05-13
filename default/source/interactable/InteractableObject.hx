package interactable;

class InteractableObject {

	private var _level: int;
	private var _id: String;

	public function new() {
		createAssets();
		setupLevel();
		setupInput();
	}

	override protected function createAssets() {
	}

	override protected function setupLevel() {
	}

	override protected function setupInput() {
	}

}
