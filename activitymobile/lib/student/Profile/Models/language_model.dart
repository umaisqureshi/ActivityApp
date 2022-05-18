class LanguageModel {
  bool isSelected;
  late String pic;
  late String name;

  LanguageModel({required this.pic, required this.name, required this.isSelected});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageModel && runtimeType == other.runtimeType && isSelected == other.isSelected && pic == other.pic && name == other.name;

  @override
  int get hashCode => isSelected.hashCode ^ pic.hashCode ^ name.hashCode;
}
