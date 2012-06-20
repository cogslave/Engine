package com.cogslave;

import com.cogslave.engine.game.Game;

class TestGame extends Game
{
	public function new() 
	{
		super(new com.cogslave.engine.gameloop.FixedTimeStep(1 / 60));
	}
	
	override private function update():Void
	{
		trace("update");
	}
	
	override private function draw():Void
	{
		trace("draw");
	}
}