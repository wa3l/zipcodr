module Zipcodr

  def self.find(zip)
    ZipCode.new self.query(zip)
  end

  def self.db
    db = self.open_db
    raise "Sorry, Invalid database." unless db.kind_of?(SQLite3::Database)
    db
  end

  def self.open_db
    db = File.dirname(__FILE__) + '/zipcodr.db'
    raise "Database is not present." unless File.exist?(db)
    SQLite3::Database.open(db)
  end

  def self.columns
    ['id', 'zip', 'zip_class', 'city', 'county', 'state', 'lat', 'long']
  end

  def self.query(zip)
    row = Zipcodr::db.execute("select * from zip_codes where zip = '#{zip.to_s}';").first
    return nil unless (row.kind_of?(Array) && row[1].to_s == zip.to_s)
    row
  end

end