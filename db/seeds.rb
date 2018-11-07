# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

Restaurant.destroy_all

5.times do
  resto = Restaurant.create!(
    name: Faker::Zelda.unique.character,
    address: Faker::Address.full_address,
    phone_number: Faker::Finance.credit_card,
    category: %w(chinese italian japanese french belgian).sample
  )
  3.times do
    review = Review.create!(
        rating: (0..4).to_a.sample,
        content: Faker::HitchhikersGuideToTheGalaxy.quote,
        restaurant: resto
    )

end
end

