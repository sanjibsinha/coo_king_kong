enum Complexity {
  simple,
  complex,
}

class LorenIpsumFood {
  final String id;
  final List<String> categoryID;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final bool isVegan;
  final bool isVegetarian;

  const LorenIpsumFood({
    required this.id,
    required this.categoryID,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.isVegan,
    required this.isVegetarian,
  });
}
