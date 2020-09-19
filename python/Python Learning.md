# Python Learning

### 01. basic commond in powershell

python = 进入python环境

ctrl+Z = 退出python

python xxx.py = 运行xxx.py脚本

### 02. 语法

##### 1.输出和注释

```python
print "hello world!\n"
# 打印hello world！并换行
```

##### 2.数学运算

```python
+ #加法
- #减法
* #乘法
/ #除法
% #求余数
< #小于号
<= #小于等于号
7 #整数
7.0 #浮点数，更加精确
```

##### 3.数值型变量和输出

```python
a = 1 #把1赋值给a
b = 1.0 #把1.0（浮点型）赋值给b
c = a + b #把a+b的结果给C
print "a+b=%d" % c 
print "a+b=%r" % c #不管变量是数值型还是字符型，均输出
```

##### 4.字符串变量和输出

```python
my_name = 'Tao Yuhuan'
my_age = 23
print "My name is %s." % my_name
print "My name is %r." % my_name

print "%s is %d years old." (% my_name, % my_age)

# 更多设置格式输出格式可以搜索：Python 格式化字符
```

##### 5.更多字符串

```python
x = "There are %d types of people." % 10
binary = "binary"
do_not = "don't"
y = "Those who know %s and those who %s." % (binary, do_not)

print x
print y 

print "I said: %r." % x
print "I also said: '%s'." % y

hilarious = False
joke_evaluation = "Isn't that joke so funny?! %r"

print joke_evaluation % hilarious

w = "This is the left side of..."
e = "a string with a right side."

print w+e
```

##### 6.更多输出练习1

```python
print "Mary had a little lamb."
print "Its fleece was white as %s." % 'snow'
print "And everywhere that Mary went."
print "." * 10 # print 10 .

end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

# watch that comma at the end. try removing it to see what happens
print end1 + end2 + end3 + end4 + end5 + end6,
print end7 + end8 + end9 + end10 + end11 + end12
# , 使得前后print在同一行上
```

##### 7. 更多输出练习2

```python
formatter = "%r %r %r %r"

print formatter % (1, 2, 3, 4)
print formatter % ("one", "two", "three", "four")
# print %s %s %s %s % ("一", "二", "三", "四") 
# SyntaxError: Non-ASCII character '\xe4' in file .\7.moreprint2.py on line 6,
print formatter % (True, False, True, False)
print formatter % (formatter, formatter, formatter, formatter)
print formatter % (
	"I had this thing.",
	"That you could type up right.",
	"But it didn't sing.",
	"So I said goodnight."
)
```

##### 8. 更多输出练习3

```python
# Here's some new strange stuff, remember type it exactly.

days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

print "Here are the days: ", days
print "Here are the months: ", months

print """
There's something going on there.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, 0r 5, or 6.
"""
# 三引号（"""xxx"""）之间可以放任意多行文字
# 如果在引号("")间需要输出引号("), 只需将引号间的引号前加上反斜杠"\""
```

##### 9.转义序列

```python
tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

print tabby_cat
print persian_cat
print backslash_cat
print fat_cat

##bonus
while True:
	for i in ["/","-","|","\\","|"]:
		print "%s\r" % i,
```

##### 10.输入

```python
##利用raw_input()进行字符串输入，input()需要输入python表达式
#print "How old are you?",
#age = raw_input()
#print "How tall are you?",
#height = raw_input()
#print "How much do you weight?",
#weight = raw_input()

#print "So, you're %r old, %r tall and %r heavy." %(age, height, weight)

print "Attention: Height in cm and Weight in kg.\n",
print "Height=",
Height = float(raw_input())
print "Weight=",
Weight = float(raw_input())
BMI = Weight/(Height*Height)

print "You BMI is %.2f." % BMI
```

##### 11.提示输入

```python
age = raw_input("How old are you? ")
height = raw_input("Hoe tall are you? ")
weight = raw_input("How much do you weigh? ")

print "So, you're %r old, %r tall and %r heavy." %(age, height, weight)
```

##### 12.模组，参数

```python
from sys import argv #argv是一个常用的参数模组

script, first, second, third = argv #unpack 依次将输入的参数从左到右依次赋予变量

print "The script is called:", script
print "Your first variable is:", first
print "Your second variable is:", second
print "Your third variable is:", third
```

##### 13.提示和传递

```python
from sys import argv

script, user_name, user_gender = argv

prompt = '>> '

print "Hi %s, I'm the %s script." % (user_name, script)
print "I'd like to ask you a few questions."
print "Do you like me %s?" % user_name
likes = raw_input(prompt)

print "Where do you live %s?" % user_name
lives = raw_input(prompt)

print "What kind of computer do you have?"
computer = raw_input(prompt)

print """
Hey %s, so you said %r about liking me.
You live in %r. Not sure where that is.
And you have a %r computer. Nice.
""" %(user_gender, likes, lives, computer)
```

##### 14.读取文件，并打印

```python
from sys import argv #导入参数模组

script, filename = argv #设定两个参数，脚本和需要打开的文件名

txt = open(filename) #打开文件并赋值给txt

print "Here's your file %r:" % filename #打印需要打开的文件名
print txt.read() # 读取被赋值文件的变量
txt.close() # 关闭打开的文件

print "Type the filename again:"
file_again = raw_input(">> ") #通过raw_input获取需要打开的文件名

txt_again = open(file_again) #打开文件并赋值给txt

print txt_again.read() # 读取被赋值文件的变量
txt_again.close() #关闭打开的文件
```

##### 15.写入

```python
from sys import argv

script, filename = argv

print "We're going to erase %r." % filename
print "If you don't want that, hit CTRL-C (^c)."
print "If you do want that, hit RETURN."

raw_input("?") # 起到暂停作用

print "Opening the file..."
target = open(filename, 'w') #r=read, w=write over, a=append

print "Truncating the file. Goodbye!"
target.truncate() # w模式会默认用新内容将原有替换，不需要truncate

print "Now I'm going to ask you for three lines."

line1 = raw_input("line 1: ")
line2 = raw_input("line 2: ")
line3 = raw_input("line 3: ")

print "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

print "And finally, we close it."
target.close()
```

##### 16.复制文件

```python
from sys import argv
from os.path import exists

script, from_file, to_file = argv

print "Copy from %s to %s" %(from_file, to_file)

# we could do these two on one line too, how?
in_file = open(from_file)
indata = in_file.read() # 可以通过；将两个合并成一行

print "The input file is %d bytes long" % len(indata)

print "Does the output file exist? %r" %exists(to_file) # 如果不存在，会输出False
print "Ready, hit RETURN to continue, CTRL-C to abort."
raw_input()

out_file = open(to_file,'w') # 如果不存在to_file文件，会根据你的输入创建一个，可写入的
out_file.write(indata)

print "Alright, all done."

out_file.close()
in_file.close()
```

