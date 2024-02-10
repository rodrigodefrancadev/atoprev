class ValueObject<T> {
  final T value;

  ValueObject(this.value);

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValueObject && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => '$value';
}
