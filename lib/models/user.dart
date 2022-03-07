class User {
  late String imagePath;
  late String name;
  late String email;
  late String about;
  final String balance;
  final String inCart;
  final bool isDarkMode;

  User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.about,
    required this.isDarkMode,
    required this.balance,
    required this.inCart,
  });
}
