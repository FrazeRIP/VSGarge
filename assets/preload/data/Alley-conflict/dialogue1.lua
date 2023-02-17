
local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
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
		startDialogue('dialogue1', 'breakfast');
	end
end


function startAction()
	toggleHUDUI(false,0.00001)
	toggleDialogueUI(false,0.000001)
	toggleCG('1',1)
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	
	debugPrint(count);
	if count == 1 then
		toggleDialogueUI(true,.5)
		toggleDialogueBackUI(false,.5)
		toggleHUDUI(true,.5)
	end
end

function onSkipDialogue(count)

end



function onDialogueFinished()
		toggleHUDUI(true,0.5)
		toggleDialogueUI(false,0.5)
		toggleDialogueBackUI(false,0.5)
end



function onTweenCompleted( tag )
	if tag == 'cg0A' then
		--setProperty('isLockDialogue',false)
	end
	
	if tag == 'cg1A' then
		--setProperty('isLockDialogue',false)
	end
	if tag == 'cg2A' then
		--setProperty('isLockDialogue',false)
	end
	if tag == 'cg3A' then
		--setProperty('isLockDialogue',false)
	end
	
	if tag == 'cg4A' then
		--setProperty('isLockDialogue',false)
	end
end




--Helper-----------------------------------------------------------------

function preloadAssets( ... )
	loadBlack('black');
	loadCG('0');
	loadCG('1');
	loadCG('2');
	loadCG('3');
	loadCG('4');
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
		--debugPrint('activate dialogue back cam');
		doTweenAlpha('camDialogueBackA', 'b', 1, duration,'cubeOut')
		--debugPrint('success');
	else
		--debugPrint('disable dialogue back cam');
		doTweenAlpha('camDialogueBackA', 'b', 0, duration,'cubeOut')
		--debugPrint('success');
	end
end

function toggleDialogueUI(isActive,duration)
	if isActive then
		--debugPrint('activate dialogue cam');
		doTweenAlpha('camDialogueA', 'a', 1, duration,'cubeOut')
		--debugPrint('success');
	else
		--debugPrint('disable dialogue cam');
		doTweenAlpha('camDialogueA', 'a', 0, duration,'cubeOut')
		--debugPrint('success');
	end
end

function toggleHUDUI(isActive,duration)
	if isActive then
		--debugPrint('activate UI cam');
		doTweenAlpha('camHUDA', 'camHUD', 1, duration,'cubeOut')
		--debugPrint('success');
	else
		--debugPrint('disable UI cam');
		doTweenAlpha('camHUDA', 'camHUD', 0, duration,'cubeOut')
		--debugPrint('success');
	end
end

function toggleCG(index,isActive,duration)
	if isActive then
		--setProperty('isLockDialogue',true)
		doTweenAlpha('cg'..index..'A', 'cg'..index, 1, duration,'cubeOut')
	else
		doTweenAlpha('cg'..index..'A', 'cg'..index, 0, duration,'cubeOut')
	end
end

-----------------------------------------------------------------