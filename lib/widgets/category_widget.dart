import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/entertaiment.avif'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Text(
          'Entertainment',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
