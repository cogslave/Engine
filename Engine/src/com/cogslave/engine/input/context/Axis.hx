package com.cogslave.engine.input.context;

class Axis 
{
	public var id:Int;
	public var name:String;
	public var value:Float;
	
	public function new(id:Int, name:String, value:Float)
	{
		this.id = id;
		this.name = name;
		this.value = value;
	}	
}