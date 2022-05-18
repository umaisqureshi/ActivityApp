class OneTimeMemberShipModel {
  late String title;
  late String subTitle;
  late String subTitle2;

  OneTimeMemberShipModel({required this.title, required this.subTitle, required this.subTitle2});
}


class MemberShipModel{
  String? price;
  String? title;
  String? subTitle;
  String? buttonText;

  MemberShipModel({this.title, this.subTitle, this.price, this.buttonText});

}