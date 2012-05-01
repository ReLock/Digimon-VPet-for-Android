digimonArray = {

	dead = {
		evolvesTo = { },
		stage='dead',
		type='dead',
		name='R.I.P',
	},	
	
	egg = {
		evolvesTo = { 'botamon', 'yukimibotamon'},
		stage='egg',
		type='egg',
		name='Egg',
		hasHunger=false,
		hasHappiness=true,
	},
		
	botamon = {
		requirements = {time = 60,},
		evolvesTo = { 'koromon'},
		stage='baby',
		type='botamon',
		name='Botamon',
		hasHunger=true,
		hasHappiness=true,		
	},
	
	yukimibotamon = {
		requirements = {happiness = 80, time = 60,},
		evolvesTo = { 'koromon'},
		stage='baby',
		type='yukimibotamon',
		name='Yukimi-Botamon',
		hasHunger=true,
		hasHappiness=true,
	},

	koromon = {
		requirements = {happiness = 10, time = 300,},
		evolvesTo = {'agumon','betamon' },
		stage='baby',
		type='koromon',
		name='Koromon',
		hasHunger=true,
		hasHappiness=true,
		power = 5,
		defence = 5,
		weight = 2,
	},

	agumon = {
		requirements = {time = 3600,},
		evolvesTo = { },
		stage='rookie',
		type='agumon',
		name='Agumon',
		hasHunger=true,
		hasHappiness=true,
		weight = 10,
		power = 25,
		defence = 15,
	},

	betamon = {
		requirements = {happiness = 80, time = 3600, evolvedFrom = 'yukimibotamon'},
		evolvesTo = { },
		stage='rookie',
		type='betamon',
		name='Betamon',
		hasHunger=true,
		hasHappiness=true,
		power = 15,
		defence = 25,
		weight = 8,
	},








}
	function createNewDigi(digiType)
		return 	digimonArray[digiType]
	end