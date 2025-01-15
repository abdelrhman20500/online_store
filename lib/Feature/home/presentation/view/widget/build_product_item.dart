import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BuildProductItem extends StatelessWidget {
  const BuildProductItem({super.key,
    required this.title, required this.image,
    required this.description, required this.price,});

  final String title;
  final String image;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Center(
              child: CachedNetworkImage(
                  imageUrl: image, fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height*0.2,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.001),
           Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(title,
              maxLines: 2,overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.001),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(price.toString(),
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                const Spacer(),
                const Text("(3.9)",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                const Icon(Icons.star, color: Colors.yellow,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
