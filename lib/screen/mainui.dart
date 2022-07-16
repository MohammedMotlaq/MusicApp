import 'package:flutter/material.dart';
import 'musicui.dart';

class Main_UI extends StatefulWidget {
  const Main_UI({Key? key}) : super(key: key);

  @override
  State<Main_UI> createState() => _Main_UIState();
}

class _Main_UIState extends State<Main_UI> {
  int index = 0;
  bool iconColor = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          title: Row(
            children: [
              Expanded (
                child: Container(
                  height: 40,
                  child: TextField(
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search songs, playlists, and artists",
                      suffixIcon: Icon(Icons.mic),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                          width: 0,
                          color: Colors.white,
                          style: BorderStyle.none,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(top: 5),
                    ),
                  ),
                ),
              ),
            ],
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                color: Colors.black,
                icon: Image.asset('assets/icons/settings.png',width: 24,height: 24,),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.fromLTRB(25, 75, 10, 80),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('assets/images/logo.jpg',fit: BoxFit.fill,),
                      )
                  ),
                  Text('Mohammed Motlaq',style: TextStyle(fontSize: 15),)

                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/icons/setting.png', width: 30,height: 30,),
                    trailing:Icon(Icons.arrow_forward_ios,size: 15,)  ,
                    title: Text("Settings",style: TextStyle(fontSize: 17),),
                    onTap: (){
                      Navigator.pop(context);

                    },
                  ),
                  const Divider(
                    endIndent:20 ,
                    indent: 70,
                    thickness: 0.1,
                    color: Colors.black,
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/icons/customer-feedback.png', width: 30,height: 30,),
                    trailing:Icon(Icons.arrow_forward_ios,size: 15,)  ,
                    title: Text("Feedback",style: TextStyle(fontSize: 17),),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(
                    endIndent:20 ,
                    indent: 70,
                    thickness: 0.1,
                    color: Colors.black,
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/icons/contract.png', width: 30,height: 30,),
                    trailing:Icon(Icons.arrow_forward_ios,size: 15,),
                    title: Text("User Agreement",style: TextStyle(fontSize: 17),),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(
                    endIndent:20 ,
                    indent: 70,
                    thickness: 0.1,
                    color: Colors.black,
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/icons/privacy.png', width: 30,height: 30,),
                    trailing:Icon(Icons.arrow_forward_ios,size: 15,),
                    title: Text("Privacy Policy",style: TextStyle(fontSize: 17),),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(
                    endIndent:20 ,
                    indent: 70,
                    thickness: 0.1,
                    color: Colors.black,
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/icons/update.png', width: 30,height: 30,),
                    trailing:Icon(Icons.arrow_forward_ios,size: 15,),
                    title: Text("Update automatically",style: TextStyle(fontSize: 17),),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(
                    endIndent:20 ,
                    indent: 70,
                    thickness: 0.1,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
            },
            child: const Text('Music UI'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (i){
            index=i;
            if (i == 0){
              //Navigator.of(context).pop(MusicUI());
              //Navigator.push(context, MaterialPageRoute(builder: (context) => MusicUI()));
              //Navigator.pop(context,[MusicUI()]);
            }else if(i == 1){

            }
            setState ((){

            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
              icon:Icon(Icons.headphones_rounded,size: 35,),
              label: 'My Music',
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.music_video,size: 35,),
                label: 'Watch'
            ),
          ],
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
