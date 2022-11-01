class Student < ActiveRecord::Base
end

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/students.sqlite"
)

sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY
    )
SQL

ActiveRecord::Base.connection.execute(sql)
  
  

