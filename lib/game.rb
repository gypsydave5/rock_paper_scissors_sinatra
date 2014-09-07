class Game

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@players = [@player1, @player2]
		@picks = [normalize(@player1.pick), normalize(@player2.pick)].sort
	end

	BEATS = {rock: [:scissors, :sinatra], scissors: [:paper, :sinatra], paper: [:rock,:dino], sinatra: [:paper, :dino], dino: [:scissors, :rock]}

	attr_reader :players, :player1, :player2, :picks

	def winner
		return "Draw" if player1.pick == player2.pick
		return player1 if BEATS[normalize(player1.pick)].include?(normalize(player2.pick))
		player2
	end

	def normalize(pick)
		pick.downcase.to_sym
	end

	def results
		case picks
			when [:paper, :scissors]
				:scissors_paper
			when [:paper, :rock]
				:paper_rock
			when [:rock, :sinatra]
				:rock_sinatra
			when [:sinatra, :dino]
				:sinatra_dino
			when [:dino, :scissors]
				:dino_scissors
			when [:scissors, :sinatra]
				:scissors_sinatra
			when [:paper, :sinatra]
				:sinatra_paper
			when [:dino, :paper]
				:paper_dino
			when [:dino, :rock]
				:dino_rock
			when [:rock, :scissors]
				:rock_scissors
			else
				:draw
		end
	end
end