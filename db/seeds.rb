slark = User.create(username: "slark", email: "Slark@test.com", password: "password")
bob = User.create(username: "Bob", email: "Bob@test.com", password: "password")

slark.roles.create(name: "Elvira", opera: "Don Giovanni", composer: "Mozart", researched: "true", translated: "true", private_notes: "preparing this for summer 2022", public_notes: "")
slark.roles.create(name: "Micaela", opera: "Carmen", composer: "Bizet", researched: "true", translated: "true", listened: "true", private_notes: "", public_notes: "The recit was hard!")
bob.roles.create(name: "Micaela", opera: "Carmen", composer: "Bizet", private_notes: "To start next week", public_notes: "")

