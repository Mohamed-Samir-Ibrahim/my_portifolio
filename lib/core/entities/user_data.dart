class UserData {
  final String name;
  final String email;
  final String phone;
  final String description;
  final String githubUrl;
  final String linkedinUrl;
  // final String twitterUrl;
  final List<String> roles;
  final String city;

  const UserData(
      {required this.name,
      required this.email,
      required this.phone,
      required this.description,
      required this.githubUrl,
      required this.linkedinUrl,
      // required this.twitterUrl,
      required this.roles,
      required this.city});

  String get whatsappUrl => 'https://wa.me/$phone';
}
