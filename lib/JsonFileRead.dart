
class JsonFileRead{
  //data Type

  String? tourCategory;
  String? baseImagePath;


// constructor
  JsonFileRead(
      {

        this.tourCategory,
        this.baseImagePath,

      }
      );

  JsonFileRead.fromJson(Map<String,dynamic> json)
  {

    tourCategory = json['tourCategory'];
    baseImagePath = json['baseImagePath'];

  }
}