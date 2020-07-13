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
      title: "Avacado Toast with Eggs and Pine Nuts",
      likes: 205,
      time: 15,
      imageUrl: 'assets/images/food_1.jpg',
      categories: ['Breakfast', 'Quick'],
      serving: 1,
      calories: 240,
      protien: 10,
      fat: 8,
      carbs: 25,
      overview: "testing note",
      ingredients: ['test 1', 'test 1', 'test 1', 'test 1'],
      directions: [
        'Make pound cake: Preheat oven to 325°. Butter a 9"-by-5"-inch loaf pan. In a medium bowl, whisk together flour, oats, salt, and baking powder.',
        'In a large bowl, using an electric mixer, beat the butter and sugar until very pale and fluffy, about 5 minutes. Beat in vanilla. Add eggs, one at a time, beating well between each addition. Add half the flour mixture, beat until just combined. Add sour cream and remaining flour mixture, beat until just combined. Stir in the chocolate chips, the peanut butter chips, potato chips, and pretzels. ',
        'Scrape batter into prepared pan and smooth top with a spatula. Bake until a toothpick inserted in the center comes out clean and top is golden, about 70 to 80 minutes. Let cool completely. ',
        'Make chocolate topping: In a medium microwave safe bowl, combine chocolate chips and heavy cream. Microwave until melted. Stir to combine. Drizzle on top of pound cake and sprinkle cake with more oats, peanut butter chips, potato chips, and mini pretzels. ',
        'Let set in refrigerator, about 20 minutes, before slicing. '
      ],
    ),
    Recipe(
      id: 2,
      title: "Cobb Salad",
      likes: 10,
      time: 30,
      imageUrl: 'assets/images/food_2.jpg',
      categories: ['Breakfast', 'Quick'],
      serving: 2,
      calories: 240,
      protien: 10,
      fat: 8,
      carbs: 25,
      overview: "testing note",
      ingredients: ['test 1', 'test 1', 'test 1', 'test 1'],
      directions: [
        'Make pound cake: Preheat oven to 325°. Butter a 9"-by-5"-inch loaf pan. In a medium bowl, whisk together flour, oats, salt, and baking powder.',
        'In a large bowl, using an electric mixer, beat the butter and sugar until very pale and fluffy, about 5 minutes. Beat in vanilla. Add eggs, one at a time, beating well between each addition. Add half the flour mixture, beat until just combined. Add sour cream and remaining flour mixture, beat until just combined. Stir in the chocolate chips, the peanut butter chips, potato chips, and pretzels. ',
        'Scrape batter into prepared pan and smooth top with a spatula. Bake until a toothpick inserted in the center comes out clean and top is golden, about 70 to 80 minutes. Let cool completely. ',
        'Make chocolate topping: In a medium microwave safe bowl, combine chocolate chips and heavy cream. Microwave until melted. Stir to combine. Drizzle on top of pound cake and sprinkle cake with more oats, peanut butter chips, potato chips, and mini pretzels. ',
        'Let set in refrigerator, about 20 minutes, before slicing. '
      ],
    ),
    Recipe(
      id: 3,
      title: "Chicken Sandwich",
      likes: 200,
      time: 5,
      imageUrl: 'assets/images/food_3.jpg',
      categories: ['Breakfast', 'Quick'],
      serving: 2,
      calories: 240,
      protien: 10,
      fat: 8,
      carbs: 25,
      overview: "testing note",
      ingredients: ['test 1', 'test 1', 'test 1', 'test 1'],
      directions: [
        'Make pound cake: Preheat oven to 325°. Butter a 9"-by-5"-inch loaf pan. In a medium bowl, whisk together flour, oats, salt, and baking powder.',
        'In a large bowl, using an electric mixer, beat the butter and sugar until very pale and fluffy, about 5 minutes. Beat in vanilla. Add eggs, one at a time, beating well between each addition. Add half the flour mixture, beat until just combined. Add sour cream and remaining flour mixture, beat until just combined. Stir in the chocolate chips, the peanut butter chips, potato chips, and pretzels. ',
        'Scrape batter into prepared pan and smooth top with a spatula. Bake until a toothpick inserted in the center comes out clean and top is golden, about 70 to 80 minutes. Let cool completely. ',
        'Make chocolate topping: In a medium microwave safe bowl, combine chocolate chips and heavy cream. Microwave until melted. Stir to combine. Drizzle on top of pound cake and sprinkle cake with more oats, peanut butter chips, potato chips, and mini pretzels. ',
        'Let set in refrigerator, about 20 minutes, before slicing. '
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
