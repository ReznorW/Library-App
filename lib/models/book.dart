class Book {
  final int id;
  final String title;

  Book({this.id, this.title});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
    };
  }
}
