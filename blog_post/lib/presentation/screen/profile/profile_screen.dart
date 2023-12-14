import 'package:blog_post/di/locator.dart';
import 'package:blog_post/presentation/screen/home/home_screen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/profile_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(locator.get()),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => homeScaffoldKey.currentState!.openDrawer(),
              ),
              expandedHeight: 250,
              collapsedHeight: 200,
              toolbarHeight: 150,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                  bottomRight: Radius.circular(90),
                ),
              ),
              title: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[350],
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Профиль',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              pinned: true,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return switch (state) {
                  ProfileInitial() => SliverToBoxAdapter(
                      child: CircularProgressIndicator(),
                    ),
                  ProfileLoading() => SliverToBoxAdapter(
                      child: CircularProgressIndicator(),
                    ),
                  ProfileLoaded(mappedProfileInfo: final mappedProfileInfo) =>
                    SliverPadding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          childCount: mappedProfileInfo.length,
                          (context, index) => _ProfileInfoViewItem(
                            title:
                                mappedProfileInfo.entries.elementAt(index).key,
                            value: mappedProfileInfo.entries
                                .elementAt(index)
                                .value,
                          ),
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                      ),
                    ),
                  ProfileState() => SliverToBoxAdapter(
                      child: CircularProgressIndicator(),
                    ),
                };
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileInfoViewItem extends StatelessWidget {
  final String title;
  final String value;

  const _ProfileInfoViewItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.access_time_sharp,
                size: 40,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 12),
            Text(
              value,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
