extends Node2D
var fly = preload("res://Scenes/Enemy_DragonFly.tscn")
var caterpillar = preload("res://Scenes/Enemy_RedCaterpillar.tscn")
var bee = preload("res://Scenes/Enemy_Bee.tscn")
var spider = preload('res://Scenes/Enemy_Spider_P.tscn')


func GenWaves():
	print("GENERATING WAVES")

	var AllWaves = []
	# ROUND ONE
	var roundone = []
	for i in range(40):
		if i > 1 and i % 10 == 0:
			roundone.append(bee)
		elif i % 2 == 0:
			roundone.append(fly)
		else:
			roundone.append(caterpillar)
	AllWaves.append(roundone)
	# ROUND TWO
	var roundtwo = []
	for i in range(5):
		roundtwo.append(caterpillar)
	for i in range(2):
		roundtwo.append(bee)
	for i in range(10):
		roundtwo.append(fly)
	for i in range(2):
		roundtwo.append(bee)
	for i in range(10):
		roundtwo.append(fly)
	for i in range(10):
		roundtwo.append(caterpillar)
	roundtwo.append(bee)
	AllWaves.append(roundtwo)
	# ROUND THREE
	var roundthree = []
	for i in range(5):
		roundthree.append(bee)
	for i in range(50):
		if i > 1 and i % 10 == 0:
			roundthree.append(spider)
		elif i % 2 == 0:
			roundthree.append(fly)
		else:
			roundthree.append(caterpillar)
	for i in range(5):
		roundthree.append(spider)
	AllWaves.append(roundthree)
# ROUND FOUR
	var roundfour = []
	for i in range(60):
		if i % 3 == 0:
			roundfour.append(fly)
		elif i % 3 == 1:
			roundfour.append(caterpillar)
		else:
			roundfour.append(spider)
	AllWaves.append(roundfour)
# ROUND FIVE
	var roundfive = []
	for i in range(80):
		if i % 4 == 0:
			roundfive.append(spider)
		elif i % 4 == 1:
			roundfive.append(bee)
		elif i % 4 == 2:
			roundfive.append(fly)
		else:
			roundfive.append(caterpillar)
	AllWaves.append(roundfive)
# ROUND SIX
	var roundsix = []
	for i in range(90):
		if i % 3 == 0:
			roundsix.append(fly)
		elif i % 3 == 1:
			roundsix.append(spider)
		else:
			roundsix.append(bee)
	AllWaves.append(roundsix)
# ROUND SEVEN
	var roundseven = []
	for i in range(100):
		if i % 5 == 0:
			roundseven.append(spider)
		elif i % 3 == 0:
			roundseven.append(caterpillar)
		elif i % 3 == 1:
			roundseven.append(bee)
		else:
			roundseven.append(fly)
	AllWaves.append(roundseven)
# ROUND EIGHT
	var roundeight = []
	for i in range(100):
		if i % 3 == 0:
			roundeight.append(fly)
		elif i % 3 == 1:
			roundeight.append(caterpillar)
		else:
			roundeight.append(bee)
	AllWaves.append(roundeight)
# ROUND NINE
	var roundnine = []
	for i in range(120):
		if i % 4 == 0:
			roundnine.append(spider)
		elif i % 4 == 1:
			roundnine.append(fly)
		elif i % 4 == 2:
			roundnine.append(caterpillar)
		else:
			roundnine.append(bee)
	AllWaves.append(roundnine)
# ROUND TEN
	var roundten = []
	for i in range(150):
		if i % 5 == 0:
			roundten.append(spider)
		elif i % 3 == 0:
			roundten.append(fly)
		elif i % 3 == 1:
			roundten.append(caterpillar)
		else:
			roundten.append(bee)
	AllWaves.append(roundten)
		# ROUND 11
	var roundeleven = []
	for i in range(170):
		if i % 5 == 0:
			roundeleven.append(spider)
		elif i % 3 == 0:
			roundeleven.append(fly)	
		elif i % 3 == 1:
			roundeleven.append(caterpillar)
		else:
			roundeleven.append(bee)
	AllWaves.append(roundeleven)
		
	var roundtwelve = []
	for i in range(190):
		if i % 5 == 0:
			roundtwelve.append(spider)
		elif i % 3 == 0:
			roundtwelve.append(fly)	
		elif i % 3 == 1:
			roundtwelve.append(caterpillar)
		else:
			roundtwelve.append(bee)
	AllWaves.append(roundtwelve)
		
	var roundthirteen = []
	for i in range(220):
		if i % 5 == 0:
			roundthirteen.append(spider)
		elif i % 3 == 0:
			roundthirteen.append(fly)	
		elif i % 3 == 1:
			roundthirteen.append(caterpillar)
		else:
			roundthirteen.append(bee)
	AllWaves.append(roundthirteen)
		
	var roundfourteen = []
	for i in range(250):
		if i % 5 == 0:
			roundfourteen.append(spider)
		elif i % 3 == 0:
			roundfourteen.append(fly)	
		elif i % 3 == 1:
			roundfourteen.append(caterpillar)
		else:
			roundfourteen.append(bee)
	AllWaves.append(roundfourteen)
		
	var roundfifteen = []
	for i in range(100):
		if i % 5 == 0:
			roundfifteen.append(bee)
		else:
			roundfifteen.append(spider)
	AllWaves.append(roundfifteen)
		
	var round16 = []
	round16.append(fly)	
	AllWaves.append(round16)

	return AllWaves
