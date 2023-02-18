
--����
local ElongNoteHealthDrain = .0035 --�з������Ŀ�Ѫǿ��(Easy�Ѷ�)
local EnoteHealthDrain = .0125		--�з��������Ŀ�Ѫǿ��(Easy�Ѷ�)


local NlongNoteHealthDrain = .008 --�з������Ŀ�Ѫǿ��(Normal�Ѷ�)
local NnoteHealthDrain = .02		--�з��������Ŀ�Ѫǿ��(Normal�Ѷ�)


local HlongNoteHealthDrain = 0 --�з������Ŀ�Ѫǿ��(Hard�Ѷ�)
local HnoteHealthDrain = 0		--�з��������Ŀ�Ѫǿ��(Hard�Ѷ�)

local longNoteHealthDrain
local noteHealthDrain


local isMercy = true	--�ĳ�false���������������

---------------------------------------���治�ö���
function onCreatePost( ... )

	if difficulty ==0 then
	
		longNoteHealthDrain = ElongNoteHealthDrain
		noteHealthDrain = EnoteHealthDrain
	end

	if difficulty ==1 then
		longNoteHealthDrain = NlongNoteHealthDrain
		noteHealthDrain = NnoteHealthDrain
	end

	if difficulty ==2 then
		longNoteHealthDrain = HlongNoteHealthDrain
		noteHealthDrain = HnoteHealthDrain
	end

end


function opponentNoteHit(id, direction, noteType, isSustainNote)
	 if isMercy then
	 Mercy()
	 else
	 NoMercy()
	 end
	 
end

function NoMercy( ... )
	 health = getProperty('health')
	 if isSustainNote == true then
		
		setProperty('health', health- longNoteHealthDrain)
		else
		setProperty('health', health- noteHealthDrain)
	 end
end

function Mercy( ... )
	 health = getProperty('health')
	 if isSustainNote == true then
			if health >longNoteHealthDrain then
				if health > 1 then
					setProperty('health', health-(longNoteHealthDrain*1.25))
				elseif health >1.5 then
					setProperty('health', health-(longNoteHealthDrain*2))
				else
					setProperty('health', health- longNoteHealthDrain)
				end
			end
		else
			if health >noteHealthDrain then
			
				if health > 1 then
					setProperty('health', health- (noteHealthDrain*1.25))
				elseif health >1.5 then
					setProperty('health', health- (noteHealthDrain*2))
				else
					setProperty('health', health- noteHealthDrain)
				end
			end
	 end
end


