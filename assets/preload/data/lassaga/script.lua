function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'john')
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'lasagadeathnoise')
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'garfOver')
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd')

    precacheMusic('custompause')
end

function onPause()
    playSound('custompause', 1, 'custom') 
end

function onResume()    
 stopSound('custom')
end

function onStartCountdown()
       setProperty('gf.alpha', 0)
       return Function_Continue
end