package com.cogslave.engine;

import com.cogslave.engine.game.IGame;
import com.cogslave.TestGame;
import nme.display.MovieClip;
import nme.display.Stage;
import nme.events.Event;
import nme.Lib;

class Bootstrapper
{
	private var game:IGame;
	private var stage:Stage;
	private var current:MovieClip;
	
	public static function main()
	{
		var bootstraper = new Bootstrapper();
	}

	private function new()
	{
		current = Lib.current;
		stage = current.stage;
		
		stage.scaleMode = nme.display.StageScaleMode.NO_SCALE;
		stage.align = nme.display.StageAlign.TOP_LEFT;
		
		game = new TestGame();
		current.addEventListener(Event.ENTER_FRAME, this.tick);
	}
	
	private function tick(event):Void
	{
		game.tick();
	}
}