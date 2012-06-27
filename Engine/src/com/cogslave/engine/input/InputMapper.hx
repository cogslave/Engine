package com.cogslave.engine.input;
import com.cogslave.engine.input.context.Action;
import com.cogslave.engine.input.context.Context;

class InputMapper implements IButtonMapper
{
	private var contexts:Array<Context>;
	private var mappedInput:MappedInput;
	
	public function new() 
	{
		contexts = new Array<Context>();
		mappedInput = new MappedInput();
	}
	
	public function addContext(context:Context):Void
	{
		contexts.insert(0, context);
	}
	
	public function removeContext(id:String):Void
	{
		for (context in contexts)
		{
			if (context.id == id)
			{
				contexts.remove(context);
				break;
			}
		}
	}

	public function consumeMapping():MappedInput
	{
		var input = mappedInput;
		mappedInput = new MappedInput();
		return input;
	}
	
	public function mapButton(id:Int, isHeld:Bool):Void
	{
		if (!isHeld)
		{
			var action = mapAction(id);
			if (action != null)
			{
				mappedInput.actions.push(action);
			}
		}
		else
		{
			//state
		}
	}
	
	private function mapAction(id:Int):Action
	{
		var action:Action;
		for (context in contexts)
		{
			action = context.mapAction(id);
			if (action != null)
			{
				return action;
			}
		}
		
		return null;
	}
	
	/*
	private function mapState(keyboardInput):State
	{
		var state:State;
		for (context in contexts)
		{
			state = context.mapState(keyboardInput);
			if (state != null)
			{
				return state;
			}
		}
	}
	*/
}