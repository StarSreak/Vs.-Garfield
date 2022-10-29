local pookmove = 0

function onCreate()

	makeLuaSprite('corridor','BG_CORRIDOR',-1850,-190)
	makeLuaSprite('wall','BG_WALL',-995,-500)
	makeLuaSprite('floor','BG_FLOOR',-1200,930)
	makeLuaSprite('bed','BG_BED',-900,640)
	makeLuaSprite('nightstand','BG_DRESSER',-250,200)
	makeLuaSprite('web','BG_WEB',-550,-50)
	makeLuaSprite('shelf','BG_FGSHELF',1200,875)
	makeLuaSprite('garfbed','GarfieldsBed',-160,770)

	makeAnimatedLuaSprite('pooky','Pooky',-290,800)
	addAnimationByPrefix('pooky','idle','PookyStatic',24,true)
	addAnimationByPrefix('pooky','approve','PookyApproves',24,false)
	objectPlayAnimation('pooky','idle',false)
	
	
	addLuaSprite('corridor',false)
	addLuaSprite('wall',false)
	addLuaSprite('floor',false)
	addLuaSprite('bed',true)
	addLuaSprite('nightstand',false)
	addLuaSprite('web',false)
	addLuaSprite('shelf',true)
	addLuaSprite('garfbed',false)
	addLuaSprite('pooky',true)

	setScrollFactor('bed', 1.05, 1);
	setScrollFactor('pooky', 1.05, 1);
	setScrollFactor('corridor', 1.05, 1);
	setScrollFactor('shelf', 2, 1);
end

function onBeatHit()

		pookmove = math.random(0,10)

	if pookmove == 5 then

		objectPlayAnimation('pooky','approve',true)
		
	end
end

function onStepHit()

end

function onUpdate()
	
end