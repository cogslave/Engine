package com.cogslave.test.game;

import com.cogslave.engine.input.context.Action;
import com.cogslave.engine.input.context.Context;
import com.cogslave.engine.input.InputMapper;
import com.cogslave.engine.game.Game;
import com.cogslave.engine.game.gameloop.IGameLoop;
import com.cogslave.engine.input.device.Keyboard;

class TestGame extends Game
{
	private var keyboard:Keyboard;
	
	public function new(gameLoop:IGameLoop, inputMapper:InputMapper)
	{
		super(gameLoop, inputMapper);
		
		keyboard = new Keyboard(stage, inputMapper);
		keyboard.attach();
		
		var context:Context = new Context("Blah");
		context.bindAction(nme.ui.Keyboard.UP, new Action(1, "Up"));
		context.bindAction(nme.ui.Keyboard.DOWN, new Action(2, "Down"));
		
		inputMapper.addContext(context);
		
		stage.scaleMode = nme.display.StageScaleMode.NO_SCALE;
		stage.align = nme.display.StageAlign.TOP_LEFT;
	}
	
	override private function tick(event):Void
	{
		var mi = inputMapper.consumeMapping();
		for (action in mi.actions)
		{
			trace(action.name);	
		}
		
		//trace("Tick");
		//gameLoop.execute(function() { update(inputMapper.consumeMapping()); } );
		//draw();
	}
}