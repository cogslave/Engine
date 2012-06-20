package com.cogslave.engine.game.gameloop;

class FixedTimeStep implements IGameLoop
{
	private var deltaTime:Float;
	private var accumulator:Float;
	private var currentTime:Float;
	
	public function new(gameTick:Float)
	{
		deltaTime = gameTick;
		accumulator = 0;
		currentTime = 0;
	}

	public function start():Void
	{
		currentTime = haxe.Timer.stamp();
	}
	
	public function execute(step : Void -> Void):Void
	{
		var newTime:Float = haxe.Timer.stamp();
		var frameTime:Float = newTime - currentTime;
		
		currentTime = newTime;
		accumulator += frameTime;
		
		while (accumulator >= deltaTime)
		{
			step();
			accumulator -= deltaTime;
		}
	}	
}