local backgrounds = display.newGroup()
pDigimon = display.newImage('normBG.png')

local canvas = display.newGroup()
pDigimon = display.newImage('egg.png')
canvas:insert( pDigimon )
pDigimon.x, pDigimon.y = display.contentWidth/2,display.contentHeight/2


wiggling = false

pDigimon:addEventListener('touch', function(event)
	if event.phase == 'ended' then
		if not(wiggling) then
		print(1)
			eggWiggle(pDigimon)
			timer.performWithDelay( 300, eggWiggle )
		end

	end
end)




function eggWiggle()
		print(wiggling)
	if not(pDigimon.wiggling) then
		wiggling = true
		local function wigglePos()
			pDigimon:rotate(1)
			
		end

		local function wiggleNeg()
			pDigimon:rotate(-1)
			
		end
		
		pDigimon:setReferencePoint(display.BottomCenterReferencePoint)
		
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
		timer.performWithDelay( 295, function() wigglePos() wiggling = false end )
		
	else
		return false
	end
	
	

end