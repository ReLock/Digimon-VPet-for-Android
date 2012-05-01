	local bg = display.newGroup(display.newImage('img/normBG.png'))
	scenes['main']:insert(bg)
	bg.x, bg.y = 0,0
	bg:setReferencePoint(display.CenterReferencePoint)
	bg.rotation = -90
	bg.x, bg.y = bg.height/2,bg.width/2
	loadDigi()

	hud = {}
	action = {}
	
	



hudObj = {
	buttons = {
		feed = display.newImage('img/feedButton.png', 23,spacing(1,4)),
		poke = display.newImage('img/pokeButton.png', 23,spacing(2,4)),
		menu = display.newImage('img/menuButton.png', 23,spacing(3,4)),
		reset = display.newImage('img/resetButton.png', 23,spacing(4,4)),
		battling = display.newImage('img/battling.png'),
		startServer = display.newImage('img/startServer.png'),
		joinServer = display.newImage('img/joinServer.png'),
		training = display.newImage('img/trainingButton.png'),
	},
	happinessFaded = display.newImage('img/happinessBarFaded.png', display.contentWidth-169, 45),
	happiness = display.newImage('img/happinessBar.png', display.contentWidth-169, 45),
	hunger = display.newImage('img/foodBar.png', 5, 45),
	hungerFaded = display.newImage('img/foodBarFaded.png', 5, 45),
	menuBG = display.newImage('img/menuBG.png')

	

}

----Adjust HUD Assets
hudObj.menuBG:setReferencePoint(display.TopLeftReferencePoint)
hudObj.menuBG.y = math.floor(spacing(3,4)-(325/2)-35)
hudObj.menuBG.x = 60
	scenes['main']:insert(menus[global.menuMode])
	menus[global.menuMode]:insert(1,hudObj.menuBG)


hudObj.happiness:setMask(graphics.newMask('img/foodBarMask.png'))
hudObj.hunger:setMask(graphics.newMask('img/foodBarMask.png'))

guiGroup = display.newGroup()
guiGroup:insert(hudObj.buttons.poke)
guiGroup:insert(hudObj.buttons.feed)
guiGroup:insert(hudObj.buttons.reset)
guiGroup:insert(hudObj.buttons.menu)
guiGroup:insert(hudObj.hungerFaded)
guiGroup:insert(hudObj.happinessFaded)
guiGroup:insert(hudObj.happiness)
guiGroup:insert(hudObj.hunger)



menus.main.isVisible = false
menus.options.isVisible = false
menus.battling.isVisible = false
menus.trading.isVisible = false

----Create the main menu	
	menus.main:insert(hudObj.buttons.battling)
	hudObj.buttons.battling:setReferencePoint(display.TopLeftReferencePoint)
	hudObj.buttons.battling.x = math.floor(spacing(3,4)-126)
	hudObj.buttons.battling.y =  150
	hudObj.buttons.battling.isVisible = false

	menus.main:insert(hudObj.buttons.training)
	hudObj.buttons.training:setReferencePoint(display.TopLeftReferencePoint)
	hudObj.buttons.training.y = math.floor(spacing(3,4)-126)
	hudObj.buttons.training.x =  (display.contentWidth/2)-hudObj.buttons.training.width/2

 
-----Create the Battle Menu
	menus.battling:insert(hudObj.buttons.startServer)
	menus.battling:insert(hudObj.buttons.joinServer)

	hudObj.buttons.startServer:setReferencePoint(display.TopLeftReferencePoint)
	hudObj.buttons.startServer.x = math.floor(spacing(3,4)-126)
	hudObj.buttons.startServer.y =  150
	
	hudObj.buttons.joinServer:setReferencePoint(display.TopLeftReferencePoint)
	hudObj.buttons.joinServer.x = math.floor(spacing(3,4)-126)
	hudObj.buttons.joinServer.y =  220

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
		if global.networkType == 'client' then 
			client:send(json.encode({dataType = 'digiY', msg=pDigimonObj.y})) 
		elseif global.networkType == 'server' then 
			sendStuffServer()
		
		end
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
		scenes[scenes._STATE]:remove( pDigimonObj )
		pDigimonObj = nil
		pDigimonObj = display.newImage('img/'..pDigimon.type..'.png')
		scenes[scenes._STATE]:insert( pDigimonObj )
		pDigimonObj.rotation = 0 --need to move this so that it's at the end of each eggwiggle.
		pDigimonObj.x,  pDigimonObj.y = display.contentWidth/2,display.contentHeight/2
		setListener() 
		audio.play(audio.loadSound( 'ev.wav' ),{ channel=1, loops=0, fadein=0 })
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




