import 'package:flutter/material.dart';
import 'package:online_store/Feature/home/data/models/category_model.dart';
import 'package:online_store/Feature/home/presentation/view/widget/get_category.dart';

class BuildAllCategoryItem extends StatelessWidget {
   const BuildAllCategoryItem({super.key, required this.category,});

   final CategoryModel category;
   @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:
        (context)=> GetCategory(
          title: category.name,
        )));
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
          child: Text(category.name,textAlign: TextAlign.center,
            maxLines: 1,overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
