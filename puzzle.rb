class Puzzle
  attr_reader :puz, :height, :width, :space

  def initialize(width, height)
    @width = width
    @height = height
    @space = ((width * height / 2) + 1)
    @puz = Array.new(width) {Array.new(height)}
    count = 1
    row = 0
    while row < @puz.count
      col = 0
      while col < @puz[row].count
        @puz[row][col] = count
        if @puz[row][col] == @space
          @puz[row][col] = " "
        end
        col += 1
        count += 1
      end
      row += 1
    end
  end

  def set_puzzle()
    # SET THE NUMBERS OF THE PUZZLE ------------- TODO
  end

  def get_puzzle()
    return @puz
  end

  def move_up()
    row = 0
    while row < @puz.count
      col = 0
      while col < @puz[row].count
        if @puz[row][col] == ' '
          if (row - 1) >= 0
            @puz[row][col], @puz[row - 1][col] = @puz[row - 1][col], @puz[row][col]
            return
          end
        end
        col += 1
      end
      row += 1
    end
  end

  def move_down()
    row = 0
    while row < @puz.count
      col = 0
      while col < @puz[row].count
        if @puz[row][col] == ' '
          if (row + 1) < @puz.count
            @puz[row][col], @puz[row + 1][col] = @puz[row + 1][col], @puz[row][col]
            return
          end
        end
        col += 1
      end
      row += 1
    end
  end

  def move_left()
    row = 0
    while row < @puz.count
      col = 0
      while col < @puz[row].count
        if @puz[row][col] == ' '
          if (col - 1) >= 0
            @puz[row][col], @puz[row][col - 1] = @puz[row][col - 1], @puz[row][col]
            return
          end
        end
        col += 1
      end
      row += 1
    end
  end

  def move_right()
    row = 0
    while row < @puz.count
      col = 0
      while col < @puz[row].count
        if @puz[row][col] == ' '
          if (col + 1) < @puz[row].count
            @puz[row][col], @puz[row][col + 1] = @puz[row][col + 1], @puz[row][col]
            return
          end
        end
        col += 1
      end
      row += 1
    end
  end

  def solve()
    initialize(width, height)
  end

  def scramble()
    counter = 0
    scramble_array = []
    row = 0
    while row < @puz.count
      col = 0
      while col < @puz[row].count
        counter += 1
        scramble_array << counter
        col += 1
      end
      row += 1
    end
    row = 0
    while row < @puz.count
      col = 0
      while col < @puz[row].count
        random_num = scramble_array.sample
        @puz[row][col] = random_num
        if random_num == @space
          @puz[row][col] = " "
        end
        scramble_array.delete(random_num)
        col += 1
      end
      row += 1
    end
  end

  def to_s
    ret_str = ""
    @puz.each do |row|
      ret_str += row.join(" ") + "\n"
    end
    return ret_str
  end

  def run_puzzle()
    user_input = 0
    while user_input != "ESC"
      print self.to_s
      puts
      print("^^- U, D, L, R, ESC-^^: ")
      puts
      user_input = gets.upcase.chomp
      case user_input
        when "U"
          self.move_up
        when "D"
          self.move_down
        when "L"
          self.move_left
        when "R"
          self.move_right
        else
          return
      end
    end
  end
end

=begin
p = Puzzle.new(3, 3)
puts p.to_s
puts p.scramble
puts p.to_s
puts p.scramble
puts p.to_s
puts p.scramble
puts p.to_s
puts p.scramble
puts p.to_s
puts p.scramble
puts p.to_s
puts p.scramble
puts p.to_s
=end

=begin
p = Puzzle.new(3, 3)
puts p.to_s
puts
p.move_up
puts p.to_s
puts
p.move_left
puts p.to_s
puts
p.move_down
puts p.to_s
puts
p.move_down
puts p.to_s
puts
p.move_right
puts p.to_s
puts
p.move_up
puts p.to_s
puts
p.move_left
puts p.to_s
puts
p.move_up
puts p.to_s
puts
p.solve
puts p.to_s
puts p.get_puzzle
p.run_puzzle
=end