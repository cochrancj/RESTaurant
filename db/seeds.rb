# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


MenuItem.create([{ name: 'Quail Soul', description: 'Pan seared quail soul on a bed of velvety root vegetable puree, topped with persimmon sauce', price: '22'},
  { name: 'Zebra Filet', description: 'Bone in and flame broiled filet of zebra with a side of truffle fries and popcorn lobster', price: '48'},
  { name: 'Sturgeon', description: 'Fried sturgeon filet with caviar and crema', price: '28'}
  ])
