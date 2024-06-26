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
              'PalVoice hadir sebagai jembatan digital untuk memperkuat suara rakyat Palestina. Palvoice berkomitmen untuk menjadi salah satu platform komprehensif yang tidak hanya memfasilitasi berbagi informasi, tetapi juga donasi dan aksi solidaritas. Melalui aplikasi ini, kami berharap dapat menghubungkan seluruh umat Muslim dan masyarakat global untuk lebih dekat dan peduli terhadap perjuangan rakyat Palestina. Dengan teknologi sebagai alat utama, PalVoice bertujuan untuk menyebarkan kesadaran luas dan menggerakkan aksi nyata yang dapat memberikan dampak positif dan signifikan.'
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Tentang Pengembang'),
            _buildSectionContent(
              'PalVoice dikembangkan oleh tim profesional yang berdedikasi tinggi untuk mendukung perjuangan rakyat Palestina. Kami terdiri dari pelajar teknologi dan penggiat kemanusiaan yang percaya bahwa teknologi dapat menjadi alat yang kuat untuk menciptakan perubahan. Dengan latar belakang yang beragam, kami menyatukan keahlian kami untuk membangun platform ini dengan tujuan memfasilitasi komunikasi, penggalangan dana, dan penyebaran informasi yang akurat serta mendalam. Kami bertekad untuk terus berinovasi dan memperluas jangkauan PalVoice demi mendukung perjuangan yang lebih besar dan berkelanjutan bagi rakyat Palestina.\n\n'
              'Adapun anggota dari tim pengembang aplikasi Palvoice adalah sebagai berikut:\n'
              '1. Muhammad Rizki Fachriza Bailey\n'
              '2. Vinandra Adam Saputra\n'
              '3. Muhammad Dhaoed Arrazaq\n'
              '4. Rizka Intan Faghira\n'
              '5. Rekha Clarhista Amelia\n\n'
              'Tim yang mengembangkan aplikasi Palvoice, saat ini masih berada di jenjang perkuliahan. Tim pengembang mengambil jurusan Teknik Informatika dan mengimplementasikan keilmuwan yang dimiliki menjadi bentuk aplikasi PalVoice ini.'
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