##### 17.输入、函数（定义和使用）

```python
# this one is like your scripts with argv
def print_two(*args):
	arg1, arg2 = args	
	print "arg1: %r, arg2: %r" % (arg1, arg2)
	
# ok, thate *args is actually pointless, we can just do this 
def print_two_again(arg1, arg2):
	print "arg1: %r, arg2: %r" % (arg1, arg2)

# this just takes one argument
def print_one(arg1):
	print "arg1: %r" % arg1
	
# this one takes no arguments
def print_none():
	print "I got nothin'."
	
# 以下为分别使用这四个函数
print_two ("Zed","Shaw") #
print_two_again("Zed","Shaw")
print_one("First!")
print_none()
```

##### 18.函数中的参数与外界参数无交集，但外界参数可以传递给函数，且可以在输入时进行简单计算

```python
def cheese_and_crackers(cheese_count, boxes_of_crackers):
	print "You have %d cheeses!" % cheese_count
	print "You have %d boxes of crackers!" % boxes_of_crackers
	print "Man that's enough for a party!"
	print "Get a blanket.\n"
	
print "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

print "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

print "We can even do math inside too:"
cheese_and_crackers(10+20, 5+6)

print "And we can combine the two, variables and math"
cheese_and_crackers(amount_of_cheese+100, amount_of_crackers + 1000)

# 如果想让用户通过参数输入cheese和cracker数目，可以按照如下进行
from sys import argv
script, cheese, cracker = argv
cheese = float(cheese); cracker = int(cracker)
cheese_and_crackers(cheese, cracker)
#  如果想让用户通过raw_input输入，可以按照如下进行
cheese = raw_input("How many cheese do you have?" )
cracker = raw_input("How many crackers do you have?" )
cheese = int(cheese); cracker = int(cracker)
cheese_and_crackers(cheese,cracker)
```

##### 19.函数和调用文件

```python
# -*- coding: utf-8 -*-
# 输入参数
from sys import argv

script, input_file = argv

# 定义函数
def print_all(f):
	print f.read()
	
def rewind(f):
	f.seek(0)
	
def print_a_line(line_count, f):
	print line_count, f.readline()
# 打开作为参数输入的文件	
current_file = open(input_file)

print "First let's print the whole file:\n"
# 调用第一个函数，全部打印
print_all(current_file)

print "Now let's rewind, kind of like a tape.\n"
# 调用rewind函数,回到0byte处
rewind(current_file)

print "Let's print three lines:"

#打印第一行
current_line = 1
print_a_line(current_line, current_file)

#根据上一行打印的位置记录，再加一行，打印下一行
current_line += 1
print_a_line(current_line, current_file)

#同上
current_line += 1
print_a_line(current_line, current_file)
```

##### 20.返回函数值

```python
def add(a, b):
	print "ADDING %d + %d" % (a, b)
	return a + b
	
def subtract(a, b):
	print "SUBTRACTING %d - %d" % (a, b)
	return a - b
	
def multiply(a, b):
	print "MULTIPLYING %d * %d" % (a, b)
	return a * b
	
def divide(a, b):
	print "DIVIDING %d / %d" % (a, b)
	return a / b
	
print "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

print "Age: %d, Height: %d, Weight: %d, IQ: %d" % (age, height, weight, iq)

# A puzzle for the extra credit, type it in anyway.

print "Here is a puzzle."

what = add(age, subtract(height, multiply(weight,divide(iq, 2))))

print "That becomes:",what,"Can you do it by hand?"
```

##### 21.综合练习

```python
print "Let's practice everything."
print 'You\'d need to know \'bout escapes with \\ that \n newlines and \t tabs.'

poem = """
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
"""

print "-------------"
print poem
print "-------------"

five = 10 - 2 + 3 - 6
print "This should be five: %s" % five

def secret_formula(started):
	jelly_beans = started * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, jars, crates
	
start_point = 10000
beans, jars, crates = secret_formula(start_point)

print "With a starting point of: %d" % start_point
print "We'd have %d beans, %d jars, and %d crates." % (beans, jars, crates)

start_point = start_point / 10

print "We can also do that this way:"
print "We'd have %d beans, %d jars, and %d crates." % secret_formula(start_point)
```

##### 22.在python编译器中运行的函数

```python
def break_words(stuff):
	"""This function will break up words for us."""
	words = stuff.split(' ')
	return words
	
def sort_words(words):
	"""Sorts the words."""
	return sorted(words)
	
def print_first_word(words):
	"""Prints the first word after popping it off."""
	word = words.pop(0) #pop是直接将列表中的字符串弹出，而不是显示
	print word
	
def print_last_word(words):
	"""Prints the last word after popping it off."""
	word = words.pop(-1)
	print word
	
def sort_sentence(sentence):
	"""Takes in a full sentence and returns the sorted words."""
	words = break_words(sentence)
	return sort_words(words)
	
def print_first_and_last(sentence):
	"""Prints the first and last words of the sentence."""
	words = break_words(sentence)
	print_first_word(words)
	print_last_word(words)
	
def print_first_and_last_sorted(sentence):
	"""Sorts the words then print the first and last one."""
	words = sort_sentence(sentence)
	print_first_word(words)
	print_last_word(words)
    
##以下为运行结果
>>> import moredefines
>>> sentence = "All good things come to those who wait."
>>> words = moredefines.break_words(sentence) #使用函数1
>>> words
['All', 'good', 'things', 'come', 'to', 'those', 'who', 'wait.']
>>> sorted_words = moredefines.sort_words(words) #使用函数2
>>> sorted_words
['All', 'come', 'good', 'things', 'those', 'to', 'wait.', 'who']
>>> moredefines.print_first_word(word) #使用函数3，发生错误，因为打错了
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'word' is not defined
>>> moredefines.print_first_word(words) #使用函数3
All
>>> moredefines.print_last_word(words) #使用函数4
wait.
>>> words
['good', 'things', 'come', 'to', 'those', 'who']
>>> moredefines.print_first_word(sorted_words) #使用函数3，不过传入参数与之前不同
All
>>> moredefines.print_last_word(sorted_words) #使用函数4，传入参数与之前不同
who
>>> sorted_words 
['come', 'good', 'things', 'those', 'to', 'wait.']
>>> sorted_words = moredefines.sort_sentence(sentence) # 使用函数5，函数7是1+2
>>> sorted_words
['All', 'come', 'good', 'things', 'those', 'to', 'wait.', 'who']
>>> moredefines.print_first_and_last(sentence) # 使用函数6，函数6是1+3+4
All
wait.
>>> moredefines.print_first_and_last_sorted(sentence) # 使用函数7，函数7是1+2+3+4
All
who
```

