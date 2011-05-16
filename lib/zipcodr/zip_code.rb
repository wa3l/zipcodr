module Zipcodr
  class ZipCode
    Zipcodr::columns.each {|field| attr_accessor field.to_sym }
    attr_reader :record

    def initialize(zip)
      row = Zipcodr::row(zip)
      return nil if row.nil?
      record = row
    end

    def valid?
      record.kind_of?(Hash) && record.has_key?(:zip)
    end

    def record=(row)
      @record = {}
      Zipcodr::columns.each_with_index do |f, i|
        @record[f.to_sym] = row[i]
        self.instance_variable_set("@#{f.to_s}".to_sym, row[i])
      end
    end
  end
end