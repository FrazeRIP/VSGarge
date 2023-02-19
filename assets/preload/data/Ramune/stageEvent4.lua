local secPerBeat=0

function onCreatePost()
	secPerBeat = 60/curBpm
end



function onSongStart()
    doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*32,'cubeIn')
end

function onStepHit()
end


function onBeatHit()
    if curBeat == 16 then
    end

    if curBeat == 36 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .55, secPerBeat*4,'cubeOut')
    end

    if curBeat == 100 then
        doTweenZoom('camGameZoom', 'camGame', .55, secPerBeat*4,'cubeIn')
    end

    if curBeat == 132 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .75, secPerBeat*4,'cubeIn')
        doTweenAlpha('blackStageA', 'blackStage', 0.4, secPerBeat*4,'cubeIn')
        doTweenColor('gfC', 'gf', 'B8B8B8', secPerBeat*4,'cubeIn')
    end

    if curBeat == 164 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .55, secPerBeat*4,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0, secPerBeat*4,'cubeOut')
        doTweenColor('gfC', 'gf', 'FFFFFF', secPerBeat*4,'cubeOut')
    end

    if curBeat == 212 then
        doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*16,'cubeIn')
    end

    if curBeat == 260 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .55, secPerBeat*4,'cubeOut')
    end

    if curBeat == 276 then
        doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*16,'cubeIn')
    end

    if curBeat == 292 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .55, secPerBeat*4,'cubeOut')
    end

    if curBeat == 324 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenAlpha('cadfasd', 'camHUD', 0, secPerBeat*8,'cubeIn')
    end
end


function onTweenCompleted(tag)
end