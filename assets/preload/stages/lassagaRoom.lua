function onCreate()

	makeLuaSprite('wall','lasagaWALL', -1000, -450)
	makeLuaSprite('floor','lasagaFLOOR', -1300, 800)
	makeLuaSprite('painting1','lasagaPICTURE1', -500, 0)
	makeLuaSprite('painting2','lasagaPICTURE2', 1450, 0)
	makeLuaSprite('painting3','lasagaPICTURE3', 1750, -200)

	addLuaSprite('wall',false)
	addLuaSprite('floor',false)
	addLuaSprite('painting1',false)
	addLuaSprite('painting2',false)
	addLuaSprite('painting3',false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end