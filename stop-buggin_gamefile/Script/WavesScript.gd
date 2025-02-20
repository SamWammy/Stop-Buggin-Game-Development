extends Node2D
var fly = preload("res://Scenes/Enemy_DragonFly.tscn")
var caterpillar = preload("res://Scenes/Enemy_RedCaterpillar.tscn")
var bee = preload("res://Scenes/Enemy_Bee.tscn")
var spider = preload('res://Scenes/Enemy_Spider_P.tscn')



func GenWaves():
	var AllWaves = []
	
	var wave1 = []
	for i in range(10):
		wave1.append(fly)  # 10 Dragonflies
	AllWaves.append(wave1)

	var wave2 = []
	for i in range(15):
		wave2.append(fly)  # 15 Dragonflies
	AllWaves.append(wave2)

	var wave3 = []
	for i in range(10):
		wave3.append(fly)  # 10 Dragonflies
	for i in range(5):
		wave3.append(caterpillar)  # 5 Caterpillars
	AllWaves.append(wave3)

	var wave4 = []
	for i in range(20):
		wave4.append(fly)  # 20 Dragonflies
	AllWaves.append(wave4)

	var wave5 = []
	for i in range(15):
		wave5.append(fly)  # 15 Dragonflies
	for i in range(5):
		wave5.append(caterpillar)  # 5 Caterpillars
	AllWaves.append(wave5)

	var wave6 = []
	for i in range(20):
		wave6.append(fly)  # 20 Dragonflies
	for i in range(5):
		wave6.append(caterpillar)  # 5 Caterpillars
	for i in range(1):
		wave6.append(bee)  # 1 Bee
	AllWaves.append(wave6)

	var wave7 = []
	for i in range(15):
		wave7.append(fly)  # 15 Dragonflies
	for i in range(10):
		wave7.append(caterpillar)  # 10 Caterpillars
	AllWaves.append(wave7)

	var wave8 = []
	for i in range(10):
		wave8.append(fly)  # 10 Dragonflies
	for i in range(10):
		wave8.append(caterpillar)  # 10 Caterpillars
	for i in range(2):
		wave8.append(bee)  # 2 Bees
	AllWaves.append(wave8)

	var wave9 = []
	for i in range(10):
		wave9.append(fly)  # 10 Dragonflies
	for i in range(15):
		wave9.append(caterpillar)  # 15 Caterpillars
	for i in range(1):
		wave9.append(bee)  # 1 Bee
	AllWaves.append(wave9)

	var wave10 = []
	for i in range(5):
		wave10.append(fly)  # 5 Dragonflies
	for i in range(5):
		wave10.append(caterpillar)  # 5 Caterpillars
	for i in range(2):
		wave10.append(bee)  # 2 Bees
	AllWaves.append(wave10)

	var wave11 = []
	for i in range(10):
		wave11.append(fly)  # 10 Dragonflies
	for i in range(15):
		wave11.append(caterpillar)  # 15 Caterpillars
	for i in range(5):
		wave11.append(bee)  # 5 Bees
	AllWaves.append(wave11)

	var wave12 = []
	for i in range(5):
		wave12.append(fly)  # 5 Dragonflies
	for i in range(10):
		wave12.append(caterpillar)  # 10 Caterpillars
	for i in range(5):
		wave12.append(bee)  # 5 Bees
	for i in range(1):
		wave12.append(spider)  # 1 Spider
	AllWaves.append(wave12)

	var wave13 = []
	for i in range(5):
		wave13.append(fly)  # 5 Dragonflies
	for i in range(10):
		wave13.append(caterpillar)  # 10 Caterpillars
	for i in range(6):
		wave13.append(bee)  # 6 Bees
	for i in range(2):
		wave13.append(spider)  # 2 Spiders
	AllWaves.append(wave13)

	var wave14 = []
	for i in range(10):
		wave14.append(fly)  # 10 Dragonflies
	for i in range(10):
		wave14.append(caterpillar)  # 10 Caterpillars
	for i in range(5):
		wave14.append(bee)  # 5 Bees
	for i in range(3):
		wave14.append(spider)  # 3 Spiders
	AllWaves.append(wave14)

	var wave15 = []
	for i in range(10):
		wave15.append(fly)  # 10 Dragonflies
	for i in range(15):
		wave15.append(caterpillar)  # 15 Caterpillars
	for i in range(8):
		wave15.append(bee)  # 8 Bees
	for i in range(3):
		wave15.append(spider)  # 3 Spiders
	AllWaves.append(wave15)

	var wave16 = []
	for i in range(5):
		wave16.append(fly)  # 5 Dragonflies
	for i in range(10):
		wave16.append(caterpillar)  # 10 Caterpillars
	for i in range(8):
		wave16.append(bee)  # 8 Bees
	for i in range(3):
		wave16.append(spider)  # 3 Spiders
	for i in range(2):
		wave16.append(spider)  # 2 More Spiders
	AllWaves.append(wave16)

	var wave17 = []
	for i in range(5):
		wave17.append(fly)  # 5 Dragonflies
	for i in range(10):
		wave17.append(caterpillar)  # 10 Caterpillars
	for i in range(10):
		wave17.append(bee)  # 10 Bees
	for i in range(5):
		wave17.append(spider)  # 5 Spiders
	AllWaves.append(wave17)

	var wave18 = []
	for i in range(5):
		wave18.append(fly)  # 5 Dragonflies
	for i in range(10):
		wave18.append(caterpillar)  # 10 Caterpillars
	for i in range(10):
		wave18.append(bee)  # 10 Bees
	for i in range(6):
		wave18.append(spider)  # 6 Spiders
	AllWaves.append(wave18)

	var wave19 = []
	for i in range(10):
		wave19.append(fly)  # 10 Dragonflies
	for i in range(10):
		wave19.append(caterpillar)  # 10 Caterpillars
	for i in range(12):
		wave19.append(bee)  # 12 Bees
	for i in range(8):
		wave19.append(spider)  # 8 Spiders
	AllWaves.append(wave19)

	var wave20 = []
	for i in range(10):
		wave20.append(fly)  # 10 Dragonflies
	for i in range(10):
		wave20.append(caterpillar)  # 10 Caterpillars
	for i in range(15):
		wave20.append(bee)  # 15 Bees
	for i in range(10):
		wave20.append(spider)  # 10 Spiders
	AllWaves.append(wave20)


	#Test Wave
	'''var roundone=[]
	for i in range(10):
		roundone.append(fly)
	for i in range(5):
		roundone.append(caterpillar)
	for i in range(2):
		roundone.append(bee)
	AllWaves.append(roundone)'''
	
	#Blakes old waves if we want them
	"var roundtwo=[]
	for i in range(20):
		roundtwo.append(fly)
	for i in range(10):
		roundtwo.append(caterpillar)
	for i in range(5):
		roundtwo.append(bee)
	AllWaves.append(roundtwo)
	
	#ROUND THREE WAVE
	var roundthree=[]
	for i in range(10):
		roundthree.append(fly)
	for i in range(45):
		roundthree.append(caterpillar)
	for i in range(10):
		roundthree.append(bee)
	AllWaves.append(roundthree)
	
	#ROUND FOUR WAVE
	var roundfour=[]
	for i in range(5):
		roundfour.append(fly)
	for i in range(60):
		roundfour.append(caterpillar)
	for i in range(15):
		roundfour.append(bee)
	AllWaves.append(roundfour)"
	
	return AllWaves
