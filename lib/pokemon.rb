require 'pry'

class Pokemon
  attr_accessor :name, :type, :db, :id
  
  @@all = []
  
  def initialize(name: name, type: type, db: db, id: id)
    @name = name
    @type = type
    @db = db
    @id = id
  end
 
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
 def self.find(id, db)
    pokarray = db.execute("SELECT * FROM pokemon WHERE id=?", id)
    Pokemon.new(id: pokarray[0], name: pokarray[1], type: pokarray[2])
    binding.pry
 end
  
end