# frozen_string_literal: true

require_relative 'test_helper.rb'
require 'minitest/autorun'
require './lib/rps.rb'

class RpsTest < Minitest::Test
  include RockPaperScissors

  def test_computer_choice
    result = computer_choice
    puts "Computer returned #{result}"
    assert_instance_of String, result
  end

  def test_matching_move
    move = %w[r rock]
    result = play(move[0], move[1])
    assert result.include?('tie')
  end

  def test_rock_paper
    move = %w[r paper]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_rock_scissors
    move = %w[r scissors]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_paper_rock
    move = %w[p rock]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_paper_scissors
    move = %w[p scissors]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_scissors_rock
    move = %w[s rock]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_scissors_paper
    move = %w[s paper]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_random_computer_choice
    move = ['s']
    result = play(move[0])
    puts "Play outcome was: #{result}"
    assert result.include?('win')
  end

  def test_bad_input
    move = %w[huh paper]
    result = play(move[0], move[1])
    assert_equal 'Unrecognized move. Try again?', result
  end
end
