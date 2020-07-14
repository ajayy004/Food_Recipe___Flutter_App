class Recipe {
  int id;
  String title;
  int likes;
  int time;
  String imageUrl;
  List<String> categories;
  int serving;
  int calories;
  int protien;
  int fat;
  int carbs;
  String overview;
  List<String> ingredients;
  List<String> directions;

  Recipe({
    this.id,
    this.title,
    this.likes,
    this.time,
    this.imageUrl,
    this.categories,
    this.serving,
    this.calories,
    this.carbs,
    this.fat,
    this.protien,
    this.overview,
    this.ingredients,
    this.directions,
  });
}

class Recipes {
  List<Recipe> _recipes = [
    Recipe(
      id: 1,
      title: "Peri Peri Panner",
      likes: 15,
      time: 15,
      imageUrl: 'assets/images/food_1.jpg',
      categories: ['Lunch', 'Dinner'],
      serving: 1,
      calories: 240,
      protien: 10,
      fat: 8,
      carbs: 25,
      overview:
          "To make Peri Peri sauce, remove some of the seeds of the red chillies, break them into smaller pieces and put in a grinder jar. Add garlic cloves and coriander seeds.\n\n Roughly chop red capsicum and add to the jar along with vinegar, salt, 1 tablespoon oil and crushed peppercorns and grind into a smooth sauce. Transfer the sauce into a bowl.",
      ingredients: [
        "Dried red chllies 2-3",
        "Garlic cloves 2-3",
        "Medium red capsicum 1",
        "Vinegar 1 teaspoon",
        "Salt to taste",
        "Coriander seeds 1tablespoon",
        "Oil 1 + tablespoons + for grilling",
        "Black peppercorns crushed1 teaspoon",
        "Cottage cheese (paneer) 250 grams",
        "Salad leaves 4-5",
      ],
      directions: [
        "Heat some oil in a non-stick grill pan.",
        "Cut cottage cheese  into thick slices.",
        "Dip cottage cheese slices in the Peri Peri sauce and place on the grill pan. Grill, turning sides, till evenly done on both sides and grill marks appear on them.",
        "To make salad, Tear salad leaves and add to plate. Toss well.",
        "Remove grilled cottage cheese slices from the pan.",
        "Add to the salad along with reserved Peri Peri sauce and mix well.",
        "Place salad on a servi3 plate. Put grilled cottage cheese , garnish with micro greens and serve immediately.",
      ],
    ),
    Recipe(
      id: 2,
      title: "Panner Sandwich",
      likes: 10,
      time: 10,
      imageUrl: 'assets/images/food_2.jpg',
      categories: ['Breakfast', 'New'],
      serving: 2,
      calories: 240,
      protien: 10,
      fat: 8,
      carbs: 25,
      overview:
          "To make Peri Peri sauce, remove some of the seeds of the red chillies, break them into smaller pieces and put in a grinder jar. Add garlic cloves and coriander seeds.\n\n Roughly chop red capsicum and add to the jar along with vinegar, salt, 1 tablespoon oil and crushed peppercorns and grind into a smooth sauce. Transfer the sauce into a bowl.",
      ingredients: [
        "Dried red chllies 2-3",
        "Garlic cloves 2-3",
        "Medium red capsicum 1",
        "Vinegar 1 teaspoon",
        "Salt to taste",
        "Coriander seeds 1tablespoon",
        "Oil 1 + tablespoons + for grilling",
        "Black peppercorns crushed1 teaspoon",
        "Cottage cheese (paneer) 250 grams",
        "Salad leaves - 2",
        "Onion slices",
        "Pasrurised Cheese slices",
        "Burger  buns",
      ],
      directions: [
        "Heat some oil in a non-stick grill pan.",
        "Cut cottage cheese  into thick slices.",
        "Dip cottage cheese slices in the Peri Peri sauce and place on the grill pan. Grill, turning sides, till evenly done on both sides and grill marks appear on them.",
        "To make salad, Tear salad leaves and add to plate. Toss well.",
        "Remove grilled cottage cheese slices from the pan.",
        "Take the burger  buns and put  peri peri sauce in both sides, put salad leaves on both buns.",
        "Place onion slices and cheese and the grilled paneer.",
        "You can add your choice of  salad in your Burger.",
        "Server the burger.",
      ],
    ),
    Recipe(
      id: 3,
      title: "White Peas Chat",
      likes: 20,
      time: 30,
      imageUrl: 'assets/images/food_3.jpg',
      categories: ['Breakfast', 'New'],
      serving: 2,
      calories: 240,
      protien: 10,
      fat: 8,
      carbs: 25,
      overview: "testing note",
      ingredients: [
        "1 cup white peas",
        "1/2 cup onion",
        "1/2 cup tomato",
        "1 tsp ginger grated",
        "1 tsp salt",
        "1/2 tsp turmeric",
        "1/2 cumin powder",
        "1 tsp coriander powder",
        "1 tsp garam masala",
        "1 tbsp green chillis",
        "2 tbsp oil",
        "1 tbsp chopped coriander leaves",
        "Ingredients for potato Tikki",
        "3 potatoes",
        "3 tbsp ghee",
        "1 salt",
        "1/2 tsp red chilli powder",
        "1/2 tsp jeera powder",
        "Ingredients for making Regda pattis chat",
        "2 tbsp chopped onions",
        "2 tbsp green chutney",
        "2 tbsp tamarind chutney",
        "1 tbsp coriander leaves",
        "3 tbsp beated curd",
        "sev handful",
      ],
      directions: [
        "Pre-preparation for ragda",
        "Soak the white peas for at least 8hr or the previous night.",
        "Chop the onions, tomatoes, green chilis, and coriander leaves and keep them aside in a bowl.",
        "Preparation of Regda:",
        "Heat the oil and add chopped onions, green chilis to the pressure cooker. saute them until they are golden brown.",
        "Add ginger and saute until the raw flavor is gone. Then add chopped tomatoes and saute them until they become soft.",
        "Then add salt, turmeric powder, cumin powder, coriander powder, garam masala, and chili powder. Mix well.",
        "After that add peas  mix them and cook it for 5 whistles.",
        "Finally, add chopped coriander leaves and mix well. then turn off the stove.",
        "Preparation of Aloo Tikki or Ragda Patti",
        "Boil the potatoes in a pressure cooker and peel the outer layer and mash the potatoes with a potato masher or with a fork. Take a mixing bowl and add mashed potatoes.",
        "After that add salt, chilly powder  and jeera powder.",
        "Mix everything well. Then apply oil to the palms and make balls with the mixture and flatten the ball between your palms gently. Repeat the process for the other balls also.",
        "Now heat the pan add ghee to the pan. When the ghee is hot enough add potato patties to the pan and cook them until they turn golden brown on both sides.",
        "Turn off the stove and take the patties in a plate.",
        "Preparation of Regda Patti chaat or Aaloo Tikki chaat recipe:",
        "Take a plate and keep the aloo pattie in the middle and pour the Regda on the top of the aloo pattie.",
        "Then Drizzle beaten curd ,green chutney and tamarind chutney on the top of the Regda. Then add chopped onions.",
        "Then sprinkle a pinch of salt, chili powder, cumin powder, and chaat masala.",
        "After that add handful of sav on the top of the chaat. Finally, garnish with some chopped coriander leaves and serve hot.",
        "Repeat the same process for serving plates also",
      ],
    ),
    Recipe(
      id: 4,
      title: "Butter Garlic Asparagus",
      likes: 20,
      time: 30,
      imageUrl: 'assets/images/food_4.jpg',
      categories: ['Breakfast', 'New'],
      serving: 2,
      calories: 240,
      protien: 10,
      fat: 8,
      carbs: 25,
      overview: "testing note",
      ingredients: [
        "1 bunch of asparagus spears (approximately 1 pound)",
        "1 tablespoon  butter",
        "2 teaspoons minced fresh garlic",
        "1/2 teaspoon salt (more or less, to taste)",
        "1/4 teaspoon freshly ground black pepper (more or less, to taste)",
      ],
      directions: [
        "Optional: 1 tablespoon fresh squeezed lemon juice",
        "Melt the butter  in a large pan over medium-high heat. Add the garlic blackpepper and asparagus spears; cover and cook for 10 minutes, stirring occasionally, or until asparagus is tender. If you like your asparagus well done, reduce heat and cook an additional 10 minutes.",
        "Squeeze some lemon.",
      ],
    )
  ];

  List<Recipe> get recipes {
    return [..._recipes];
  }

  Recipe findById(int id) {
    return _recipes.firstWhere((recipe) => recipe.id == id);
  }
}
