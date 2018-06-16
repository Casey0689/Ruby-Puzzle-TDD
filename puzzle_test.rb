require_relative "puzzle.rb"
require 'test/unit'

class PuzzleTest < Test::Unit::TestCase

  def setup
    @puzzle = Puzzle.new(3, 3)
  end

  def test_create_puzzle
    assert_equal(Puzzle, @puzzle.class, "New Puzzle")
    assert_equal(3, @puzzle.height, "Height doesn't match")
    assert_equal(3, @puzzle.width, "Width doesn't match")
    assert_equal([[1, 2, 3], [4, " ", 6], [7, 8, 9]], @puzzle.puz, "Multi Array Of Numbers With a Space at Center")
    assert_equal(((@puzzle.width * @puzzle.height / 2) + 1), @puzzle.space, "Not the Puzzle's space")
  end

  def test_set_puzzle
    #assert_equal( , @puzzle.set_puzzle, "Rearrange the Puzzle")
  end

  def test_get_puzzle
    assert_equal([[1, 2, 3], [4, " ", 6], [7, 8, 9]], @puzzle.puz, "Returns the puzzle as is")
    @puzzle.move_up
    assert_equal([[1, " ", 3], [4, 2, 6], [7, 8, 9]], @puzzle.puz, "Returns the puzzle as is")
    @puzzle.move_left
    assert_equal([[" ", 1, 3], [4, 2, 6], [7, 8, 9]], @puzzle.puz, "Returns the puzzle as is")
  end

  def test_move_up
    assert_equal([[1, 2, 3], [4, " ", 6], [7, 8, 9]], @puzzle.puz, "Fresh Puzzle with Space at Center")
    @puzzle.move_up
    assert_equal([[1, " ", 3], [4, 2, 6], [7, 8, 9]], @puzzle.puz, "Move up / 'blank' and 2 trade places")
    @puzzle.move_up
    assert_equal([[1, " ", 3], [4, 2, 6], [7, 8, 9]], @puzzle.puz, "Nothing should change")
  end

  def test_move_down
    assert_equal([[1, 2, 3], [4, " ", 6], [7, 8, 9]], @puzzle.puz, "Fresh Puzzle with Space at Center")
    @puzzle.move_down
    assert_equal([[1, 2, 3], [4, 8, 6], [7, " ", 9]], @puzzle.puz, "Move down / 'blank' and 8 trade places")
    @puzzle.move_down
    assert_equal([[1, 2, 3], [4, 8, 6], [7, " ", 9]], @puzzle.puz, "Nothing should change")
  end

  def test_move_right
    assert_equal([[1, 2, 3], [4, " ", 6], [7, 8, 9]], @puzzle.puz, "Fresh Puzzle with Space at Center")
    @puzzle.move_right
    assert_equal([[1, 2, 3], [4, 6, " "], [7, 8, 9]], @puzzle.puz, "Move right / 'blank' and 6 trade places")
    @puzzle.move_right
    assert_equal([[1, 2, 3], [4, 6, " "], [7, 8, 9]], @puzzle.puz, "Nothing should change")
  end

  def test_move_left
    assert_equal([[1, 2, 3], [4, " ", 6], [7, 8, 9]], @puzzle.puz, "Fresh Puzzle with Space at Center")
    @puzzle.move_left
    assert_equal([[1, 2, 3], [" ", 4, 6], [7, 8, 9]], @puzzle.puz, "Move left / 'blank' and 4 trade places")
    @puzzle.move_left
    assert_equal([[1, 2, 3], [" ", 4, 6], [7, 8, 9]], @puzzle.puz, "Nothing should change")
    @puzzle.move_down
    assert_equal([[1, 2, 3], [7, 4, 6], [" ", 8, 9]], @puzzle.puz, "Move down / 'blank' and 7 trade places")
  end

  def test_solve
    assert_equal([[1, 2, 3], [4, " ", 6], [7, 8, 9]], @puzzle.puz, "Fresh Puzzle with Space at Center")
    @puzzle.move_left
    assert_equal([[1, 2, 3], [" ", 4, 6], [7, 8, 9]], @puzzle.puz, "Move left / 'blank' and 4 trade places")
    @puzzle.move_left
    assert_equal([[1, 2, 3], [" ", 4, 6], [7, 8, 9]], @puzzle.puz, "Nothing should change")
    @puzzle.move_down
    assert_equal([[1, 2, 3], [7, 4, 6], [" ", 8, 9]], @puzzle.puz, "Move down / 'blank' and 7 trade places")
    @puzzle.solve
    assert_equal([[1, 2, 3], [4, " ", 6], [7, 8, 9]], @puzzle.puz, "Puzzle is as it Started")
  end

  def test_scramble
    @puzzle.scramble
    assert_not_equal([[1, 2, 3], [4, " ", 6], [7, 8, 9]], @puzzle.puz, "Scramble the Puzzle")
  end

end