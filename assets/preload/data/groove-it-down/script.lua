 -- made by stupid Misha21220
function onStartCountdown()
      setProperty('gf.alpha', 0)
      return Function_Continue
end

function onCreate()
       precacheMusic('custompause') -- change YourSong to your song (all song should be in the sounds folder :p)
       setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'garfOver')
end

function onPause()
         playSound('custompause', 1, 'custom') 
end

function onResume()    
      stopSound('custom')
end