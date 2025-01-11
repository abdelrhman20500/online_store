import 'package:flutter/material.dart';
import 'package:online_store/Feature/home/presentation/view/widget/get_category.dart';

class BuildAllCategoryItem extends StatelessWidget {
  const BuildAllCategoryItem({super.key,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:
        (context)=>const GetCategory()));
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(22),
        ),
        child: const Center(
          child: Text("Sports",
            style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
