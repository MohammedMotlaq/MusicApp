import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ArtistWidget extends StatelessWidget {
  const ArtistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 400,
          margin: EdgeInsets.fromLTRB(8,0,8,25),
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
          margin: EdgeInsets.fromLTRB(8, 20, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: Text('Unknown Artist',style: TextStyle(fontSize: 15),)
              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: Text('10 Songs',style: TextStyle(fontSize: 10,color: Colors.grey),)
              ),

            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(8, 20, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: Text('Eminem',style: TextStyle(fontSize: 15),)
              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: Text('5 Songs',style: TextStyle(fontSize: 10,color: Colors.grey),)
              ),

            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(8, 20, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Unknown Artist',style: TextStyle(fontSize: 15),)
              ),
              Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('10 Songs',style: TextStyle(fontSize: 10,color: Colors.grey),)
              ),

            ],
          ),
        ),

      ],
    );
  }
}
