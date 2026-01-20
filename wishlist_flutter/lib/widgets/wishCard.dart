import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishCard extends StatelessWidget {
  final String title;
  final String descrpition;
  final bool isLiked;
  final VoidCallback? onLike;
  final VoidCallback? onTap;
  const WishCard({
  super.key,
  required this.title,
  required this.descrpition,
  required this.isLiked,
  required this.onLike,
  this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: CupertinoColors.systemBackground,
          borderRadius: BorderRadius.circular(16),
          //checar esto
          boxShadow: [BoxShadow(color: CupertinoColors.black.withOpacity(0.08),
          blurRadius: 10,
          offset: Offset(0, 4),
          ),
          ],
          ),
          child: Row(children: [
            Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(
                fontSize: 
                17,
                fontWeight: FontWeight.w600,
              )),
              if (descrpition.isNotEmpty) ...[
                const SizedBox( height: 6,),
                Text(descrpition, style: TextStyle(fontSize: 14, color: CupertinoColors.systemGrey,
                ),)
              ]

            ],
          ))],),
        ),
        );
  }
}