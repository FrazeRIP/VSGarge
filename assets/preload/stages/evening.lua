
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

makeLuaSprite('A', 'stage/evening/Layer8', -1500, -500);
	scaleObject('A', 1, 1);
	setScrollFactor('A', 0.7, 1);
	
	makeLuaSprite('B', 'stage/evening/Layer7', -1700, -700);
	scaleObject('B', 1.2, 1.2);
	setScrollFactor('B', 0.8, 1);

	makeLuaSprite('C', 'stage/evening/Layer6', -1700, -700);
	scaleObject('C', 1.2, 1.2);
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

	makeLuaSprite('G', 'stage/evening/Layer2', -2400, -500)
	scaleObject('G', 1, 1);
	setScrollFactor('G', 1, 1)

	makeAnimatedLuaSprite('G', 'stage/evening/Layer2', -2400, -500);
	scaleObject('G', 1, 1);
	addAnimationByPrefix('G', 'Layer2', 'Layer2', 24, true)
	objectPlayAnimation('G', 'Layer2', true);

	makeLuaSprite('I', 'stage/evening/Layer1', -1500, -500)
	scaleObject('I', 1, 1);
	setScrollFactor('I', 1.05, 1)

	makeLuaSprite('H', 'stage/evening/Layer0', -2000, -300)
	scaleObject('H', 1, 1);
	setScrollFactor('H', 1, 1)

	addLuaSprite('A', false)
	addLuaSprite('B', false)
	addLuaSprite('C', false)
	addLuaSprite('D', false)
	addLuaSprite('E', false)
	addLuaSprite('F', false)
	addLuaSprite('G', false)
	addLuaSprite('I', false)
	addLuaSprite('H', true)

end
