function onCreate()

    makeLuaSprite('drop','dropback', -900, -500)
    makeLuaSprite('stage', 'groovyDancefloor', -500, 640)
    makeLuaSprite('curtains', 'GroovyCurtains', -405, -600)
    makeLuaSprite('light', 'spotlite', 20, -600)

    makeAnimatedLuaSprite('bar','GarfAtTheBar_Stacked', -450, 170)
    addAnimationByPrefix('bar','idle','GarfAtTheBar', 24, true)
    objectPlayAnimation('bar','idle',false)

    makeAnimatedLuaSprite('girls','GirlsAtTheBar_Stacked', 150, 50)
    addAnimationByPrefix('girls','girlidle','GirlsAtTheBar', 24, true)
    objectPlayAnimation('girls','girlidle',false)

    makeAnimatedLuaSprite('crowd','GroovyCrowd_Stacked', 150, -450)
    addAnimationByPrefix('crowd','crowdidle','DiscoCrowd', 24, true)
    objectPlayAnimation('crowd','crowdidle',false)

    addLuaSprite('drop',false)
    addLuaSprite('crowd', false)
    addLuaSprite('girls', false)
    addLuaSprite('bar',false)
    addLuaSprite('stage',false)
    addLuaSprite('curtains',true)
    addLuaSprite('light',true)

    setScrollFactor('drop', 1.05, 2);
    setScrollFactor('curtains', 1, 1.5);
    setScrollFactor('bar', 1.25, 1.2);
    setScrollFactor('girls', 1.45, 1.2);
    setScrollFactor('crowd', 1.30, 1.4);
end