# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning seed"

PhotoTag.destroy_all
Photo.destroy_all
Tag.destroy_all
Album.destroy_all
User.destroy_all

puts "Generating seed"

# User
stephanie = User.create(email: "stephaniec.s@hotmail.com", password: "coucou", first_name: "Stephanie", last_name: "Smith")

#album x3
album1 = Album.create(name: "Alexander Sprekenhus", context: "blablabalblabla", user: User.first)
album2 = Album.create(name: "AYTM", context: "blablabalblabla", user: User.first)
album3 = Album.create(name: "Julie Josephine", context: "blablabalblabla", user: User.first)
album4 = Album.create(name: "Nufferton", context: "blablabalblabla", user: User.first)
album5 = Album.create(name: "Vera & William", context: "blablabalblabla", user: User.first)


#tags x3
tag1 = Tag.create(name: "soleil")
tag2 = Tag.create(name: "model")
tag3 = Tag.create(name: "water")

#photo x15 5 par album

photo1 = Photo.create(name: "Nufferton", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_287/v1519213099/scandicrush/20160903_Nufferton75061NEW.jpg", album: album4 )
photo2 = Photo.create(name: "Sausage", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_310/v1519213099/scandicrush/20160903_Nufferton75149NEW.jpg", album: album4 )
photo3 = Photo.create(name: "Boots", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_1156/v1519213099/scandicrush/20160903_Nufferton75202NEW.jpg", album: album4 )
photo4 = Photo.create(name: "Salsa", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_378/v1519213099/scandicrush/20160903_Nufferton75319NEW.jpg", album: album4 )
photo5 = Photo.create(name: "Red", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_704/v1519213519/scandicrush/Sprekenhus_Jan_183533.jpg", album: album1 )
photo5 = Photo.create(name: "Alexander", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_505/v1519213519/scandicrush/Sprekenhus_Jan_183547.jpg", album: album1 )
photo6 = Photo.create(name: "Courage", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_710/v1519213519/scandicrush/Sprekenhus_Jan_183479_1.jpg", album: album1 )
photo7 = Photo.create(name: "Comb", context: "sprekenhus", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_1489/v1519220803/scandicrush/Sprekenhus_Jan_183507.jpg", album: album1 )
photo8 = Photo.create(name: "All", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_976/v1519220804/scandicrush/Sprekenhus_Jan_183517.jpg", album: album1 )
photo9 = Photo.create(name: "S", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_976/v1519220804/scandicrush/Sprekenhus_Jan_183517.jpg", album: album1 )
photo10 = Photo.create(name: "Skygge", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_701/v1519220804/scandicrush/Sprekenhus_Jan_183598.jpg", album: album1 )
photo11 = Photo.create(name: "Nose", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_1019/v1519213099/scandicrush/20160903_Nufferton75252NEW.jpg", album: album4 )
photo12 = Photo.create(name: "Clips", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_973/v1519213099/scandicrush/20160903_Nufferton75285NEW.jpg", album: album4 )
photo13 = Photo.create(name: "Kanne Silver", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/v1519231130/scandicrush/AYTM_15_1533.jpg", album: album2 )
photo14 = Photo.create(name: "Blue Vase Striped", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/v1519231130/scandicrush/AYTM_15_1568.jpg", album: album2 )
photo15 = Photo.create(name: "Rounded Vase", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/v1519231130/scandicrush/AYTM_15_1567.jpg", album: album2 )
photo16 = Photo.create(name: "Mirror", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/v1519231130/scandicrush/AYTM_11_0999.jpg", album: album2 )
photo17 = Photo.create(name: "Chaires", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/v1519231130/scandicrush/AYTM_13_1213.jpg", album: album2 )
photo18 = Photo.create(name: "Puffs", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/v1519231130/scandicrush/AYTM_01_034.jpg", album: album2 )
photo19 = Photo.create(name: "Vera1", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/v1519236023/scandicrush/Vera_William_1.jpg", album: album5 )
photo20 = Photo.create(name: "Vera2", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/v1519236023/scandicrush/Ida.png", album: album5 )
photo21 = Photo.create(name: "Closeup", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_809/v1519236158/scandicrush/Julie_Josephine_26962.jpg", album: album3 )
photo22 = Photo.create(name: "Black Outfite", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_653/v1519236158/scandicrush/Julie_Josephine_27714.jpg", album: album3 )
photo23 = Photo.create(name: "Back naked neck", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_680/v1519236157/scandicrush/Julie_Josephine_27412.jpg", album: album3 )
photo24 = Photo.create(name: "Hanging", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_664/v1519236158/scandicrush/Julie_Josephine_26458.jpg", album: album3 )
photo25 = Photo.create(name: "Shirt", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_711/v1519236158/scandicrush/Julie_Josephine_27903.jpg", album: album3 )
photo26 = Photo.create(name: "Blouse", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_711/v1519236156/scandicrush/Julie_Josephine_27320.jpg", album: album3 )
photo27 = Photo.create(name: "Vera3", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_936/v1519724840/Leggings.jpg", album: album5 )
photo28 = Photo.create(name: "Vera4", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_885/v1519724831/Lace.jpg", album: album5 )
photo29 = Photo.create(name: "Vera5", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_935/v1519724836/Strawhat.jpg", album: album5 )
photo30 = Photo.create(name: "Vera6", context: "blabla", date: Date.today, photo_url: "http://res.cloudinary.com/stephwithunaccentaigu/image/upload/c_scale,w_764/v1519724833/Underwear.jpg", album: album5 )







#photo_tags x15
photo_tags1 = PhotoTag.create(photo_id: photo1.id, tag_id: tag1.id )
photo_tags2 = PhotoTag.create(photo_id: photo2.id, tag_id: tag2.id )
photo_tags3 = PhotoTag.create(photo_id: photo3.id, tag_id: tag3.id )
photo_tags4 = PhotoTag.create(photo_id: photo4.id, tag_id: tag1.id )
photo_tags5 = PhotoTag.create(photo_id: photo5.id, tag_id: tag2.id )



puts "Seed complete"
