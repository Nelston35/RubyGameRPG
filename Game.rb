#Gets the user name of the player
def hello 
	puts "hello and welcome to my game!"
	puts "What is your name?"
	
	$name = gets.chomp
end

#Asks the user for the name of their class 
def playerMakeMenu
	puts "Now you must decide what type of character you are going to play as"
	puts "You must first choose a class"
	
	classSelect = false
	
	while classSelect == false do
	
		puts "1--> Soldier - a battle ready fighter with no equal in combat."
		puts "2--> Scout - an explorer most at home on the fringes of space."
		puts "3--> Scoundrel - a skillful rogue that gets by on stealth and guile."
		
		$class = gets.chomp
		
		if $class == "1"
		
			puts "You have chosen the Soldier class"
			puts "The soldier has high health and can use all types of armor."
		
			puts "Are you sure you want to be a soldier? y/n"
			confirm = gets.chomp
			
			if confirm == "y"
			
				classSelect = true
				
			end
			
		elsif $class == "2"
		
			puts "You have chosen the Scout class"
			puts "The scout is a good balance of health, armor and speed."
		
			puts "Are you sure you want to be a rifleman? y/n"
			confirm = gets.chomp
			
			if confirm == "y"
			
				classSelect = true
				
			end
			
		elsif $class == "3"
		
			puts "You have chosen the Scoundrel class"
			puts "The scoundrel can only use light armor, and has relatively low health, but is much more agile and crafty than the other classes."		
			
			puts "Are you sure you want to be a scoundrel? y/n"
						
			confirm = gets.chomp
			
			if confirm == "y"
			
				classSelect = true
				
			end
			
		end
		
	end
	
end

#Allocates the user traits
def allocateTraits

	if $class == "1" #Soldier
		$lvl=1	#character level
		$str=8	#Strength
		$dex=8	#dexterity
		$con=8	#constitution
		$int=8	#intelligence
		$wis=8	#wisdom
		$cha=8	#charisma	
		$maxVit=10 #vitality
		$vit=10
		$atk=$lvl #base attack
		$defenseBonus=0 
		

	elsif $class == 2 #Scout
		$lvl=1	
		$str=8
		$dex=8
		$con=8
		$int=8
		$wis=8
		$cha=8
		$maxVit=8
		$vit=8
		$atk=($lvl*0.75) #base attack
		$defenseBonus=2

	elsif $class == 3 #Scoundrel
		$str=8
		$dex=8
		$con=8
		$int=8
		$wis=8
		$cha=8
		$maxVit=6
		$vit=6
		$atk=($lvl*0.75) #base attack
		$defenseBonus=4
		
	else
		$vit = 6
		$maxVit = 6
	

	end

end

def enemyCatalogue(enemy)

	if enemy == "bad guy"
	
		stats=["bad guy",1,8,8,8,8,8,8,10,1,0]
		#name,lvl,str,dex,con,int,wis,cha,vit,atk,defenseBonus
		#  0   1   2   3   4   5   6   7   8   9       10
	
	end
	
	return (stats)


end

def battleTest(en)

	puts "an enemy approaches! "
	print en[0]
	puts " prepares to attack!"
	puts ""
	

	battleOver=0
	
	while battleOver==0 do
	
		print $name," HP: ", $vit,"/",$maxVit
		puts ""
		print en[0]," HP: ", en[8]
		
		puts
		"
		#########################################
		# 1. Attack                2. Feats     #
		# 3. Items                 4. Talk		#
		# 5. Flee								#
		#										#
		#										#
		#										#
		#										#
		#########################################
	
		"
		sleep(10)
	
	end

end


puts hello

print "hello ", $name,"\n"

puts playerMakeMenu
puts allocateTraits

enemyReq = "bad guy"
enemy1= enemyCatalogue(enemyReq)



puts battleTest(enemy1)


