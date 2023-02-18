
local width = 600


function onEvent(name, value1, value2)
	if name == 'ShowBar' then
	Show(value1,value2)
	end

end


function Hide(duration,tween)
	doTweenY('top-Show','blackTop',720,duration,tween)
	doTweenY('down-Show','blackButtom',-720,duration,tween)
	doTweenColor('bgBrightA', 'A', 'FFFFFF', duration,tween)
	doTweenColor('bgBrightC', 'C', 'FFFFFF', duration,tween)
end

function Show(duration,tween)
	doTweenY('top-Show','blackTop',width,duration,tween)
	doTweenY('down-Show','blackButtom',-width,duration,tween)
	doTweenColor('bgDarkA', 'A', '9C9C9C', duration,tween)
	doTweenColor('bgDarkC', 'C', '9C9C9C', duration,tween)
end