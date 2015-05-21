# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# create roles
r1 = Role.create({name: "Regular", description: "Can read items"})
r2 = Role.create({name: "Seller", description: "Can read and create items. Can update and destroy own items"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})
# create a master admin account for starting use of the site
u1 = User.create({name: "Don", email: "Don@bahamallama.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})