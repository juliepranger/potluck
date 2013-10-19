# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Party.destroy_all

Party.create([
	{name: '21st Birthday'},
	{name: 'Happy Anniversary Bob and June'},
	{name: 'Cinco de Drinko'}
	])