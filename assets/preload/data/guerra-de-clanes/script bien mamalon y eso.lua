local animaciones = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}

function onCreatePost()
    for i = 0,3 do
        setPropertyFromGroup('opponentStrums',i,'alpha',0)
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	characterPlayAnim('boyfriend', animaciones[direction + 1])
	setProperty('boyfriend.specialAnim', true)
end

function onBeatHit()
	if curBeat == 1 then
		for i = 0,3 do
			noteTweenAlpha('clanes'..i, i, 0, 2, 'linear')
		end
	end
	if curBeat == 68 then
		for i = 0,3 do
			noteTweenAlpha('clanes'..i, i, 1, 5, 'sineInOut')
		end
	end
	if curBeat == 200 then
		for i = 0,7 do
			noteTweenAlpha('clanes'..i, i, 0, 4, 'sineInOut')
		end
	end
	if curBeat == 218 then
		for i = 4,7 do
			noteTweenAlpha('clanes'..i, i, 1, 2, 'sineInOut')
		end
	end
	if curBeat == 232 then
		for i = 4,7 do
			noteTweenAlpha('clanes'..i, i, 0, 2, 'sineInOut')
		end
	end
end