
scenes = { 
	_STATE = 'main',
	_RUNTIMES = {},
	_RUN = function()
		for i,v in pairs(scenes) do
			if type(v) == 'table' then
				if i == scenes._STATE then 
					v.isVisible = true
					if scenes._RUNTIMES[i] then
						scenes._RUNTIMES[i]()
					end
				else
					v.isVisible = false
				end
			end
		end
	end,
	main = display.newGroup(),
	battle = display.newGroup(),
	training = display.newGroup(),
	trainingBubble = display.newGroup(),
	trainingTransition = display.newGroup(),
	
}

