import 'package:flutter/material.dart';

class videoPage extends StatefulWidget {
  const videoPage({super.key});

  @override
  State<videoPage> createState() => _videoPageState();
}

class _videoPageState extends State<videoPage> {

  verticalScrollitem(var size, int color, String headerText, String btnText, String date){
    return Container(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 35),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height/3.6,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                ),
                Positioned(
                  top: 10,
                  left:10,
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white,size: 40,)
                    ),
                ),
                Center(

                  child: Container(
                    height: size.height/3.6,
                    child: Icon(Icons.play_circle, color: Colors.white,size: 65,),
                  ),
                ),
                Positioned(
                  child: Icon(Icons.share, color: Colors.white, size: 40,),
                  top: 10,
                  right: 10,
                ),
              ],
            ),
            Container(
              height: size.height/1.5,
              child: SingleChildScrollView(
                child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:16.0,right: 16.0,top: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("4 SURPRISING LININGS TO COVID-19",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,),
                            maxLines: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0, bottom: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Oliver Isaacs",
                                  style: TextStyle(fontSize: 19, color: Color(0xFF642C20),
                                    overflow: TextOverflow.ellipsis,),
                                  maxLines: 1,
                                ),
                                Text("May 24, 2020",
                                  style: TextStyle(fontSize: 19, color: Color(0xFF642C20),
                                    overflow: TextOverflow.ellipsis,),
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                          Text("From a decrease in pollution to the exposure of flaws in our systems, "
                              "there are some good things to come of the coronavirus pandemic.",
                            style: TextStyle(fontSize: 19,
                              overflow: TextOverflow.ellipsis,),
                            maxLines: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                            child: Divider(
                              color: Colors.grey[400],
                              thickness: 1.0,
                            ),
                          ),
                          Text(
                            "Related videos",
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      //  height: size.height/3.2,
                      child: ListView.builder(
                        primary: true,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 100,
                        itemBuilder: (context, index){
                          return verticalScrollitem(size,0xff2222555,"Recent, there were many pieces about how the new dsnekf","Forbes.com","May 24, 2020");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
