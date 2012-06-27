package com.cogslave.test;

import com.cogslave.engine.game.gameloop.FixedTimeStep;
import com.cogslave.engine.input.InputMapper;
import com.cogslave.test.game.TestGame;

class Main
{
	public static function main()
	{
		var game = new TestGame(new FixedTimeStep(1 / 60), new InputMapper());
	}	
}