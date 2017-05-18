# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# TODO use factories to add some data here

ArtPiece.create(
    title: 'The Girl with a Pearl Earring',
    artist: 'Johannes Vermeer',
    url: 'https://s3.amazonaws.com/artswipe/art-images/Girl_With_A_Pearl_Earring.jpg'
)

ArtPiece.create(
    title: 'Portrait of the Journalist Sylvia von Harden',
    artist: 'Otto Dix',
    url: 'https://s3.amazonaws.com/artswipe/art-images/Sylvia-von-Harden-Otto-Dix-831x1024.jpg'
)

