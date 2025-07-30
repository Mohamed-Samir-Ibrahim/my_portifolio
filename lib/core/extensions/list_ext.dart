extension ListExtension<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;

  T? get lastOrNull => isEmpty ? null : last;

 List<T> get50Percent() {
    final length = this.length;
    if (length == 0) return [];

    if (length <= 3) return this;

    final index = length * 0.5;

    if (index <= 2) return sublist(0, 3);

    return sublist(0, index.toInt());
  }
}
