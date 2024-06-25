import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About PalVoice'),
  
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/Free-Palestine.jpg', 
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'PalVoice: Suara untuk Palestina',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Misi Kami'),
            _buildSectionContent(
              'PalVoice bertujuan untuk memperkuat suara rakyat Palestina melalui platform komprehensif yang memfasilitasi berbagi informasi, donasi, dan aksi solidaritas.'
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Tentang Pengembang'),
            _buildSectionContent(
              'PalVoice dikembangkan oleh tim yang berkomitmen untuk mendukung perjuangan rakyat Palestina. Kami percaya bahwa teknologi dapat menjadi alat yang kuat untuk menyebarkan kesadaran dan memfasilitasi aksi nyata.'
            ),
            SizedBox(height: 20),
            _buildVersionInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.green[800],
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildVersionInfo() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Versi Aplikasi',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '1.0.0',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green[800],
            ),
          ),
        ],
      ),
    );
  }
}