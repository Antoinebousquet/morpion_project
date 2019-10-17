require_relative 'game'

class Tableau
	attr_accessor :a, :b, :c, :d, :e, :f, :g, :h, :i

	def initialize
		@a = " "
		@b = " "
		@c = " "
		@d = " "
		@e = " "
		@f = " "
		@g = " "
		@h = " "
		@i = " "
	end

	def show_game
		puts #
		puts #
		puts "#{ (" " * 8) + "A" + "  B" + "  C" }"
		puts "#{ (" " * 6) + "-----------" }"
		puts "#{ (" " * 4) + "1" + " |" + " " + @a + "  " + @d + "  " + @g + " |" }"
		puts "#{ (" " * 4) + "2" + " |" + " " + @b + "  " + @e + "  " + @h + " |" }"
		puts "#{ (" " * 4) + "3" + " |" + " " + @c + "  " + @f + "  " + @i + " |" }"
		puts "#{ (" " * 6) + "-----------" }"
	end
end