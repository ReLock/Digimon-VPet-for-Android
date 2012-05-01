local backgrounds = display.newGroup()
BG = display.newImage('normBG.png')
backgrounds:insert( BG )
--hearts = display.newImage('heart.png')
--backgrounds:insert( hearts )

require "digiArray"
json = require("json")
mime = require("mime")
digmonPath = system.pathForFile('digi.json', system.DocumentsDirectory)
mandatoryKeys = {}
global = {
	feeding = false,
	isTouching = false,
	tempMath = 164/100,
}

function getManKeys()
	return {
		happiness = 20,
		stage = 'egg',
		type = 'egg',
		name = 'Egg',
		masterTimestamp = os.time(),
		lastEvolveTimestamp = os.time(),
		hunger = 20,
		power = 0,
		wins = 0,
		losses = 0,
		happinessNeglect = 0,
		foodNeglect = 0,
		hiddenValue = math.random(-1000,1000),
		evolveList = {'egg'},
		hasHunger = false,
		hasHappiness = true,
		weight = 0.3,
	}
end
--digiSound = audio.loadSound( 'egg.wav' )
local canvas = display.newGroup()


function encrypt(str, key)
	local result = ''
	local char
	local keychar
	local temp = function(...) print(...) end
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
	local temp = function(...) print(...) end
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
		local key = '982134jh78234523$@#%3tuihn io5u4t FG"^#45 ;34n'
		local configFile = io.open(digmonPath, 'w')
		tempObj = pDigimonObj
		local digiString = encrypt(json.encode(pDigimon), key)
		if type(digiString)=='string' then
			configFile:write(digiString)
		end
		
		configFile:close()
	end, function(...) print(...) end)
		if configFile then configFile:close() end

end

function loadDigi(forceNew)
	local key = '982134jh78234523$@#%3tuihn io5u4t FG"^#45 ;34n'
	tempFile = io.open(digmonPath, 'r')

	if tempFile then tempData = tempFile:read("*a") 	tempFile:close()end
	
	
	xpcall(function() pDigimon = json.decode(decrypt(tempData,key))  end, function(...) print('Failed to load digimon, is it missing? Corrupt? WHAT DID YOU DO TO IT?!') end)
	if not(statCheck(pDigimon)) or not(tempFile) or not(pDigimon) or forceNew then

		pDigimon = {}
		pDigimon = getManKeys()
		
		saveDigi()
	else
	end
	pDigimonObj = display.newImage(pDigimon.type..'.png')
	pDigimonObj.x,  pDigimonObj.y = display.contentWidth/2,display.contentHeight/2
	canvas:insert( pDigimonObj )
end

function statCheck(digi)
	if type(digi) == 'table' then
		for i,v in pairs(getManKeys()) do
			if not(digi[i]) and not(digi[i] == false) then
				return false
			end
		end
		return true
	end
	return false
end 

function statBuild(digi)
	return(getManKeys())
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
		timer.performWithDelay( 295, function() wigglePos() wiggling = false 			pDigimonObj.rotation = 0 end )
		
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
		timer.performWithDelay( 295, function() jumpPos() jumpingHappy = false 	pDigimonObj.rotation = 0 end )
		
	else
		return false
	end
end

