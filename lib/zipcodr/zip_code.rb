module Zipcodr
  
  class ZipCode
    Zipcodr::columns.each {|field| attr_accessor field.to_sym }

    def initialize(row)
      return nil if row.nil?
      Zipcodr::columns.each_with_index do |field, index|
        self.instance_variable_set("@#{field.to_s}".to_sym, row[index])
      end
    end

    def valid?
      !zip.nil?
    end
  end

end