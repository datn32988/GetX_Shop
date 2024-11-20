import 'dart:convert';

import 'package:chodotot_getx/Model/Product.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    getProduct();
    getProductUser();
  }

  RxList<ProductModel> products = <ProductModel>[].obs;
  RxList<ProductModel> productForYou = <ProductModel>[].obs;
  var isLoading = false.obs;

  Future<void> getProduct() async {
    isLoading(true);
    try {
      final url = Uri.parse('https://fakestoreapi.com/products');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        products.value =
            data.map((json) => ProductModel.fromJson(json)).toList();
        print("Products fetched successfully: ${products.length} items.");
      } else {
        Get.snackbar('Error', 'Failed to load products');
      }
    } catch (e) {
      Get.snackbar('Error', 'Error fetching products: $e');
    } finally {
      isLoading(false);
    }
  }

  Future<void> getProductUser() async {
    isLoading(true);
    try {
      final url = Uri.parse('https://fakestoreapi.com/products');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        productForYou.value =
            data.map((json) => ProductModel.fromJson(json)).toList();
        print("Products fetched successfully: ${products.length} items.");
      } else {
        Get.snackbar('Error', 'Failed to load products');
      }
    } catch (e) {
      Get.snackbar('Error', 'Error fetching products: $e');
    } finally {
      isLoading(false);
    }
  }
}
