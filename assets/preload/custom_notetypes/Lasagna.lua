function onCreate()

	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Lasagna' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'LASAGNANOTE_Assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BULLETNOTE_Splashes')

			makeAnimatedLuaSprite('splash1', 'LasagaBlockade1', 0, 0);
			addAnimationByPrefix('splash1', 'splash1', 'LasagaBlockade1', 24, false)
			setObjectCamera('splash1', 'other')
			scaleObject('splash1', 0.65, 0.65)
						makeAnimatedLuaSprite('splash2', 'LasagaBlockade2', 0, 0);
			addAnimationByPrefix('splash2', 'splash2', 'LasagaBlockade2', 24, false)
			setObjectCamera('splash2', 'other')
			scaleObject('splash2', 0.65, 0.65)
						makeAnimatedLuaSprite('splash3', 'LasagaBlockade3', 0, 0);
			addAnimationByPrefix('splash3', 'splash3', 'LasagaBlockade3', 24, false)
			setObjectCamera('splash3', 'other')
			scaleObject('splash3', 0.65, 0.65)
		
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Lasagna' then
	    Splash = getRandomInt(1, 3);

	if Splash == 1 then
		playSound('sploosh', 1)	
		addLuaSprite('splash1', true);
		objectPlayAnimation('splash1', 'splash1', true)
		else
		if Splash == 2 then
			playSound('sploosh', 1)	
				addLuaSprite('splash2', true);
		objectPlayAnimation('splash2', 'splash2', true)
		else
		if Splash == 3 then
			playSound('sploosh', 1)	
				addLuaSprite('splash3', true);
		objectPlayAnimation('splash3', 'splash3', true)

	end
end
end
end
end