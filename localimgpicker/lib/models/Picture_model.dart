class Picture{
  final int id;
  final String imgsource;

  Picture({required this.id,required this.imgsource});

  factory Picture.fromJson(Map<String,dynamic> json) => Picture(
    id: json['id'],
     imgsource: json['imgsource']
  );

  Map<String,dynamic> toJson()=>{
    'id': id,
    'imgsource': imgsource
  };
}