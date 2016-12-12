# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.destroy_all

Restaurant.create(name: "Epicure au Bristol", stars: 3, address: "112 rue du Fg St-Honoré 75008 Paris", chef: "Bernard")
Restaurant.create(name: "La truffière", stars: 1, address: "1, rue Blainville 75005 Paris", chef: "Bianca")
Restaurant.create(name: "Le pré Catalan", stars: 3, address: "route de Suresnes 75016 Paris", chef: "Gerard")

# Restaurant.destroy_all
# restaurants_attributes = [
#   {
#     name:         "Epicure au Bristol",
#     address:      "112 rue du Fg St-Honoré 75008 Paris",
#     description:  "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",
#     stars:        3
#   },
#   {
#     name:         "La truffière",
#     address:      "4 rue Blainville 75005 Paris",
#     description:  "Une valeur sûre que cette belle maison du 17e et les recettes de Jean-Christophe Rizet",
#     stars:        1
#   },
#   {
#     name:         "Le pré catelan",
#     address:      "route de Suresnes 75016 Paris",
#     description:  "Oeil vif, geste sûr: impossible de distinguer, dans les créations de Frédéric Anton...",
#     stars:        3
#   }
# ]
# restaurants_attributes.each { |params| Restaurant.create!(params) }
