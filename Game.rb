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
	
		puts "1--> Marksman"
		puts "2--> Rifleman"
		puts "3--> Scout"
		puts "4--> Sniper"
		puts "5--> Machine Gunner"
		
		$class = gets.chomp
		
		if $class == "1"
		
			puts "You have chosen the Marksman class"
			puts "The marksman is a medium to long range soldier"
		
			puts "Are you sure you want to be a marksman? y/n"
			confirm = gets.chomp
			
			if confirm == "y"
			
				classSelect = true
				
			end
			
		elsif $class == "2"
		
			puts "You have chosen the Rifleman class"
			puts "The rifleman is a close to medium range soldier with usually armed with automatic rifle."
		
			puts "Are you sure you want to be a rifleman? y/n"
			confirm = gets.chomp
			
			if confirm == "y"
			
				classSelect = true
				
			end
			
		elsif $class == "3"
		
			puts "You have chosen the Scout class"
			puts "The scout is effective at either short or long ranges, depending on how they choose their loadout."		
			
			puts "Are you sure you want to be a scout? y/n"
						
			confirm = gets.chomp
			
			if confirm == "y"
			
				classSelect = true
				
			end
			
			
		elsif $class == "4"
		
			puts "You have chosen the Sniper class"
			puts "Snipers are capable of long range fire with very large weapons"
		
			puts "Are you sure you want to be a sniper? y/n"
			confirm = gets.chomp
			
			if confirm == "y"
			
				classSelect = true
				
			end
			
			
		elsif $class == "5"
		
			puts "You have chosen the Machine gunner class"
			puts "Machine gunners are very effective at close to medium range but are the slowest of all the classes"
		
			puts "Are you sure you want to be a machine gunner? y/n"
			confirm = gets.chomp
			
			if confirm == "y"
			
				classSelect = true
				
			end
			
		end
		
	end
	
end

#Allocates the user traits
def allocateTraits

	if $class == 1 #Marksman
		$str=11
		$dex=12
		$con=11
		$int=11
		$wis=10
		$cha=10
		
		

	elsif $class == 2 #Rifleman
		$str=10
		$dex=11
		$con=11
		$int=10
		$wis=10
		$cha=10

	elsif $class == 3 #Scout
		$str=10
		$dex=10
		$con=10
		$int=10
		$wis=10
		$cha=10

	elsif $class == 4 #Sniper
		$str=10
		$dex=10
		$con=10
		$int=10
		$wis=10
		$cha=10

	elsif $class == 5 #Machine Gunner
		$str=14
		$dex=8
		$con=12
		$int=9
		$wis=10
		$cha=10

	end

end

puts hello

print "hello ", $name,"\n"

puts playerMakeMenu

