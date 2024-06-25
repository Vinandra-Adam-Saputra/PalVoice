import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailPage extends StatelessWidget {
  final Map article;

  NewsDetailPage({required this.article});

  void _launchURL(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $url')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (article['urlToImage'] != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    article['urlToImage'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
              SizedBox(height: 16),
              Text(
                article['title'] ?? '',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                article['publishedAt'] ?? '',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 16),
              Text(
                article['description'] ?? '',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => _launchURL(context, article['url']),
                child: Text('Read Full Article'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .green, // Menggunakan backgroundColor alih-alih primary
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
