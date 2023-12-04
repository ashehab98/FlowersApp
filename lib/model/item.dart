class Item {
  String imgPath;
  double price;
  String location;
  Item({
    required this.imgPath,
    required this.price,
    this.location="main branch",
  });
}

final List<Item> items = [
  Item(price: 412.99, imgPath: "assets/img/1.webp",location: "flower shop"),
  Item(price: 152.99, imgPath: "assets/img/2.webp"),
  Item(price: 124.99, imgPath: "assets/img/3.webp"),
  Item(price: 122.99, imgPath: "assets/img/4.webp"),
  Item(price: 127.949, imgPath: "assets/img/5.webp"),
  Item(price: 128.99, imgPath: "assets/img/6.webp"),
  Item(price: 129.99, imgPath: "assets/img/7.webp"),
  Item(price: 121.99, imgPath: "assets/img/8.webp"),
];
