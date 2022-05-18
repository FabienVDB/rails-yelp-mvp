# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

Restaurant.create(name: 'Madonna Me',
                  address: '134 cours Balguerie Stuttenberg 33000 Bordeaux',
                  category: 'italian',
                  phone_number: '05 56 43 01 21')
Restaurant.create(name: 'La brasserie du Médoc',
                  address: '66 cours du Médoc 33000 Bordeaux',
                  category: 'french',
                  phone_number: '05 56 39 47 04')
Restaurant.create(name: 'Okinii',
                  address: '13 Bis Cr Edouard Vaillant 33300 Bordeaux',
                  category: 'japanese',
                  phone_number: '05 56 69 81 20')
Restaurant.create(name: 'Restaurant Yi',
                  address: '67 cours de Verdun 33000 Bordeaux',
                  category: 'chinese',
                  phone_number: '09 83 95 91 41')
Restaurant.create(name: 'Baraka Frites',
                  address: '264 Rue Sainte-Catherine, 33000 Bordeaux',
                  category: 'belgian')

restaurant = Restaurant.where(name: 'Madonna Me').first
Review.create(rating: 5, content: 'Super resto italien', restaurant: restaurant)
Review.create(rating: 4, content: 'Leur foccacie sont très bonnes', restaurant: restaurant)

restaurant = Restaurant.where(name: 'La brasserie du Médoc').first
Review.create(rating: 2, content: 'Assez médiocre', restaurant: restaurant)
Review.create(rating: 3, content: 'Passable', restaurant: restaurant)
Review.create(rating: 4, content: 'Très bon resto', restaurant: restaurant)

restaurant = Restaurant.where(name: 'Okinii').first
Review.create(rating: 1, content: 'Vraiment pas bon', restaurant: restaurant)
Review.create(rating: 5, content: 'Leurs sushis sont délicieux', restaurant: restaurant)
Review.create(rating: 4, content: 'Très bon resto japonais', restaurant: restaurant)

restaurant = Restaurant.where(name: 'Restaurant Yi').first
Review.create(rating: 3, content: 'Pas terrible', restaurant: restaurant)
Review.create(rating: 5, content: 'Trop bon', restaurant: restaurant)

restaurant = Restaurant.where(name: 'Baraka Frites').first
Review.create(rating: 1, content: 'Dégueulasse', restaurant: restaurant)
Review.create(rating: 5, content: 'Leurs frites sont sublimes', restaurant: restaurant)
