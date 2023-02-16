function onCreate()


    if boyfriendName == 'bf' then

        setPropertyFromClass('GameOverSubstate', 'characterName', 'bf');
        --setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameover'); 
    end

    if boyfriendName == 'BF_dusk' then

        setPropertyFromClass('GameOverSubstate', 'characterName', 'BF_dusk');
        --setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameover'); 
    end

    if boyfriendName == 'BF_evening' then

        setPropertyFromClass('GameOverSubstate', 'characterName', 'BF_evening');
        --setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameover'); 
    end

    if boyfriendName == 'BF_neliman' then

        setPropertyFromClass('GameOverSubstate', 'characterName', 'BF_neliman');
        --setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameover'); 
    end

    if boyfriendName == 'BF_night' then

        setPropertyFromClass('GameOverSubstate', 'characterName', 'BF_night');
        --setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameover'); 
    end

    if boyfriendName == 'BF_noon' then

        setPropertyFromClass('GameOverSubstate', 'characterName', 'BF_noon');
        --setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameover'); 
    end

    if boyfriendName == 'gk_player' then
        setPropertyFromClass('GameOverSubstate', 'characterName', 'gk_player');
        --setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameover'); 
    end


end
function onGameOver()
	playSound('fnf_loss_sfx',1)
	return Function_Continue;
end