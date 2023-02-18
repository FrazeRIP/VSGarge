local secPerBeat=0

function onCreatePost()
	secPerBeat = 60/curBpm
	doTweenAlpha('blackStageA2', 'blackStage', 0.2, .0001,'cubeOut')
	cameraShake('camHUD', 0.0018, secPerBeat*452)
	cameraShake('camGame', 0.0018, secPerBeat*452)
end



function onSongStart()
end

function onStepHit()
end


function onBeatHit()
	if curBeat == 48 then

		doTweenZoom('camGameZoom', 'camGame', .95, secPerBeat*16,'cubeIn')
	end

	if curBeat == 64 then

		doTweenAlpha('blackStageA2', 'blackStage', 0.4, secPerBeat*2,'cubeOut')
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
		doTweenZoom('camGameZoom', 'camGame', .85, secPerBeat*4,'cubeOut')
	end

	if curBeat == 80 then
		doTweenZoom('camGameZoom', 'camGame', .75, secPerBeat*2,'cubeOut')
	end

	if curBeat == 88 then
		doTweenZoom('camGameZoom', 'camGame', .85, secPerBeat*8,'cubeIn')
	end

	if curBeat ==96 then
		doTweenAlpha('blackStageA2', 'blackStage', 0.6, secPerBeat*2,'cubeOut')
		doTweenZoom('camGameZoom', 'camGame', .95, secPerBeat*2,'cubeOut')
	end

	if curBeat == 128 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
		doTweenAlpha('blackStageA2', 'blackStage', 0.3, secPerBeat*2,'cubeIn')
		doTweenZoom('camGameZoom', 'camGame', .85, secPerBeat*4,'cubeIn')
	end

	if curBeat == 176 then
		doTweenZoom('camGameZoom', 'camGame', .75, secPerBeat*2,'cubeOut')
	end
	if curBeat == 184 then
		doTweenZoom('camGameZoom', 'camGame', .85, secPerBeat*2,'cubeIn')
	end

	if curBeat == 192 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
		doTweenAlpha('blackStageA2', 'blackStage', 0.6, secPerBeat*2,'cubeOut')
		doTweenZoom('camGameZoom', 'camGame', .95, secPerBeat*2,'cubeOut')
	end

	if curBeat == 224 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
	end

	if curBeat == 256 then
		doTweenAlpha('whiteFrontA', 'Whitefront', 1, secPerBeat*2,'cubeOut')
		--doTweenAlpha('whiteBackA', 'WhiteBack', 1, secPerBeat*4,'cubeOut')
	end

	if curBeat == 258 then

		doTweenZoom('camGameZoom', 'camGame', .9, .0001,'cubeOut')
		doTweenAlpha('adfadfads', 'camHUD', 0, secPerBeat*.75,'cubeOut')

		
	end

	if curBeat == 260 then
		doTweenAlpha('whiteFrontA2', 'Whitefront', 0, secPerBeat*2,'cubeOut')
		
		doTweenAlpha('blackStageA2', 'blackStage', 0, 0.001,'cubeOut')
		--doTweenColor('bfD', 'boyfriend', '000000', .1, 'cubeOut')
		--doTweenColor('dadD', 'dad', '000000', .1, 'cubeOut')
		--doTweenColor('gfD', 'gf', '000000', .1, 'cubeOut')
	end 
	if curBeat == 263 then

		doTweenAlpha('adfadfads', 'camHUD', 1, secPerBeat*.75,'cubeOut')
	end

	if curBeat == 264 then

		doTweenZoom('camGameZoom', 'camGame', .75, secPerBeat*4,'cubeOut')
		doTweenAlpha('blackStageA2', 'blackStage', 0.4, secPerBeat*4,'cubeOut')
	end

	if curBeat == 328 then
        doTweenColor('gfC', 'gf', '8F8F8F', secPerBeat*2,'cubeIn')
		doTweenZoom('camGameZoom', 'camGame', .9, secPerBeat*2,'cubeOut')
		doTweenAlpha('blackStageA2', 'blackStage', 0.8, secPerBeat*2,'cubeOut')
		cameraShake('camHUD', 0.0022, secPerBeat*64)
		cameraShake('camGame', 0.0022, secPerBeat*64)
	end


	if curBeat ==376 then
		doTweenZoom('camGameZoom', 'camGame', .6, secPerBeat*1,'cubeOut')
	end
	if curBeat ==380 then
		doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*1,'cubeOut')
	end
	if curBeat ==384 then
		doTweenZoom('camGameZoom', 'camGame', .8, secPerBeat*1,'cubeOut')
	end
	if curBeat ==388 then
		doTweenZoom('camGameZoom', 'camGame', .9, secPerBeat*1,'cubeOut')
	end
	if curBeat ==392 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
		doTweenZoom('camGameZoom', 'camGame', .65, secPerBeat*32,'cubeOut')
		doTweenAlpha('adfadfads', 'camHUD', 0, secPerBeat*16,'cubeOut')
		doTweenAlpha('blackStageA2', 'blackStage', 0, secPerBeat*4,'cubeIn')
	end


end


function onTweenCompleted(tag)
end