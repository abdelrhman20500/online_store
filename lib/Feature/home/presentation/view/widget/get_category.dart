import 'package:flutter/material.dart';
import 'package:online_store/Feature/home/presentation/view/widget/product_list_view.dart';

class GetCategory extends StatelessWidget {
  const GetCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()
            {
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Sports",
          style: TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        child: ProductListView(),
      ),
    );
  }
}
