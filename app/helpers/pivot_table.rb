include ActionView::Helpers::NumberHelper

module PivotTable
  class PivotTable
    def initialize(column_type)
      @column_type = column_type
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
    
    def toJSON()
      @result = {
        column_type: @column_type,
        column_headers: @column_headers,
        row_headers: @row_headers,
        data: @data,
        row_averages: (0..height-1).map { |row_index| average_row(row_index) },
        row_totals: (0..height-1).map { |row_index| sum_row(row_index) },
        column_totals: (0..width-1).map { |column_index| sum_column(column_index) },
        average: average,
        total: sum
      }
      # @result.push(["Category"] + @column_headers << "Average" << "Total")
      # (0..height-1).each { |row_index| @result.push([@row_headers[row_index]] + @data[row_index] << average_row(row_index) << sum_row(row_index))}
      # @result.push(["Total"] + (0..width-1).map{|c| sum_column(c)} << average << sum)
      # @result["row_averages"] = (0..@row_headers.length-1).map {|r| average_row(r)}
      # @result["row_sums"] = (0..@row_headers.length-1).map {|r| sum_row(r)}
      # @result["column_sums"] = (0..@column_headers.length-1).map {|r| sum_column(r)}
      # @result["table_name"] = @table_name
      # @result["row_headers"] = @row_headers
      # @result["column_headers"] = @column_headers
      # @result["data"] = @data
      return @result
    end
    
    def sum_row(index)
      @data[index].map{|x| x ? x.to_f : 0}.sum
    end
    
    def average_row(index)
      @data[index].map{|x| x ? x.to_f : 0}.inject{|sum,x| sum += x} / width
    end
    
    def sum_column(index)
      @data.map{|x| x[index] ? x[index].to_f : 0}.sum
    end
    
    def average
      # average total per column
      width > 0 ? @data.map{|x| x.map{|y| y ? y.to_f : 0}.sum}.sum / width : 0
    end
    
    def sum
      @data.map{|x| x.map{|y| y ? y.to_f : 0}.sum}.sum
    end
    
    def sort_rows!
      # Create a hash of row headers and row data
      mapped = Hash.new
      (0..height-1).each do |ri|
        rh = @row_headers[ri].nil? ? "Uncategorized" : @row_headers[ri]
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
        #@data[@row_headers.index(key)][-1] = number_to_currency(value, :precision => 0, :delimiter => " ", :format => "%n", :separator => ",")
        @data[@row_headers.index(key)][-1] = value
      end
    end
  end
end