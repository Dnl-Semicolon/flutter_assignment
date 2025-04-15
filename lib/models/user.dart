class User {
  final String id;
  final String name;
  final String initials;
  final int helpRequested;
  final int helpOffered;
  final double rating;

  User({
    required this.id,
    required this.name,
    required this.initials,
    required this.helpRequested,
    required this.helpOffered,
    required this.rating,
  });
}