##### 23.if

```python
people = 20
cats = 30
dogs = 15

if people < cats:
	print "Too many cats! The world is doomded!"
	
if people > cats:
	print "Not many cats! The world is saved!"
	
if people < dogs:
	print "The world is drooled on!"
	
if people > dogs:
	print "The world is dry!"
	
dogs += 5

if people >= dogs:
	print "People are greater than or equal to dogs."
	
if people <= dogs:
	print "People are less than or equal to dogs."
	
if people == dogs:
	print "People are dogs."
```

##### 24.elif和else

```python
people = 30
cars = 40
buses = 15

if cars > people:
	print "We should take the cars."
elif cars > people:
	print "We should not take the cars."
else:
	print "We can't decide."
	
if buses > cars:
	print "That's too many buses."
elif buses < cars:
	print "Maybe we could take the buses."
else:
	print "We still can't decide."
	
if people > buses:
	print "Alright, let's just take the buses."
else:
	print "Fine, let's stay home then."
```

##### 25.decision

```python
print "You enter a dark room with two doors. Do you go through door #1 or door #2?"

door = raw_input("> ")

if door == "1":
	print "There's a giant bear here eating a cheese cake. What do you do?"
	print "1. Take the cake."
	print "2.Scream at the bear."
	
	bear = raw_input("> ")
	
	if bear == "1":
		print "The bear eats your face off. Good job!"
	elif bear == "2":
		print "The bear eats your legs off. Good job!"
	else:
		print "Well, doing %s is probably better. Bear runs away." % bear

elif door == "2":
	print "You stare into the endless abyss at Cthulu's retina."
	print "1. Blueberries."
	print "2. Yellow jacket clothespins."
	print "3. Understanding revolvers yelling melodies."
	
	insanity = raw_input("> ")
	
	if insanity == "1" or insanity == "2":
		print "Your body survives powered by a mind of jello. Good job!"
	else:
		print "The insanity rots your eyes into a pool of muck. Good job!"
		
else:
	print "Your stumble around and fall on a knife and die. Good job!"
```

##### 26.list print and for loop

```python
the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'arpicots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
for number in the_count:
	print "This is count %d" % number
	
# same as above
for fruit in fruits:
	print "A fruit of type: %s" % fruit
	
# also we can go through mixed lists too
# notice we have to use %r since we don't konw what's in it
for i in change:
	print "I got %r" % i
	
# we can alse build lists, first start with an empty one
elements = []

# then use the range function to do 0 to 5 counts
for i in range(0, 6):
	print "Adding %d to the list." % i
	# append is a function that lists understand
	elements.append(i) # elements need to be defined before use
	
# now we can print them out too
for i in elements:
	 print "Element was: %d" % i
```

##### 27.make list and print by while

```python
## 参数法输入
from sys import argv

script, a, b = argv

i = 0
numbers = []
a = int(a); b = int(b) ## important str to int

while i < a:
	print "At the top i is %d" % i
	numbers.append(i)
	
	i += b
	print "Number now: ", numbers
	print "At the bottom i is %d" %i 
	
print "The numbers: "

for num in numbers:
	print num
```

```python
##定义函数并输入, 在python编译器中使用
def whilelist(a, b): ##这边好像输入的值就是int型
	i = 0
	numbers = []

	while i < a:
		print "At the top i is %d" % i
		numbers.append(i)
	
		i += b
		print "Number now: ", numbers
		print "At the bottom i is %d" %i 
	
	print "The numbers: "

	for num in numbers:
		print num
        
## 也可以先写一些定义函数，然后通过import模组，利用参数将值传递给变量
## 把这一段添加在上一段中即可
from sys import argv

script, a, b = argv

a = int(a); b = int(b)

whilelist(a, b)
```

##### 28.分支和函数

```python
from sys import exit
## 为了分辨输入是否为整数，定义了一个函数
def isnub(a):
	try:
		nub = int(a)
		return True
	except ValueError as e:
		return False 
	
def gold_room():
	print "This room is full of gold. How much do you take?"
	
	next = raw_input("> ")
	if isnub(next):
		how_much = int(next)
	else:
		dead("Man, learn to type a number.")
		
	if how_much < 50:
		print "Nice, you're not greedy, you win!"
		exit(0)
	else:
		dead("You greedy bastard!")
		
def bear_room():
	print "There is a bear here."
	print "The bear has a bunch of honey."
	print "The fat bear is in front of another door."
	print "How are you going to move the bear?"
	bear_moved = False
	
	while True:
		next = raw_input("> ")
		
		if next == "take honey":
			dead("The bear looks at you the slaps your face off.")
		elif next == "taunt bear" and not bear_moved:
			print "The bear has moved from the door. You can go through it now."
			bear_moved = True
		elif next == "taunt bear" and bear_moved:
			dead("The bear gets pissed off and chews your leg off.")
		elif next == "open door" and bear_moved:
			gold_room()
		else:
			print "I got no idea what that means."
			
def cthulhu_room():
	print "Here you see the great evil Cthulhu."
	print "He, it, whatever stares at you and you go insane."
	print "Do you flee for your life or eat your head?"
	
	next = raw_input("> ")
	if "flee" in next:
		start()
	elif "head" in next:
		dead("Well that was tasty!")
	else:
		cthulhu_room()

def dead(why):
	print why, "Good job!"
	exit(0)
	
def start():
	print "You are in a dark room."
	print "There is a door to your right and left."
	print "Which one do you take?"
	
	next = raw_input("> ")
	
	if next == "left":
		bear_room()
	elif next == "right":
		cthulhu_room()
	else:
		dead("You stumble around the room until you starve.")
		
start()
```

##### 29.字典

