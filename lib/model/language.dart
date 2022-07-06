class Language {
  String name = '';
  String language = '';
  String country = '';
  bool isSelect = false;

  Language(this.name, this.language, this.country , {this.isSelect = false});

  Language.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        language = json['language'],
        country = json['country'],
        isSelect = json['isSelect'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'language': language,
    'country': country,
    'isSelect': isSelect,
  };
}
