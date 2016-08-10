# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "recipes"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

u1 = User.create!(
  username: "christianc",
  first_name: "Chris",
  last_name: "Casey",
  email: "chris@chris.com",
  profile_picture: File.open(Rails.root.join 'db/images/profile_picture.jpg'),
  password: "password",
  password_confirmation: "password"
)

u2 = User.create!(
  username: "bobbrown",
  first_name: "Bob",
  last_name: "Brown",
  email: "bob@bob.com",
  profile_picture: File.open(Rails.root.join 'db/images/profile_picture.jpg'),
  password: "password",
  password_confirmation: "password"
)

u3 = User.create!(
  username: "sidsmith",
  first_name: "Sid",
  last_name: "Smith",
  email: "sid@sid.com",
  profile_picture: File.open(Rails.root.join 'db/images/sid.jpg'),
  password: "password",
  password_confirmation: "password"
)

u4 = User.create!(
  username: "johndoe",
  first_name: "John",
  last_name: "Doe",
  email: "john@john.com",
  profile_picture: File.open(Rails.root.join 'db/images/john.jpg'),
  password: "password",
  password_confirmation: "password"
)    

r1 = Recipe.create!(
  name: "Lamb Madras",
  ingredients: "450g lamb, diced, 2 tbsp vegetable oil, 125g onion, diced, 3 tbsp Patak's Madras Paste, 250g canned chopped tomatoes, 25g yogurt, 1 tbsp fresh coriander, chopped, salt to taste, 300ml water",
  method: "Heat the oil in a pan and fry the diced onions for 3 minutes.  Add the Patak's Madras Paste and continue to fry for a further 2 minutes. Add the chopped tomatoes and cook for 5 minutes. Add the diced lamb and cook for 20 minutes, adding a little water as necessary if the sauce is too thick. Add the yogurt, check the seasoning and add the chopped coriander.  Cook for a further 5 minutes until the lamb is tender and cooked through. Serve with chapattis.",
  user_id: u1.id,
  image: File.open(Rails.root.join 'db/images/Lamb_Madras.jpg')
)

r2 = Recipe.create!(
  name: "Lamb Bhuna",
  ingredients: "2 tsp cumin seeds, 3 tsp coriander seeds, 2 tsp mustard seeds, 2-3 dried chilli, 2 tsp fennel seeds, 1 tsp fenugreek seeds, 2 onions, finely chopped, 6 garlic cloves, finely chopped, 20 curry leaves, 4cm ginger, grated, 400g / 1 tin plum tomatoes, ½ tsp turmeric, 1 tsp salt, 1 tsp garam masala, Handful coriander, chopped",
  method: "Heat a frying pan and add the cumin seeds, coriander, mustard, fennel, fenugreek seeds, and two or three dried chillies. Keep the spices moving for a minute or two until they go a shade darker. Empty the spices into a bowl and let them cool before grinding to a fine powder in a coffee grinder or with a pestle and mortar. Leave to one side. Heat oil and add onions in a large pan, after a few minutes add the garlic. Once they have browned add the curry leaves, with the ginger, tomatoes and salt. Cook until the tomatoes break down creating a thick paste. Add the roasted spice mix and turmeric to the pan and stir well. Cook for a minute or two, taking care not to let the sauce catch on the bottom of the pan. If it does, add a splash of water and quickly stir. Place the meat in the pan and stir to coat then cook for five minutes. Reduce the heat and put a lid on the pan and cook on a very gentle heat for about 30-40 minutes (longer if using mutton). Check that the meat is tender. If it isn't leave it for a while longer. When the meat is ready, remove the lid from the pan and turn up the heat and fry to reduce the sauce until it almost disappears. The aim is to create a dry dish concentrated sauce that clings tightly to the tender meat. Finish with a sprinkle of garam masala and a handful of chopped fresh coriander.",
  user_id: u2.id,
  image: File.open(Rails.root.join 'db/images/Lamb_Bhuna.jpg')  
)

