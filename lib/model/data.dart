
class ProductModel {
  int id;
  String image;
  String title;
  String type;

  ProductModel(this.id,this.image,this.title,this.type);
}
class Data {


  static List<ProductModel> generateCategories(){
    return [
      ProductModel(
        1,
        "assets/watch3sp.jpg",
        "Smart",
        "watch",
      ),
      ProductModel(
        2,
        "assets/watch2wo.jpg",
        "Classic",
        "watch",

      ),
      ProductModel(
        3,
        "assets/watch1.jpg",
        "Sport",
        "watch",
      ),
    ];
  }
}