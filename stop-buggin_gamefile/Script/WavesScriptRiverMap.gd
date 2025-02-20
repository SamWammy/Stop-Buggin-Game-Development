extends Node2D
var fly = preload("res://Scenes/Enemy_DragonFly.tscn")
var caterpillar = preload("res://Scenes/Enemy_RedCaterpillar.tscn")
var bee = preload("res://Scenes/Enemy_Bee.tscn")
var spider = preload('res://Scenes/Enemy_Spider_P.tscn')


func GenWaves():
	print("GENERATING WAVES")
	var AllWaves=[]

	var roundone=[]
	print("river round one")
	for i in range(20):
		print(i)
		if i > 1 and i % 10 == 0:
			roundone.append(bee)
		elif i % 2 == 0:
			print("fly")
			roundone.append(fly)
		else:
			print("caterpillar")
			roundone.append(caterpillar)
	AllWaves.append(roundone)
	
	# ROUND TWO WAVE
	var roundtwo=[]
	for i in range(3):
		roundtwo.append(caterpillar)
	for i in range(1):
		roundtwo.append(bee)
	for i in range(7):
		roundtwo.append(fly)
	for i in range(2):
		roundtwo.append(bee)
	for i in range(10):
		roundtwo.append(fly)
	for i in range(5):
		roundtwo.append(caterpillar)
	roundtwo.append(bee)
	AllWaves.append(roundtwo)
	
	# ROUND THREE WAVE
	var roundthree=[]
	for i in range(5):
		roundthree.append(bee)
	for i in range(25):
		print(i)
		if i > 1 and i % 10 == 0:
			roundthree.append(bee)
		elif i % 2 == 0:
			print("fly")
			roundthree.append(fly)
		elif i % 3 == 0:
			print("spider")
			roundthree.append(spider)
		else:
			print("caterpillar")
			roundthree.append(caterpillar)
	AllWaves.append(roundthree)
	
	# ROUND FOUR WAVE
	var roundfour=[]
	for i in range(35):
		print(i)
		if i > 1 and i % 10 == 0:
			roundfour.append(bee)
		elif i % 8 == 0:
			print("spider")
			roundfour.append(spider)
		elif i % 2 == 0:
			print("fly")
			roundfour.append(fly)
		else:
			print("caterpillar")
			roundfour.append(caterpillar)
	AllWaves.append(roundfour)
	
	# ROUND FIVE WAVE
	var roundfive=[]
	for i in range(45):
		print(i)
		if i > 1 and i % 10 == 0:
			roundfive.append(bee)
		elif i % 6 == 0:
			print("spider")
			roundfive.append(spider)
		elif i % 2 == 0:
			print("fly")
			roundfive.append(fly)
		else:
			print("caterpillar")
			roundfive.append(caterpillar)
	AllWaves.append(roundfive)
	
	# ROUND SIX WAVE
	var roundsix=[]
	for i in range(45):
		print(i)
		if i > 1 and i % 7 == 0:
			roundsix.append(bee)
		elif i % 5 == 0:
			print("spider")
			roundsix.append(spider)
		elif i % 3 == 0:
			print("fly")
			roundsix.append(fly)
		else:
			print("caterpillar")
			roundsix.append(caterpillar)
	AllWaves.append(roundsix)
	
	# ROUND SEVEN WAVE
	var roundseven=[]
	for i in range(45):
		print(i)
		if i > 1 and i % 5 == 0:
			roundseven.append(bee)
		elif i % 4 == 0:
			print("spider")
			roundseven.append(spider)
		elif i % 5 == 0:
			print("fly")
			roundseven.append(fly)
		else:
			print("caterpillar")
			roundseven.append(caterpillar)
	AllWaves.append(roundseven)
	
	# ROUND EIGHT WAVE
	var roundeight=[]
	for i in range(50):
		print(i)
		if i > 1 and i % 5 == 0:
			roundeight.append(bee)
		elif i % 6 == 0:
			print("spider")
			roundeight.append(spider)
		elif i % 5 == 0:
			print("fly")
			roundeight.append(fly)
		else:
			print("caterpillar")
			roundeight.append(caterpillar)
	AllWaves.append(roundeight)
	
	# ROUND NINE WAVE
	var roundnine=[]
	for i in range(55):
		print(i)
		if i > 1 and i % 5 == 0:
			roundnine.append(bee)
		elif i % 5 == 0:
			print("spider")
			roundnine.append(spider)
		elif i % 5 == 0:
			print("fly")
			roundnine.append(fly)
		else:
			print("caterpillar")
			roundnine.append(caterpillar)
	AllWaves.append(roundnine)
	
	# ROUND TEN WAVE
	var roundten=[]
	for i in range(60):
		print(i)
		if i > 1 and i % 4 == 0:
			roundten.append(bee)
		elif i % 3 == 0:
			print("spider")
			roundten.append(spider)
		elif i % 6 == 0:
			print("fly")
			roundten.append(fly)
		else:
			print("caterpillar")
			roundten.append(caterpillar)
	AllWaves.append(roundten)
	
	var round11=[]
	for i in range(65):
		print(i)
		if i > 1 and i % 4 == 0:
			round11.append(bee)
		elif i % 3 == 0:
			print("spider")
			round11.append(spider)
		elif i % 6 == 0:
			print("fly")
			round11.append(fly)
		else:
			print("caterpillar")
			round11.append(caterpillar)
	AllWaves.append(round11)
	
	var round12=[]
	for i in range(80):
		print(i)
		if i > 1 and i % 4 == 0:
			round12.append(bee)
		elif i % 3 == 0:
			print("spider")
			round12.append(spider)
		elif i % 6 == 0:
			print("fly")
			round12.append(fly)
		else:
			print("caterpillar")
			round12.append(caterpillar)
	AllWaves.append(round12)
	
	var round13=[]
	for i in range(100):
		print(i)
		if i > 1 and i % 4 == 0:
			round13.append(bee)
		elif i % 3 == 0:
			print("spider")
			round13.append(spider)
		elif i % 6 == 0:
			print("fly")
			round13.append(fly)
		else:
			print("caterpillar")
			round13.append(caterpillar)
	AllWaves.append(round13)
	
	var round14=[]
	for i in range(120):
		print(i)
		if i > 1 and i % 4 == 0:
			round14.append(bee)
		elif i % 3 == 0:
			print("spider")
			round14.append(spider)
		elif i % 6 == 0:
			print("fly")
			round14.append(fly)
		else:
			print("caterpillar")
			round14.append(caterpillar)
	AllWaves.append(round14)

	var round15=[]
	for i in range(60):
		print(i)
		if i % 2 == 0:
			round15.append(fly)
		else:
			round15.append(spider)
	AllWaves.append(round15)
	
	var final = []
	final.append(spider)
	final.append(bee)
	final.append(bee)
	AllWaves.append(final)

	return AllWaves
