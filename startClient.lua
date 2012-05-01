--THIS CODE IS DESIGNED TO WORK WITH THE QUICK START SERVER, PLEASE OPEN THAT AS WELL
----------------------------------------------------------------------------------------------------------
----------------------------Client Specific Startup-------------------------------------------------------
----------------------------------------------------------------------------------------------------------


	----------------------------------------------------------------------------------------------------------
	----------------------------Client Specific Listeners-----------------------------------------------------
	function sendStuff()
		client:send(json.encode({dataType = 'digiY', msg=pDigimonObj.y}))
	end
	----------------------------------------------------------------------------------------------------------
	 function autolanConnectedClient(event)
		print("broadcast", event.customBroadcast) --this is the user defined broadcast recieved from the server, it tells us about the server state.
		print("serverIP," ,event.serverIP) --this is the user defined broadcast recieved from the server, it tells us about the server state.
		--now that we have a connecton, let us just constantly send stuff to the server as an example

		--Runtime:addEventListener("enterFrame", sendStuff)
		print("connection established")
	end
	 function autolanServerFoundClient(event)
		print("broadcast", event.customBroadcast) --this is the user defined broadcast recieved from the server, it tells us about the server state.
		print("server name," ,event.serverName) --this is the name of the server device (from system.getInfo()). if you need more details just put whatever you need in the customBrodcast
		print("server IP:", event.serverIP) --this is the server IP, you must store this in an external table to connect to it later
		print("autolanServerFound")
	end

	 function autolanDisconnectedClient(event)
		print("disconnected b/c ", event.message) --this can be "closed", "timeout", or "user disonnect"
		print("serverIP ", event.serverIP) --this can be "closed", "timeout", or "user disonnect"
		print("autolanDisconnected") 
	end

	 function autolanReceivedClient(event)
		--print("message = ", event.message) --this is the message we recieved from the server
		--print("autolanReceived")
	end

	 function autolanFileReceivedClient(event)
		print("filename = ", event.filename) --this is the filename in the system.documents directory
		print("autolanFileReceived")
	end

	 function autolanConnectionFailedClient(event)
		print("serverIP = ", event.serverIP) --this indicates that the server went offline between discovery and connection. the serverIP is returned so you can remove it form your list
		print("autolanConnectionFailed")
	end

	local oldCS = client.start
	function client:start(...)
		oldCS(...)
		Runtime:addEventListener("autolanConnected", autolanConnectedClient)
		Runtime:addEventListener("autolanServerFound", autolanServerFoundClient)
		Runtime:addEventListener("autolanDisconnected", autolanDisconnectedClient)
		Runtime:addEventListener("autolanReceived", autolanReceivedClient)
		Runtime:addEventListener("autolanConnectionFailed", autolanConnectionFailedClient)
		Runtime:addEventListener("autolanFileReceived", autolanFileReceivedClient)
		print('Client Initiated')
	end

	local oldCST = client.stop
	function client:stop(...)
		oldCST(...)
		Runtime:removeEventListener("autolanConnected", autolanConnectedClient)
		Runtime:removeEventListener("autolanServerFound", autolanServerFoundClient)
		Runtime:removeEventListener("autolanDisconnected", autolanDisconnectedClient)
		Runtime:removeEventListener("autolanReceived", autolanReceivedClient)
		Runtime:removeEventListener("autolanConnectionFailed", autolanConnectionFailedClient)
		Runtime:removeEventListener("autolanFileReceived", autolanFileReceivedClient)
		print('Client Halted')
	end













