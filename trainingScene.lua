local scene = 'training'
local backgrounds = display.newImage('img/trainingBG.png')
scenes[scene]:insert(backgrounds)


local overlayText = display.newText('Tap as many of the pads, as the light up, in the time frame', 190,20)
overlayText.size = 27
scenes[scene]:insert(overlayText)



scenes._RUNTIMES[scene] = function()
	
	
end