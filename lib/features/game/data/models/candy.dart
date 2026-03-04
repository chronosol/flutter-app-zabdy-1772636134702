class Candy {
  final int type;

  const Candy({required this.type});

  Candy copyWith({int? type}) {
    return Candy(type: type ?? this.type);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Candy && runtimeType == other.runtimeType && type == other.type;

  @override
  int get hashCode => type.hashCode;

  @override
  String toString() => 'Candy(type: $type)';
}
