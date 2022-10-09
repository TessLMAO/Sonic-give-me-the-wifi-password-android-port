function onCreate()
	makeLuaSprite('carmenroom', 'BG', -500, -200); --I was doing something with the carmen winstead mod so uhhh
	setScrollFactor('carmenroom', 0.9, 0.9);
	setProperty('carmenroom.scale.x', 0.75)
	setProperty('carmenroom.scale.y', 0.75)
	
	makeLuaSprite('no', 'camilla', -475, 250);
	setScrollFactor('no', 0.9, 0.9);
	setProperty('no.scale.x', 0.65)
	setProperty('no.scale.y', 0.65)
	
	makeAnimatedLuaSprite('me corro elfa :V', 'Vitales', '', '')
	addAnimationByPrefix('me corro elfa :V', 'guerra', 'Vitales_idle', 24, false)
	setScrollFactor('me corro elfa :V', 0.9, 0.9);
	setProperty('me corro elfa :V.scale.x', 0.75)
	setProperty('me corro elfa :V.scale.y', 0.75)
	
	makeLuaSprite('heart', 'vida', 0, 0);
	setObjectCamera('heart', 'other')
	setProperty('heart.scale.x', 0.625)
	setProperty('heart.scale.y', 0.625)
	
	addLuaSprite('carmenroom', false)
	addLuaSprite('me corro elfa :V', false)
	addLuaSprite('no', false)
	addLuaSprite('heart', true)
end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('me corro elfa :V', 'guerra', false)
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	--[[if not isSustainNote then
		objectPlayAnimation('me corro elfa :V', 'guerra', true)
	end]]
end

function onUpdate()
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('heart.x', (getProperty('iconP1.x') + getProperty('iconP2.x')) / 2)
	setProperty('heart.y', getProperty('iconP1.y'))
	setProperty('heart.scale.y', getProperty('iconP1.scale.y') - 0.375)
	setProperty('heart.scale.x', getProperty('iconP1.scale.x') - 0.375)
	setProperty('heart.alpha', getProperty('iconP1.alpha'))
	
	triggerEvent('Camera Follow Pos', '500', '425')
end

function onCreatePost()
	--setProperty('dad.alpha', 0)
	setProperty('gf.alpha', 0)
	--setProperty('boyfriend.alpha', 0)
end