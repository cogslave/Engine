package com.cogslave.engine.game;

import com.cogslave.engine.gameloop.IGameLoop;

class Game implements IGame
{
	private var gameLoop:IGameLoop;
	
	private function new(gameLoop:IGameLoop)
	{
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
	
	}
	
	private function draw():Void
	{
	
	}
}