r3 = Recipe.create!(
  name: "Rogan Josh",
  ingredients: "5 tbsp vegetable oil, 7 black peppercorns, left whole, 3 black cardamom pods, left whole, 5 green cardamom pods, left whole, 4 cloves, left whole, 1 cinnamon stick, 1 piece of mace, 1 onion, finely chopped, 750g/1½lb lamb or mutton, cut into pieces, 6 garlic cloves, peeled, left whole, 2cm/¾in piece ginger, peeled and cut in half, 2 tsp ground coriander, 2 tsp ground cumin, ½ tsp red chilli powder, 2 tsp ground fennel seeds, 1½ tsp garam masala, salt, to taste, 2 tomatoes, blended to a pulp in a food processor, 3 tbsp plain yoghurt, stirred, handful chopped fresh coriander, leaves and stalks", 
  method: "Heat the oil in a large pan over a medium heat. Add the black peppercorns, black and green cardamom pods, cloves, cinnamon and mace and fry for 1-2 minutes, or until the spices are sizzling and fragrant. Add the chopped onion and fry for 8-10 minutes, stirring regularly, until golden-brown. Add the lamb pieces and fry for 3-4 minutes, stirring continually, until golden-brown all over. Meanwhile, in a food processor, blend the garlic cloves and ginger with one tablespoon of water to a fine paste. Add the garlic and ginger paste to the lamb mixture, stir well to combine, then reduce the heat and continue to cook for 3-4 minutes, stirring regularly. Stir in the powdered coriander, cumin, red chilli powder, fennel seeds, garam masala, salt, tomato pulp and yoghurt, cover the pan with a lid, then reduce the heat to a low heat and simmer for 10-12 minutes, or until the sauce has almost completely dried out. Add 2-3 tablespoons of boiling water to the sauce, stir well and simmer for a further 7-8 minutes, stirring continually and adding splashes of water as necessary, until the volume of liquid has reduced and the sauce has thickened. Add enough boiling water to almost cover the lamb, bring the mixture to the boil, then reduce the heat to a simmer and simmer or 8-10 minutes, or until the lamb is cooked through. Stir in the chopped coriander just before serving.",
  user_id: u3.id,
  image: File.open(Rails.root.join 'db/images/Rogan_Josh.jpg') 
)

r4 = Recipe.create!(
  name: "Goan Chicken Curry", 
  ingredients: "4 large skinless chicken breasts, cut into chunks, 3 tbsp vegetable oil, 1 tsp yellow or brown mustard seeds, 1 large onion, sliced, 3 garlic cloves, finely sliced, 1x400ml can coconut milk, salt, 1 tsp paprika, ½ tsp ground turmeric, 1½ tbsp ground coriander, 1 tsp ground cumin, 1 tsp cayenne pepper, 1 tbsp lemon juice, ½ tsp salt, 75ml/2¾fl oz water",
  method: "Mix together all the marinade ingredients to give you a loose, smooth paste. Add the chicken pieces and coat them in the paste. They are best left to marinate for around 30 minutes to 1 hour, but if you're in a hurry a few minutes will do. Heat the oil in a deep frying pan and add the mustard seeds. When they start to pop and jump about in the pan, add the onion and garlic. Cook until they're golden brown before adding the chicken and any extra paste from the marinade. Fry over a gentle heat for about 8 minutes before adding the coconut milk. Increase the heat slightly and bring to a simmer. Cook for a further 10-12 minutes until the sauce has thickened slightly before seasoning with salt if necessary and serving with rice or naan bread.",
  user_id: u4.id,
  image: File.open(Rails.root.join 'db/images/Goan_Chicken_Curry.jpg')
)

