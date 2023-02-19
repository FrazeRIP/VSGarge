local xxo = -350;
local yyo = 670;

local xx2o = 450;
local yy2o = 670;

local xxm
local yym


local xx = -180;
local yy = 650;

local xx2 = 450;
local yy2 = 650;

local xxOffset=0
local yyOffset=0

local xx2Offset=0
local yy2Offset=0

local ofs = 35;

local followchars = true;
local isTogether = false

function onCreate()
    xxm = (xxo+xx2o)/2
    yym = (yyo+yy2o)/2

end

function onUpdate()
    
    if isTogether then
        xx = xxm+xxOffset;
        yy = yym+yyOffset;

        xx2 = xxm+xx2Offset;
        yy2 = yym+yy2Offset;
    else
        xx = xxo+xxOffset;
        yy = yy2o+yyOffset;

        xx2 = xx2o+xx2Offset;
        yy2 = yy2o+yy2Offset;

    end


    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onSongStart()
end

function onBeatHit( ... )
    if curBeat == 36 then
        isTogether = false
    end

    if curBeat == 52 then
        isTogether = true
    end
    if curBeat == 120 then
        isTogether = false
    end
    if curBeat == 244 then
        isTogether = true
    end
    if curBeat == 248 then
        isTogether = false
    end
    if curBeat == 292 then
        isTogether = true
    end
    if curBeat == 324 then
        isTogether = false
    end
end