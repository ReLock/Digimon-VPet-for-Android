local backgrounds = display.newGroup()
BG = display.newImage('normBG.png')
json = require("json")
mime = require("mime")
digmonPath = system.pathForFile('digi.json', system.DocumentsDirectory)
digiSound = audio.loadSound( 'egg.wav' )
local canvas = display.newGroup()


function encrypt(str, key)
	local result = ''
	local char
	local keychar
	local temp = function(...) print('the') end
	the = xpcall(function()
		if str and key then

			for i=1, string.len(str) do
				char = string.sub(str, i, i)
				local tempModulo = (i % string.len(key))
				if tempModulo == 0 then tempModulo = string.len(key) end
				keychar = string.sub(key, tempModulo, tempModulo)
				char = string.char(string.byte(char)+string.byte(keychar))
				result = result..char
			end

		end
	end, temp)
	return mime.b64(result)
end

function decrypt(str, key)
	local result = ''
	local char
	local keychar
	local temp = function(...) print('the') end
	the = xpcall(function()
		if str and key and mime.decode("base64")(str) then
			str = mime.decode("base64")(str)

			for i=1, string.len(str) do
				char = string.sub(str, i, i)
				local tempModulo = (i % string.len(key))
				if tempModulo == 0 then tempModulo = string.len(key) end
				keychar = string.sub(key, tempModulo, tempModulo)
				char = string.char(string.byte(char)-string.byte(keychar))
				result = result..char
			end

		end
	end, temp)
	return result
end

 
		

 
function saveDigi()
	the = xpcall(function()
		local key = 'asdasdasd'
		local configFile = io.open(digmonPath, 'wb')
		tempObj = pDigimonObj
		configFile:write(encrypt(json.encode(pDigimon), key))
		configFile:close()
	end, function(...) print(...) end)

end

function loadDigi()
	local key = 'asdasdasd'
	tempFile = io.open(digmonPath, 'r')

	if tempFile then tempData = tempFile:read("*a") 	tempFile:close()end
	
	the = xpcall(function() pDigimon = json.decode(decrypt(tempData,key))  end, function(...) print('asdasd') end)
	if not(tempFile) or not(the) then

		pDigimon = {}
		pDigimon.wiggleCount = 0
		pDigimon.stage = 'egg'
		pDigimon.type = 'egg'
		saveDigi()
	end
	digiSound = audio.loadSound( pDigimon.type..'.wav' )
	pDigimonObj = display.newImage(pDigimon.type..'.png')
	pDigimonObj.x,  pDigimonObj.y = display.contentWidth/2,display.contentHeight/2
	canvas:insert( pDigimonObj )
end

loadDigi()

	--[[
	possible stage values
	
	1. egg
	2. baby
	3. baby 2
	4. rookie
	5. champion
	6. ultimate
	
	]]--
	
