 -- made by stupid Misha21220
function onCreate()

            if isStoryMode and not seenCutscene then
                  makeLuaSprite('slide1','slide1',-430,-130)
                  addLuaSprite('slide1',true)
            end
      setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'garfOver')
       precacheMusic('custompause') -- change YourSong to your song (all song should be in the sounds folder :p)
       precacheImage('slide1')
       precacheImage('slide2')
       precacheImage('slide3')
       if isStoryMode and not seenCutscene then
            makeLuaSprite('slide1','slide1',-430,-130)
            addLuaSprite('slide1',true)
      end
end

function onStartCountdown()
      removeLuaSprite('slide3', true)

      setProperty('gf.alpha', 0)

      if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
            allowCountdown = true;
		return Function_Stop;
	end
       return Function_Continue
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'Dialogue_Music');
	end
end

function onPause()
         playSound('custompause', 1, 'custom') 
end

function onResume()    
      stopSound('custom')
end

function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
		count = count + 1
		
		if count == 23 then
                  removeLuaSprite('slide1', true)

                  makeLuaSprite('slide2','slide2',-450,-130)
                  addLuaSprite('slide2',true)
		end 

            if count == 37 then
                  removeLuaSprite('slide2', true)

                  makeLuaSprite('slide3','slide3',-430,-130)
                  addLuaSprite('slide3',true)
		end 
end
