import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/sports.avif',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            'how you can win the game with one step how you can win the game with one step how you can win the game with one step ',
            style: TextStyle(
              fontSize: 18,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'how you can win the game with one step how you can win the game with one step how you can win the game with one step ',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
