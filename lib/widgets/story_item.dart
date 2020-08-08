import 'package:flutter/material.dart';
import 'package:instagram_dark_ui/theme/colors.dart';

class StoryItem extends StatelessWidget {
  final String img;
  final String name;
  const StoryItem({
    Key key, this.img, this.name,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Column(
        children: <Widget>[
          Container(
            width: 53,
            height: 53,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: storyBorderColor)
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: black,
                        width: 2
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(image:
                    NetworkImage(img,),fit: BoxFit.cover)
                ),
              ),
            ),
          ),
          SizedBox(height: 8,),
          SizedBox(
            width: 70,
            child:
            Text(name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 12,
                  color: white
              ),),
          )
        ],
      ),
    );
  }
}