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
    db.execute("INSERT INTO cats (name, type, db) VALUES (?, ?, ?)",name, type, db)
  end
  
 # def self.find(id)
    
 # end
  
end