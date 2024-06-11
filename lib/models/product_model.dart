class ProductModel {
  final String productName;
  final String productImage;
  final int productPrice;
  final String productId;
  final int productQuantity;
  List<dynamic> productUnit;
  ProductModel(
      {required this.productQuantity,
      required this.productId,
      required this.productUnit,
      required this.productImage,
      required this.productName,
      required this.productPrice});
}
