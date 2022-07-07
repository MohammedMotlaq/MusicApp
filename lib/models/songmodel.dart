class Song{
  String? songName;
  String? author;
  String? image;
  Song(Map songs){
    this.songName = songs['songName'];
    this.author = songs['author'];
    this.image = songs['image'];
  }
}