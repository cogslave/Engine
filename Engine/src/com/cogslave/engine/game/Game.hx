package com.cogslave.engine.game;

import nme.display.MovieClip;
import nme.display.Stage;
import nme.Lib;
import nme.events.Event;
import com.cogslave.engine.game.gameloop.IGameLoop;
import com.cogslave.engine.game.scene.IScene;
import com.cogslave.engine.input.MappedInput;
import com.cogslave.engine.input.InputMapper;

class Game
{	
	private var stage:Stage;
	private var current:MovieClip;
	private var gameLoop:IGameLoop;
	private var inputMapper:InputMapper;
	private var scenes:Array<IScene>;
	
	private function new(gameLoop:IGameLoop, inputMapper:InputMapper)
	{
		this.gameLoop = gameLoop;
		this.inputMapper = inputMapper;
		
		scenes = new Array<IScene>();
		this.gameLoop.start();
		
		current = Lib.current;
		stage = current.stage;
		current.addEventListener(Event.ENTER_FRAME, tick);
	}
	
	private function tick(event):Void
	{
		
	}
	
	private function update(input:MappedInput):Void
	{
		for (scene in scenes)
		{
			if (scene.isActive)
			{
				scene.update(input);
			}
		}
	}
	
	private function draw():Void
	{
		for (scene in scenes)
		{
			if (scene.isVisible)
			{
				scene.draw();
			}
		}
	}
}