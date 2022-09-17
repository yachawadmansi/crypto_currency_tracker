import 'package:flutter/material.dart';
import 'Favourites.dart';
import 'HomePage/Home_page.dart';
import 'New_page.dart';
import 'Settings_Page.dart';

class bottomappbar extends StatelessWidget {
  const bottomappbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      //clipBehavior:Clip.antiAlias,
      elevation: 20.0,
      color: Colors.blueGrey[800],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            },
            icon: Icon(
              Icons.home_outlined,
              color: Colors.blueGrey[200],
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Favourites()),
              );
            },
            icon: Icon(
              Icons.favorite_border_sharp,
              //CupertinoIcons.heart_fill,
              color: Colors.blueGrey[200],
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CryptoNewsList()),
              );
            },
            icon: Icon(
              Icons.wysiwyg_rounded,
              //CupertinoIcons.news_solid,
              color: Colors.blueGrey[200],
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
            icon: Icon(
              Icons.settings_outlined,
              //CupertinoIcons.settings_solid,
              color: Colors.blueGrey[200],
            ),
          ),
        ],
      ),
    );
  }
}
