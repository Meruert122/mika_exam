import 'package:blog_post/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'app_router.dart';

class BlogPostApp extends StatelessWidget {
  const BlogPostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Digital Marketing',
      theme: AppTheme.appTheme,
    );
  }
}
