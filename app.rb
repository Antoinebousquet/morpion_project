# Informations de configuration
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/tableau'

game_1 = Game.new

game_1.choix

game_1.reinitialize

