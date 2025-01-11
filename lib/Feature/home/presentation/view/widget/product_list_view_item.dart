import 'package:flutter/material.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.0 / 3,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
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
                child: const AspectRatio(
                  aspectRatio: 14 / 12,
                  child: Image(
                    image: AssetImage("assets/images/picture.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.001),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text("Title",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.001),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text("Description Description Description Description Description",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text("33 p",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                    Spacer(),
                    Text("(3.9)",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                    Icon(Icons.star, color: Colors.yellow,)
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