```python
# create a mapping of state to abbreviation
states = {
	'Oregon': 'OR',
	'Florida': 'FL',
	'California': 'CA',
	'New York': 'NY',
	'Michigan': 'MI'
}

# create a basic set of states and some cities in them
cities = {
	'CA': 'San Francisco',
	'MI': 'Detroit',
	'FL': 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# print out some cities
print '-' * 10
print "Ny state has: ", cities['NY']
print "OR state has: ", cities['OR']

# print some states
print '-' * 10
print "Michigan's abbreviation is: ", states['Michigan']
print "Florida's abbreviation is: ", states['Florida']

# do it by using the state then cities dict
print '-' * 10
print "Michigan has: ", cities[states['Michigan']]
print "Florida has: ", cities[states['Florida']]

# print every state abbreviation
print '-' * 10
for state, abbrev in states.items():
	print "%s is abbreviated %s" % (state, abbrev)
	
# print every city in state
print '-' * 10
for abbrev, city in cities.items():
	print "%s has the city %s" %(abbrev, city)

# now do both at the same time
print '-' * 10
for state, abbrev in states.items():
	print "%s state is abbreviated %s, and has city %s" % (state, abbrev, cities[abbrev])

print '-' * 10	
# safely get a abbreviation by state that might not be there
state = states.get('Texas', None)

if not state:
	print "Sorry, no Texas."
	
# get a city with a default value
city = cities.get('TX', 'Does Not Exist')
print "The city for the state 'TX' is: %s" % city
```

##### 30.类、实例化

```python
class Song(object): ## 设定一个类
##这一部分是初始化，每一个类所必须的，但是多加了一个lyrics参数，也就是传入的object
	def __init__(self, lyrics):   
		self.lyrics = lyrics ##self.xxx 表明xxx是实例的属性，而非一般的局部变量
		
	def sing_me_a_song(self):  ##设定类中的def
		for line in self.lyrics:
			print line
##将歌词列表作为object给Song类，并实例化给happy_bday
happy_bday = Song(["Happy birthday to you",
				"I don't want to get sued",
				"So I'll stop right there"])   
				
bulls_on_parade = Song(["They rally around the family",
				"With pockets full of shells"])
				
happy_bday.sing_me_a_song()   ##用实例化的happy_bday调用Song类中的sing_me_a_song函数

bulls_on_parade.sing_me_a_song()

print "\n"

print happy_bday.lyrics ##用实例化的happy_bday调用Song类中的lyrics值（就是输入的歌词）
```

##### 31.类的具体使用以及不同类产生值的传递

```python
class TheThing(object):
	
	def __init__(self):
		self.number = 0
		
	def some_function(self):
		print "I got called."
		
	def add_me_up(self, more):
		self.number += more
		return self.number
		
# two different things
a = TheThing()
b = TheThing()

a.some_function()
b.some_function()
## 这个会直接执行add_me_up功能，然后将结果输出，但是必须return才可以，否则只有none
print a.add_me_up(20) 
print b.add_me_up(30)

print a.number
print b.number

# Study this. This is how you pass a variable
# from one class to another. You will need this.
class TheMultiplier(object):

		def __init__(self, base): ## base是传入的object
			self.base = base
			
		def do_it(self, m): ## m是调用函数时需要输入的参数
			return m * self.base
			
x = TheMultiplier(a.number)
print x.do_it(b.number)
```

##### 32.列表练习

```python
ten_things = "Apples Oranges Crows Telephone Light Sugar" # this strings

print "Wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ') #将字符串以空格分割，形成列表
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

while len(stuff) != 10:   # 直到10个元素才停下
	next_one = more_stuff.pop() # 取出more_stuff的最后一个
	print "Adding: ", next_one
	stuff.append(next_one) # 加到stuff后
	print "There's %d items now." % len(stuff)
	
print "There we go: ", stuff

print "Let's do some things with stuff."
 
print stuff[1] #第二个元素
print stuff[-1] # whoa! fancy #最后一个元素
print stuff.pop() # 取出最后一个元素，且原列表删除最后一个
print ' '.join(stuff) # what? cool! # 以空格连接stuff中的元素
print '#'.join(stuff[3:5]) #super stellar! # 以#连接stuff中第三个和第四个元素
```

##### 33.一个游戏，练习类的使用（非常类似模组，但是更加绕，应用也很广，可以类比字典（函数的字典））

