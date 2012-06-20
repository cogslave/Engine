package com.cogslave.engine;

import com.cogslave.engine.game.IGame;
import nme.display.MovieClip;
import nme.display.Stage;
import nme.events.Event;
import nme.Lib;

class Bootstrapper
{
	private var game:IGame;
	private var stage:Stage;
	private var current:MovieClip;

	public function new(game:IGame)
	{
		this.game = game;
		current = Lib.current;
		stage = current.stage;
		
		stage.scaleMode = nme.display.StageScaleMode.NO_SCALE;
		stage.align = nme.display.StageAlign.TOP_LEFT;
		
		current.addEventListener(Event.ENTER_FRAME, this.tick);
	}
	
	private function tick(event):Void
	{
		game.tick();
	}
}