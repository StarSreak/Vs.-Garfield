   local allowCountdown = false
   
   function onCreate()
      setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'garfOver')
   end 

   function onStartCountdown()

    setProperty('gf.alpha', 0)

    if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		return Function_Stop;
	end

    return Function_Continue;
   end

   function onTimerCompleted(tag, loops, loopsLeft)
      if tag == 'startDialogue' then -- Timer completed, play dialogue
         startDialogue('dialogue', 'breakfast');
      end
   end
   
   function onNextDialogue(count)
      -- triggered when the next dialogue line starts, 'line' starts with 1
         count = count + 1

         if count == 13 then
            startVideo('garfgetsPIED')
         end

         if count == 30 then
            allowCountdown = true
         end

   end