r5 = Recipe.create!(
  name: "Kerala King Prawn Cocanut Curry",
  ingredients: "500g/1lb 2oz raw tiger prawns, shells off and de-veined, 1 tbsp fresh lemon juice, 3 tbsp sunflower oil, 1 onion, grated, ½ tsp ground turmeric, 6 whole cardamom pods, lightly crushed to split open, 1 tsp chilli powder, 1 cinnamon stick, 3 garlic cloves, finely grated, 2.5cm/1in piece root ginger, finely grated, small bunch fresh coriander, 175ml/6 fl oz coconut cream, salt",
  method: "Toss the prawns with the lemon juice in a shallow non-metallic dish and leave to marinate while you make the sauce. Heat a heavy-based pan with two tablespoons of the oil and then add the onion. Cook for 2-3 minutes until softened but not coloured, then add the turmeric, cardamom pods and chilli powder. Cook for 1-2 minutes until fragrant, stirring constantly. Stir the remaining oil into the pan with the cinnamon, garlic and ginger. Cook for another 1-2 minutes until the garlic and ginger have softened and are cooked through. Reserve a few coriander sprigs for garnish and blend the remainder with the coconut cream in a mini food processor. Stir into pan with the onion and spice mixture until well combined, then bring to the boil. Reduce the heat and simmer gently for 1-2 minutes, then stir in the marinated prawns and season with salt. Continue to simmer for 1-2 minutes until the prawns are just cooked through and tender, stirring constantly. Garnish the curry with the reserved coriander sprigs and serve with rice or chapattis.",
  user_id: u2.id,
  image: File.open(Rails.root.join 'db/images/Kerala_Prawn_Curry.jpg') 
)

r6 = Recipe.create!(
  name: "Lamb Dhansak", 
  ingredients: "3 tbsp sunflower oil, 1 kg/2lb 4oz diced lamb shoulder or leg, or a mixture of both, 2 onions, chopped, 25g/1oz fresh root ginger, peeled, 4 garlic cloves, peeled, 2 red chillies, seeds removed, chopped, 10 green cardamom pods, 1½ tbsp ground cumin, 1½ tbsp ground coriander, ½ tbsp ground turmeric, 1 x 400g/14oz can chopped tomatoes, 200ml/7fl oz beef stock, 75g/2½oz red lentils, 3 tbsp honey, salt and pepper",
  method: "Preheat the oven to 150C/300F/Gas 3 (130C fan). Heat two tablespoons of oil in a large frying pan. Add the lamb and fry in two batches until browned. Remove from the pan with a slotted spoon and set aside. Add the remaining oil to the pan. Add the onion and fry for 4-5 minutes, or until beginning to soften. Meanwhile, place the ginger, garlic and chilli into a small food processor and blend until finely chopped. Bash the cardamom pods with the end of a rolling pin to split the husks, then remove the seeds and grind them to a fine powder in a pestle and mortar. Add to the pan with the remaining spices and the garlic and ginger mixture. Add the remaining ingredients to the pan and add the lamb. Bring to the boil, then cover and place in the oven to simmer for 1½-2 hours, or until tender. Check the seasoning and serve with boiled rice.",
  user_id: u3.id,
  image: File.open(Rails.root.join 'db/images/Lamb_Dhansak.jpg') 
)  

r7 = Recipe.create!( 
  name: "Chicken Naga",
  ingredients: "6 chicken breasts - flattened with a mallet, 125ml olive oil plus 3 tablespoons for browning the chicken, 4 onions finely chopped, 5 cloves garlic - finely chopped, 1 inch ginger - grated and chopped, 5 tomatoes finely chopped, 1 - 6 naga chilies (or more if you want), 1 tablespoon garam masala, 1 tablespoon curry powder, 200g Cheddar cheese - grated, Salt and pepper to taste",
  method: "Pre-heat your oven to 200c (400f). Heat three tablespoons of olive oil in a large pan or wok. Place the flattened chicken breasts in the oil and brown on both sides. Set aside. Pour the remaining oil into an oven proof pan. Throw in the onions and fry for about 15 minutes until they are soft and translucent. Add the the garlic, ginger and the nagas and fry for another minute or so and then add the tomatoes. Pour in the garam masala, curry powder, the chicken and enough water to just cover the chicken pieces. Sprinkle the grated cheese over the top and place in the oven for about 30 minutes or until the cheese is melted and nicely browned on top. Season with salt and pepper to taste.",
  user_id: u4.id,
  image: File.open(Rails.root.join 'db/images/Chicken_Naga.jpg')   
)

