require_relative 'tableau'

class Game

	# Initialiser le jeu avec le nom des deux joueurs
	def initialize

		# Tableau pour vérifier les cases occupées
		@case_array = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]

		# On initialise un tableau
		@tableau_de_la_partie = Tableau.new

		# Initialiser le jeu
		puts "Bienvenue dans le jeu hautement stratégique du morpion !"
		puts #
		puts #
		puts #
		puts "Quel est le nom du premier joueur ?"
		@player_1 = gets.chomp
		puts #
		puts "Et le nom du second joueur ?"
		@player_2 = gets.chomp
		puts #
		puts "#{@player_1}, #{@player_2}, bon jeu à tous les deux !"
		puts #

		# On affiche un tableau vide
		@tableau_de_la_partie.show_game
	end

	def choix
		# Compteur de tour
		j = 0 

		# Boucle de choix
		while j < 9

			# Pour faire de la place
			puts #
			puts #
			puts #

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
						@tableau_de_la_partie.a = "X"
					elsif choix == "A2"
						@tableau_de_la_partie.b = "X"
					elsif choix == "A3"
						@tableau_de_la_partie.c = "X"
					elsif choix == "B1"
						@tableau_de_la_partie.d = "X"
					elsif choix == "B2"
						@tableau_de_la_partie.e = "X"
					elsif choix == "B3"
						@tableau_de_la_partie.f = "X"
					elsif choix == "C1"
						@tableau_de_la_partie.g = "X"
					elsif choix == "C2"
						@tableau_de_la_partie.h = "X"
					elsif choix == "C3"
						@tableau_de_la_partie.i = "X"
					end

				@case_array.delete(choix)
				@tableau_de_la_partie.show_game
				
				j += 1

			if 
				(@tableau_de_la_partie.a == "X" && @tableau_de_la_partie.b == "X" && @tableau_de_la_partie.c == "X") || (@tableau_de_la_partie.a == "X" && @tableau_de_la_partie.d == "X" && @tableau_de_la_partie.g == "X") || (@tableau_de_la_partie.d == "X" && @tableau_de_la_partie.e == "X" && @tableau_de_la_partie.f == "X") || (@tableau_de_la_partie.g == "X" && @tableau_de_la_partie.h == "X" && @tableau_de_la_partie.i == "X") || (@tableau_de_la_partie.b == "X" && @tableau_de_la_partie.h == "X" && @tableau_de_la_partie.e == "X") || (@tableau_de_la_partie.c == "X" && @tableau_de_la_partie.f == "X" && @tableau_de_la_partie.i == "X") || (@tableau_de_la_partie.a == "X" && @tableau_de_la_partie.e == "X" && @tableau_de_la_partie.i == "X") || (@tableau_de_la_partie.c == "X" && @tableau_de_la_partie.e == "X" && @tableau_de_la_partie.i == "X") 
				puts #
				puts #
				puts #
				puts "Bravo #{@player_1}, tu as gagné !"
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
						@tableau_de_la_partie.a = "O"
					elsif choix == "A2"
						@tableau_de_la_partie.b = "O"
					elsif choix == "A3"
						@tableau_de_la_partie.c = "O"
					elsif choix == "B1"
						@tableau_de_la_partie.d = "O"
					elsif choix == "B2"
						@tableau_de_la_partie.e = "O"
					elsif choix == "B3"
						@tableau_de_la_partie.f = "O"
					elsif choix == "C1"
						@tableau_de_la_partie.g = "O"
					elsif choix == "C2"
						@tableau_de_la_partie.h = "O"
					elsif choix == "C3"
						@tableau_de_la_partie.i = "O"
					end

				@case_array.delete(choix)
				@tableau_de_la_partie.show_game

				j += 1

				if 
					(@tableau_de_la_partie.a == "O" && @tableau_de_la_partie.b == "O" && @tableau_de_la_partie.c == "O") || (@tableau_de_la_partie.a == "O" && @tableau_de_la_partie.d == "O" && @tableau_de_la_partie.g == "O") || (@tableau_de_la_partie.d == "O" && @tableau_de_la_partie.e == "O" && @tableau_de_la_partie.f == "O") || (@tableau_de_la_partie.g == "O" && @tableau_de_la_partie.h == "O" && @tableau_de_la_partie.i == "O") || (@tableau_de_la_partie.b == "O" && @tableau_de_la_partie.h == "O" && @tableau_de_la_partie.e == "O") || (@tableau_de_la_partie.c == "O" && @tableau_de_la_partie.f == "O" && @tableau_de_la_partie.i == "O") || (@tableau_de_la_partie.a == "O" && @tableau_de_la_partie.e == "O" && @tableau_de_la_partie.i == "O") || (@tableau_de_la_partie.c == "O" && @tableau_de_la_partie.e == "O" && @tableau_de_la_partie.i == "O") 
					puts #
					puts #
					puts #
					puts "Bravo #{@player_2}, tu as gagné !"
				break
				end

			end
		end
	end
end

