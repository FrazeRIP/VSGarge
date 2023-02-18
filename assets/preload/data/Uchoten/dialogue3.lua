
local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
	--if not allowCountdown and not seenCutscene then
		setProperty('inCutscene', true);
		
		preloadAssets();
		startAction();
		
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue3', 'breakfast');
	end
end


function startAction()
	toggleHUDUI(false,0.00001)
	toggleDialogueUI(false,0.000001)
	toggleCG('6',true,.75)
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	--debugPrint(count)
	if count == 1 then
		toggleDialogueUI(true,.75)
	end

	if count == 10 then
		toggleCG('0',true,.75)
	end

end

function onSkipDialogue(count)

end


function onDialogueFinished()
		toggleHUDUI(true,0.5)
		toggleDialogueUI(false,0.5)
		toggleDialogueBackUI(false,0.5)
		toggleCG('0',false,0.5)
		toggleCG('6',false,0.000005)
end




--Helper-----------------------------------------------------------------

function preloadAssets( ... )
	loadBlack('black');
	loadCG('6');
	loadCG('0');
end

function loadCG(index)
	makeLuaSprite('cg'..index, 'cg/'..index, 0, 0);
	setScrollFactor('cg'..index, 0, 0);
	scaleObject('cg'..index, 1, 1);
	setObjectCamera('cg'..index,'camdialogueback')
	addLuaSprite('cg'..index, true);
	doTweenAlpha('cg'..index..'A', 'cg'..index, 0, 0.00001)
end

function loadBlack()
	makeLuaSprite('black', '', 0, 0);
	makeGraphic('black', 1280, 720, '000000')
	setScrollFactor('black', 0, 0);
	setObjectCamera('black','camdialogueback')
	addLuaSprite('black', true);
end
-----------------------------------------------------------------


--Toggle-----------------------------------------------------------------

function toggleDialogueBackUI(isActive,duration)
	if isActive then
		doTweenAlpha('camDialogueBackA', 'camdialogueback', 1, duration,'cubeOut')
	else
		doTweenAlpha('camDialogueBackA', 'camdialogueback', 0, duration,'cubeOut')
	end
end

function toggleDialogueUI(isActive,duration)
	if isActive then
		doTweenAlpha('camDialogueA', 'camdialogue', 1, duration,'cubeOut')
	else
		doTweenAlpha('camDialogueA', 'camdialogue', 0, duration,'cubeOut')
	end
end

function toggleHUDUI(isActive,duration)
	if isActive then
		doTweenAlpha('camHUDA', 'camHUD', 1, duration,'cubeOut')
	else
		doTweenAlpha('camHUDA', 'camHUD', 0, duration,'cubeOut')
	end
end

function toggleCG(index,isActive,duration)
	if isActive then
		doTweenAlpha('cg'..index..'A', 'cg'..index, 1, duration,'cubeOut')
	else
		doTweenAlpha('cg'..index..'A', 'cg'..index, 0, duration,'cubeOut')
	end
end

-----------------------------------------------------------------