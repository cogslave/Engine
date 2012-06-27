package com.cogslave.engine.input.context;

class Context 
{
	private var _id:String;
	private var actionMapping:IntHash<Action>;
	
	public var id(getId, never):String;

	public function new(id:String) 
	{
		_id = id;
		actionMapping = new IntHash<Action>();
	}
	
	public function bindAction(raw:Int, action:Action):Void
	{
		actionMapping.set(raw, action);
	}
	
	public function mapAction(raw:Int):Action
	{
		return actionMapping.get(raw);
	}
	
	public function mapState(raw:Int):State
	{
		return null;
	}
	
	private function getId():String
	{
		return _id;
	}
}