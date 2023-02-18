local secPerBeat=0

function onCreatePost()
	secPerBeat = 60/curBpm
end



function onSongStart()
    doTweenZoom('camGameZoom', 'camGame', .65, secPerBeat*16,'quintIn')
end

function onStepHit()
end


function onBeatHit()
    if curBeat == 8 then

        cameraShake('camGame',.001, secPerBeat*8)
        doTweenAlpha('blackStageA', 'blackStage', 0.4, secPerBeat*8,'cubeIn')
        doTweenColor('gfC', 'gf', 'B8B8B8', secPerBeat*8,'cubeIn')
    end

    if curBeat ==12 then
        cameraShake('camGame',.002, secPerBeat*4)
    end

    if curBeat == 16 then
        doTweenZoom('camGameZoom', 'camGame', .8, secPerBeat*4,'cubeOut')
    end

    if curBeat == 48 then
        doTweenAlpha('blackStageA', 'blackStage', 0.2, secPerBeat*4,'cubeIn')
        doTweenColor('gfC', 'gf', 'EBEBEB', secPerBeat*4,'cubeIn')

        doTweenZoom('camGameZoom', 'camGame', .55, secPerBeat*4,'cubeOut')
    end

    if curBeat == 64 then
        doTweenZoom('camGameZoom', 'camGame', .65, secPerBeat*4,'cubeOut')
    end

    if curBeat == 80 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat,true)
        doTweenAlpha('blackStageA', 'blackStage', 0, 0.0001,'cubeIn')
        doTweenColor('gfC', 'gf', 'FFFFFF', 0.0001,'cubeIn')
        doTweenZoom('camGameZoom', 'camGame', .55, secPerBeat*4,'cubeOut')
    end

    if curBeat == 144 then
        
        cameraFlash('camgame', 'B0B0B0', secPerBeat*1.5,true)
        doTweenAlpha('blackStageA', 'blackStage', 0.2, secPerBeat*4,'cubeOut')
        doTweenColor('gfC', 'gf', 'EBEBEB', secPerBeat*4,'cubeOut')
        doTweenZoom('camGameZoom', 'camGame', .65, secPerBeat*4,'cubeOut')
    end

    if curBeat == 148 then

        doTweenAlpha('blackStageA', 'blackStage', 0.4, secPerBeat*60,'cubeIn')
        doTweenColor('gfC', 'gf', 'B8B8B8', secPerBeat*60,'cubeIn')
        doTweenZoom('camGameZoom', 'camGame', .8, secPerBeat*60,'cubeIn')
    end

    if curBeat == 208 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat,true)
        doTweenAlpha('blackStageA', 'blackStage', 0, 0.0001,'cubeOut')
        doTweenColor('gfC', 'gf', 'FFFFFF', 0.0001,'cubeOut')
        doTweenZoom('camGameZoom', 'camGame', .55, secPerBeat*2,'cubeOut')
    end

    if curBeat == 272 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
    end

    if curBeat == 364 then
        doTweenAlpha('camHUDAlpha', 'camHUD', 0.5, secPerBeat*.5,'cubeOut')
    end

    if curBeat == 365 then
        doTweenAlpha('camHUDAlpha', 'camHUD', 0.4, secPerBeat*.5,'cubeOut')
    end

    if curBeat == 366 then
        doTweenAlpha('camHUDAlpha', 'camHUD', 0.2, secPerBeat*.5,'cubeOut')
    end

    if curBeat == 367 then
        doTweenAlpha('camHUDAlphaa', 'camHUD', 0, secPerBeat*.5,'cubeOut')
    end

end


function onTweenCompleted(tag)
    if tag == 'camHUDAlpha' then
        doTweenAlpha('camHUDAlphaEnd', 'camHUD', 1, secPerBeat*.4,'cubeIn')
    end
end