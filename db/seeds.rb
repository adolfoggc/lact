# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(name: "Fulano de Tal", registration: "111111", admission: "Ciências Ocultas")
Student.create(name: "Bel Tranno", registration: "222222", admission: "Letras Apagadas")
Student.create(name: "Junim Zoião", registration: "333333", admission: "Desocupado")

Pc.create(number: "01", status: "ok", programs: "spyder, autocad", row: '0', position_in_row: '5')
Pc.create(number: "02", status: "defeito", programs: "spyder, autocad", row: '1', position_in_row: '2')
Pc.create(number: "01", status: "ok", programs: "autocad", row: '2', position_in_row: '4', complain: "sem spyder")