r8 = Recipe.create!(
  name: "Cocanut Fish Curry",
  ingredients: "1 green chilli, roughly chopped, pinch dried chilli flakes, 2 tbsp vegetable oil, ½ lemon, juice only, handful fresh coriander, plus extra for garnish, 1 tbsp vegetable oil, 1 onion, sliced, 1 garlic clove, crushed, 1 large sweet potato, peeled and chopped, 1 tsp curry powder, 1 tsp cumin, 150/5oz cod or pollack fillet, skinned and chopped (frozen is fine), ½ tin coconut milk, 1 handful spinach leaves, or 2 blocks frozen spinach, defrosted and liquid squeezed out, ½ lime, juice only, salt, to taste",
  method: "For the spice paste, place all of the spice paste ingredients into a food processor and blend until smooth. (You can use a pestle and mortar for this, too.) For the curry, heat the vegetable oil in a wok and gently fry the onion and garlic for 4-5 minutes, or until softened. Add the sweet potato, curry powder and cumin and continue to fry for further 5-10 minutes, until the sweet potato has softened, then add the fish and two tablespoons of the spice paste. Stir to coat the fish in the spices, then add the coconut milk and bring to a gentle simmer. Stir in the baby spinach leaves, lime juice and season with salt, to taste. Cook for another 2-3 minutes, then stir in the coriander. Spoon the curry into a bowl and serve.",
  user_id: u1.id,
  image: File.open(Rails.root.join 'db/images/Cocanut_Fish_Curry.jpg')
)      

r9 = Recipe.create!(
  name: "Lamb Pasanda",
  ingredients: "500g/17½oz boned leg of lamb, 100g/3½oz ghee (clarified butter), 4 cinnamon sticks, each 4cm (1¾in) long, 4 black cardamoms, 200g/7¼oz flour, approx, 50ml/1¾fl oz water, or enough to bind into a slack dough, 8 dried figs, soaked in water, to cover, 3 tbsp khoya (dried reduced milk), available from ethnic grocers, 1 tbsp raisins, soaked in water, to cover, ½ tsp saffron strands, soaked in 3 tbsp warm water, 150ml/5¼fl oz plain yoghurt, 3 onions, sliced and shallow-fried in oil until golden brown, 4cm/1¾in piece of fresh root ginger, peeled and grated, 6 garlic cloves, 2 tsp salt, or to taste, 2 tsp red chilli powder, 4 tsp garam masala, 2 tsp ground cumin, 1 tsp freshly ground cardamom seeds, 1 tbsp chopped coriander, to garnish",
  method: "Remove all the white membranes from the surface of the meat. Using a sharp knife, cut the meat into 5cm (2in) squares, about 1cm (½in) thick. Place these escalopes between sheets of cling film and beat them out with a meat mallet or rolling pin until the lamb has been flattened into thin pieces. Tip all the marinade ingredients into a food processor and blend until smooth. Coat the escalopes with the marinade, making sure the meat is completely covered with the masala spice mix. Set aside for at least one hour. Heat the clarified butter in a heavy-bottomed casserole pan, wide enough to take the meat in one layer. Add the cinnamon sticks and black cardamoms and let them sizzle for a few seconds before adding the marinated meat with its liquid. Cover the pan with a tightly-fitting lid and seal the edges with a flour and water paste (this helps to retain all the flavours in the pot as the meat cooks). Simmer on a very low heat for an hour until the sauce has reduced and the meat is tender. Remove the lid from the pan. If there's too much liquid, cook the sauce down until there's a thin film of oil on top. Scatter with chopped coriander and serve straight away with warm naan bread.",
  user_id: u4.id,
  image: File.open(Rails.root.join 'db/images/Lamb_Pasanda.jpg') 
)  






















