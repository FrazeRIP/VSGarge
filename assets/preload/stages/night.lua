
local folderName = 'stages'
local stageName = 'night'

local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = -50;
local yy = 100;
local xx2 = 150;
local yy2 = -50;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()

makeLuaSprite('A', 'stage/night/Layer8', -1800, -500);
	scaleObject('A', 0.7, 0.7);
	setScrollFactor('A', 0.7, 1);
	
	makeLuaSprite('B', 'stage/night/Layer7', -1500, -250);
	scaleObject('B', 0.7, 0.7);
	setScrollFactor('B', 0.8, 1);

	makeLuaSprite('CC', 'stage/night/Layer66', -2000, -250);
	scaleObject('CC', 0.6, 0.7);
	setScrollFactor('CC', 0.9, 1);

	makeLuaSprite('C', 'stage/night/Layer6', -1500, -250);
	scaleObject('C', 0.6, 0.7);
	setScrollFactor('C', 0.9, 1);

	makeLuaSprite('D', 'stage/night/Layer5', -2300, -500);
	scaleObject('D', 1, 1);
	setScrollFactor('D', 0.95, 1);

	makeLuaSprite('E', 'stage/night/Layer4', -2300, -500)
	scaleObject('E', 1, 1);
	setScrollFactor('E', 1.1, 1)

	makeLuaSprite('F', 'stage/night/Layer3', -1800, -500)
	scaleObject('F', 1, 1);
	setScrollFactor('F', 0.95, 1)

	makeAnimatedLuaSprite('G', 'stage/night/Layer2', -2400, -500);
	scaleObject('G', 1, 1);
	addAnimationByPrefix('G', 'Layer2', 'Layer2', 25, true)
	objectPlayAnimation('G', 'Layer2', true);

	makeLuaSprite('I', 'stage/night/Layer1', -1500, -500)
	scaleObject('I', 1, 1);
	setScrollFactor('I', 1.005, 1)
	
	makeAnimatedLuaSprite('pk', 'stage/night/Guest/pk', -1050, 50);
	addAnimationByPrefix('pk','PkIdle','PkIdle',22,true);	
	scaleObject('pk', 1, 1);
	setScrollFactor('pk', 1, 1)

	makeAnimatedLuaSprite('ab', 'stage/night/Guest/ab', -450, -50);
	addAnimationByPrefix('ab','AbIdle','AbIdle',22,true);	
	scaleObject('ab', 1.1, 1.1);
	setScrollFactor('ab', 1, 1)

	makeAnimatedLuaSprite('de', 'stage/night/Guest/de', 150, -50);
	addAnimationByPrefix('de','DeIdle','DeIdle',22,true);	
	scaleObject('de', 1.1, 1.1);
	setScrollFactor('de', 1, 1)

	makeAnimatedLuaSprite('ec', 'stage/night/Guest/ec', 800, -50);
	addAnimationByPrefix('ec','EcIdle','EcIdle',22,true);	
	scaleObject('ec', 1.1, 1.1);
	setScrollFactor('ec', 1, 1)

	makeLuaSprite('H', 'stage/night/Layer0', -2000, -400)
	scaleObject('H', 1.1, 1.1);
	setScrollFactor('H', 1, 1)

	makeAnimatedLuaSprite('guest', 'stage/night/Guest/guest', -1500, 1000);
	addAnimationByPrefix('guest','guest','guest',22,true);	
	scaleObject('guest', 1.2, 1.2);
	setScrollFactor('guest', 1, 0.5)

	addLuaSprite('A', false)
	addLuaSprite('B', false)
	addLuaSprite('C', false)
	addLuaSprite('CC', false)
	addLuaSprite('D', false)
	addLuaSprite('E', false)
	addLuaSprite('F', false)
	addLuaSprite('G', false)
	addLuaSprite('I', false)
	addLuaSprite('pk', false);
	addLuaSprite('ab', false);
	addLuaSprite('de', false);
	addLuaSprite('ec', false);
	addLuaSprite('H', true)
	addLuaSprite('guest', true)

end
