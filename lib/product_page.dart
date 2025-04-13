import 'package:flutter/material.dart';
import 'package:my_signal_app_fltr/store/store.dart';
import 'package:my_signal_app_fltr/widgets/dashboard.widget.dart';
import 'package:signals/signals_flutter.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(color: Theme.of(context).indicatorColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Dashboard(),
          Expanded(
            child: Watch(
              (context) => Container(
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 5),
                child: ListView.separated(
                  separatorBuilder:
                      (context, index) => Divider(color: Colors.teal),
                  itemCount: store.products.value.length,
                  itemBuilder:
                      (context, index) => ListTile(
                        onTap: () {
                          store.select(store.products.value[index]);
                        },
                        trailing:
                            store.products.value[index].selected
                                ? Icon(Icons.check_box)
                                : Icon(Icons.check_box_outline_blank),
                        title: Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                "${store.products.value[index].url}",
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${store.products.value[index].name}"),
                                Text("${store.products.value[index].price}"),
                              ],
                            ),
                          ],
                        ),
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: (value) {
            if (value == 1) {
              store.addRandomProducts();
            }
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
