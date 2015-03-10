require 'csv'
require 'pp'

#
# CSV.foreach('db/small_ken.csv') { |row|
#   #puts [row[1]] + row[2..3]
#   pp row
# }

Adress.destroy_all

CSV.foreach('db/small_ken.csv') { |row|
 a = Adress.create({code: row[2], prefecture: row[6], city: row[7], area: row[8]})
 pp a
  puts a.errors.full_messages
}