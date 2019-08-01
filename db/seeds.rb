#  require 'csv'

#  csv_text = File.read(Rails.root.join('lib', 'seeds', 'records.csv'))
#  csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
#  csv.each do |row|

#     #t = Letter.create!(letter_number: row['letter_number'])
#     t = Letter.new
#     t.letter_number = row['letter_number']
#     t.save
#  end

#     csv_text = File.read(Rails.root.join('lib', 'seeds', 'records.csv'))
#     csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
#     csv.each do |row|
   
  
#     t = Record.new
#     t.name = row['name']
#     t.unit_value = row['unit_value']
#     t.quantity = row['quantity']
#     t.template = row['template']
#     t.save
#     puts "#{t.name}, #{t.unit_value} saved"
#   end
#   puts "There are now #{Record.count} rows in the import table"
#   puts "There are now #{Letter.count} rows in the import table"


 letter = Letter.create!(letter_number: "001")
 letter.records.create!(name: "First Name 05", unit_value: 29.95, quantity: 1, template: "aip1")
 letter = Letter.create!(letter_number: "002")
 letter.records.create!(name: "First Name 06", unit_value: 24.99, quantity: 2, template: "aip1")
# letter = Letter.create!(letter_number: "003")
# letter.records.create!(name: "First Name 07", unit_value: 9.00, quantity: 1, template: "aip1")
# letter = Letter.create!(letter_number: "004")
# letter.records.create!(name: "First Name 08", unit_value: 1955.00, quantity: 1, template: "aip1")
# letter = Letter.create!(letter_number: "005")
# letter.records.create!(name: "First Name 09", unit_value: 75.00, quantity: 3, template: "aip1")
# letter = Letter.create!(letter_number:  "006")
# letter.records.create!(name: "First Last Name 1", unit_value: 10000.00, quantity: 1, template: "aip2")
# letter = Letter.create!(letter_number: "007")
# letter.records.create!(name: "First Last Name 2", unit_value: 8450.00, quantity: 1, template: "aip2")
# letter = Letter.create!(letter_number: "008")
# letter.records.create!(name: "First Last Name 3", unit_value: 10000.00, quantity: 1, template: "aip2")
# letter = Letter.create!(letter_number: "009")
# letter.records.create!(name: "First Last Name 4", unit_value: 8450.00, quantity: 1, template: "aip2")
