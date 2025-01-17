import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.image, required this.title, required this.description, required this.price});

  final String image;
  final String title;
  final String description;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("Product Details", style: TextStyle(
          fontSize: 22, fontWeight: FontWeight.w600
        ),),
        centerTitle: true,
        leading: IconButton(onPressed: ()
        {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 2.7/2,
                child: Container(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                    child: CachedNetworkImage(imageUrl: image)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(title, style:  const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(description, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w600),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text("${price.toString()}€",
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    const Text("(3.4)",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                    const Icon(Icons.star, color: Colors.yellow,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
