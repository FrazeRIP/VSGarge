
local folderName = 'stages'
local stageName = 'neliman'

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
	makeAnimatedLuaSprite('A', 'stage/neliman/Guest/guestA', -400, 240);
	addAnimationByPrefix('A','guestA','guestA',22,true);	
	scaleObject('A', 0.7, 0.7);
	setScrollFactor('A', 0.88, 1)

	makeAnimatedLuaSprite('B', 'stage/neliman/Guest/guestB', 450, 360);
	addAnimationByPrefix('B','guestB','guestB',22,true);	
	scaleObject('B', 0.7, 0.7);
	setScrollFactor('B', 0.9, 1)
	
	makeLuaSprite('D', 'stage/neliman/Layer5', -1325, -200);
	scaleObject('D', 0.7, 0.7);
	setScrollFactor('D', 0.65, 0.65);

	makeLuaSprite('E', 'stage/neliman/Layer4', -1400, -200)
	scaleObject('E', 0.7, 0.7);
	setScrollFactor('E', 0.7, 0.7)

	makeLuaSprite('F', 'stage/neliman/Layer3', -1400, -200)
	scaleObject('F', 0.7, 0.7);
	setScrollFactor('F', 0.8, 0.8)

	makeLuaSprite('G', 'stage/neliman/Layer2', -1450, -200)
	scaleObject('G', 0.7, 0.7);
	setScrollFactor('G', 0.85, 0.85)

	makeLuaSprite('I', 'stage/neliman/Layer1', -1500, -200)
	scaleObject('I', 0.7, 0.7);
	setScrollFactor('I', 1, 1)

	makeLuaSprite('II', 'stage/neliman/Layer11', -1450, -203)
	scaleObject('II', 0.7, 0.7);
	setScrollFactor('II', 0.9, 1)

	makeLuaSprite('H', 'stage/neliman/Layer0', -1500, -200)
	scaleObject('H', 0.7, 0.7);
	setScrollFactor('H', 1, 1)

	addLuaSprite('D', false)
	addLuaSprite('E', false)
	addLuaSprite('F', false)
	addLuaSprite('G', false)
	addLuaSprite('A', false)
	addLuaSprite('II', false)	
	addLuaSprite('I', false)
	addLuaSprite('H', true)
	addLuaSprite('B', false)

	loadBlack('blackStage')
	loadWhite('WhiteBack',false)
	loadWhite('Whitefront',true)
end

function loadBlack(name)
	makeLuaSprite(name, '', -800, -500);
	makeGraphic(name, 1280, 720, '000000')
	scaleObject(name, 4, 3);
	setScrollFactor(name, 0, 0);
	addLuaSprite(name, false);
	doTweenAlpha(name..'A', name, 0, 0.00001)
end

function loadWhite(name,inFront)
	makeLuaSprite(name, '', -800, -500);
	makeGraphic(name, 1280, 720, 'FFFFFF')
	scaleObject(name, 4, 3);
	setScrollFactor(name, 0, 0);
	addLuaSprite(name, inFront);
	doTweenAlpha(name..'A', name, 0, 0.00001)
end