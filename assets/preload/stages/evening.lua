
local folderName = 'stages'
local stageName = 'evening'

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

makeLuaSprite('A', 'stage/evening/Layer8', -1800, -500);
	scaleObject('A', 0.7, 0.7);
	setScrollFactor('A', 0.7, 1);
	
	makeLuaSprite('B', 'stage/evening/Layer7', -1500, -250);
	scaleObject('B', 0.7, 0.7);
	setScrollFactor('B', 0.8, 1);

	makeLuaSprite('C', 'stage/evening/Layer6', -1500, -250);
	scaleObject('C', 0.6, 0.7);
	setScrollFactor('C', 0.9, 1);
	
	makeLuaSprite('D', 'stage/evening/Layer5', -2300, -500);
	scaleObject('D', 1, 1);
	setScrollFactor('D', 0.95, 1);

	makeLuaSprite('E', 'stage/evening/Layer4', -2300, -500)
	scaleObject('E', 1, 1);
	setScrollFactor('E', 1.1, 1)

	makeLuaSprite('F', 'stage/evening/Layer3', -1800, -500)
	scaleObject('F', 1, 1);
	setScrollFactor('F', 0.95, 1)

	makeAnimatedLuaSprite('G', 'stage/evening/Layer2', -2400, -500);
	scaleObject('G', 1, 1);
	addAnimationByPrefix('G', 'Layer2', 'Layer2', 30, true)
	objectPlayAnimation('G', 'Layer2', true);

	makeLuaSprite('I', 'stage/evening/Layer1', -1500, -500)
	scaleObject('I', 1, 1);
	setScrollFactor('I', 1.005, 1)
	
	makeAnimatedLuaSprite('pk', 'stage/evening/Guest/pk', -1050, 50);
	addAnimationByPrefix('pk','PkHey','PkHey',24,false);
	addAnimationByPrefix('pk','PkIdle','PkIdle',24,true);	
	scaleObject('pk', 1, 1);
	setScrollFactor('pk', 1, 1)

	makeAnimatedLuaSprite('ab', 'stage/evening/Guest/ab', -450, -50);
	addAnimationByPrefix('ab','AbHey','AbHey',22,false);	
	addAnimationByPrefix('ab','AbIdle','AbIdle',22,true);	
	scaleObject('ab', 1.1, 1.1);
	setScrollFactor('ab', 1, 1)

	makeAnimatedLuaSprite('de', 'stage/evening/Guest/de', 150, -50);
	addAnimationByPrefix('de','DeHey','DeHey',22,false);	
	addAnimationByPrefix('de','DeIdle','DeIdle',22,true);	
	scaleObject('de', 1.1, 1.1);
	setScrollFactor('de', 1, 1)

	makeAnimatedLuaSprite('ec', 'stage/evening/Guest/ec', 800, -50);
	addAnimationByPrefix('ec','EcHey','EcHey',22,false);	
	addAnimationByPrefix('ec','EcIdle','EcIdle',22,true);	
	scaleObject('ec', 1.1, 1.1);
	setScrollFactor('ec', 1, 1)

	makeLuaSprite('H', 'stage/evening/Layer0', -1500, -400)
	scaleObject('H', 1.1, 1.1);
	setScrollFactor('H', 1, 1)

	
	objectPlayAnimation('pk', 'PkIdle')
	objectPlayAnimation('ab', 'AbIdle')
	objectPlayAnimation('de', 'DeIdle')
	objectPlayAnimation('ec', 'EcIdle')

	addLuaSprite('A', false)
	addLuaSprite('B', false)
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
end




function loadBlack(name)
	makeLuaSprite(name, '', -800, -500);
	makeGraphic(name, 1280, 720, '000000')
	scaleObject(name, 4, 3);
	setScrollFactor(name, 0, 0);
	addLuaSprite(name, false);
	doTweenAlpha(name..'A', name, 0, 0.00001)
end