   function onCreate()
      setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'garfOver')
   end 

   function onStartCountdown()

    setProperty('gf.alpha', 0)

    if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
            allowCountdown = true;
		return Function_Stop;
	end

    return Function_Continue;
   end
   
   
   function onTimerCompleted(tag, loops, loopsLeft)
      if tag == 'startDialogue' then -- Timer completed, play dialogue
         startDialogue('dialogue', 'breakfast');
      end
   end

