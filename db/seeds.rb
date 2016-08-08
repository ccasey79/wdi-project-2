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


Recipe.create([
  { name: "Lamb_Madras", image: "/images/Lamb_Madras.jpg", ingredients: "450g lamb, diced, 2 tbsp vegetable oil, 125g onion, diced, 3 tbsp Patak's Madras Paste, 250g canned chopped tomatoes, 25g yogurt, 1 tbsp fresh coriander, chopped, salt to taste, 300ml water", method: "Heat the oil in a pan and fry the diced onions for 3 minutes.  Add the Patak's Madras Paste and continue to fry for a further 2 minutes. Add the chopped tomatoes and cook for 5 minutes. Add the diced lamb and cook for 20 minutes, adding a little water as necessary if the sauce is too thick. Add the yogurt, check the seasoning and add the chopped coriander.  Cook for a further 5 minutes until the lamb is tender and cooked through. Serve with chapattis.", user_id: 1 },
  { name: "Lamb_Bhuna", image: "/images/Lamb_Bhuna.jpg", ingredients: "2 tsp cumin seeds, 3 tsp coriander seeds, 2 tsp mustard seeds, 2-3 dried chilli, 2 tsp fennel seeds, 1 tsp fenugreek seeds, 2 onions, finely chopped, 6 garlic cloves, finely chopped, 20 curry leaves, 4cm ginger, grated, 400g / 1 tin plum tomatoes, ½ tsp turmeric, 1 tsp salt, 1 tsp garam masala, Handful coriander, chopped", method: "Heat a frying pan and add the cumin seeds, coriander, mustard, fennel, fenugreek seeds, and two or three dried chillies. Keep the spices moving for a minute or two until they go a shade darker. Empty the spices into a bowl and let them cool before grinding to a fine powder in a coffee grinder or with a pestle and mortar. Leave to one side. Heat oil and add onions in a large pan, after a few minutes add the garlic. Once they have browned add the curry leaves, with the ginger, tomatoes and salt. Cook until the tomatoes break down creating a thick paste. Add the roasted spice mix and turmeric to the pan and stir well. Cook for a minute or two, taking care not to let the sauce catch on the bottom of the pan. If it does, add a splash of water and quickly stir. Place the meat in the pan and stir to coat then cook for five minutes. Reduce the heat and put a lid on the pan and cook on a very gentle heat for about 30-40 minutes (longer if using mutton). Check that the meat is tender. If it isn't leave it for a while longer. When the meat is ready, remove the lid from the pan and turn up the heat and fry to reduce the sauce until it almost disappears. The aim is to create a dry dish concentrated sauce that clings tightly to the tender meat. Finish with a sprinkle of garam masala and a handful of chopped fresh coriander.", user_id: 2 }  
])  












