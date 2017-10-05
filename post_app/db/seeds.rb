# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



p1= Post.create!(user_name: "John Doe", theme: "Cooking" , body: "How to cook a chicken breast")

p2= Post.create!(user_name: "Karl Gharios", theme: "Music" , body: 'Music theory is the study of the practices and possibilities of music. The Oxford Companion to Music describes three interrelated uses of the term "music theory":
"The first is what is otherwise called rudiments, currently taught as the elements of notation, of key signatures, of time signatures, of rhythmic notation, and so on. [...] The second is the study of writings about music from ancient times onwards. [...] The third is an area of current musicological study that seeks to define processes and general principles in music — a sphere of research that can be distinguished from analysis in that it takes as its starting-point not the individual work or performance but the fundamental materials from which it is built."[1]
Music theory is frequently concerned with describing how musicians and composers make music, including tuning systems and composition methods among other topics. Because of the ever-expanding conception of what constitutes music (see Definition of music), a more inclusive definition could be that music theory is the consideration of any sonic phenomena, including silence, as they relate to music. This is not an absolute guideline; for example, the study of "music" in the Quadrivium liberal arts university curriculum that was common in medieval Europe was an abstract system of proportions that was carefully studied at a distance from actual musical practice.[2] However, this medieval discipline became the basis for tuning systems in later centuries, and it is generally included in modern scholarship on the history of music theory.[3]')




c1= Comment.create!(user_name: "Karl Gharios", body_comment: "Really helpful ! Thanks" , post_id: p1.id)


c2= Comment.create!(user_name: "Paul Smith", body_comment: "You saved my life !" , post_id: p1.id)


c3= Comment.create!(user_name: "Paul Smith", body_comment: "Very interesting. Thanks for posting that." , post_id: p2.id)











