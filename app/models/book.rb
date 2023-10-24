class Book < ActiveRecord::Base
  ActiveRecord::Base.establish_connection(adapter:  "sqlite3", database: "../../db/development")
end
