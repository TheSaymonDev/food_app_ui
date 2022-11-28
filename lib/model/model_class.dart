class ModelClass{
  String imgUrl;
  String titleName;
  String rating;
  String location;
  double price;

  int quantity=1;
  int ? totalPrice;

  ModelClass(
      this.imgUrl, this.titleName, this.rating, this.location, this.price);

  static List <ModelClass> generatedModel(){
    return [
      ModelClass('images/top1.png', 'Kacchi Biriyani', ' 4.5', ' Uttara', 250),
      ModelClass('images/top2.png', 'Burger Big', ' 4.5', ' Dhanmondi', 130),
      ModelClass('images/top3.png', 'Burger Small', ' 4.5', ' Baddha', 250),
      ModelClass('images/top1.png', 'Kacchi Biriyani', ' 4.5', ' Uttara', 250),
      ModelClass('images/top2.png', 'Burger Big', ' 4.5', ' Dhanmondi', 130),
      ModelClass('images/top3.png', 'Burger Small', ' 4.5', ' Baddha', 250),
    ];
  }
}