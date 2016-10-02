# stack of scene indices
history = [0]

debugMode = false

# timestamps of scene starts in seconds
sceneStarts = [0,28.6, 63.9, 93.5, 122.3, 
160.4, 
198.4, 
244, 
294.8, 
346.2, 
371.9, 
419.1, 
464.9, 510.5, 549.6, 584.2, 620, 643.5, 659.3, 672.5, 692.7]

# don't load children during intermediatry stage
intermediaryStage = false

#earlySceneLoads = [0, 14, 15, 10, 19, 20, 13, 18]
#lateSceneLoads = [8, 16, 17, 5, 2, 12, 4,  7, 9, 3, 1, 6, 11]

# buffer seconds before each scene that triggers "non-choice"
bufferAtSceneEnd = 3

# timestamp of choice starts in seconds
choiceStarts = [15.9,60.9, 90.5, 119.3, 157.4, 195.4, 241, 291.8, 343.2, 368.9, 416.1, 461.9, 507.5, 
539.3, 570.2, 604.1, 634, 650.2, 663.4, 682, 716.9]

# dictionary of choices with their starts and ends, and coordinates
# {scene number: [['startTime', 'endTime', 'xMin', 'xMax', 'yMin', 'yMax'],['startTime': ..],...]}
# for an end scene, choice skips to black screen and there are no valid buttons
choiceIcons = {
	0: [{'startTime': 15.9, 'endTime': 25.9, 'xMin': 460, 'xMax': 850, 'yMin': 0, 'yMax': 380, 'sceneLink': 14}],
	1: [{'startTime': 57, 'endTime': 60, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	2: [{'startTime': 87, 'endTime': 90, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	3: [{'startTime': 115, 'endTime': 118, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	4: [{'startTime': 153, 'endTime': 156, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	5: [{'startTime': 191, 'endTime': 194, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	6: [{'startTime': 237, 'endTime': 240, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	7: [{'startTime': 286, 'endTime': 289, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	8: [{'startTime': 339, 'endTime': 342, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	9: [{'startTime': 365, 'endTime': 368, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	10: [{'startTime': 411, 'endTime': 414, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	11: [{'startTime': 458, 'endTime': 451, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	12: [{'startTime': 504.5, 'endTime': 507.5, 'xMin': -1, 'xMax': -1, 'yMin': -1, 'yMax': -1, 'sceneLink': 0}],
	13: [{'startTime': 539.3, 'endTime': 544.6, 'xMin': 600, 'xMax': 750, 'yMin': 420, 'yMax': 620, 'sceneLink': 12}],
	14: [{'startTime': 570.2, 'endTime': 576.3, 'xMin': 0, 'xMax': 500, 'yMin': 0, 'yMax': 220, 'sceneLink': 19}, {'startTime': 576.8, 'endTime': 581.5, 'xMin': 500, 'xMax': 675, 'yMin': 220, 'yMax': 420, 'sceneLink': 10}],
	15: [{'startTime': 604.1, 'endTime': 610, 'xMin': 500, 'xMax': 700, 'yMin': 0, 'yMax': 500, 'sceneLink': 20}, 
	{'startTime': 612.5, 'endTime': 617.2, 'xMin': 500, 'xMax': 1100, 'yMin': 300, 'yMax': 425, 'sceneLink': 13},
	{'startTime': 607, 'endTime': 610, 'xMin': 1000, 'xMax': 1150, 'yMin': 0, 'yMax': 150, 'sceneLink': 18},
	{'startTime': 610.7, 'endTime': 616, 'xMin': 0, 'xMax': 300, 'yMin': 0, 'yMax': 300, 'sceneLink': 18}
	],
	16: [{'startTime': 634, 'endTime': 640.5, 'xMin': 625, 'xMax': 775, 'yMin': 75, 'yMax': 275, 'sceneLink': 9}, 
	{'startTime': 634, 'endTime': 640.5, 'xMin': 600, 'xMax': 775, 'yMin': 300, 'yMax': 450, 'sceneLink': 1},
	{'startTime': 634, 'endTime': 640.5, 'xMin': 600, 'xMax': 750, 'yMin': 480, 'yMax': 620, 'sceneLink': 3}], 
	17: [{'startTime': 650.2, 'endTime': 656, 'xMin': 425, 'xMax': 525, 'yMin': 275, 'yMax': 375, 'sceneLink': 5}],
	18:  [{'startTime': 663.4, 'endTime': 669.5, 'xMin': 0, 'xMax': 300, 'yMin': 0, 'yMax': 250, 'sceneLink': 7}],
	19:  [{'startTime': 682, 'endTime': 690, 'xMin': 0, 'xMax': 300, 'yMin': 0, 'yMax': 300, 'sceneLink': 8}, 
	{'startTime': 682, 'endTime': 690, 'xMin': 725, 'xMax': 950, 'yMin': 0, 'yMax': 200, 'sceneLink': 16}, 
	{'startTime': 682, 'endTime': 690, 'xMin': 50, 'xMax': 250, 'yMin': 425, 'yMax': 600, 'sceneLink': 17}],
	20: [{'startTime': 716.9, 'endTime': 722.7, 'xMin': 475, 'xMax': 800, 'yMin': 400, 'yMax': 650, 'sceneLink': 6}]
}

# non-action scene links for each scene 
nonActionSceneLinks = [15,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,4,19,18,1,11,20,17,2]#[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

# full scene links
sceneLinks = [[14,15,-1],
[-1,-1,-1],
[-1,-1,-1],
[-1,-1,-1],
[-1,-1,-1],
[-1,-1,-1],
[-1,-1,-1],
[-1,-1,-1],
[-1,-1,-1],
[-1,-1,-1],
[-1,-1,-1],
[-1,-1,-1],
[-1,-1,-1],
[12,4,-1],
[10,19,-1],
[20,13,18],
[9,3,1],
[5,11,-1],
[7,20,-1],
[8,16,17],
[6,2,-1]]

# setup a container to hold everything
videoContainer = new Layer
	width: 1320
	height: 750
	backgroundColor: 'black'
	shadowBlur: 2
	shadowColor: 'rgba(0,0,0,0.24)'
	opacity: 1.0
	
# layer to display buffering icon in video
loading = new Layer
	width: 1320
	height: 750
	image: 'images/loading.gif'
	opacity: 1.0
	superLayer: videoContainer

# instructional layer displays at start of video 


# create the video layer
# make transparent until loading finishes
videoLayerOne = new VideoLayer
	x: 75
	width: 1160
	height: 650
	video: 'http://d3rcw0c7h4lwii.cloudfront.net/stabbing_interactive.mp4'
	superLayer: videoContainer
	opacity: 0.0
	
videoLayerTwo = new VideoLayer
	x: 75
	width: 1160
	height: 650
	video: 'http://d3rcw0c7h4lwii.cloudfront.net/stabbing_interactive.mp4'
	superLayer: videoContainer
	opacity: 0.0

videoLayerThree = new VideoLayer
	x: 75
	width: 1160
	height: 650
	video: 'http://d3rcw0c7h4lwii.cloudfront.net/stabbing_interactive.mp4'
	superLayer: videoContainer
	opacity: 0.0
		
videoLayerFour = new VideoLayer
	x: 75
	width: 1160
	height: 650
	video: 'http://d3rcw0c7h4lwii.cloudfront.net/stabbing_interactive.mp4'
	superLayer: videoContainer
	opacity: 0.0
	
loading.bringToFront()

# preload 
videoLayerOne.player.setAttribute('preload', 'auto')
videoLayerTwo.player.setAttribute('preload', 'auto')
videoLayerThree.player.setAttribute('preload', 'auto')
videoLayerFour.player.setAttribute('preload', 'auto')

# keep track of video settings. -1 = no scene
currScenesInPlayers = [[0],[0],[0],[0]]
# 1 = children. 0 = current scene 
currStatusOfPlayers =  [0, 0, 0, 0]
currPlayer = videoLayerOne
backPlayer = videoLayerOne

# make sure all videos have started loading before allowing play
preloadingID = window.setInterval( -> 
	if playersReady[0] == 1 and playersReady[1] == 1 and playersReady[2] == 1 and playersReady[3] == 1
		#print "switching"
		loading.opacity = 0.0
		videoLayerOne.opacity = 1.0
		videoLayerTwo.opacity = 1.0
		videoLayerThree.opacity = 1.0
		videoLayerFour.opacity = 1.0
		controlBar.opacity = 1.0
		loading.sendToBack()
		# bring first layer to front 
		currPlayer.bringToFront()
		window.clearInterval(preloadingID)
, 500)

playersReady = [0,0,0,0]
# initialize settings for video players
initializeSettings = () ->
	
	history = [0]
	# jump each video to the correct point after ensuring it's possible
	videoLayerOne.player.addEventListener "loadedmetadata", -> 
		playersReady[0] = 1
		videoLayerOne.player.currentTime = sceneStarts[0]
	videoLayerTwo.player.addEventListener "loadedmetadata", -> 
		playersReady[1] = 1
		videoLayerTwo.player.currentTime = sceneStarts[14]
	videoLayerThree.player.addEventListener "loadedmetadata", -> 
		playersReady[2] = 1
		videoLayerThree.player.currentTime = sceneStarts[15]
	videoLayerFour.player.addEventListener "loadedmetadata", -> 
		playersReady[3] = 1
		videoLayerFour.player.currentTime = sceneStarts[0]

	#videoLayerTwo.player.play() 

	# keep track of scenes in players
	currScenesInPlayers = [[0], [14], [15], [-1]]
	
	# keep track of status of each player 
	currStatusOfPlayers = [0, 1, 1, 1]
	
	# keep track of current player
	currPlayer = videoLayerOne
	
initializeSettings()

# all players
players = [videoLayerOne, videoLayerTwo, videoLayerThree, videoLayerFour]
	

# center everything on screen
videoContainer.center()

#Display progress in child players
lastEnds = []
currEnds = [0, 0, 0]
window.setInterval( -> 
	#timeline.bringToFront()
	lastEnds = currEnds
	currTimes = [videoLayerOne.player.currentTime,videoLayerTwo.player.currentTime,videoLayerThree.player.currentTime,videoLayerFour.player.currentTime]
	if debugMode
		print "currTime: ", currPlayer.player.currentTime, " currTimes: ", currTimes
		print "currScenes: ", currScenesInPlayers
		print "history: ", history
	for i in [0...players.length]
		fullBufferedSequence = ""
		if players[i].player.buffered.length > 0
			for buffSegment in [0...players[i].player.buffered.length]
				fullBufferedSequence = fullBufferedSequence + Math.round(players[i].player.buffered.start(buffSegment)) + ".." + Math.round(players[i].player.buffered.end(buffSegment)) + ", "
		if debugMode
			print "player "+ i+ ": status = " + currStatusOfPlayers[i] + " and buffering: "+ fullBufferedSequence
		
		# force load child players if they are active
		if currStatusOfPlayers[i] == 1 and currScenesInPlayers[i][currScenesInPlayers[i].length - 1] >= 0 and intermediaryStage == false
		# is scene activelyBuffering?
			activelyBuffering = 0
			if players[i].player.buffered.length > 0
				# if the current scene is actively being buffered, continue on. otherwise start at its beginning
				activelyBuffering = 0
				for j in [0...players[i].player.buffered.length]
					if players[i].player.buffered.end(j) >= sceneStarts[currScenesInPlayers[i][currScenesInPlayers[i].length - 1]] and players[i].player.buffered.end(j) <= sceneStarts[currScenesInPlayers[i][currScenesInPlayers[i].length - 1]+1] 
						if debugMode
							print "A. SETTING ", i, "TO ", players[i].player.buffered.end(j)
						players[i].player.currentTime = players[i].player.buffered.end(j)
						activelyBuffering = 1
			if activelyBuffering == 0
				players[i].player.currentTime = sceneStarts[currScenesInPlayers[i][currScenesInPlayers[i].length - 1]]
				if debugMode
					print "B. SETTING", i, " TO", sceneStarts[currScenesInPlayers[i][currScenesInPlayers[i].length - 1]]
				
	# advance to proper scene for a "non-choice" (or pause at end of movie)
	currScene = history[history.length - 1]
	if currPlayer.player.currentTime >= sceneStarts[currScene + 1] - bufferAtSceneEnd and currPlayer.player.currentTime <= sceneStarts[currScene + 1]
		if debugMode
			print "nonaction on scene ", currScene
		nonActionNextScene = nonActionSceneLinks[currScene]
		# if not at end of movie
		if nonActionNextScene != -1
			transitionPlayersHelper(nonActionNextScene)
		else
			# if at end of movie, pause
			currPlayer.player.pause()
			playButton.image = "images/play.png"
, 500)

# control bar to hold buttons and timeline
controlBar = new Layer
	width:1320
	height:100
	backgroundColor:'rgba(0,0,0,0.75)'
	clip:false
	borderRadius:'8px'
	superLayer:videoContainer
	opacity: 0.0
	
# position control bar towards the bottom of the video
controlBar.y = videoContainer.maxY - controlBar.height
controlBar.x = videoContainer.width/2.0 - controlBar.width/2.0

helpVideoLayer = new VideoLayer
	width: 1320
	height: 750
	video: 'images/stabbing_tutorial.mp4'
	superLayer: videoContainer
	opacity: 0.0
		
questionButton = new Layer
	width: 100
	height: 100
	image: 'images/help.png'
	superLayer: controlBar

questionButton.on Events.Click, ->
	controlBar.visible = false
	helpVideoLayer.opacity = 1.0
	helpVideoLayer.bringToFront()
	helpVideoLayer.player.play()
	helpVideoLayer.player.addEventListener "ended", ->
		controlBar.visible = true
		helpVideoLayer.opacity = 0.0
		helpVideoLayer.sendToBack()
	
# back-scene layer
backButton = new Layer
	width: 100
	height: 100
	image: 'images/back.png'
	superLayer: controlBar
backButton.x = 400

# play button
playButton = new Layer
	width:100
	height:100
	image:'images/play.png'
	superLayer:controlBar

# position back-scene button to the right of play
playButton.x = backButton.maxX

# home button
homeButton = new Layer
	width: 100
	height: 100
	image: 'images/home.png'
	superLayer: controlBar

# position home button to the right of play
homeButton.x = playButton.maxX	

# skip to choice button
skipToChoiceButton = new Layer
	width: 100
	height: 100
	image: 'images/forward.png'
	superLayer: controlBar

# position skip button to the right of home
skipToChoiceButton.x = homeButton.maxX


# forward-scene layer
forwardScene = new Layer
	width: 1320
	height: 620
	#video: "images/morning.mp4"
	superLayer: videoContainer
	backgroundColor: ""
		

# buffering layer
buffering = new Layer
	width: 100
	height: 100
	image: 'images/buffering.gif'
	superLayer: videoContainer

buffering.x = videoContainer.width/2.0 - buffering.width/2.0
buffering.y = videoContainer.height/2.0 - buffering.height/2.0
buffering.sendToBack()

# Function to handle play/pause button
playButton.on Events.Click, ->
	if currPlayer.player.paused == true
		currPlayer.player.play()
		playButton.image = "images/pause.png"
	else
		currPlayer.player.pause()
		playButton.image = "images/play.png"

	# simple bounce effect on click
	playButton.scale = 1.15
	playButton.animate
		properties:
			scale: 1
		time: 0.1
		curve: 'spring(900,30,0)'

# helper function for figuring out if a scene choose button is being pressed
sceneChooseButtonChecker = (xCoord, yCoord) ->
	currScene = history[history.length - 1]

	# check each button instance for current scene
	for buttonIndex in [0...choiceIcons[currScene].length]
		currButton = choiceIcons[currScene][buttonIndex]
		
		xMin = currButton['xMin']
		xMax = currButton['xMax']
		yMin = currButton['yMin']
		yMax = currButton['yMax']
		buttonStartTime = currButton['startTime']
		buttonEndTime = currButton['endTime']
		currTime = currPlayer.player.currentTime

		# logic for button choice
		# was the button area pressed while the button was active?
		if xCoord >= xMin and xCoord <= xMax and yCoord >= yMin and yCoord <= yMax and currTime > buttonStartTime and currTime < buttonEndTime
			if debugMode
				print "pressed choice"
			nextScene = currButton['sceneLink']
			transitionPlayersHelper(nextScene)

transitionPlayersHelper = (nextScene) ->
	#turn current video layer off and stop it
	#wasPaused = currPlayer.player.paused
	currPlayer.player.pause()
	intermediaryStage = true
	# updates the statuses of all players
	childSceneIndex = 0
	findATargetPlayer = true
	for playerIndex in [0...players.length]
		playerSceneHistory = currScenesInPlayers[playerIndex]
		if nextScene in playerSceneHistory and findATargetPlayer
			# found player for next scene. initiate
			findATargetPlayer = false
			nextPlayer = players[playerIndex]
			currStatusOfPlayers[playerIndex] = 0
			nextPlayer.player.currentTime = sceneStarts[nextScene]
			#if !wasPaused
			nextPlayer.player.play()
			nextPlayer.player.muted = true
			buffering.bringToFront()
			# switch players once other player has gotten started
			switchToNextPlayerID = window.setInterval( ->
				if nextPlayer.player.currentTime > sceneStarts[nextScene] and nextPlayer.player.currentTime < sceneStarts[nextScene] + 1.0
					buffering.sendToBack()
					nextPlayer.opacity = 1.0
					nextPlayer.player.muted = false
					currPlayer.opacity = 0.0
					# place new active layer on top
					nextPlayer.bringToFront()	
					currPlayer = nextPlayer
					window.clearInterval(switchToNextPlayerID)
					# update history
					history.push(nextScene)
					if debugMode
						print "TRANSITIONED!"
					intermediaryStage = false
			,100)
			
		else
			# found a player for a child. initiate 
			currStatusOfPlayers[playerIndex] = 1
			# get start time for this child player
			childSceneToAssign = sceneLinks[nextScene][childSceneIndex]
			# update scenes in child players
			currScenesInPlayers[playerIndex].push(childSceneToAssign)
			if childSceneToAssign >= 0
				childSceneStartTime = sceneStarts[childSceneToAssign]
				players[playerIndex].player.currentTime = childSceneStartTime
			childSceneIndex = childSceneIndex + 1

# Function to handle forward scene choice
forwardScene.on Events.Tap, (event) ->
	
	xCoord = event.point.x
	yCoord = event.point.y
	
	# if a click occurs while buttons are active during scene, check if a button was clicked
	currTime = currPlayer.player.currentTime
	#print currTime
	#print event.point
	if true in [Math.round(currTime) in  [Math.round(choiceStarts[x])... Math.round(sceneStarts[x+1])+1] for x in [0...sceneStarts.length-1]][0]
		sceneChooseButtonChecker(xCoord, yCoord)
		

# Function to handle back button
backButton.on Events.Click, ->
	if debugMode
		print "going back"
	#wasPaused = currPlayer.player.paused
	currPlayer.player.pause()
	intermediaryStage = true
	# if in first scene, go to start of scene
	if history.length == 1
		currPlayer.player.currentTime = 0
		#if !wasPaused
		currPlayer.player.play()
		playButton.image = "images/pause.png"
	else
		findATargetPlayer = true
		# go to choice in previous scene
		lastScene = history.pop()
		targetScene = history[history.length - 1]
		for playerIndex in [0...players.length]
			playerSceneHistory = currScenesInPlayers[playerIndex]
			# found player with back scene loaded
			if targetScene in playerSceneHistory and findATargetPlayer
				nextPlayer = players[playerIndex]
				currStatusOfPlayers[playerIndex] = 0
				if debugMode
					print "found next player. targetScene: ", targetScene
				nextPlayer.player.muted = true
				nextPlayer.player.currentTime = choiceStarts[targetScene]
				#if !wasPaused
				nextPlayer.player.play()
				playButton.image = "images/pause.png"
				buffering.bringToFront()
				# switch players once other player has gotten started
				switchToBackPlayerID = window.setInterval( ->
					if nextPlayer.player.currentTime > choiceStarts[targetScene] and nextPlayer.player.currentTime < choiceStarts[targetScene] + 1
						buffering.sendToBack()
						nextPlayer.opacity = 1.0
						nextPlayer.player.muted = false
						currPlayer.opacity = 0.0
						# place new active layer on top
						nextPlayer.bringToFront()
						currPlayer = nextPlayer
						window.clearInterval(switchToBackPlayerID)
						intermediaryStage = false
				,100)
				findATargetPlayer = false
			else
				# found a player for a child. initiate 
				currStatusOfPlayers[playerIndex] = 1
	
	# simple bounce effect on click
	backButton.scale = 1.15
	backButton.animate
		properties:
			scale:1
		time:0.1
		curve:'spring(900,30,0)'

# Function to handle choose button
skipToChoiceButton.on Events.Click, ->
	currScene = history[history.length - 1]
	
	# jump to non action scene if already in a choice
	if currPlayer.player.currentTime > choiceStarts[currScene]
		nonActionNextScene = nonActionSceneLinks[currScene]
		# if not at end of movie, jump to next nonaction scene
		if nonActionNextScene != -1
			transitionPlayersHelper(nonActionNextScene)
		else
			currPlayer.pause()
			playButton.image = "images/play.png"
	else
		# otherwise go to next choice
		currPlayer.player.muted = true
		#wasPaused = currPlayer.player.paused
		currPlayer.player.pause()
		currPlayer.player.currentTime = choiceStarts[currScene]
		# if this is not a final scene in a playthrough
		if sceneLinks[currScene][0] != -1
			#if !wasPaused
			currPlayer.player.play()
			turnAudioBackOn = window.setInterval( ->
				if currPlayer.player.currentTime > choiceStarts[currScene]
					currPlayer.player.muted = false
					window.clearInterval(turnAudioBackOn)
			,100)
		else
			playButton.image = "images/play.png"

	# simple bounce effect on click
	skipToChoiceButton.scale = 1.15
	skipToChoiceButton.animate
		properties:
			scale:1
		time:0.1
		curve:'spring(900,30,0)'

# Function to handle home button
homeButton.on Events.Click, ->
	
	#wasPaused = currPlayer.player.paused
	currPlayer.player.pause()
	currPlayer.opacity = 0.0
	## just use first video player since it loaded the start scene
	initializeSettings()

	# simple bounce effect on click
	homeButton.scale = 1.15
	homeButton.animate
		properties:
			scale:1
		time:0.1
		curve:'spring(900,30,0)'
	currPlayer.player.currentTime = 0
	currPlayer.opacity = 1.0
	currPlayer.bringToFront()
	#if !wasPaused
	currPlayer.player.play()
	playButton.image = "images/pause.png"
		
#white timeline bar
# timeline = new Layer
# 	width:1000
# 	height:40
# 	y:0
# 	x:0
# 	borderRadius:'10px'
# 	backgroundColor:'#fff'
# 	clip:false
# 	superLayer: videoContainer
# 	
# timeline.bringToFront()
# 
# # progress bar to indicate elapsed time
# progress = new Layer
# 	width:0
# 	height:timeline.height
# 	borderRadius:'10px'
# 	backgroundColor:'#03A9F4'
# 	superLayer: timeline

#scrubber to change current time
# scrubber = new Layer
# 	width:50
# 	height:50
# 	y:-4
# 	borderRadius:'50%'
# 	backgroundColor:'#fff'
# 	shadowBlur:10
# 	shadowColor:'rgba(0,0,0,0.75)'
# 	superLayer: timeline
# 
# # make scrubber draggable
# scrubber.draggable.enabled = true
# 
# #limit dragging along x-axis
# scrubber.draggable.speedY = 0
# 
# #prevent scrubber from dragging outside of timeline
# scrubber.draggable.constraints =
# 	x:0
# 	y:timeline.midY
# 	width:timeline.width
# 	height:-10
# 
# #Disable dragging beyond constraints
# scrubber.draggable.overdrag = false


#Update the progress bar and scrubber AND CURR/LAST SCENE as video plays
# currPlayer.player.addEventListener "timeupdate", ->
# 
# 	#Calculate progress bar position
# 	newPos = (timeline.width / currPlayer.player.duration) * currPlayer.player.currentTime
# 	#Update progress bar and scrubber
# 	scrubber.x = newPos
# 	progress.width = newPos	+ 10
# 
# 
# # Pause the video at start of drag
# scrubber.on Events.DragStart, ->
# 	currPlayer.player.pause()
# 
# #Update Video Layer to current frame when scrubber is moved
# scrubber.on Events.DragMove, ->
# 	progress.width = scrubber.x + 10
# 
# #When finished dragging set currentTime and play video
# scrubber.on Events.DragEnd, ->
# 	newTime = Utils.round(currPlayer.player.duration * (scrubber.x / timeline.width),0);
# 	currPlayer.player.currentTime = newTime
# 	currPlayer.player.play()
# 	playButton.image = "images/pause.png"
# 
