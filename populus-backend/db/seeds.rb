User.destroy_all
Photo.destroy_all
Like.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jacob = User.create(username: "jlepler", password: "jlepler")
photo_one = Photo.new(location: "DC", description: "first photo", tags: "basic", user_id: jacob.id)
jacob.photos << photo_one

like_one = Like.create(user_id: jacob.id, photo_id: photo_one.id)
print(like_one.errors.full_messages)

