local secPerBeat=0

function onCreatePost()
	secPerBeat = 60/curBpm
end

function onEvent(name, value1, value2)
	if name == 'UIHop' then
        doTweenZoom('camHUDZoomStart', 'camHUD', value1, 0.001,'linear')
	end
end


function onTweenCompleted(tag)
    if tag == 'camHUDZoomStart' then
        doTweenZoom('camHUDZoomEnd', 'camHUD', 1, secPerBeat*.75,'cubeOut')
    end
end