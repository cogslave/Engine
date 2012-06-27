package com.cogslave.engine.game.scene;

import com.cogslave.engine.input.MappedInput;

interface IScene
{
	function update(input:MappedInput):Void;
	function draw():Void;
	
	var isActive(getIsActive, setIsActive):Bool;
	var isVisible(getIsVisible, setIsVisible):Bool;
}