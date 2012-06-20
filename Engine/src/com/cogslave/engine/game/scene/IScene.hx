package com.cogslave.engine.game.scene;

interface IScene
{
	function update():Void;
	function draw():Void;
	
	var isActive(getIsActive, never):Bool;
	var isVisible(getIsVisible, never):Bool;
}