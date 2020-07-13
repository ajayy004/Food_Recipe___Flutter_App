class Recipes {
  String title;
  int likes;
  int time;
  String imageUrl;

  Recipes({
    this.title,
    this.likes,
    this.time,
    this.imageUrl,
  });
}

List<Recipes> recipes = [
  Recipes(
    title: "Avacado Toast with Eggs and Pine Nuts",
    likes: 205,
    time: 15,
    imageUrl: 'assets/images/food_1.jpg',
  ),
  Recipes(
    title: "Cobb Salad",
    likes: 10,
    time: 30,
    imageUrl: 'assets/images/food_2.jpg',
  ),
  Recipes(
    title: "Chicken Sandwich",
    likes: 200,
    time: 5,
    imageUrl: 'assets/images/food_3.jpg',
  )
];
