extends Node2D
var fly = preload("res://Scenes/Enemy_DragonFly.tscn")
var caterpillar = preload("res://Scenes/Enemy_RedCaterpillar.tscn")
var bee = preload("res://Scenes/Enemy_Bee.tscn")
var spider = preload('res://Scenes/Enemy_Spider_P.tscn')


func GenWaves():
	print("GENERATING WAVES")
	var AllWaves = []

	var round_one = []
	for i in range(80):
		if i % 60 == 0:
			round_one.append(spider)  # Introduce spiders rarely
		elif i % 20 == 0:
			round_one.append(bee)
		elif i % 3 == 0:
			round_one.append(caterpillar)
		else:
			round_one.append(fly)
	AllWaves.append(round_one)

	var round_two = []
	for i in range(95):
		if i % 50 == 0:
			round_two.append(spider)
		elif i % 15 == 0:
			round_two.append(bee)
		elif i % 3 == 0:
			round_two.append(caterpillar)
		else:
			round_two.append(fly)
	AllWaves.append(round_two)

	var round_three = []
	for i in range(110):
		if i % 40 == 0:
			round_three.append(spider)
		elif i % 12 == 0:
			round_three.append(bee)
		elif i % 2 == 0:
			round_three.append(caterpillar)
		else:
			round_three.append(fly)
	AllWaves.append(round_three)

	var round_four = []
	for i in range(125):
		if i % 35 == 0:
			round_four.append(spider)
		elif i % 10 == 0:
			round_four.append(bee)
		elif i % 2 == 0:
			round_four.append(caterpillar)
		else:
			round_four.append(fly)
	AllWaves.append(round_four)

	var round_five = []
	for i in range(140):
		if i % 30 == 0:
			round_five.append(spider)
		elif i % 8 == 0:
			round_five.append(bee)
		elif i % 3 == 0:
			round_five.append(caterpillar)
		else:
			round_five.append(fly)
	AllWaves.append(round_five)

	var round_six = []
	for i in range(155):
		if i % 25 == 0:
			round_six.append(spider)
		elif i % 7 == 0:
			round_six.append(bee)
		elif i % 2 == 0:
			round_six.append(caterpillar)
		else:
			round_six.append(fly)
	AllWaves.append(round_six)

	var round_seven = []
	for i in range(170):
		if i % 20 == 0:
			round_seven.append(spider)
		elif i % 5 == 0:
			round_seven.append(bee)
		elif i % 2 == 0:
			round_seven.append(caterpillar)
		else:
			round_seven.append(fly)
	AllWaves.append(round_seven)

	var round_eight = []
	for i in range(180):
		if i % 18 == 0:
			round_eight.append(spider)
		elif i % 5 == 0:
			round_eight.append(bee)
		elif i % 2 == 0:
			round_eight.append(caterpillar)
		else:
			round_eight.append(fly)
	AllWaves.append(round_eight)

	var round_nine = []
	for i in range(190):
		if i % 16 == 0:
			round_nine.append(spider)
		elif i % 5 == 0:
			round_nine.append(bee)
		elif i % 2 == 0:
			round_nine.append(caterpillar)
		else:
			round_nine.append(fly)
	AllWaves.append(round_nine)

	var round_ten = []
	for i in range(210):
		if i % 14 == 0:
			round_ten.append(spider)
		elif i % 5 == 0:
			round_ten.append(bee)
		elif i % 2 == 0:
			round_ten.append(caterpillar)
		else:
			round_ten.append(fly)
	AllWaves.append(round_ten)

	var round_eleven = []
	for i in range(220):
		if i % 12 == 0:
			round_eleven.append(spider)
		elif i % 5 == 0:
			round_eleven.append(bee)
		elif i % 2 == 0:
			round_eleven.append(caterpillar)
		else:
			round_eleven.append(fly)
	AllWaves.append(round_eleven)

	var round_twelve = []
	for i in range(230):
		if i % 10 == 0:
			round_twelve.append(spider)
		elif i % 5 == 0:
			round_twelve.append(bee)
		elif i % 2 == 0:
			round_twelve.append(caterpillar)
		else:
			round_twelve.append(fly)
	AllWaves.append(round_twelve)

	var round_thirteen = []
	for i in range(250):
		if i % 8 == 0:
			round_thirteen.append(spider)
		elif i % 5 == 0:
			round_thirteen.append(bee)
		elif i % 2 == 0:
			round_thirteen.append(caterpillar)
		else:
			round_thirteen.append(fly)
	AllWaves.append(round_thirteen)

	var round_fourteen = []
	for i in range(250):
		if i % 6 == 0:
			round_fourteen.append(spider)
		elif i % 4 == 0:
			round_fourteen.append(bee)
		elif i % 2 == 0:
			round_fourteen.append(caterpillar)
		else:
			round_fourteen.append(fly)
	AllWaves.append(round_fourteen)

	var round_fifteen = []
	for i in range(250):
		if i % 4 == 0:
			round_fifteen.append(spider)
		elif i % 3 == 0:
			round_fifteen.append(bee)
		elif i % 2 == 0:
			round_fifteen.append(caterpillar)
		else:
			round_fifteen.append(fly)
	AllWaves.append(round_fifteen)

	var final = []
	final.append(spider)
	final.append(spider)
	final.append(bee)
	AllWaves.append(final)

	return AllWaves
