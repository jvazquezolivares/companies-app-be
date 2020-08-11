# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |i|
  company = Company.create(account_id: i, name: "Company #{i}", city: "Monterrey")
  company.subcompanies.create(account_id: i+5, name: "Company #{i+5}", city: "Monterrey")
end