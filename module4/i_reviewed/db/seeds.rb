# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.destroy_all
Book.create! [
{name: "eloquent ruby",author: "Russ Olsen"},
{name: "Computer graphics",author: "Pauline Baker"},
{name: "Introduction to algorithms",author: "Thomas cormen"},
{name: "agile development in ruby",author: "Tejas Patel"},
{name: "database management",author: "Navathe bhau"},
]

eloquent= Book.find_by name: "eloquent ruby"
eloquent.notes.create! [
{title:"Wow",note:"great book to learn ruby"},
{title:"funny",note:"Doesn't put you to sleep"}


]