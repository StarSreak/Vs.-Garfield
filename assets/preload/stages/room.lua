function onCreate()

	makeLuaSprite('corridor','BG_CORRIDOR',-1850,-190)
	makeLuaSprite('wall','BG_WALL',-995,-500)
	makeLuaSprite('floor','BG_FLOOR',-1200,930)
	makeLuaSprite('bed','BG_BED',-900,640)
	makeLuaSprite('nightstand','BG_DRESSER',-250,200)
	makeLuaSprite('web','BG_WEB',-550,-50)
	makeLuaSprite('shelf','BG_FGSHELF',1200,875)
	makeLuaSprite('garfbed','GarfieldsBed',-160,770)

	addLuaSprite('corridor',false)
	addLuaSprite('wall',false)
	addLuaSprite('floor',false)
	addLuaSprite('bed',true)
	addLuaSprite('nightstand',false)
	addLuaSprite('web',false)
	addLuaSprite('shelf',true)
	addLuaSprite('garfbed',false)

	setScrollFactor('bed', 1.05, 1);
	setScrollFactor('corridor', 1.05, 1);
	setScrollFactor('shelf', 2, 1);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end