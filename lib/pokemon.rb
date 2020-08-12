class Pokemon
    attr_accessor :id, :name, :type, :database 
    
    def initialize(id=nil, name, type, database)
        @id = id
        @name = name
        @type = type
        @db = database 
    end 

    def self.create_table
        sql =  <<-SQL 
        CREATE TABLE IF NOT EXITS pokemon(id INTEGER PRIMARY KEY, name TEXT, type TEXT);
        SQL
        DB[:conn].execute(sql)
    end 
    def self.save(id, name, type)
        sql = <<-SQL
        INSERT INTO pokemon (id, name, type)
        VALUES (?, ?)
        SQL
        DB[:conn].execute(sql, self.name, self.type)
    end 



    

end
