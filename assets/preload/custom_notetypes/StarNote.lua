

function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'StarNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'StarNote'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '2.00'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			--setPropertyFromGroup('unspawnNotes', i, 'camera', 'camNoteWhite');
			
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end

		end
	end
	--debugPrint('Script started!')
end



function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == noteName then
		setProperty('health', 2)
		end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == noteName then

	end
end

