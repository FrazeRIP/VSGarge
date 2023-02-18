
local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	--if not allowCountdown and not seenCutscene then
		if not allowCountdown and isStoryMode and not seenCutscene then
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
		startDialogue('dialogue4', 'breakfast');
		toggleDialogueUI(true,.75)
	end
end


function startAction()
	toggleHUDUI(false,0.00001)
	toggleCG('0',true,.75)
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	--debugPrint(count)

	if count == 2 then
		toggleDialogueUI(false,.25)
		toggleCG('7',true,.75)
	end

	if count == 3 then
		toggleDialogueUI(true,.5)
	end

	if count == 5 then
		toggleDialogueUI(false,.25)
		toggleCG('8',true,.75)
	end

	if count == 6 then
		toggleDialogueUI(true,.5)
	end

	if count == 7 then
		toggleDialogueUI(false,.25)
		toggleCG('9',true,.75)
	end

	if count == 8 then
		toggleDialogueUI(true,.5)
	end

	if count == 9 then
		toggleCG('9',false,.75)
		toggleCG('8',false,.00005)
		toggleCG('7',false,.00005)
	end

end

function onSkipDialogue(count)

end



function onDialogueFinished()
		toggleHUDUI(true,0.5)
		toggleDialogueUI(false,0.5)
		toggleDialogueBackUI(false,0.5)
		toggleCG('0',false,0.5)
		toggleCG('7',false,0.00005)
		toggleCG('8',false,0.00005)
		toggleCG('9',false,0.00005)
end



--Helper-----------------------------------------------------------------

function preloadAssets( ... )
	loadBlack('black');
	loadCG('0');
	loadCG('7');
	loadCG('8');
	loadCG('9');
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