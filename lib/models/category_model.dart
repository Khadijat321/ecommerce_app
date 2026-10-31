class CategoryModel{
final String title;
final String imagePath;
 const  CategoryModel({
  required this.title, 
  required this.imagePath,
  });
}
List<CategoryModel> _categories = [
  CategoryModel(title: "Baby Wears", imagePath: 'assets/images/pic.jpg'),
  CategoryModel(title: "Female Wears", imagePath: 'assets/images/pic.jpg'),
  CategoryModel(title: "Male Wears", imagePath: 'assets/images/pic.jpg'),
  CategoryModel(title: "Jewelry", imagePath: 'assets/images/pic.jpg'),
  CategoryModel(title: "Scents", imagePath: 'assets/images/pic.jpg'),
  CategoryModel(title: "Shoes", imagePath: 'assets/images/pic.jpg'),
 ];
List<CategoryModel> get categories => _categories;
