# frozen_string_literal: true

require_relative 'test_helper.rb'
require 'minitest/autorun'
require './lib/game.rb'

class GameTest < Minitest::Test
  def test_initialize
    new_game = Game.new('r')
    assert_instance_of Game, new_game
  end

  def test_result
    new_game = Game.new('s')
    puts "Game outcome: #{new_game.result}"
    assert_instance_of Game, new_game
    assert_instance_of String, new_game.result
  end

  def test_result_of_tie
    new_game = Game.new('s', 'scissors')
    assert_instance_of Game, new_game
    assert new_game.result.include?('tie')
  end
end
