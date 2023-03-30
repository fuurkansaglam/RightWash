extension ImagePath on String {
  String get toPng => "assets/images/$this.png";

  String get toJpg => "assets/images/$this.jpg";
}