```python
# -*- coding: utf-8 -*-
from sys import exit
from random import randint

class Scene(object):   ##此处定义的Scene类并没有用处，也没有独特的功能，只是作为以下的五个scene的上一层级（父类）存在着
	
	def enter(self):
		print "This scene is not yet configured. Subclass it and implement enter()."
		exit(1)
			
class Engine(object):
	
	def __init__(self, scene_map):
		self.scene_map = scene_map ##此处scene_map是一个实例，来自于Engine(a_map)中的a_map, a_map是Map('central_corridor')类的实例，所以Engine中scene_map是Map类，下面才可以直接通过scene_map.使用Map中的opening_scene()!
		
	def play(self):
		current_scene = self.scene_map.opening_scene() ## 这儿使用了合成，将别的类的功能，将current_scene实例化了,且此处是一个覆写，将map类的功能用于play函数并得到了与map类不同的值
		
		while True:
			print "\n---------"
			next_scene_name = current_scene.enter()
			current_scene = self.scene_map.next_scene(next_scene_name)
			
class Death(Scene):
	
	quips = [
		"You died in type1!",
		"You died in type2!",
		"You died in type3!",
		"You died in type4!"
	]
	
	def enter(self):
		print Death.quips[randint(0, len(self.quips)-1)]
		exit(1)
		
class CentralCorridor(Scene): ## 这边用到了继承，而且是覆写式，覆写了enter(self)
	
	def enter(self):
		print "You come in CentralCorridor, please choose:"
		print "choice 1: shoot!"
		print "choice 2: dodge!"
		print "choice 3: tell a joke"
		print "And type in contents after comma."
		
		action = raw_input("> ")
		
		if action == "shoot!":
			print "Your gun go off and you are dead!"
			return 'death'
			
		elif action == "dodge!":
			print "You are not as flexible as you thought and you are dead!"
			return 'death'
			
		elif action == "tell a joke":
			print "You are so funny! Ok, you can go to next room!"
			return 'laser_weapon_armory'
			
		else:
			print "You are wrong! Go back and try again!"
			return 'central_corridor'
			
class LaserWeaponArmory(Scene):
		
	def enter(self):
		print "You come to the laser weapon armory!"
		print "But a keypad with 3 digits code stay in front of you."
		print "you have 10 chances to try the code."
		print "If you failed, you trigger alarm and shooted to death."
		print "If you guess right, you are survived and get the laser weapon!"
		code = "%d%d%d" % (randint(1,9),randint(1,9),randint(1,9))
		print "Oooo, NO!! I forgot to hide the code! Now everybody can see it!!!"
		print "The code is: ", code
		guess = raw_input("[keypad]> ")
		guesses = 0
			
		while guess != code and guesses < 10: # if guess==code or guess>=10, jump out
			
			print "-" * 10
			print "%d judge <10, you can type code again" % guesses
			#print "BZZZEDDDD!"
			guesses += 1
			guess = raw_input("[keypad]> ") 
			print "%d this is used for next judge!" % guesses
			print "*" * 10  ###这儿raw_input好像会优于while执行，所以能输入11次，print可以看出，第11次raw_input后，并没有进入while循环执行print输出10 judge <10, you can type code again
			
		if guess == code:
			print "You get the laser weapon!"
			return 'the_bridge'
				
		else:
			print "Stupid! You are dead!"
			return 'death'
				
class TheBridge(Scene):
	
	def enter(self):
		print "You stand on the bridge with the laser weapon, a bomb on you hand."
		print "You have 2 choice:"
		print "choice 1: throw the bomb"
		print "choice 2: slowly place the bomb"
		print "And type in contents after comma."
		
		action = raw_input("> ")
		
		if action == "throw the bomb":
			print "The bomb is unstable and goes off!"
			print "BOOOOOOOOO!"
			return 'death'
			
		elif action == "slowly place the bomb":
			print "You are lucky!"
			return 'escape_pod'
			
		else:
			print "You are forced to go back to the bridge..."
			return 'the_bridge'
			
class EscapedPod(Scene):
	
	def enter(self):
		print "You rush out and embrace freedom!"
		print "But you have to choose a number."
		print "You can choose between 1-5."
		
		good_pod = randint(1,5)
		print good_pod
		print "Trust me! Choose the number show on the screen."
		guess = raw_input("[pod #]> ")
		
		if int(guess) != good_pod:
			print "You jump into pod %s and hit the eject button." % guess
			print "You are unlucky! It doesn't work!"
			return 'death'
		else:
			print "You jump into pod %s and hit the eject button." % guess
			print "You are lucky! It works!"
			exit(0)
			#return 'finished'
					
class Map(object):
	
	scenes = {
		'central_corridor': CentralCorridor(),
		'laser_weapon_armory': LaserWeaponArmory(),
		'the_bridge': TheBridge(),
		'escape_pod': EscapedPod(),
		'death': Death()
		}
			
	def __init__(self, start_scene):
		self.start_scene = start_scene
		
	def next_scene(self, scene_name):
		return Map.scenes.get(scene_name) #Map.scene是Map类中的一个字典变量，.get是字典本身的功能，可以根据括号中的参数对应的key，进行取值
		
	def opening_scene(self):
		return self.next_scene(self.start_scene) #引用next_scene()这一个属于Map类的功能，获取key对应的值，此处的key来自于初始化的start_scene, 即Map('central_corridor')中'central_corridor'

# 真正让游戏开始只有这三行，其余全都是在类与类，类与实例之间转换
a_map = Map('central_corridor')
a_game = Engine(a_map)
a_game.play()
```

该图是raw_input处的debug输出

<img src="C:\Users\Tao\Documents\GitHub\Learning Machine Learning\pictures\image-20200306010530118.png" alt="image-20200306010530118" style="zoom:25%;" />

+ 模块的话就需要import，class不需要import，但是需要实例化。模块的话import后就是全局可用
+ 合成的话就必须在该类中将其他类实例化，并且无法通过(自己类名).(其他类的函数名)直接调用其他类的函数，必须要在自己类中定义功能名称，并在该功能中调用别的函数的功能self.(其他函数名).(其他函数功能)。
+ 如果是继承的话就无需定义，因为可以直接使用(自己的类名).(父类函数名)进行引用

##### 34.mygame 

+ 框架

```python
class Pool(object):
	
	def ask():
		
		pass

class Cave(Pool):
	
	def goto(self): ## need return a key of pool{dict}
		print "This will go to LotusLeaf."
		return "lotusleaf"
	pass
	
class LotusLeaf(Pool):
	
	def goto(self):
		print "This will go to Shore."
		return "shore"
	def frog(self):
		print "But how to confirm that I am you mom?"
#		if
		print "Yes, I am your mom."
		return exit(0)
#		else:
	
class Shore(Pool):

	def goto(self):
		print "This will go to Marsh."
		return "marsh"
	def duck(self):
		print "Give some clue"
		return
	
class Marsh(Pool):

	def goto(self):
		print "This will go to Branch."
		return "branch"
	def crocodile(self):
		print "Greedy and you die."
		return

class Branch(Pool):
	
	def goto(self):
		print "This will go to Sky."
		return "sky"
	def monkey(self):
		print "Tricky and get you miss some clue."
		return
	
class Sky(Pool):

	def goto(self):
		print "This will go to UnderWater."
		return "under_water"
	def bird(self):
		print "Give some meaningless clue."
		return
	
class UnderWater(Pool):

	def goto(self):
		print "This will go to end."
		exit(0)
	def fish(self):
		return
	
class Map(object):
	pool = {
		"cave": Cave(),
		"lotusleaf":LotusLeaf(),
		"shore": Shore(),
		"marsh": Marsh(),
		"branch": Branch(),
		"sky": Sky(),
		"under_water": UnderWater()		
		}
	def __init__(self, start):
		self.start = start 
	def get_key_value(self, key):
		return Map.pool.get(key)
	def enter(self):
		return self.get_key_value(self.start)
		
class Engine(object):
	
	def __init__(self, start_site):
		self.start_site = start_site
	
	def play(self):
		current_scene = self.start_site.enter()
		
		while True:
			print "\n-----------------"
			next_scene_name = current_scene.goto()
			current_scene = self.start_site.get_key_value(next_scene_name)
		
input = Map("cave")
key_value = Engine(input)
key_value.play()
```

