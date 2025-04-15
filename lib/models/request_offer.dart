class RequestOffer {
  final String id;
  final String userId;
  final String userName;
  final String userInitials;
  final bool isRequest; // true for request, false for offer
  final String title;
  final String description;
  final String category;
  final String timeFrame;
  final DateTime createdAt;
  final double distance; // miles away

  RequestOffer({
    required this.id,
    required this.userId,
    required this.userName,
    required this.userInitials,
    required this.isRequest,
    required this.title,
    required this.description,
    required this.category,
    required this.timeFrame,
    required this.createdAt,
    required this.distance,
  });
}