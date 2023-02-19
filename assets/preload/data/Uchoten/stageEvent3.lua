local secPerBeat=0

function onCreatePost()
	secPerBeat = 60/curBpm
end



function onSongStart()
    doTweenZoom('camGameZoom', 'camGame', .6, secPerBeat*16,'cubeIn')
end

function onStepHit()
    if curStep == 160 then
        doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*.5,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.2, secPerBeat*.5,'cubeOut')
    end

    if curStep == 165 then
        doTweenZoom('camGameZoom', 'camGame', .74, secPerBeat*.5,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.4, secPerBeat*.5,'cubeOut')
    end

    if curStep == 172 then
        doTweenZoom('camGameZoom', 'camGame', .78, secPerBeat*.5,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.6, secPerBeat*.5,'cubeOut')
    end

    if curStep == 1230 then
        doTweenZoom('camGameZoom', 'camGame', .74, secPerBeat*.1,'cubeOut')
    end
    if curStep == 1236 then
        doTweenZoom('camGameZoom', 'camGame', .78, secPerBeat*.1,'cubeOut')
    end
    if curStep == 1240 then
        doTweenZoom('camGameZoom', 'camGame', .82, secPerBeat*.1,'cubeOut')
    end
    if curStep == 1242 then
        doTweenZoom('camGameZoom', 'camGame', .86, secPerBeat*.1,'cubeOut')
    end
    if curStep == 1244 then
        doTweenZoom('camGameZoom', 'camGame', .9, secPerBeat*.1,'cubeOut')
    end


    if curStep == 1728 then
        doTweenZoom('camGameZoom', 'camGame', .69, secPerBeat*.1,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.1, secPerBeat*.1,'cubeOut')
    end

    if curStep == 1734 then

        doTweenZoom('camGameZoom', 'camGame', .73, secPerBeat*.1,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.2, secPerBeat*.1,'cubeOut')
    end

    if curStep == 1740 then

        doTweenZoom('camGameZoom', 'camGame', .77, secPerBeat*.1,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.3, secPerBeat*.1,'cubeOut')
    end

    if curStep == 1744 then

        doTweenZoom('camGameZoom', 'camGame', .81, secPerBeat*.1,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.4, secPerBeat*.1,'cubeOut')
    end

    if curStep == 1748 then

        doTweenZoom('camGameZoom', 'camGame', .85, secPerBeat*.1,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.5, secPerBeat*.1,'cubeOut')
    end

    if curStep == 1756 then

        doTweenZoom('camGameZoom', 'camGame', .89, secPerBeat*.1,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.6, secPerBeat*.1,'cubeOut')
    end

    if curStep == 1760 then

        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .55, secPerBeat*2,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0, secPerBeat*4,'cubeOut')
    end
end


function onBeatHit()
    if curBeat == 16 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
    doTweenZoom('camGameZoom', 'camGame', .65, secPerBeat*24,'cubeIn')
    end

    if curBeat == 48 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .50, secPerBeat*4,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0, secPerBeat*4,'cubeOut')
    end

    if curBeat == 79 then
        triggerEvent('Hey!','',2)
        triggerEvent('Play Animation','hey','Dad')
        objectPlayAnimation('pk', 'PkHey')
        objectPlayAnimation('ab', 'AbHey')
        objectPlayAnimation('de', 'DeHey')
        objectPlayAnimation('ec', 'EcHey')

        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
    end

    if curBeat == 80 then
        doTweenZoom('camGameZoom', 'camGame', .75, secPerBeat*32,'linear')
    end

    if curBeat == 83 then

        objectPlayAnimation('pk', 'PkIdle')
        objectPlayAnimation('ab', 'AbIdle')
        objectPlayAnimation('de', 'DeIdle')
        objectPlayAnimation('ec', 'EcIdle')
    end

    if curBeat == 112 then
        
        doTweenZoom('camGameZoom', 'camGame', .65, secPerBeat*5,'linear')
        doTweenAlpha('blackStageA', 'blackStage', 0.6, secPerBeat*4,'cubeIn')
        doTweenColor('gfC', 'gf', 'B8B8B8', secPerBeat*5,'cubeIn')
    end

    if curBeat == 116 then
        doTweenZoom('camGameZoom', 'camGame', .75, secPerBeat*4,'cubeIn')
    end

    if curBeat == 180 then

        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .65, secPerBeat*4,'linear')
        doTweenAlpha('blackStageA', 'blackStage', 0, secPerBeat*4,'cubeOut')
        doTweenColor('gfC', 'gf', 'FFFFFF', secPerBeat*4,'cubeOut')

    end

    if curBeat == 240 then
        doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*.25,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.2, secPerBeat,'cubeOut')
    end

    if curBeat == 241 then
        doTweenZoom('camGameZoom', 'camGame', .75, secPerBeat*.25,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.4, secPerBeat,'cubeOut')
    end
    if curBeat == 242 then
        doTweenZoom('camGameZoom', 'camGame', .8, secPerBeat*.25,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.6, secPerBeat,'cubeOut')
    end

    if curBeat == 244 then
        
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .60, secPerBeat*4,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0, secPerBeat*4,'cubeOut')
    end

    if curBeat == 276 then
        doTweenZoom('camGameZoom', 'camGame', .70, secPerBeat*16,'cubeIn')
    end

    if curBeat == 312 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .75, secPerBeat*2,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.6, secPerBeat*8,'cubeIn')
    end

    if curBeat ==360 then
        doTweenZoom('camGameZoom', 'camGame', .60, secPerBeat*2,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0, secPerBeat*4,'cubeOut')
    end

    if curBeat == 372 then
        doTweenZoom('camGameZoom', 'camGame', .7, secPerBeat*2,'cubeIn')
    end

    if curBeat == 404 then
        doTweenZoom('camGameZoom', 'camGame', .65, secPerBeat*2,'cubeOut')
    end

    if curBeat == 441 then

        doTweenAlpha('adsfasdf', 'camHUD', 0, secPerBeat*4,'cubeOut')
    end
end


function onTweenCompleted(tag)
end