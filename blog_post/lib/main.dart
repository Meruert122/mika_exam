import 'package:blog_post/di/locator.dart';
import 'package:blog_post/presentation/app/blog_post_app.dart';
import 'package:flutter/material.dart';

void main() {
  initDiModule();
  runApp(const BlogPostApp());
}