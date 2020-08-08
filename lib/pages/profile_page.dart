import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_dark_ui/constant/story_json.dart';
import 'package:instagram_dark_ui/theme/colors.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Stack(
        children: <Widget>[
          _buildPostList(context),
          _buildHeader(context),
        ],
      ),
    );
  }

  _buildHeader(context) {
    return Positioned(
      top: 10,
      child: Container(
        height: 350,
        width: MediaQuery.of(context).size.width,
        color: black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50,),
            _buildAvatar(),
            Text(
              "leang_leang",
              style: TextStyle(color: white, fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10,),
            Text(
              "My name is Toung Mengleang",
              style: TextStyle(color: white, fontSize: 12),
            ),
            SizedBox(height: 5,),
            Text(
              "I'm Web Developer",
              style: TextStyle(color: white, fontSize: 12),
            ),
            SizedBox(
              height: 10,
            ),
            _buildUserState(),
            SizedBox(height: 20,),
            _buildButton(),
          ],
        ),
      ),
    );
  }

  _buildPostList(context){
    return Container(
      color: Colors.black54,
      child: GridView.count(
        padding: EdgeInsets.fromLTRB(10, 365, 10, 110),
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width * 0.4,
            width: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://scontent.fpnh1-1.fna.fbcdn.net/v/t1.0-9/67578029_2648726962079388_8110549102837628928_o.jpg?_nc_cat=102&_nc_sid=174925&_nc_eui2=AeG0_ERFZXC4CAru4-qs6fDui8ctckH6EO6Lxy1yQfoQ7tQ33Yn1j8pqM6p4B-9ZS2BznTsDppKGiLLKl1TZhbHj&_nc_ohc=YSVLp_WTJDEAX_s1cf4&_nc_ht=scontent.fpnh1-1.fna&oh=665e35ce5f0cc59f21cf8c00a9b942f0&oe=5F542861')
              )
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.4,
            width: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://scontent.fpnh1-1.fna.fbcdn.net/v/t1.0-9/67578029_2648726962079388_8110549102837628928_o.jpg?_nc_cat=102&_nc_sid=174925&_nc_eui2=AeG0_ERFZXC4CAru4-qs6fDui8ctckH6EO6Lxy1yQfoQ7tQ33Yn1j8pqM6p4B-9ZS2BznTsDppKGiLLKl1TZhbHj&_nc_ohc=YSVLp_WTJDEAX_s1cf4&_nc_ht=scontent.fpnh1-1.fna&oh=665e35ce5f0cc59f21cf8c00a9b942f0&oe=5F542861')
                )
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.4,
            width: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://scontent.fpnh1-1.fna.fbcdn.net/v/t1.0-9/67578029_2648726962079388_8110549102837628928_o.jpg?_nc_cat=102&_nc_sid=174925&_nc_eui2=AeG0_ERFZXC4CAru4-qs6fDui8ctckH6EO6Lxy1yQfoQ7tQ33Yn1j8pqM6p4B-9ZS2BznTsDppKGiLLKl1TZhbHj&_nc_ohc=YSVLp_WTJDEAX_s1cf4&_nc_ht=scontent.fpnh1-1.fna&oh=665e35ce5f0cc59f21cf8c00a9b942f0&oe=5F542861')
                )
            ),
          ),
        ],
      ),
    );
  }

  _buildButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.orange.shade400,
                Colors.pink
              ],
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            "Follow",
            style: TextStyle(
                color: white, fontWeight: FontWeight.w500
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: white
          ),
          child: Icon(Icons.settings),
        )
      ],
    );
  }

  _buildUserState(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Text("19",  style: TextStyle(color: white, fontSize: 16),),
                Text("Posts",  style: TextStyle(color: white, fontSize: 13),),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Text("227",  style: TextStyle(color: white, fontSize: 16),),
                Text("Follower",  style: TextStyle(color: white, fontSize: 13),),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Text("220",  style: TextStyle(color: white, fontSize: 16),),
                Text("Following",  style: TextStyle(color: white, fontSize: 13),),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildAvatar() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          width: 73,
          height: 73,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.orange.shade400, Colors.pink],
              ),
              borderRadius: BorderRadius.circular(50)),
        ),
        CircleAvatar(
          backgroundColor: black,
          radius: 35,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://scontent.fpnh1-2.fna.fbcdn.net/v/t1.0-9/87902836_2852025668416182_5216468558174748672_o.jpg?_nc_cat=111&_nc_sid=09cbfe&_nc_eui2=AeH9kdQ7J67IihKYfGqg-1q2pLlrK8nu39akuWsrye7f1k6u7D0xqcNKPB_fo9XOFZAkbjy6sw1EO-eWghphV-yI&_nc_ohc=JKN2IcM7FN8AX_KsNl9&_nc_ht=scontent.fpnh1-2.fna&oh=886192f56451951311d540c095dcb3d1&oe=5F5373C3'),
          radius: 30,
        ),
      ],
    );
  }
}
