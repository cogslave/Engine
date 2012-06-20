package com.cogslave;

import com.cogslave.engine.game.Game;
import com.cogslave.engine.game.gameloop.FixedTimeStep;

class TestGame extends Game
{
	public function new() 
	{
		super(new FixedTimeStep(1 / 60));
	}
}