+ 成品

  ```python
  class Pool(object):
  	
  	def ask():
  		
  		pass
  
  class Cave(Pool):
  	
  	def goto(self): ## need return a key of pool{dict}
  		
  		print "Oh, it's dark."
  		raw_input()
  		print "Where is my mom?"
  		raw_input()
  		print "And who am I??"
  		raw_input()
  		print "Am I in a cave? It's too dark to see myself."
  		raw_input()
  		print "\"HEY, you blind me\"","Oh, sorry!"
  		raw_input()
  		print "It seems here are many of my brothers and sisters!"
  		raw_input()
  		print "I need to go out to find our mom!"
  		raw_input()
  		
  		direction = raw_input("I need to go > [please type in a word here, like 'out']")
  		
  		if direction == "out":
  			print "\nOh I can see myself!"
  			raw_input()
  			print "I am black and with no arms or legs."
  			raw_input()
  			print "A short tail is attached to my back."
  			raw_input()
  			print "My mom must be the same as me."
  			raw_input()
  			print "Oh, I see a lotus leaf outside. I will go and see."
  			return "lotusleaf"
  		
  		else: 
  			print "Oh, It seems a wrong direction."
  			print "It's scary..."
  			return "cave"
  	
  class LotusLeaf(Pool):
  	
  	def goto(self):
  		print "Hey, there is a green stuff on the lotus leaf!"
  		raw_input()
  		print "She has 4 legs and no tail."
  		raw_input()
  		print "Maybe she know something about my mom."
  		raw_input()
  		print "I shouted:\"Do you know my mom?\""
  		raw_input()
  		print "She jump to me and look up and down."
  		raw_input()
  		print "\"GUA~, I don't know. I am just a young lady.\""
  		raw_input()
  		print "\"I am also waiting for my children.\""
  		raw_input()
  		print "\"It is my first time to be a mother\""
  		raw_input()
  		print "\"I hope you are my child, you are so cute.\""
  		raw_input()
  		print "\"But we look so different. Unless you can  convince me with a sentence.\""
  		raw_input()
  		print "\"Maybe you can swim to the shore and ask Mrs Duck.\""
  		raw_input()
  		
  		direction = raw_input("Ok, let me see.> [You can type in 'shore' or other sentences]")
  		
  		if direction == "shore":
  			print "\nI will go to Shore. Thank you."
  			return "shore"
  		elif direction == "Tadpole is the child of frog.":
  			print "\n\"Oh you are my child! I understand!\"\n"
  			print "\"You born with black skin and little tail!\""
  			raw_input()
  			print "\"But when you grow up you become a green skin frog!\"\n"
  			print "\"I remember what I look like when I am a baby!\""
  			raw_input()
  			print "\"Thank God! I finally found my baby! I am a so stupid mom!\"\n"
  			print "There are thousands of brothers and sisters in the cave I born."
  			raw_input()
  			print "Mom, let me take you to all you kids.\n"
  			print "\n\n\n HAPPY ENDING!"
  			exit(0)
  		else:
  			print "It's scary..."
  			return "cave"
  			
  	def frog(self):
  		print "But how to confirm that I am you mom?"
  #		if
  		print "Yes, I am your mom."
  		return exit(0)
  #		else:
  	
  class Shore(Pool):
  
  	def goto(self):
  		print "I can see a yellow stuff on the shore.\n"
  		print "She can't be my mom, I am black and she is yellow."
  		raw_input()
  		print "But I should ask for more clues of my mom.\n"
  		print "Hello, Mrs Duck! Do you know my mom?"
  		raw_input()
  		print "She shake her head: \"Sorry I don't konw.\"\n"
  		print "\"But I think your mom must live in water.\""
  		raw_input()
  		print "\"And I heard that she has four legs.\"\n"
  		print "\"You can go to marsh or branch to ask for more clues.\""
  		raw_input()
  		
  		direction = raw_input("Where should I go next > [choose marsh or branch]")
  		
  		if direction == "marsh":
  			print "\nI will go to Marsh."
  			return "marsh"
  		elif direction == "branch":
  			print  "\nI will go to Branch."
  			return "branch"
  		else:
  			print "\nI am a little tied. I need to go back to have a rest."
  			return "cave"
  			
  	def duck(self):
  		print "Give some clue"
  		return
  	
  class Marsh(Pool):
  
  	def goto(self):
  		print "This place seems not so good.\n"
  		print "Something are spy on me."
  		raw_input()
  		print "!!!!"
  		raw_input()
  		print "There is a big black creature with four legs and dark skin.\n"
  		print "She maybe my mom!"
  		raw_input()
  		print "Hello, are you my mom?\n"
  		print "\"No, I don't have child so weak!\""
  		raw_input()
  		print "\"But you look delicous, Ahahahah!\""
  		raw_input()
  		print "Oh NOOOOOOO!"
  		raw_input()
  		print "\n\n\nYou are dead in a crocodile's mouth.\n"
  		print "\n\nBut another bro/sis of you wake up in the cave.\n"
  		print "The journey start again......"
  		return "cave"
  	
  	def crocodile(self):
  		print "Greedy and you die."
  		return
  
  class Branch(Pool):
  	
  	def goto(self):
  		print "I can see a hairy creature on the tree.\n"
  		print "\"Hello, do you know something about my mom?\""
  		raw_input()
  		print "The hairy creature shouted:\"I am a monkey. I am the most wisdom animal around the pool.\""
  		raw_input()
  		print "\"I know your mother. She has green skin and  with no tail!\""
  		raw_input()
  		print "\"Never go to the marsh! There hide the crocodile!\""
  		raw_input()
  		print "\"They are bad guys!\""
  		raw_input()
  		print "\"Many of you have been eaten by them!\""
  		raw_input()
  		print "\"You should ask birds on the sky. They can see your mom!\""
  		raw_input()
  		print "\"You can also ask fish under water. They are familiar with you mom!\"\n"
  		
  		direction = raw_input("I look >[choose up or down]")
  		
  		if direction == "up":
  			print "\nI can see birds flying."
  			return "sky"
  		elif direction == "down":
  			print "\nI can see fish under water."
  			return "under_water"
  		else:
  			print "\nI am too tired, mom is not so important.\n"
  			print "I want to go to my cave and sleep for a while."
  			return "cave"
  			
  	def monkey(self):
  		print "wisdom and give some clue."
  		return
  	
  class Sky(Pool):
  
  	def goto(self):
  		print "Birds!Birds! Can you see my mom?\n"
  		print "\"YES! You mother stood on the lotusleaf a moment ago!\""
  		raw_input()
  		print "\"But I am not sure she is still there waiting for you.\"\n"
  		print "\"And you look so different with your mom.\""
  		raw_input()
  		print "\"I think you need some words to convince her.\"\n"
  		print "Oh, thank you! I will decide where to go!"
  		raw_input()
  		
  		direction = raw_input("Then I should go to ?? or look ??> [please type in a word]")
  		
  		if direction == "lotusleaf":
  			print "\nI am coming for you! MOM! Waiting for me!!"
  			return "lotusleaf"
  		elif direction == "down":
  			print "\nBirds are right, I need to convince my mom.\n"
  			print "Maybe fish know something!"
  			return "under_water"
  		else:
  			print "Oh no! my mom is not there.\n"
  			print "It's dangous outside!I should go back to the cave.\n"
  			print "Waiting for next day..."
  			return "cave"
  	
  	def bird(self):
  		print "Give some direction."
  		return
  	
  class UnderWater(Pool):
  
  	def goto(self):
  		print "Fish!Fish! Are you familar with my mom?\n"
  		print "\"YES! your mom is young and is a amauter mom!\""
  		raw_input()
  		print "\"You should tell her:\'Tadpole is the child of frog.\'\"\n"
  		print "\"Then she can understand why you look so different.\""
  		raw_input()
  		print "Oh you're really nice! Thank you!\n"
  		print "I know all the clues!"
  		raw_input()
  		
  		direction = raw_input("I will go back to >[type in a word]")
  		
  		if direction == "lotusleaf":
  			return "lotusleaf"
  		else:
  			print "Seems I get to another lotusleaf...\n"
  			print "Where is my mom...\n"
  			print "I better go back and cry for a while...5555"
  			return "cave"
  			
  	def fish(self):
  		return
  	
  class Map(object):
  	pool = {
  		"cave": Cave(),
  		"lotusleaf":LotusLeaf(),
  		"shore": Shore(),
  		"marsh": Marsh(),
  		"branch": Branch(),
  		"sky": Sky(),
  		"under_water": UnderWater()		
  		}
  	def __init__(self, start):
  		self.start = start 
  	def get_key_value(self, key):
  		return Map.pool.get(key)
  	def enter(self):
  		return self.get_key_value(self.start)
  		
  class Engine(object):
  	
  	def __init__(self, start_site):
  		self.start_site = start_site
  	
  	def play(self):
  		current_scene = self.start_site.enter()
  		
  		while True:
  			print "\n-----------------"
  			next_scene_name = current_scene.goto()
  			current_scene = self.start_site.get_key_value(next_scene_name)
  		
  input = Map("cave")
  key_value = Engine(input)
  print "\n----------------Game Rules---------------\n"
  print "[1.Type in some words after sentence like 'I will choose> [type in a word]']\n"
  print "[2.You win the game until 'HAPPY ENDING' show up or you will fall into a loop!]\n"
  print "[3.Type wrong will waste the efforts already made! Be caraful!]"
  print "\n----------------Attentions---------------\n"
  print "[1.Please type 'enter' button to the next sentence]\n"
  print "[2.Don't too fast or you will miss the type in step and go back to start point!]\n"
  print "[3.Be careful for clues!]\n"
  
  print "Game Start!"
  key_value.play()
  
  ```

  ##### 35.继承与合成

  继承

  ```python
  class Parent(object): ##在定义class时，需要在括号内写object
  	
  	def override(self): ##在定义类中函数时，需要在括号内写self，如果还有其他参数传入该类，并且需要添加初始值，则将__init__函数，设置为该类第一个函数，承接传入参数
  		print "PARENT override()"
  		
  	def implicit(self): ##当定义类中其他函数时，传递的临时参数可以直接添加参数名在括号中，并在该函数下使用
  		print "PARENT implicit()"
  		
  	def altered(self):
  		print "PARENT altered()"
  		
  class Child(Parent):
  	
  	def override(self):
  		print "CHILD override()"
  		
  	def altered(self):
  		print "CHILD, BEFORE PARENT altered()"
  		super(Child, self).altered() ## use def .altered() out of Child
  		print "CHILD, AFTER PARENT altered()"
  		
  dad = Parent()
  son = Child()
  
  dad.implicit()
  son.implicit() ##继承则只要在子类的参数里加上父类名，就可以直接使用父类的功能
  
  dad.override()
  son.override() ##如果子类没有该功能，是隐式继承；如果子类和父类具有同名功能，则优先使用子类功能
  
  dad.altered() 
  son.altered() ##super(子类名, self).xxx()，可以引用上一级除了自己类，其他类中的xxx功能
  ```

  合成

  ```python
  class Other(object):
  	
  	def override(self):
  		print "OTHER override()"
  	
  	def implicit(self):
  		print "OTHER implicit()"
  	
  	def altered(self):
  		print "OTHER altered()"
  		
  class Child(object):
  	
  	def __init__(self):
  		self.other = Other() ##合成需要在你所引用的类中，将你所需要用的功能所在的类实例化
  		
  	def implicit(self):
  		self.other.implicit()
  		
  	def override(self):
  		self.other.override()
  	
  	def altered(self):
  		print "CHILD, BEFORE OTHER altered()"
  		self.other.altered()
  		print "CHILD, AFTER OTHER altered()"
  		
  son = Child()
  
  son.implicit()
  son.override()
  son.altered()
  ```

