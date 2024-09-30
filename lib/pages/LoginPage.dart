import 'package:flutter/material.dart';
import 'package:lab1/pages/videoPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  horizontalScrollitem(var size, int color, String headingText, String fullDate){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const videoPage()),
        );
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: size.height/5,
              width: size.width/1.5,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("images/avatar.png", fit: BoxFit.cover,)
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left:15,
            child: Container(
                width: size.width/2.2,
                child: Text(headingText,
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 22,overflow: TextOverflow.ellipsis,),maxLines:2
                ),
            ),
          ),
          Positioned(
            bottom: 8,
            left:15,
            child: Container(
              width: size.width/2.2,
              child: Text(fullDate,
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,
                    fontSize: 15,overflow: TextOverflow.ellipsis,),maxLines:1
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right:5,
            child: Icon(
              Icons.play_circle,
              size: 50,
              color: Colors.white,
            ),
          )
        ],
      ),
    );

  }

  verticalScrollitem(var size, int color, String headerText, String btnText, String date){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const videoPage()),
        );
      },
      child: Container(
        height: size.height/7,
        width: size.width/1.1,
        margin: EdgeInsets.only(left: 10, bottom: 10),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width/3,
                  decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  width: size.width/3,
                  child: Center(
                    child: Icon(
                      Icons.play_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(width: 20,),
            Container(
              width: size.width/2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(headerText,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,
                      overflow: TextOverflow.ellipsis,),maxLines: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: size.width/4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.redAccent
                        ),
                        child: Text(
                            btnText,
                            style: TextStyle(color: Colors.white,
                                overflow: TextOverflow.ellipsis),
                            maxLines: 1,
                        ),
                      ),
                      Text(date,
                        style: TextStyle(color: Colors.grey[500])
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text("eWs")),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height/5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                itemBuilder: (context, index){
                  return horizontalScrollitem(size, 0xff5121fff, "test", "sept 26");
                },
              ),
            ),
            SizedBox( height: 10,),
            Container(
              height: size.height/1.5,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 100,
                itemBuilder: (context, index){
                  return verticalScrollitem(size,0xff2222555,"Recent, there were many pieces about how the new dsnekf","Forbes.com","May 24, 2020");
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}