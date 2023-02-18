
local width = 600


function onCreate( ... )
	makeLuaSprite('blackTop', '', 0, width)
	makeGraphic('blackTop', 1920, 720, '000000')
	--setGraphicSize('blackTop', 1920, 500)
	setScrollFactor('blackTop', 0, 0)
	setProperty('blackTop.alpha', 1)
	setObjectCamera('blackTop','hud')
    addLuaSprite('blackTop', true)
	
	
	makeLuaSprite('blackButtom', '', 0,-width)
	makeGraphic('blackButtom', 1920, 720, '000000')
	--setGraphicSize('blackButtom', 1920, 500)
	setScrollFactor('blackButtom', 0, 0)
	setProperty('blackButtom.alpha', 1)
	setObjectCamera('blackButtom','hud')
    addLuaSprite('blackButtom', true)
	
	Hide(0.0001,'cubeOut')
end

function Hide(duration,tween)
	doTweenY('top-Show','blackTop',720,duration,tween)
	doTweenY('down-Show','blackButtom',-720,duration,tween)
end

function Show(duration,tween)
	doTweenY('top-Show','blackTop',width,duration,tween)
	doTweenY('down-Show','blackButtom',-width,duration,tween)
end