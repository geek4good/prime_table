require "matrix"

module PrimeTable
  class MultiplicationTable
    PADDING_LEFT = 4
    PADDING_RIGHT = 1
    BORDER_DELIM = "|"

    attr_reader :across, :down

    def initialize(number_range)
      @across = @down = number_range.to_a
      @matrix = Matrix.build(number_range.size) { |row, col| across[col] * down[row] }
    end

    def to_s
      output = ""
      matrix.row_vectors.each_with_index do |row, index|
        output << format_row(row.to_a, index)
      end
      output
    end

    private

    attr_reader :matrix

    def format_row(row_data, row_index)
      input = [down[row_index], row_data, "\n"]
      input.unshift(["", across, "\n"]) if row_index.zero?

      input.flatten.each_with_object("") do |cell, out|
        out << format_cell(cell)
      end.squeeze(BORDER_DELIM)
    end

    def format_cell(cell)
      return cell if cell == "\n"

      "#{BORDER_DELIM}#{cell.to_s.rjust(padding)}#{' ' * PADDING_RIGHT}#{BORDER_DELIM}"
    end

    def padding
      @padding ||= begin
        all_values = matrix.to_a.flatten
        max = [all_values.min.abs, all_values.max.abs].max
        (Math.log10(max).floor + 1) + PADDING_LEFT
      end
    end
  end
end
