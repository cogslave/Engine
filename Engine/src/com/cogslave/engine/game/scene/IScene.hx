package com.cogslave.engine.game.scene;

interface IScene
{
	function update():Void;
	function draw():Void;
	
	var isActive(getIsActive, setIsActive):Bool;
	var isVisible(getIsVisible, setIsVisible):Bool;
}