function evolveDigimon(forceEvolve)
	local evolvList = {} 
	for i,v in pairs(digimonArray[pDigimon.type].evolvesTo) do
		v = digimonArray[v]
		local bool = false
		local currentLevels = { happiness = pDigimon.happiness, time = (os.time()-pDigimon.lastEvolveTimestamp)}
		local tempVal = false
		if v.requirements then
			tempVal = false
			for k,d in  pairs(v.requirements) do


				if (k == 'evolvedFrom') or currentLevels[k] >= d  then 
					if not(k == 'evolvedFrom') then
						tempVal = v
					else
						tempVal = false
						for l,o in ipairs(pDigimon.evolveList) do
							if o == d then 
								tempVal = v
								else
							end
						end
					end
					
				elseif not(currentLevels[k] >= d) then
					tempVal = false
					break
				end
			end
			if tempVal then table.insert(evolvList,v) end
		end
	end
	if #evolvList >0 or forceEvolve then 
	table.sort(evolvList, function(a,b) return #a.requirements>=#b.requirements end)
	
	local tempVal = evolvList[1]
	if forceEvolve then tempVal = digimonArray[forceEvolve] end
		pDigimon.lastEvolveTimestamp = os.time()
		pDigimon.type = tempVal.type
		pDigimon.name = tempVal.name
		pDigimon.hasHunger = tempVal.hasHunger
		pDigimon.hasHappiness = tempVal.hasHappiness

		pDigimon.stage = tempVal.stage
		table.insert(pDigimon.evolveList, tempVal.type)
		canvas:remove( pDigimonObj )
		pDigimonObj = nil
		pDigimonObj = display.newImage(pDigimon.type..'.png')
		canvas:insert( pDigimonObj )
		pDigimonObj.rotation = 0 --need to move this so that it's at the end of each eggwiggle.
		pDigimonObj.x,  pDigimonObj.y = display.contentWidth/2,display.contentHeight/2
		setListener() 
		audio.play(audio.loadSound( 'evolve.wav' ),{ channel=1, loops=0, fadein=0 })
		return true
		
	end
		




	
end



function makeHappy()
	if pDigimon.happiness <= -1 then
		pDigimon.happiness = 2
	elseif pDigimon.happiness > 100 then
		pDigimon.happiness = 100
	else
		pDigimon.happiness = pDigimon.happiness + 0.20
	end
end

hud = {}
action = {}
hudObj = {
	buttons = {
		feed = display.newImage('feedButton.png', 30,display.contentHeight-94),
		poke = display.newImage('pokeButton.png', 130,display.contentHeight-94),
		reset = display.newImage('resetButton.png', 385,display.contentHeight-94),
	},
	happinessFaded = display.newImage('happinessBarFaded.png', display.contentWidth-169, 45),
	happiness = display.newImage('happinessBar.png', display.contentWidth-169, 45),
	hunger = display.newImage('foodBar.png', 5, 45),
	hungerFaded = display.newImage('foodBarFaded.png', 5, 45),
	

}
guiGroup = display.newGroup()
guiGroup:insert(hudObj.buttons.poke)
guiGroup:insert(hudObj.buttons.feed)
guiGroup:insert(hudObj.buttons.reset)
guiGroup:insert(hudObj.hungerFaded)
guiGroup:insert(hudObj.happinessFaded)
guiGroup:insert(hudObj.happiness)
guiGroup:insert(hudObj.hunger)

hudObj.happiness:setMask(graphics.newMask('foodBarMask.png'))
hudObj.hunger:setMask(graphics.newMask('foodBarMask.png'))


function hud.happiness(repeating)
		
		if pDigimon.happiness > 100 then
			pDigimon.happiness = 100
		elseif (pDigimon.happiness <= -1 ) then
			pDigimon.happiness = (-1)
		elseif pDigimon.happiness <=0 and not(pDigimon.happiness <=-1 ) then
			pDigimon.happinessNeglect = pDigimon.happinessNeglect + 1
			pDigimon.happiness = (-1)
		else
			if not(jumpingHappy) and not(wiggling) and not(global.isTouching) then pDigimon.happiness = pDigimon.happiness - 0.005 end
		end

		hudObj.happiness.maskX = (-163)+(global.tempMath*math.ceil(pDigimon.happiness))
	
end


function hud.hunger(repeating)

	if not repeating then

	else
		if pDigimon.hunger > 100 then
			pDigimon.hunger = 100
		elseif (pDigimon.hunger <= -1 ) then
			pDigimon.hunger = (-1)
		elseif pDigimon.hunger <=0 and not(pDigimon.hunger <=-1 ) then
			pDigimon.foodNeglect = pDigimon.foodNeglect + 1
			pDigimon.hunger = (-1)
		else
			pDigimon.hunger = pDigimon.hunger - 0.001
		end	
		hudObj.hunger.maskX = (-163)+(global.tempMath*math.ceil(pDigimon.hunger))
	end
end

function hud.energy()


end



function action.poke()
	if pDigimon.happiness >= 5 then
		pDigimon.happiness = pDigimon.happiness -5
	end
end

function action.feed()
	if pDigimon.hunger == (-1) then
		pDigimon.hunger = 2
	else
		pDigimon.hunger = pDigimon.hunger+0.25
	end
end

function action.reset()
	canvas:remove( pDigimonObj )
	pDigimonObj = nil
	loadDigi(true)
	guiGroup.isVisible = true
	setListener() 
end

function action.die()
	print('You\'re a terrible person... you know that right?')
	evolveDigimon('dead')
end


hud.energy()
hud.happiness()
hud.hunger()


hudObj.buttons.feed:addEventListener('touch', function(event)
	if pDigimon.hasHunger then
		if  event.phase == 'began' then
			global.feeding = true
		elseif event.phase == 'ended' then
			global.feeding = false
		end
	end
end)

hudObj.buttons.reset:addEventListener('tap', function(event)
	if event.numTaps > 1 then
		action.reset()
	end
end)

hudObj.buttons.poke:addEventListener('touch', function(event)

	if event.phase == 'began'  then
		action.poke()
	end
end)


deathCounter = false
Runtime:addEventListener( "enterFrame", function(event)
	
	if not(pDigimon.type == 'dead') then
		if pDigimon.hasHappiness then
			hudObj.happiness.isVisible = true
			hudObj.happinessFaded.isVisible = true
			hud.happiness(true)
		else
			hudObj.happiness.isVisible = false			
			hudObj.happinessFaded.isVisible = false			
		end

		if pDigimon.hasHunger then
			hud.hunger(true)
			hudObj.hungerFaded.isVisible = true
			hudObj.hunger.isVisible = true
		else
			hudObj.hungerFaded.isVisible = false
			hudObj.hunger.isVisible = false
		end	

		evolveDigimon()
	else
		guiGroup.isVisible = false
	end
	
	if pDigimon.happiness == -1 and pDigimon.hunger == -1 then
		if deathCounter then
			if (os.time() - deathCounter) > 10 then
				if not(pDigimon.type == 'dead') then action.die() end
			end
		else
			deathCounter = os.time()
		end
	end


	if global.feeding then
		action.feed()
	end
	
end)

Runtime:addEventListener( "system", function(event)
	if event.type == 'applicationSuspend' or event.type == 'applicationExit' then
		saveDigi()
	end

end)


function setListener() 
	pDigimonObj:addEventListener('touch', function(event)
		if event.phase == 'moved' then
			makeHappy()
		end
		if event.phase == 'began' then
			global.isTouching = true
		end
		
		if event.phase == 'ended' then
			if pDigimon.type == 'egg' then		
				if not(wiggling) then
					eggWiggle()
					timer.performWithDelay( 300, eggWiggle )
				end
				
			elseif pDigimon.type == 'dead' then		
				action.reset()
			else
				if not(jumpingHappy) then
					digiJump()
				
					
				end
		
			end
			global.isTouching = false
		end
	
	end)
end
setListener() 
