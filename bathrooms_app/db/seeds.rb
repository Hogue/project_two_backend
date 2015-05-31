# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




Neighborhood.destroy_all
#########################################################

                    # NEIGHBORHOODS #
                          # & #
                      # BATHROOMS #

#########################################################
neighborhood = Neighborhood.create!(name: 'Allston')
neighborhood = Neighborhood.create!(name: 'Back Bay')
neighborhood = Neighborhood.create!(name: 'Bay Village')
neighborhood = Neighborhood.create!(name: 'Beacon Hill')
neighborhood = Neighborhood.create!(name: 'Brighton')
neighborhood.bathrooms.create!(location: 'Dunkin Donuts', address: '598 Washington St
Brighton, MA', description: 'bathrooms are free and accessible')
neighborhood = Neighborhood.create!(name: 'Charlestown')
neighborhood = Neighborhood.create!(name: 'Chinatown')
neighborhood = Neighborhood.create!(name: 'Dorchester')
neighborhood = Neighborhood.create!(name: 'Downtown')
neighborhood = Neighborhood.create!(name: 'East Boston')
neighborhood = Neighborhood.create!(name: 'Fenway Kenmore')
neighborhood = Neighborhood.create!(name: 'Hyde Park')
neighborhood = Neighborhood.create!(name: 'Jamaica Plain')
neighborhood = Neighborhood.create!(name: 'Mattapan')
neighborhood = Neighborhood.create!(name: 'Mission Hill')
neighborhood = Neighborhood.create!(name: 'North End')
neighborhood = Neighborhood.create!(name: 'Roxbury')
neighborhood = Neighborhood.create!(name: 'South Boston')
neighborhood = Neighborhood.create!(name: 'South End')
neighborhood = Neighborhood.create!(name: 'West End')