wiggling = false
function eggWiggle()
	if not(pDigimon.wiggling) then
		wiggling = true
		local function wigglePos()
			 pDigimonObj:rotate(1)
			
		end

		local function wiggleNeg()
			 pDigimonObj:rotate(-1)
			
		end
		
		 pDigimonObj:setReferencePoint(display.BottomCenterReferencePoint)
		
		timer.performWithDelay( 5, wigglePos )
		timer.performWithDelay( 10, wigglePos )
		timer.performWithDelay( 15, wigglePos )
		timer.performWithDelay( 20, wigglePos )
		timer.performWithDelay( 25, wigglePos )
		timer.performWithDelay( 30, wigglePos )
		timer.performWithDelay( 35, wigglePos )
		timer.performWithDelay( 40, wigglePos )
		timer.performWithDelay( 45, wigglePos )
		timer.performWithDelay( 50, wigglePos )
		timer.performWithDelay( 55, wigglePos )
		timer.performWithDelay( 60, wigglePos )
		timer.performWithDelay( 65, wigglePos )
		timer.performWithDelay( 70, wigglePos )
		timer.performWithDelay( 75, wigglePos )
		
		
		timer.performWithDelay( 75, wiggleNeg )
		timer.performWithDelay( 80, wiggleNeg )
		timer.performWithDelay( 85, wiggleNeg )
		timer.performWithDelay( 90, wiggleNeg )
		timer.performWithDelay( 95, wiggleNeg )
		timer.performWithDelay( 100, wiggleNeg )
		timer.performWithDelay( 105, wiggleNeg )
		timer.performWithDelay( 110, wiggleNeg )
		timer.performWithDelay( 115, wiggleNeg )
		timer.performWithDelay( 120, wiggleNeg )
		timer.performWithDelay( 125, wiggleNeg )
		timer.performWithDelay( 130, wiggleNeg )
		timer.performWithDelay( 135, wiggleNeg )
		timer.performWithDelay( 140, wiggleNeg )
		timer.performWithDelay( 145, wiggleNeg )	
		
		
		timer.performWithDelay( 150, wiggleNeg )
		timer.performWithDelay( 155, wiggleNeg )
		timer.performWithDelay( 160, wiggleNeg )
		timer.performWithDelay( 165, wiggleNeg )
		timer.performWithDelay( 170, wiggleNeg )
		timer.performWithDelay( 175, wiggleNeg )
		timer.performWithDelay( 180, wiggleNeg )
		timer.performWithDelay( 185, wiggleNeg )
		timer.performWithDelay( 190, wiggleNeg )
		timer.performWithDelay( 195, wiggleNeg )
		timer.performWithDelay( 200, wiggleNeg )
		timer.performWithDelay( 205, wiggleNeg )
		timer.performWithDelay( 210, wiggleNeg )
		timer.performWithDelay( 215, wiggleNeg )	
		timer.performWithDelay( 220, wiggleNeg )	
		
		timer.performWithDelay( 225, wigglePos )
		timer.performWithDelay( 230, wigglePos )
		timer.performWithDelay( 235, wigglePos )
		timer.performWithDelay( 240, wigglePos )
		timer.performWithDelay( 245, wigglePos )
		timer.performWithDelay( 250, wigglePos )
		timer.performWithDelay( 255, wigglePos )
		timer.performWithDelay( 260, wigglePos )
		timer.performWithDelay( 265, wigglePos )
		timer.performWithDelay( 270, wigglePos )
		timer.performWithDelay( 275, wigglePos )
		timer.performWithDelay( 280, wigglePos )
		timer.performWithDelay( 285, wigglePos )
		timer.performWithDelay( 290, wigglePos )
		timer.performWithDelay( 295, function() wigglePos() wiggling = false 		 end )
		
	else
		return false
	end
end

