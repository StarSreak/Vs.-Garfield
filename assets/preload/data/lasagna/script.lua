function onCreate()
	addCharacterToList('garfield_Ang')
	addCharacterToList('garfield_SlightAng')
	addCharacterToList('garfield_Hap')
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'garfOver')

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

	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
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

local allowEnd = false

function onEndSong()
	if not allowEnd and isStoryMode then
		setProperty('inCutscene', true);
		startDialogue('post-dialogue', 'Dialogue_Music');
		setProperty('healthBar.alpha', tonumber(0))
    	setProperty('iconP1.alpha', tonumber(0))
    	setProperty('iconP2.alpha', tonumber(0))
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onNextDialogue(count)
	count = count + 1

	if count == 39 then
	makeLuaSprite('end', 'Untitled-1', -300, 0)
	addLuaSprite('end', true)
	 end

	if count == 41 then
	setProperty('camHUD.visible', false)
	makeLuaSprite('thanks', 'thanks', -130, 0)
	addLuaSprite('thanks', true)
	scaleObject('thanks', 1.1, 1.1)
	end

	if count == 42 then
	setProperty('camHUD.visible', true)
	end
end