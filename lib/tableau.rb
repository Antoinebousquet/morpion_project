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
		puts "#{ (" " * 4) + "1" + " |" + " " + @a.colorize(:red) + "  " + @d.colorize(:red) + "  " + @g.colorize(:red) + " |" }"
		puts "#{ (" " * 4) + "2" + " |" + " " + @b.colorize(:red) + "  " + @e.colorize(:red) + "  " + @h.colorize(:red) + " |" }"
		puts "#{ (" " * 4) + "3" + " |" + " " + @c.colorize(:red) + "  " + @f.colorize(:red) + "  " + @i.colorize(:red) + " |" }"
		puts "#{ (" " * 6) + "-----------" }"
	end
end