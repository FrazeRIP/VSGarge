local secPerBeat=0

function onCreatePost()
	secPerBeat = 60/curBpm



end



function onSongStart()
    doTweenZoom('camGameZoom', 'camGame', .6, secPerBeat*12,'cubeIn')
end

function onStepHit()
end


function onBeatHit()
    if curBeat == 12 then
        cameraFlash('camgame', 'BABABA', secPerBeat*.5,true)
        doTweenZoom('camGameZoom', 'camGame', .64,0.0001,'cubeIn')
        doTweenAngle('camGameAngle', 'camGame', '10', .00001)
    end
    if curBeat == 13 then
        cameraFlash('camgame', 'BABABA', secPerBeat*.5,true)
        doTweenZoom('camGameZoom', 'camGame', .68,0.0001,'cubeIn')
        doTweenAngle('camGameAngle', 'camGame', '-10', .00001)
    end
    if curBeat == 14 then
        cameraFlash('camgame', 'BABABA', secPerBeat*.5,true)
        doTweenZoom('camGameZoom', 'camGame', .72,0.0001,'cubeIn')
        doTweenAngle('camGameAngle', 'camGame', '10', .00001)
    end
    if curBeat == 15 then
        cameraFlash('camgame', 'BABABA', secPerBeat*.5,true)
        doTweenZoom('camGameZoom', 'camGame', .76,0.0001,'cubeIn')
        doTweenAngle('camGameAngle', 'camGame', '-10', .0001)
    end

    if curBeat == 16 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame', .7,0.0001,'cubeOut')
        doTweenAngle('camGameAngle', 'camGame', '0.0', .00001)
    end

    if curBeat == 24 then
        doTweenZoom('camGameZoom', 'camGame',.65,secPerBeat*2,'cubeIn')
    end

    if curBeat == 48 then
        doTweenAlpha('blackStageA', 'blackStage', 0.3, secPerBeat*16,'cubeIn')
        --doTweenColor('gfC', 'gf', 'B8B8B8', secPerBeat*16,'cubeIn')
        doTweenZoom('camGameZoom', 'camGame',.75,secPerBeat*16,'cubeIn')
    end

    if curBeat == 64 then
        
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        
        doTweenZoom('camGameZoom', 'camGame',.6,secPerBeat*2,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.2, secPerBeat*2,'cubeOut')
       -- doTweenColor('gfC', 'gf', 'EBEBEB', secPerBeat*2,'cubeOut')
    end

    if curBeat == 112 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame',.7,secPerBeat*2,'cubeOut')
        doTweenAlpha('blackStageA', 'blackStage', 0.4, secPerBeat*2,'cubeOut')
        --doTweenColor('gfC', 'gf', 'B8B8B8', secPerBeat*2,'cubeOut')
    end

    if curBeat == 160 then
        doTweenZoom('camGameZoom', 'camGame',.6,secPerBeat*12,'cubeIn')
    end

    if curBeat == 172 then
        doTweenZoom('camGameZoom', 'camGame',.66,secPerBeat*.25,'cubeOut')
    end

    if curBeat == 173 then
        doTweenZoom('camGameZoom', 'camGame',.72,secPerBeat*.25,'cubeOut')
        doTweenAlpha('readyA', 'ready', 1, secPerBeat*.1,'cubeOut')
    end
    if curBeat == 174 then
        doTweenZoom('camGameZoom', 'camGame',.78,secPerBeat*.25,'cubeOut')
        doTweenAlpha('setA', 'set', 1,  secPerBeat*.1,'cubeOut')
    end
    if curBeat == 175 then
        doTweenZoom('camGameZoom', 'camGame',.84,secPerBeat*.25,'cubeOut')
        doTweenAlpha('goA', 'go', 1,  secPerBeat*.1,'cubeOut')
    end

    if curBeat == 176 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        
        doTweenAlpha('blackStageA', 'blackStage', 0.4, 0.0001,'cubeIn')
        doTweenZoom('camGameZoom', 'camGame',.6,secPerBeat*2,'cubeOut')
    end

    if curBeat == 208 then

        doTweenAlpha('blackStageA', 'blackStage', 0.0, secPerBeat*2,'cubeOut')
    end

    if curBeat == 272 then
        doTweenZoom('camGameZoom', 'camGame',.8,secPerBeat*32,'linear')
    end

    if curBeat ==304 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
        doTweenZoom('camGameZoom', 'camGame',.65,secPerBeat*2,'linear')
    end

    if curBeat == 336 then
        cameraFlash('camgame', 'E9E9E9', secPerBeat*1.5,true)
    end

    if curBeat == 352 then
        doTweenZoom('camGameZoom', 'camGame',.55,secPerBeat*10,'cubeIn')
    end

    if curBeat == 356 then

        doTweenAlpha('camHUDA', 'camHUD', 0, secPerBeat*4,'cubeIn')
    end 
end


function onTweenCompleted(tag)
    if tag == 'readyA' then
        doTweenAlpha('readyAF', 'ready', 0, secPerBeat*.85,'cubeIn')
    end
    if tag == 'setA' then
        doTweenAlpha('setAF', 'set', 0, secPerBeat*.85,'cubeIn')
    end
    if tag == 'goA' then
        doTweenAlpha('goAF', 'go', 0, secPerBeat*.85,'cubeIn')
    end
end