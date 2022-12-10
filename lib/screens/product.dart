import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  static const String idScreen = "product";

  @override
  void initState() {
    getApidata();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // getList(),
            GestureDetector(
                onTap: () {
                  getApidata();
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(156, 100, 134, 6),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      "Reload",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget getList() {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 5,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(5, 20, 10, 5),
                  child: Text('$index'),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Future<void> getApidata() async {
    String url =
        'http://15.207.2.231:9500/product/product-search?url_key=makeup&productSorting=&page_size=10&page_no=1&searchByKeyword=&searchByWidgetProduct=';

    var result = await http.get(Uri.parse(url));
    print(result.body);
  }
}
