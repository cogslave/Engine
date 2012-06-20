package com.cogslave.engine.game.gameloop;

interface IGameLoop 
{
	public function start():Void;
	public function execute(step : Void -> Void):Void;
}