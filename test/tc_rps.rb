require 'rps'
require "test/unit"

class TestRockPaperScissors < Test::Unit::TestCase

  def setup
		#def test variable
	end

	def teardown
		#nothing to do
	end
#***********************************test de juego**************************
	def test_play_1
		30.times do
			assert correct_answer(RockPaperScissors.play('scissors'))
		end	
	end #acaba test_play
  
	def test_play_2
		30.times do
			assert correct_answer(RockPaperScissors.play('paper'))
  		end #acaba test_play
  end

  def test_play_3
    30.times do
  		assert correct_answer(RockPaperScissors.play('rock'))
  	end  	
	end #acaba test_play

#******************** Wrong play ****************************************
 	def test_wrong_play
  	assert_raises(SyntaxError){RockPaperScissors.play('huracan')}
 	end

#********** Ver si las respuestas no se repiten *************************
 	def correct_answer(x)
 		return true if x =- /Empate: /
		#   return true if x =-  /Gana maquina. Maquina #{computer_throw} versus Jugador #{player_throw} /    
 	end
end