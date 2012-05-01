	local scene = 'trainingTransition'
	
	scenes._RUNTIMES[scene] = function()
	
		if not(system.orientation == 'landscapeRight') then
			myAnim = movieclip.newAnim{ 
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_1.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_2.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",
			"img/rotateScreen_3.png",

			}
			
			myAnim.x = display.contentWidth/2
			backgrounds = display.newGroup(display.newImage('img/trainingBG.png'))
			scenes[scene]:insert(backgrounds)
			myAnim.y = display.contentHeight/2
			scenes[scene]:insert(myAnim)
			myAnim:play{ startFrame=1, endFrame=myAnim.numChildren, loop=0, remove=true, drag= true }
		else
			scenes._STATE = 'training'
		end
		if system.orientation == 'landscapeRight' or  system.orientation == 'landscapeLeft'  then
			scenes._STATE = 'training'
		end
	end