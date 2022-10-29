function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'eternalboys')
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx')
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Eternal_gameOver')
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Eternal_retry')
end

function onStartCountdown()
       setProperty('gf.alpha', 0)
       return Function_Continue
end