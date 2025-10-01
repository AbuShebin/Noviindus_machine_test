class User {
  final int id;
  final String name;
  final String phone;
  final String email;
  final String username;
  final bool isAdmin;
  final bool isActive;
  final DateTime createdAt;

  const User({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.username,
    required this.isAdmin,
    required this.isActive,
    required this.createdAt,
  });
}
