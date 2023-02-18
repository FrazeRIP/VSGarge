local index = '5'
local defaultY

function onCreatePost()
	
	if downscroll then
		defaultY = 160
	else
		defaultY = 420
	end

	
	makeLuaSprite('songPlate', 'songName/'..index, -700, defaultY)
	setScrollFactor('songPlate', 0, 0)
    setObjectCamera('songPlate', 'hud')
	addLuaSprite('songPlate', true)
end


function onSongStart()
	doTweenX('songPlateX', 'songPlate', -100, .75, 'cubeOut')
end


function onTweenCompleted(tag)
	if tag == 'songPlateX' then
		runTimer('songPlateTimer', 2)
	end

end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'songPlateTimer' then
		doTweenX('songPlateX2', 'songPlate', -700, 1, 'cubeIn')
		cancelTimer(tag)
	end
end