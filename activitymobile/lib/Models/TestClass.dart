import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';

class TestClass {
  List<MapItems>? data;

  TestClass({this.data});

  TestClass.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data =  [];
     groupBy((json['data']), (Map<String, dynamic> item) => DateTime.parse(item['groupby']).hour).values.forEach((element) {
       data!.add(MapItems.fromMap(element));
     });

    }
  }

  TestClass.fromJsonHistory(Map<String, dynamic> json, DateTime date) {
    if (json['data'] != null) {
      print("Date ${date.toIso8601String()}");
      data =  [];
      List<Map<String, dynamic>> list = json['data'];
      var list2 = list.where((element) => DateTime.parse(element['groupby']).month == date.month);
      groupBy(list2, (Map<String, dynamic> item) => DateTime.parse(item['groupby']).day).forEach((key, value) {
        print("history map "+ key.toString());
        MapItems.fromMap(value).items!.forEach((element) {
         print(element.groupby);
        });
        data!.add(MapItems.fromMap(value));
      });
    }
  }

}

class MapItems{
  List<Data>? items;

  MapItems({this.items});

  MapItems.fromMap(List<Map<String, dynamic>> value){
    items = [];
    value.forEach((element) {
      items!.add(Data.fromJson(element));
    });
  }

}

class Data {
  String? name;
  String? location;
  String? rating;
  int? credit;
  String? image;
  String? description;
  String? groupby;

  Data(
      {this.name,
        this.location,
        this.rating,
        this.credit,
        this.image,
        this.description, this.groupby});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    location = json['location'];
    rating = json['rating'];
    credit = json['credit'];
    image = json['image'];
    description = json['description'];
    groupby = json['groupby'];
  }

  Data.fromGroupMap(Map<String, dynamic> json) {
    name = json['name'];
    location = json['location'];
    rating = json['rating'];
    credit = json['credit'];
    image = json['image'];
    description = json['description'];
    groupby = json['groupby'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['location'] = this.location;
    data['rating'] = this.rating;
    data['credit'] = this.credit;
    data['image'] = this.image;
    data['description'] = this.description;
    data['groupby'] = this.groupby;
    return data;
  }
}