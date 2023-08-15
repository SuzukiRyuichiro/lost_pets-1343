Pet.destroy_all

Pet.create(name: 'Peter', species: 'dog', found_on: Date.today, address: 'Porto')
Pet.create(name: 'MJ', species: 'cat', found_on: Date.today, address: 'Tokyo')
Pet.create(name: 'Tony', species: 'fish', found_on: Date.today, address: 'Barcelona')
Pet.create(name: 'Winter', species: 'snake', found_on: Date.today, address: 'Madrid')
Pet.create(name: 'Strange', species: 'bird', found_on: Date.today, address: 'Lisbon')
Pet.create(name: 'Thanos', species: 'dog', found_on: Date.today, address: 'Amsterdam')

puts "Created #{Pet.count} pets"
