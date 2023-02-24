
local folderName = 'stages'
local stageName = 'dusk'

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

makeLuaSprite('A', 'stage/dusk/Layer8', -1500, -500);
	scaleObject('A', 1, 1);
	setScrollFactor('A', 0.7, 1);

	makeLuaSprite('C', 'stage/dusk/Layer6', -1800, -250);
	scaleObject('C', 0.6, 0.7);
	setScrollFactor('C', 0.9, 1);
	
	makeLuaSprite('D', 'stage/dusk/Layer5', -2300, -500);
	scaleObject('D', 1, 1);
	setScrollFactor('D', 0.95, 1);

	makeLuaSprite('E', 'stage/dusk/Layer4', -2300, -500)
	scaleObject('E', 1, 1);
	setScrollFactor('E', 1.1, 1)

	makeLuaSprite('F', 'stage/dusk/Layer3', -1730, -360)
	scaleObject('F', .85, .85);
	setScrollFactor('F', 0.95, 1)

	makeLuaSprite('G', 'stage/dusk/Layer2', -2400, -500)
	scaleObject('G', 1, 1);
	setScrollFactor('G', 1, 1)

	makeLuaSprite('I', 'stage/dusk/Layer1', -1500, -500)
	scaleObject('I', 1, 1);
	setScrollFactor('I', 1.005, 1)
	
	makeAnimatedLuaSprite('pk', 'stage/dusk/Guest/pk', -1050, 50);
	addAnimationByPrefix('pk','PkIdle','PkIdle',21,true);	
	scaleObject('pk', 1, 1);
	setScrollFactor('pk', 1, 1)

	makeAnimatedLuaSprite('ab', 'stage/dusk/Guest/ab', -450, -50);
	addAnimationByPrefix('ab','AbIdle','AbIdle',21,true);	
	scaleObject('ab', 1.1, 1.1);
	setScrollFactor('ab', 1, 1)

	makeAnimatedLuaSprite('de', 'stage/dusk/Guest/de', 150, -50);
	addAnimationByPrefix('de','DeIdle','DeIdle',21,true);	
	scaleObject('de', 1.1, 1.1);
	setScrollFactor('de', 1, 1)

	makeAnimatedLuaSprite('ec', 'stage/dusk/Guest/ec', 800, -50);
	addAnimationByPrefix('ec','EcIdle','EcIdle',21,true);	
	scaleObject('ec', 1.1, 1.1);
	setScrollFactor('ec', 1, 1)

	makeLuaSprite('H', 'stage/dusk/Layer0', -1500, -400)
	scaleObject('H', 1.1, 1.1);
	setScrollFactor('H', 1, 1)

	

	addLuaSprite('A', false)
	addLuaSprite('C', false)
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

	loadBlack('blackStage')

	makeLuaSprite('ready', 'ready', 480, 250)
	setScrollFactor('ready', 0, 0)
	scaleObject('ready', .5, .5);
	setObjectCamera('ready', 'camHUD')
	addLuaSprite('ready', true)
	doTweenAlpha('readyA', 'ready', 0, 0.00001,'cubeOut')

	makeLuaSprite('set', 'set', 480, 250)
	setScrollFactor('Hset', 0, 0)
	scaleObject('set', .5, .5);
	setObjectCamera('set', 'camHUD')
	addLuaSprite('set', true)
	doTweenAlpha('setA', 'set', 0, 0.00001,'cubeOut')

	makeLuaSprite('go', 'go', 430, 150)
	setScrollFactor('go', 0, 0)
	scaleObject('go', .8, .8);
	setObjectCamera('go', 'camHUD')
	addLuaSprite('go', true)
	doTweenAlpha('goA', 'go', 0, 0.00001,'cubeOut')

	
end

function loadBlack(name)
	makeLuaSprite(name, '', -800, -500);
	makeGraphic(name, 1280, 720, '000000')
	scaleObject(name, 4, 3);
	setScrollFactor(name, 0, 0);
	addLuaSprite(name, false);
	doTweenAlpha(name..'A', name, 0, 0.00001)
end