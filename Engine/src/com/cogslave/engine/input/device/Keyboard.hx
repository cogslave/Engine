package com.cogslave.engine.input.device;

import com.cogslave.engine.input.IButtonMapper;
import nme.events.KeyboardEvent;
import nme.display.Stage;
import nme.Lib;
import nme.ui.Keyboard;

class Keyboard 
{
	private var stage:Stage;
	private var buttonMapper:IButtonMapper;
	private var state:IntHash<Bool>;
	
	public function new(stage:Stage, buttonMapper:IButtonMapper)
	{
		this.stage = stage;
		this.buttonMapper = buttonMapper;
		this.state = new IntHash<Bool>();
	}
	
	public function attach():Void 
	{
		stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
	}
	
	public function detach():Void 
	{
		stage.removeEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
		stage.removeEventListener(KeyboardEvent.KEY_UP, onKeyUp);
	}
	
	private function onKeyDown(event:KeyboardEvent):Void
	{
		buttonMapper.mapButton(event.keyCode, isDown(event.keyCode));
		state.set(event.keyCode, true);
	}
	
	private function onKeyUp(event:KeyboardEvent):Void
	{
		buttonMapper.mapButton(event.keyCode, isDown(event.keyCode));
		state.set(event.keyCode, false);
	}
	
	private function isDown(key:Int):Bool
	{
        if (state.exists(key))
		{
            return state.get(key);
		}
		
        return false;
    }
}