jumpingHappy = false
function digiJump()


	if not(jumpingHappy) then
	jumpingHappy = true

		local function jumpPos()
			 pDigimonObj.y = pDigimonObj.y - 1
		end

		local function jumpNeg()
			 pDigimonObj.y = pDigimonObj.y + 1			
		end
		
		pDigimonObj:setReferencePoint(display.BottomCenterReferencePoint)
		
		timer.performWithDelay( 5, jumpPos )
		timer.performWithDelay( 10, jumpPos )
		timer.performWithDelay( 15, jumpPos )
		timer.performWithDelay( 20, jumpPos )
		timer.performWithDelay( 25, jumpPos )
		timer.performWithDelay( 30, jumpPos )
		timer.performWithDelay( 35, jumpPos )
		timer.performWithDelay( 40, jumpPos )
		timer.performWithDelay( 45, jumpPos )
		timer.performWithDelay( 50, jumpPos )
		timer.performWithDelay( 55, jumpPos )
		timer.performWithDelay( 60, jumpPos )
		timer.performWithDelay( 65, jumpPos )
		timer.performWithDelay( 70, jumpPos )
		timer.performWithDelay( 75, jumpPos )
		
		
		timer.performWithDelay( 75, jumpNeg )
		timer.performWithDelay( 80, jumpNeg )
		timer.performWithDelay( 85, jumpNeg )
		timer.performWithDelay( 90, jumpNeg )
		timer.performWithDelay( 95, jumpNeg )
		timer.performWithDelay( 100, jumpNeg )
		timer.performWithDelay( 105, jumpNeg )
		timer.performWithDelay( 110, jumpNeg )
		timer.performWithDelay( 115, jumpNeg )
		timer.performWithDelay( 120, jumpNeg )
		timer.performWithDelay( 125, jumpNeg )
		timer.performWithDelay( 130, jumpNeg )
		timer.performWithDelay( 135, jumpNeg )
		timer.performWithDelay( 140, jumpNeg )
		timer.performWithDelay( 145, jumpNeg )	
		
		
		timer.performWithDelay( 150, jumpNeg )
		timer.performWithDelay( 155, jumpNeg )
		timer.performWithDelay( 160, jumpNeg )
		timer.performWithDelay( 165, jumpNeg )
		timer.performWithDelay( 170, jumpNeg )
		timer.performWithDelay( 175, jumpNeg )
		timer.performWithDelay( 180, jumpNeg )
		timer.performWithDelay( 185, jumpNeg )
		timer.performWithDelay( 190, jumpNeg )
		timer.performWithDelay( 195, jumpNeg )
		timer.performWithDelay( 200, jumpNeg )
		timer.performWithDelay( 205, jumpNeg )
		timer.performWithDelay( 210, jumpNeg )
		timer.performWithDelay( 215, jumpNeg )	
		timer.performWithDelay( 220, jumpNeg )	
		
		timer.performWithDelay( 225, jumpPos )
		timer.performWithDelay( 230, jumpPos )
		timer.performWithDelay( 235, jumpPos )
		timer.performWithDelay( 240, jumpPos )
		timer.performWithDelay( 245, jumpPos )
		timer.performWithDelay( 250, jumpPos )
		timer.performWithDelay( 255, jumpPos )
		timer.performWithDelay( 260, jumpPos )
		timer.performWithDelay( 265, jumpPos )
		timer.performWithDelay( 270, jumpPos )
		timer.performWithDelay( 275, jumpPos )
		timer.performWithDelay( 280, jumpPos )
		timer.performWithDelay( 285, jumpPos )
		timer.performWithDelay( 290, jumpPos )
		timer.performWithDelay( 295, function() jumpPos() jumpingHappy = false end )
		
	else
		return false
	end
end

function evolveDigimon()
print(2)
	if pDigimon.stage == 'egg' then
		pDigimon.stage = 'baby'
		pDigimon.type = 'botamon'

		canvas:remove( pDigimonObj )
		pDigimonObj = display.newImage('botamon.png')
		canvas:insert( pDigimonObj )
		pDigimonObj.x,  pDigimonObj.y = display.contentWidth/2,display.contentHeight/2
		pDigimonObj:rotate( 0)
	end
	audio.dispose(digiSound)
	digiSound = audio.loadSound( pDigimon.type..'.wav' )
	
	audio.play(audio.loadSound( 'evolve.wav' ),{ channel=1, loops=1, fadein=0 })

	setListener() 
end













Runtime:addEventListener( "system", function(event)
	if event.type == 'applicationSuspend' or event.type == 'applicationExit' then
		saveDigi()
	end

end)


function setListener() 
	pDigimonObj:addEventListener('touch', function(event)
		if event.phase == 'ended' then
			if pDigimon.type == 'egg' then		
				if not(wiggling) then
				audio.play( digiSound, { channel=1, loops=1, fadein=0 })
					eggWiggle()
					
					timer.performWithDelay( 300, eggWiggle )
					timer.performWithDelay( 600, 
					function() 
					pDigimon.wiggleCount = pDigimon.wiggleCount + 1 
						if pDigimon.stage == 'egg' and pDigimon.wiggleCount == 5 then evolveDigimon()  end
					end )
					
				end
				
			elseif pDigimon.type=='botamon' then
					if not(jumpingHappy) then
						digiJump()
						audio.play( digiSound, { channel=1, loops=1, fadein=0 }  ) 
					end
			else
				
			end
		end
	end)
end
setListener() 
