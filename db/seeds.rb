# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Party.destroy_all

Party.create([
	{name: '21st Birthday', date: "August 22, 2010", user: "juliepranger"},
	{name: 'Happy Anniversary Bob and June', date: "March 1, 2000", user: "frankenstein"},
	{name: 'Cinco de Drinko', date: "May 5, 2014", user: "juliepranger"},
	{name: 'Hallow\'s Eve', date: "October 31, 2013", user: "adamjbouck"}
	])

User.create([
	{name: "julie", email: "julie@julie.com", password: "julie"},
	{name: "tim", email: "tim@tim.com", password: "tim"},
	{name: "adam", email: "adam@adam.com", password: "adam"}
	])

Attendee.create([
	{name: "meredith", email: "mer@mer.com", password: "mer"},
	{name: "theresa", email: "the@resa.com", password: "ther"},
	{name: "lorin", email: "lorin@lorin.com", password: "lorin"}
	])