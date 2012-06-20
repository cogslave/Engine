package com.cogslave.engine.game;

import com.cogslave.engine.game.gameloop.IGameLoop;
import com.cogslave.engine.game.scene.IScene;

class Game implements IGame
{
	private var gameLoop:IGameLoop;
	private var scenes:Array<IScene>;
	
	private function new(gameLoop:IGameLoop)
	{
		scenes = new Array<IScene>();
		this.gameLoop = gameLoop;
		this.gameLoop.start();
	}
	
	public function tick():Void
	{
		gameLoop.execute(update);
		draw();
	}
	
	private function update():Void
	{
		for (scene in scenes)
		{
			if (scene.isActive)
			{
				scene.update();
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