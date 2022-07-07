import '../models/songmodel.dart';
class songRes{
  Song? song;
  songRes(Map data){
    this.song = Song(data ['song']);
  }
}