import 'package:flutter/material.dart';
import 'package:poduct_app_with_signals/app_color.dart';
import 'package:poduct_app_with_signals/product._list.dart';
import 'package:poduct_app_with_signals/product.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text("Bashboard", style: TextStyle(fontSize: 25)),
          const SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Total: ${productList.countItem}",
                      style: textStyle(),
                    ),
                    Text(
                      "Selected:4",
                      style: textStyle(),
                    ),
                    Text(
                      "price:7",
                      style: textStyle(),
                    )
                  ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    Product product = productList.value[index];
                    return Builder(
                      builder: (context) {
                        return ListTile(
                          title: Text(product.title),
                          subtitle: Text("${product.price}"),
                          leading: CircleAvatar(
                              backgroundColor: AppColor.light,
                              child: Text("${product.shortLabel}",
                                  style: const TextStyle(color: AppColor.dark))),
                          trailing: IconButton(
                              onPressed: () => product.check(),
                              icon: product.isSelected
                                  ? const Icon(Icons.check_box)
                                  : const Icon(Icons.check_box_outline_blank)),
                        );
                      }
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(color: AppColor.light),
                  itemCount: productList.countItem))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Ajouter un product",
        child: const Icon(Icons.add),
          onPressed: () =>
              productList.add = Product(title: "ordinateur", price: 18000)),
    );
  }

  TextStyle textStyle() => const TextStyle(
      color: AppColor.dark, fontWeight: FontWeight.bold, fontSize: 17);
}
