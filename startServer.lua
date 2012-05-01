
	---and thats it! you will be notified when a connection is availible in the event listener and you will also start receiving data in the listeners.

	--lets just send stuff to all our clients
	
	function sendStuffServer()
		for i,client in pairs(clients) do
			client:send("this server has been up for"..system.getTimer())
		end
	end
	
	----------------------------------------------------------------------------------------------------------
	----------------------------Server Specific Listeners-----------------------------------------------------
	----------------------------------------------------------------------------------------------------------
	 function autolanPlayerJoinedServer(event)
		 client = event.client
		--print("client object: ", client) --this represents the connection to the client. you can use this to send messages and files to the client. You should save this in a table somewhere.
		--now lets save the client object so we can use it in the future to send messages
		clients[client] = client --trick, we can use the table object itself as the key, this will make it easier to determine which client we received a message from
		numClients = numClients + 1
		client.myJoinTime = system.getTimer() --you can add whatever values you want to the table to retrieve it later in the receved listener
		client.myName = "Player "..numClients
		--we can begin using the client object to send messages now!
		--client:send("Hello Player!")
		print("autolanPlayerJoined") 
	end

	 function autolanPlayerDroppedServer(event)
		 client = event.client
		print("client object ", client) --this is the reference to the client object you use to send messages to the client, you can use this to findout who dropped and react accordingly
		print("dropped b/c ," ,event.message) --this is the user defined broadcast recieved from the server, it tells us about the server state.
		--now let us remove the client from our list
		print(clients[client].myName.." Dropped, connection was active for "..system.getTimer()-clients[client].myJoinTime)
		clients[client] = nil --clear references to prevent memory leaks
		numClients = numClients - 1	
	end

	 function autolanReceivedServer(event)
		client = event.client
		--print(event.message)
		local msg = json.decode(event.message)
		if msg.dataType == 'digiY' then
			pDigimonObj.y = tonumber(msg.msg) 
			--print(tonumber(msg.msg))
		else
			--print(event.message)
		end
		--we can use the client object here to react to the message
		--client:send("Recieved it!, thanks!")
	end


	
	
	
	local oldSS = server.start
	function server:start(...)
		oldSS(...)
		print('Server Initiated')
		Runtime:addEventListener("autolanPlayerJoined", autolanPlayerJoinedServer)
		Runtime:addEventListener("autolanPlayerDropped", autolanPlayerDroppedServer)
		Runtime:addEventListener("autolanReceived", autolanReceivedServer)
	end	
	
	local oldSST = server.stop
	function server:stop(...)
		print('Server Halted')
		oldSST(...)
		Runtime:removeEventListener("autolanPlayerJoined", autolanPlayerJoinedServer)
		Runtime:removeEventListener("autolanPlayerDropped", autolanPlayerDroppedServer)
		Runtime:removeEventListener("autolanReceived", autolanReceivedServer)
	end
	
	
	
	
	
	
	
	