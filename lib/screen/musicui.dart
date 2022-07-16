import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:music_app/screen/watchui.dart';

import '../widgets/albumswidget.dart';
import '../widgets/artistwidget.dart';
import '../widgets/folderwidget.dart';
import '../widgets/settingwidget.dart';
import '../widgets/songswidget.dart';

class MusicUI extends StatefulWidget {
  //const MusicUI({Key? key}) : super(key: key);

  @override
  State<MusicUI> createState() {
    return MusicScreen();
  }
}

class MusicScreen extends State<MusicUI> {
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
                      cursorColor: Colors.black,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Colors.grey.shade600,),
                        hintText: "Search songs, playlists, and artists",
                        suffixIcon: Icon(Icons.mic,color: Colors.grey.shade600,),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
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
            bottom: const TabBar(
              tabs: [
                Text(
                  'Songs',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  'Artists',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  'Albums',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  'Folders',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
              unselectedLabelColor: Color(0x77252424),
              labelColor: Color(0xFF000000),
              indicatorColor: Colors.purple,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 5,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
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
        body: TabBarView(
          children: [
            SongsWidget(),
            ArtistWidget(),
            AlbumWidget(),
            FolderWidget(),
          ],
        ),
        bottomSheet: Container(
          height: 65,
          color: Colors.white,
          child: Row(
            children: [
              Lottie.asset('assets/animations/playdisk.json',width: 60,height: 60),
              Container(
                width: 220,
                height: 45,
                alignment: AlignmentDirectional.centerStart,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Eminem - The Real Slim Shady (Official Video - Clean Version)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),maxLines: 1 ,overflow: TextOverflow.ellipsis,),
                      Container(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text('Unknown artist',style: TextStyle(fontSize: 10,color: Colors.grey),maxLines: 1 ,overflow: TextOverflow.ellipsis,)
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.play_circle_outline,size: 32,color: Colors.grey.shade500,),
                    Icon(Icons.skip_next,size: 32,color: Colors.grey.shade700,),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (i){
            index=i;
            if (i == 0){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MusicUI();
                })
              );
            }else if(i == 1){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Watch_UI();
              })
              );
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
