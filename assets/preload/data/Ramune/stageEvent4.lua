local secPerBeat=0

function onCreatePost()
	secPerBeat = 60/curBpm
end



function onSongStart()
end

function onStepHit()
end


function onBeatHit()
    if curBeat == 16 then
        doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*20,'cubeIn')
    end

    if curBeat == 36 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .6, secPerBeat*4,'cubeOut')
    end

    if curBeat == 84 then
        
        doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*4,'cubeIn')
    end

    if curBeat == 100 then
        doTweenZoom('camGameZoom', 'camGame', .6, secPerBeat*4,'cubeIn')
    end

    if curBeat == 132 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .75, secPerBeat*8,'cubeIn')
        doTweenAlpha('blackStageA', 'blackStage', 0.5, secPerBeat*8,'cubeIn')
        doTweenColor('gfC', 'gf', 'B8B8B8', secPerBeat*4,'cubeIn')
    end

    if curBeat == 164 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .6, secPerBeat*4,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0, secPerBeat*4,'cubeOut')
        doTweenColor('gfC', 'gf', 'FFFFFF', secPerBeat*4,'cubeOut')
    end

    if curBeat == 212 then
        doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*16,'cubeIn')
    end

    if curBeat == 260 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .6, secPerBeat*4,'cubeOut')
    end

    if curBeat == 276 then
        doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*16,'cubeIn')
    end

    if curBeat == 292 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .6, secPerBeat*4,'cubeOut')
    end

    if curBeat == 324 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenAlpha('cadfasd', 'camHUD', 0, secPerBeat*8,'cubeIn')
    end
end


function onTweenCompleted(tag)
end