class Game
	attr_accessor :tr

	def initialize
		# puts "salut, Joueur1 entre ton pseudo"
		# user1 = gets.chomp
		# puts "A ton tour d'entrer ton pseudo Joueur2"
		# user2 = gets.chomp
		# puts "#{user1},#{user2} vous allez combatre"
		# puts #
	end

	def choix
		# Compteur provisoire
		j = 0 

		# Tableau pour vérifier les cases occupées
		@case_array = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]

		# Variables
		@a = " "
		@b = " "
		@c = " "
		@d = " "
		@e = " "
		@f = " "
		@g = " "
		@h = " "
		@i = " "

		# Boucle de choix
		while j < 9

			# Tout du 1er joueur
			if j % 2 == 0
				puts "Choisis une case J1 :"
				choix = gets.chomp

				while @case_array.include?(choix) == false
					puts "pas possible, recommence J1 !"
					puts "Choisis une case J1 à nouveau :"
					choix = gets.chomp
				end

					if choix == "A1"
						@a = "X"
					elsif choix == "A2"
						@b = "X"
					elsif choix == "A3"
						@c = "X"
					elsif choix == "B1"
						@d = "X"
					elsif choix == "B2"
						@e = "X"
					elsif choix == "B3"
						@f = "X"
					elsif choix == "C1"
						@g = "X"
					elsif choix == "C2"
						@h = "X"
					elsif choix == "C3"
						@i = "X"
					end

				@case_array.delete(choix)

				puts "#{ " " * 5 + "A" + "B" + "C" }"
				puts "#{ (" " * 4) + "1" + @a + @d + @g }"
				puts "#{ (" " * 4) + "2" + @b + @e + @h }"
				puts "#{ (" " * 4) + "3" + @c + @f + @i }"
				
				j += 1

			if 
				(@a == "X" && @b == "X" && @c == "X") || (@a == "X" && @d == "X" && @g == "X") || (@d == "X" && @e == "X" && @f == "X") || (@g == "X" && @h == "X" && @i == "X") || (@b == "X" && @h == "X" && @e == "X") || (@c == "X" && @f == "X" && @i == "X") || (@a == "X" && @e == "X" && @i == "X") || (@c == "X" && @e == "X" && @i == "X") 
				puts "Tu as gagné J1 !"
				break
			end

			# Tout du 1er joueur
			else j % 2 == 1
				puts "Choisis une case J2 :"
				choix = gets.chomp

				while @case_array.include?(choix) == false
					puts "pas possible, recommence J2 !"
					puts "Choisis une case J2 à nouveau :"
					choix = gets.chomp
				end

					if choix == "A1"
						@a = "O"
					elsif choix == "A2"
						@b = "O"
					elsif choix == "A3"
						@c = "O"
					elsif choix == "B1"
						@d = "O"
					elsif choix == "B2"
						@e = "O"
					elsif choix == "B3"
						@f = "O"
					elsif choix == "C1"
						@g = "O"
					elsif choix == "C2"
						@h = "O"
					elsif choix == "C3"
						@i = "O"
					end

				@case_array.delete(choix)

				puts "#{ " " * 5 + "A" + "B" + "C" }"
				puts "#{ (" " * 4) + "1" + @a + @d + @g }"
				puts "#{ (" " * 4) + "2" + @b + @e + @h }"
				puts "#{ (" " * 4) + "3" + @c + @f + @i }"

				j += 1

				if 
					(@a == "O" && @b == "O" && @c == "O") || (@a == "O" && @d == "O" && @g == "O") || (@d == "O" && @e == "O" && @f == "O") || (@g == "O" && @h == "O" && @i == "O") || (@b == "O" && @h == "O" && @e == "O") || (@c == "O" && @f == "O" && @i == "O") || (@a == "O" && @e == "O" && @i == "O") || (@c == "O" && @e == "O" && @i == "O") 
					puts "Tu as gagné J2 !"
				break
				end

			end
		end
	end
end

