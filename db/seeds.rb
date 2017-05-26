# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name:'Rogelio', last_name:'Rincon', email:'rogelio@gmail.com', password:'asdfasdf')
User.create(first_name:'David', last_name:'Rincon', email:'david@gmail.com', password:'asdfasdf')
User.create(first_name:'Jesse', last_name:'Rincon', email:'jesse@gmail.com', password:'asdfasdf')
User.create(first_name:'Eric', last_name:'Rincon', email:'eric@gmail.com', password:'asdfasdf')

Song.create(title:'Despacito', artist:'Luis Fonsi')
Song.create(title:'Chantaje', artist:'Shakira ft. Maluma')
Song.create(title:'La Gozadera', artist:'Gente de Zona')
