# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Student.create(name: "Fulano de Tal", registration: "111111", admission: "Ciências Ocultas")
#Student.create(name: "Bel Tranno", registration: "222222", admission: "Letras Apagadas")
#Student.create(name: "Junim Zoião", registration: "333333", admission: "Desocupado")


Pc.create(number: 'Notebook', status: "OK")
x = 1
30.times do 
	x+=1
	Pc.create(number: 'SN', status: "OK")
end
