include ActionView::Helpers::NumberHelper

module PivotTable
  class PivotTable
    def initialize()
      @table_name = ""
      @row_headers = []
      @column_headers = []
      @data = []
    end
    
    def width()
      return @column_headers.length
    end
    
    def height()
      return @row_headers.length
    end
    
    def row_headers()
      return @row_headers
    end
    
    def column_headers()
      return @column_headers
    end
    
    def data()
      return @data
    end
    
    def sort_rows!
      # Create a hash of row headers and row data
      mapped = Hash.new
      (0..height-1).each do |ri|
        rh = @row_headers[ri].nil? ? "N/A" : @row_headers[ri]
        mapped[rh] = @data[ri]
      end
      # delete data
      @row_headers = []
      @data = []
      # insert data (sorted)
      mapped.sort.each do |rh, c|
        @row_headers.push(rh)
        @data.push(c)
      end
    end
    
    def add_column(header, hash)
      @column_headers.push(header)
      @data.each do |c|
        c.push(nil)
      end
      hash.each do |key, value|
        if @row_headers.index(key).nil?
          @row_headers.push(key)
          @data.push(Array.new(width()))
        end
        @data[@row_headers.index(key)][-1] = number_to_currency(value, :precision => 0, :delimiter => " ", :format => "%n", :separator => ",")
      end
    end
  end
end