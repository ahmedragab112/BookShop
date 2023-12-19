import 'package:bookly/core/utils/colors/app_color.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: whiteColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
              ),
              child: Text(
                '19.99 €',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: orangeColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
              ),
              child: Text(
                'Free preview',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
