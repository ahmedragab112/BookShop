import 'package:bookly/config/router/routes.dart';
import 'package:bookly/core/utils/images/images.dart';
import 'package:bookly/features/home/presentation/widgets/drawer_iteam.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Gap(20),
            Image.asset(AppImages.logo),
            Divider(
              color: Colors.grey.withOpacity(.5),
              thickness: 2,
            ),
            const Gap(10),
            DrawerIteam(
              icon: Icons.home,
              title: 'Home',
              onTap: () {
                Scaffold.of(context).closeDrawer();
              },
            ),
            const Gap(10),
            DrawerIteam(
              icon: FontAwesomeIcons.magnifyingGlass,
              title: 'Search For a Book',
              onTap: () {
                Scaffold.of(context).closeDrawer();
                Navigator.pushNamed(context, AppRoutes.search);
              },
            ),
            const Gap(10),
            DrawerIteam(
              icon: Icons.settings,
              title: 'Setting',
              onTap: () {
                Scaffold.of(context).closeDrawer();
                Navigator.pushNamed(context, AppRoutes.setting);
              },
            ),
          ],
        ),
      ),
    );
  }
}