import 'package:json_annotation/json_annotation.dart';

part 'search_respo.g.dart';

@JsonSerializable()
class SearchRespo {
  @JsonKey(name: 'results')
  List<SearchResultdata> results;

  SearchRespo({this.results = const []});

  factory SearchRespo.fromJson(Map<String, dynamic> json) {
    return _$SearchRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRespoToJson(this);
}

@JsonSerializable()
class SearchResultdata {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  SearchResultdata({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchResultdata.fromJson(Map<String, dynamic> json) {
    return _$SearchResultdataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultdataToJson(this);
}
