# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(username: "chris")
u2 = User.create(username: "brandt")
u3 = User.create(username: "TA")

a1 = Artwork.create(title: "mona lisa", image_url: "url1", artist_id: u1.id)
a2 = Artwork.create(title: "a walk in the park", image_url: "url2", artist_id: u1.id)
a3 = Artwork.create(title: "starry night", image_url: "url3", artist_id: u2.id)
a4 = Artwork.create(title: "rolling hills", image_url: "url4", artist_id: u2.id)
a5 = Artwork.create(title: "sunset", image_url: "url5", artist_id: u3.id)
a6 = Artwork.create(title: "ocean waves", image_url: "url6", artist_id: u3.id)

ArtworkShare.create(artwork_id: a1.id, viewer_id: u1.id)
ArtworkShare.create(artwork_id: a1.id, viewer_id: u2.id)
ArtworkShare.create(artwork_id: a2.id, viewer_id: u3.id)
ArtworkShare.create(artwork_id: a3.id, viewer_id: u1.id)
ArtworkShare.create(artwork_id: a3.id, viewer_id: u2.id)
ArtworkShare.create(artwork_id: a4.id, viewer_id: u1.id)
ArtworkShare.create(artwork_id: a5.id, viewer_id: u2.id)
ArtworkShare.create(artwork_id: a6.id, viewer_id: u3.id)
ArtworkShare.create(artwork_id: a6.id, viewer_id: u1.id)