local inc = calcTime()
function hud.happiness(repeating)
		
		if pDigimon.happiness > 100 then
			pDigimon.happiness = 100
		elseif (pDigimon.happiness <= -1 ) then
			pDigimon.happiness = (-1)
		elseif pDigimon.happiness <=0 and not(pDigimon.happiness <=-1 ) then
			pDigimon.happinessNeglect = pDigimon.happinessNeglect + 1
			pDigimon.happiness = (-1)
		else
			if not(jumpingHappy) and not(wiggling) and not(global.isTouching) then pDigimon.happiness = pDigimon.happiness - inc end
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
			pDigimon.hunger = pDigimon.hunger - inc
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
	scenes[scenes._STATE]:remove( pDigimonObj )
	pDigimonObj = nil
	loadDigi(true)
	guiGroup.isVisible = true
	setListener() 
	global.menuOpen = false
end

function action.die()
	print('You\'re a terrible person... you know that right?')
	evolveDigimon('dead')
end



function setListener() 


	pDigimonObj:addEventListener('touch', function(event)
		if not (global.menuOpen) and scenes._STATE == 'main' then
		
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
						if global.networkType == 'client' then
							
						end
					if not(jumpingHappy) then
						digiJump()
						
					end
			
				end
				global.isTouching = false
			end
			
		end
	end)
	
end
setListener() 



hud.energy()
hud.happiness()
hud.hunger()


hudObj.buttons.feed:addEventListener('touch', function(event)
	if  not (global.menuOpen) and scenes._STATE == 'main'  then
		if pDigimon.hasHunger then
		
			if  event.phase == 'began' then
				global.feeding = true
			elseif event.phase == 'ended' then
				global.feeding = false
			end
			
		end
		if event.x > hudObj.buttons.feed.x+25 or event.x < hudObj.buttons.feed.x-25  or event.y > hudObj.buttons.feed.y+25 or event.y < hudObj.buttons.feed.y-25  then
			global.feeding = false
		end
	end
end)

hudObj.buttons.reset:addEventListener('tap', function(event)
	if scenes._STATE == 'main'  then
		if event.numTaps > 1  and not (global.menuOpen)   then
			action.reset()
		end
	end
end)

hudObj.buttons.poke:addEventListener('tap', function(event)
	if scenes._STATE == 'main'  then
		if not (global.menuOpen)   then
			action.poke()
		end
	end
end)

hudObj.buttons.menu:addEventListener('tap', function(event)
	if scenes._STATE == 'main'  then
		global.menuOpen = not global.menuOpen
		menus[global.menuMode].isVisible = false
		global.menuMode = 'main'
		menus[global.menuMode].isVisible = global.menuOpen
	end
end)

hudObj.buttons.training:addEventListener('tap', function(event)
	scenes._STATE = 'trainingTransition'

end)

hudObj.buttons.battling:addEventListener('tap', function(event)
	if scenes._STATE == 'main'  then
		menus[global.menuMode].isVisible = false
		global.menuMode = 'battling'
		menus[global.menuMode].isVisible = true
	end
end)

hudObj.buttons.joinServer:addEventListener('tap', function(event)
	if scenes._STATE == 'main'  then
		client:start()
		client:autoConnect()
		
		global.menuOpen = false
		menus[global.menuMode].isVisible = false
		global.menuMode = 'main'
		global.networkType = 'client'

		function temp()
			client:send(json.encode({dataType = 'digiY', msg=pDigimonObj.y}))
			timer.performWithDelay( 5, temp )  
		end
		
		timer.performWithDelay( 1, temp)
	end
end)

hudObj.buttons.startServer:addEventListener('tap', function(event)
	if scenes._STATE == 'main'  then

		client:stop()
		
		clients = {} --table to store all of our client objects.
		numClients = 0
		server:start()	
		
		global.networkType = 'server'
		global.menuOpen = false
		menus[global.menuMode].isVisible = false
		global.menuMode = 'main'
	end
end)

deathCounter = false




scenes._RUNTIMES['main'] = function()
	scenes['main']:insert(menus[global.menuMode])
	menus[global.menuMode]:insert(1,hudObj.menuBG)

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
			hudObj.buttons.feed.isVisible = true
		else
			hudObj.buttons.feed.isVisible = false
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
	
	if global.menuOpen then end
	
  

	
end


scenes.main:insert(guiGroup)
scenes.main:insert(menus.main)
scenes.main:insert(menus.battling)




