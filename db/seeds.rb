# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all
Table.destroy_all
Product.destroy_all
I18n.locale = 'pt-BR'

5.times do |_index|
  Company.create!(name: Faker::Company.name, description: Faker::Lorem.paragraph)
end

company = Company.find(Company.pluck(:id))

20.times do |_index|
  Table.create!(table_number: Faker::Number.between(from: 1, to: 10), company_id: company.sample.id)
end

20.times do |_index|
  Product.create!(name: Faker::Restaurant.name, description: Faker::Lorem.paragraph,
                  quantity: Faker::Number.between(from: 1, to: 10), company_id: company.sample.id)
end
