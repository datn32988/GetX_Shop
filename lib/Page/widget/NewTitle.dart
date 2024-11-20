import 'package:flutter/material.dart';

class Newtitle extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String author;
  final String description;
  final VoidCallback ontap;

  const Newtitle(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.time,
      required this.author,
      required this.description,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(author),
                const Spacer(),
                Text(
                  time,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              maxLines: 2,
            ),
            Text(
              description,
              maxLines: 2,
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              width: double.infinity,
              height: 250,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    side: BorderSide.none,
                    elevation: 0,
                  ),
                  icon: const Icon(Icons.label),
                  label: const Text(
                    'Like',
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    side: BorderSide.none,
                    elevation: 0,
                  ),
                  icon: const Icon(Icons.comment),
                  label: const Text(
                    'Comment',
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    side: BorderSide.none,
                    elevation: 0,
                  ),
                  icon: const Icon(Icons.share),
                  label: const Text(
                    'Share',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