##### 36.项目框架

+ 项目文件夹以及setup.py

  + 项目文件夹

    ```python
    C:.
    └─projects
        ├─game.tadpole
        │  ├─bin
        │  ├─docs
        │  ├─tadpole
        │  └─tests
        └─skeleton
            ├─bin
            ├─docs
            ├─NAME
            └─tests
            
    Mode                LastWriteTime         Length Name
    ----                -------------         ------ ----
    d-----         2020/3/9     21:33                bin
    d-----         2020/3/9     21:33                docs
    d-----        2020/3/10     13:04                tadpole
    d-----        2020/3/10     13:11                tests
    -a----        2020/3/10     13:07            448 setup.py
    ```

  + setup.py

    ```python
    try:
    	from setuptools import setup
    	
    except ImportError:
    	from distutil.core import setup
    	
    config = {
    	'description': 'textgame_tadpole_look_for_mom',
    	'auther': 'Taoyuhuan',
    	'url': 'URL to get it at.',
    	'download_url': 'Where to download it.',
    	'author_email': 'tyh19@mails.tsinghua.edu.cn',
    	'version': '0.1',
    	'install_requires': ['nose'],
    	'packages': ['tadpole'],
    	'scripts': [], #指定可执行脚本,安装时脚本会被安装到系统 PATH 路径下
    	'name': 'game.tadpole'
    }
    
    setup(**config)
    ```

+ 项目所需安装包

