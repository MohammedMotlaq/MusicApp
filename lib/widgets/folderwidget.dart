import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FolderWidget extends StatelessWidget {
  const FolderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 400,
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.play_circle,size: 32,color: Colors.deepPurple,),
                  Text('  Shuffle playback',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 400,
          margin: EdgeInsets.fromLTRB(8,20,8,0),
          child: Row(
            children: [
              SizedBox(
                child: Icon(Icons.folder,size: 50,color: Colors.purple.shade50,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: AlignmentDirectional.centerStart,
                        margin: EdgeInsets.only(left: 4),
                        child: Text('Music',style: TextStyle(fontSize: 17,),)
                      ),
                      Container(
                          alignment: AlignmentDirectional.centerStart,
                          margin: EdgeInsets.only(left: 4),
                          child: Text('10 Songs | /storageemulated/0/Music/',style: TextStyle(fontSize: 10,color: Colors.grey),)
                      ),
                    ],
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                      margin: EdgeInsets.only(left: 109),
                    child: Icon(Icons.more_vert,size: 20,color: Colors.grey,)
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 400,
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              SizedBox(
                child: Icon(Icons.folder,size: 50,color: Colors.purple.shade50,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          alignment: AlignmentDirectional.centerStart,
                          margin: EdgeInsets.only(left: 4),
                          child: Text('SnapTube',style: TextStyle(fontSize: 17,),)
                      ),
                      Container(
                          alignment: AlignmentDirectional.centerStart,
                          margin: EdgeInsets.only(left: 4),
                          child: Text('60 Songs | /storageemulated/0/SnapTube/',style: TextStyle(fontSize: 10,color: Colors.grey),)
                      ),
                    ],
                  ),
                  Container(
                      alignment: AlignmentDirectional.centerEnd,
                      margin: EdgeInsets.only(left: 90),
                      child: Icon(Icons.more_vert,size: 20,color: Colors.grey,)
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}
