import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/dummy-data.dart';
class AlbumWidget extends StatelessWidget {
  const AlbumWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 400,
          margin: EdgeInsets.fromLTRB(8,0,8,20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.play_circle,size: 32,color: Colors.deepPurple,),
                  Text('  Shuffle playback',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset('assets/icons/sort.png',width: 24,height: 24,),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: post.length-10,
                itemBuilder:(BuildContext context, int index){
                  return Container(
                    width: 400,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 40,
                          child: Image.asset(post[index].song!.image!,fit: BoxFit.fill,),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width:280,
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text(post[index].song!.songName!,style: TextStyle(fontSize: 15),maxLines: 1 ,overflow: TextOverflow.ellipsis,)
                                ),
                                Container(
                                    width: 280,
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text('Unknown Artist',style: TextStyle(fontSize: 12,color: Colors.grey),maxLines: 1 ,overflow: TextOverflow.ellipsis,)
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 17,),
                          ],
                        ),
                      ],
                    ),
                  );
                }

            )
        ),
      ],
    );
  }
}
