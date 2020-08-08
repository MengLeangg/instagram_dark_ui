import 'package:flutter/material.dart';
import 'package:instagram_dark_ui/constant/post_json.dart';
import 'package:instagram_dark_ui/constant/story_json.dart';
import 'package:instagram_dark_ui/theme/colors.dart';
import 'package:instagram_dark_ui/widgets/story_item.dart';
import 'package:instagram_dark_ui/widgets/post_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(

        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 2, left: 10,bottom: 10, top: 10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(image: NetworkImage(profile),fit: BoxFit.cover)
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 19,
                                height: 19,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: white
                                ),
                                child: Icon(Icons.add_circle,color: buttonFollowColor,size: 19,),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(width: 70,
                      child: Text(name,
                        style: TextStyle(
                          fontSize: 12,
                          color: white
                        ),)
                      ,)
                  ],
                ),
              ),
              Row(
                  children: List.generate(stories.length, (index) {
                    return StoryItem(
                      img: stories[index]['img'],
                      name: stories[index]['name'],
                    );
                  })),

            ],),
          ),
          Divider(
            color: white.withOpacity(0.3),
          ),
          Column(
            children: List.generate(posts.length, (index){
              return PostItem(
                postImg: posts[index]['postImg'],
                profileImg: posts[index]['profileImg'],
                name: posts[index]['name'],
                caption: posts[index]['caption'],
                isLoved: posts[index]['isLoved'],
                viewCount: posts[index]['commentCount'],
                likedBy: posts[index]['likedBy'],
                dayAgo: posts[index]['timeAgo'],
              );
            }),
          )
        ],
      ),
    );
  }
}
