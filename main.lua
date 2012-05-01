
--hearts = display.newImage('heart.png')
--backgrounds:insert( hearts )
movieclip  = require "movieclip"
require "scenes"
require "env"
require( 'mainScene')
require( 'battleScene')
require( 'trainingScene')
require( 'tradingScene')
require( 'trainingTransitionScene')
--require( 'tradingScene')

server = require "Server"
client = require "Client"
require "startServer"
require "startClient"







Runtime:addEventListener( "enterFrame", function(event)
	
	scenes:_RUN()
		

end)



Runtime:addEventListener( "system", function(event)
	if event.type == 'applicationSuspend' or event.type == 'applicationExit' then
		saveDigi()
	end


end)




