- [x] [pip](http://pypi.python.org/pypi/pip) `get-pip.py` also installs [setuptools](https://packaging.python.org/key_projects/#setuptools) [2](https://pip.pypa.io/en/stable/installing/#id8) and [wheel](https://packaging.python.org/key_projects/#wheel) if they are not already. [setuptools](https://packaging.python.org/key_projects/#setuptools) is required to install [source distributions](https://packaging.python.org/glossary/#term-source-distribution-or-sdist).

  ```python
  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  ## go to the folder with get-pip.py
  python get-pip.py
  ```

- [x] [distribute](http://pypi.python.org/pypi/distribute) This package is a simple compatibility layer that installs Setuptools 0.7+.

- [x] [nose](http://pypi.python.org/pypi/nose/)  

  ```python
  python -m pip install nose
  ```

- [x] [virtualenv](http://pypi.python.org/pypi/virtualenv)

  ```python
  python -m pip install virtualenv ## always time out need VPN
  ```

+ #创建windows下可运行的python脚本（.exe）

  ```python
  python -m pip install --upgrade pip
  python -m pip install --upgrade setuptools # Command errored out with exit status 1: python setup.py egg_info Check the logs for full command output.先把pip和setuptools升级到最新
  python -m pip install pyinstaller #安装pyinstaller
  ```

+ 使用setup.py安装项目（package）

  ```python
  ##首先将项目文件夹名称、文件名称和setup.py中的对应修改完成，主要是NAME文件夹、test文件夹中的NAME_tests.py，将NAME修改为自己的项目名称，然后在项目总目录下填写setup.py
  try:
  	from setuptools import setup
  	
  except ImportError:
  	from distutil.core import setup
  	
  config = {
  	'description': 'textgame_tadpole_look_for_mom', # 简单描述
  	'author': 'Taoyuhuan',
  	'url': 'URL to get it at.',
  	'download_url': 'Where to download it.',
  	'author_email': 'tyh19@mails.tsinghua.edu.cn',
  	'version': '0.1', # 显示在pip list中的项目版本号
  	'install_requires': ['nose'], # 安装所需要的包
  	'packages': ['tadpole'], # 原位NAME，需要改为自己的项目名称，并且这个名称是脚本中所能调用的名称，一般是含有__init__.py的文件夹（即skeleton中的NAME文件夹）
  	'scripts': ['bin\helloworld_for_project_test.py'], # 放在bin目录下的python脚本
  	'name': 'tadpole', # 为显示在pip list中的安装包名称
      'py_modules': ['taoyuhuan']
  }
  
  setup(**config)
  ```

  ```powershell
  cd C:\Users\Tao\Desktop\mystuff\projects\tadpole
  python setup.py install # 显示Finished processing dependencies for game.tadpole==0.1
  # 显示无法找到file是因为在scripts列表中没有加上 bin\地址前缀
  卸载：
  pip uninstall tadpole ##通过setup.py安装的卸载不干净，会留下build、dist以及.egg-info文件夹
  ```

+ 写在tadpole文件夹[NAME文件夹]中的类下模组（功能）

  ```python
  class Taoyuhuan(object):
  
  	def taoyuhuan(self):
  		print "Hello, what's you name?"
  		name = raw_input("My name is > ")
  		print "Hello %s, say 'Hi' to python." % name
  		return 
  ```

+ 测试模组的脚本

  ```python
  from tadpole.taoyuhuan import Taoyuhuan
  
  a = Taoyuhuan()
  a.taoyuhuan()
  ```

  

### 03. trouble shooting

install package time out

```powershell
#use tsinghua mirror
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple　packagename

#update
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -U pakcagename

#configure
pip install pip -U
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```



error about ASCII

```python
# -*- coding: utf-8 -*-
#在python脚本上加入
```

define&use function

```python
1.函数定义是以def开始吗?
2.函数名称是以字符和下划线_组成吗?
3.函数名称是不是紧跟着(?
4.括号里是否包含参数?多个参数是否以逗号隔开?
5.参数名称是否有重复?（不能使用重复的参数名）
6.紧跟着参数的是不是括号和冒号):?
7.紧跟着函数定义的代码是否使用了4个空格的缩进(indent)?
8.函数结束的位置是否取消了缩进("dedent")?

9.调用函数时是否使用了函数的名称?
10.函数名称是否紧跟着(?
11.括号后有无参数?多个参数是否以逗号隔开?
12.函数是否以)结尾?
```

查询常见功能

```python
# in powershell
python -m pydoc file
python -m pydoc list
python -m pydoc xxxx #xxxx means something in pydoc
```

正常和异常退出程序

```python
exit(0) ##正常退出
exit(1) ##异常退出，且可以给不同的错误不同的标号
```

### 04. [练手项目](https://www.zhihu.com/question/29372574/answer/88744491)



### 05. [算法题目](https://leetcode-cn.com/)

数据结构

链表：

```python
class Node(object):
    def __init__(self, elem):
        self.elem = elem
        self.next = None

class SingleLinkList(object):
    def __init__(self, node = None):
        self.__head = node

    def is_empty(self):
        return self.__head == None

    def travel(self):
        cur = self.__head
        while cur != None:
            print(cur.elem),
            cur = cur.next
        print("")

    def length(self):
        cur = self.__head
        count = 0
        while cur != None:
            count += 1
            cur = cur.next
        return count

    def add(self, item):
        node = Node(item)
        node.next =self.__head
        self.__head = node

    def append(self, item):
        node = Node(item)
        if self.is_empty():
            self.__head = node
        else:
            cur = self.__head
            while cur.next != None:
                cur = cur.next
            cur.next = node

    def insert(self, pos, item):
        if pos <= 0:
            self.add(item)
        elif pos > (self.length()-1):
            self.append(item)
        else:
            cur = self.__head
            count = 0
            while count < (pos-1):
                count += 1
                cur = cur.next
            # exit while with cur stay at pos-1
            node = Node(item)
            node.next = cur.next
            cur.next = node
            # first attach cur.next to insert node(now the node.next), ligate to next
            # then rewrite cur.next with insert node, ligate to former

    def search(self, item):
        cur = self.__head
        while cur != None:
            if cur.elem == item:
                return True
            else:
                cur = cur.next
        return False

    def remove(self, item):
        cur = self.__head
        pre = None
        while cur != None:
            if cur.elem == item:
                if cur == self.__head:
                    self.__head = cur.next
                else:
                    pre.next = cur.next
                break
            else:
                pre = cur
                cur = cur.next

if __name__ == "__main__":
    ll = SingleLinkList()
    print(ll.is_empty())
    print(ll.length())
    ll.append(1)
    print(ll.is_empty())
    print(ll.length())
    ll.append(2)
    ll.add(8)
    ll.append(3)
    ll.append(4)
    ll.append(5)
    ll.append(6)
    ll.insert(-1, 9)
    ll.travel()
    ll.insert(3, 100)
    ll.travel()
    ll.insert(10, 200)
    ll.travel()
    ll.remove(100)
    ll.travel()
    ll.remove(9)
    ll.travel()
    ll.remove(200)
    ll.travel()
```

