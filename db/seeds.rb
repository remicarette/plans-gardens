# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 1. Clean the database

Garden.destroy_all

# 2. Seeds them

nice_park = Garden.create!(
  name: 'Nice Park',
  banner_url: 'https://static1.terrafemina.com/articles/0/31/63/10/@/427360-parmi-les-15-plus-beaux-jardins-du-monde-953x0-3.jpg'
)

beautifull_garden = Garden.create!(
  name: 'Beautifull Garden',
  banner_url: 'https://www.caminteresse.fr/content/uploads/2012/04/jardin-604.jpg'
)

tulipe = Plant.create!(
  name: 'Tulipe',
  image_url: 'https://media.ooreka.fr/public/image/plant/80/mainImage-full-9412311.jpg',
  garden: beautifull_garden
)

rose = Plant.create!(
  name: 'rose',
  image_url: 'https://www.meillandrichardier.com/media/catalog/product/cache/1/image/800x800/040ec09b1e35df139433887a97daa66f/1/0/1098-2948-2201-2524a-rosier_botero_meiafone-mi-t1000.jpg',
  garden: nice_park
)

sun_flower = Plant.create!(
  name: 'Tournesol',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Helianthus_annuus_0001.JPG/1200px-Helianthus_annuus_0001.JPG',
  garden: nice_park
)

# 3. Check if everything is ok

puts "#{Garden.count} gardens created"
puts "#{Plant.count} plants created"
