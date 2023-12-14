import 'package:blog_post/domain/entity/blog_model.dart';
import 'package:blog_post/presentation/app/app_routes.dart';
import 'package:blog_post/presentation/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bloc/blog_bloc.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => homeScaffoldKey.currentState!.openDrawer(),
        ),
        title: const Text('Блог/Посты'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: CustomScrollView(
          slivers: [
            BlocProvider(
              create: (context) => BlogBloc(),
              child: BlocBuilder<BlogBloc, BlogState>(
                builder: (context, state) {
                  return switch (state) {
                    BlogInitial() => SliverToBoxAdapter(
                        child: CircularProgressIndicator(),
                      ),
                    BlogLoading() => SliverToBoxAdapter(
                        child: CircularProgressIndicator(),
                      ),
                    BlogLoaded(news: final news) => SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          childCount: news.length,
                          (context, index) => _BlogViewItem(model: news[index]),
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.7,
                        ),
                      ),
                    // TODO: Handle this case.
                    BlogState() => SliverToBoxAdapter(
                        child: CircularProgressIndicator(),
                      ),
                  };
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BlogViewItem extends StatelessWidget {
  final BlogModel model;

  const _BlogViewItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(AppRoutes.news.path, extra: model),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              model.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              model.content,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(width: 24),
            const Spacer(),
            SizedBox(
              height: 120,
              child: Image.network(model.imageUrl),
            ),
          ],
        ),
      ),
    );
  }
}
