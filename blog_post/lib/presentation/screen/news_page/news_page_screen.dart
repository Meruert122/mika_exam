import 'package:blog_post/domain/entity/blog_model.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BlogPageScreen extends StatelessWidget {
  final BlogModel blogModel;

  const BlogPageScreen({super.key, required this.blogModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blogModel.title),
        actions: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => Scaffold(
                  body: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Text('Отсканируйте QR-код для перехода на новость'),
                        QrImageView(
                          data: blogModel.deeplinkUrl,
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
              );
            },
            child: Icon(Icons.share, size: 24),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          Image.network(blogModel.imageUrl),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(blogModel.content),
          ),
        ],
      ),
    );
  }
}
