import 'package:blog_post/presentation/screen/blog/blog_screen.dart';
import 'package:blog_post/presentation/screen/profile/profile_screen.dart';
import 'package:blog_post/presentation/screen/qr/qr_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'home_cubit.dart';

final homeScaffoldKey = GlobalKey<ScaffoldState>();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, int>(
        builder: (context, state) {
          return Scaffold(
            key: homeScaffoldKey,
            body: IndexedStack(
              index: state,
              children: [
                BlogScreen(),
                QrScreen(),
                ProfileScreen(),
              ],
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).pop();
                      context.read<HomeCubit>().onBottomNavigationItemTapped(2);
                    },
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[350],
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                          const SizedBox(width: 16.0),
                          Text(
                            'Профиль',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('Домашняя страница'),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).pop();
                      context.read<HomeCubit>().onBottomNavigationItemTapped(0);
                    },
                  ),
                  ListTile(
                    title: const Text('QR'),
                    leading: const Icon(Icons.qr_code),
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).pop();
                        context.read<HomeCubit>().onBottomNavigationItemTapped(1);
                      },
                  ),
                  ListTile(
                      title: const Text('Поделиться приложением'),
                      leading: const Icon(Icons.share),
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('В разработке'),
                          ),
                        );
                      }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
