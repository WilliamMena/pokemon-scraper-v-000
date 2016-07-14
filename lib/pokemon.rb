class Pokemon

attr_accessor :id, :name, :type, :db
@@pokemon = []


def initialize(id, name, type, db)
  @id = id
  @name = name
  @type = type
  @db = db
  @@pokemon << self
end

def self.save(name, type, database_connection)
  database_connection.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?)",@id, name, type)
end

def self.find(id, db)
  db.execute("SELECT * FROM pokemon WHERE id = ?", id)
end

def self.alter_hp(id, hp, db)
  db.execute("UPDATE pokemon SET hp = ?", hp)
end


end
