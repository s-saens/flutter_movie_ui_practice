import 'package:flutter/material.dart';
import 'package:flutter_movie_ui_practice/data/d_user.dart';

class UserCard extends StatelessWidget {
  final UserModel user;

  const UserCard({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(2, 3),
              blurRadius: 20,
            ),
          ],
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserCardItem(
                    Icons.account_circle_rounded, '${user.id}, ${user.name}'),
                UserCardItem(Icons.email_rounded, user.email),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget UserCardItem(IconData iconData, String content) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Row(
      children: [
        Transform.translate(
          offset: const Offset(0, 2.5),
          child: Icon(
            iconData,
            size: 25,
          ),
        ),
        const SizedBox(width: 10),
        Text(content),
      ],
    ),
  );
}
