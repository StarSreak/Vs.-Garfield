function onCreate()
	makeLuaSprite('sky','EternalSky', -1000, -600)
	makeLuaSprite('odie(rip)','EternalDeadDog', 800, 1100)
	makeLuaSprite('clouds', 'EternalClouds', -2000, -1150)

	makeAnimatedLuaSprite('girl','EternalGFSprites_Stacked', -200, 300)
	addAnimationByPrefix('girl','dance','EternalGF_Dance', 24, true)
	objectPlayAnimation('girl','dance', false)

	makeAnimatedLuaSprite('walls','EternalWalls_Stacked', -1000, -300)
	addAnimationByPrefix('walls','idle','EternalWalls', 24, true)
	objectPlayAnimation('walls','idle',false)

	makeAnimatedLuaSprite('glub1','Garfiend_TailLayer1_Stacked', 100, 250)
	addAnimationByPrefix('glub1','idle','Garfiend_TailLayer1', 24, true)
	objectPlayAnimation('glub1','idle', false)

	makeAnimatedLuaSprite('glub2','Garfiend_TailLayer3_Stacked', 300, 400)
	addAnimationByPrefix('glub2','idle','Garfiend_TailLayer3', 24, true)
	objectPlayAnimation('glub2','idle', false)
	
	addLuaSprite('sky', false)
	addLuaSprite('glub1', false)
	addLuaSprite('girl', false)
	addLuaSprite('glub2', false)
	addLuaSprite('walls', false)
	addLuaSprite('odie(rip)', false)
	addLuaSprite('clouds', false)

	scaleObject('walls', 0.97, 0.97)
end