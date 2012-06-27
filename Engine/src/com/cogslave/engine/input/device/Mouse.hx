package com.cogslave.engine.input.device;

import nme.display.Stage;
import nme.events.MouseEvent;

class Mouse 
{
	private var stage:Stage;
	private var inputMapper;
	
	public function new(stage:Stage)
	{
		this.stage = stage;
	}
	
	public function add():Void
	{
		stage.addEventListener(MouseEvent.CLICK, onClick);
		stage.addEventListener(MouseEvent.DOUBLE_CLICK, onDoubleClick);
		stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
		stage.addEventListener(MouseEvent.MOUSE_UP, onMouseUp);
	}
	
	public function remove(stage:Stage):Void
	{
		stage.removeEventListener(MouseEvent.CLICK, onClick);
		stage.removeEventListener(MouseEvent.DOUBLE_CLICK, onDoubleClick);
		stage.removeEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
		stage.removeEventListener(MouseEvent.MOUSE_UP, onMouseUp);
	}
	
	private function onClick(event:MouseEvent):Void
	{
		inputMapper.map(event.stageX, event.stageY);
	}
}