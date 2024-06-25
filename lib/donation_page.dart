import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DonationPage extends StatelessWidget {
  final List<Map<String, String>> donationList = [
    {
      'image': 'assets/donation-1.jpg',
      'title': 'BANTU JUTAAN MUSLIM PALESTINA',
      'url': 'https://donasi.baznas.go.id/bantumuslimdipalestina'
    },
    {
      'image': 'assets/donation-2.jpg',
      'title': 'Satukan Solidaritas Bantu Palestina',
      'url': 'https://digital.dompetdhuafa.org/donasi/jagapalestina'
    },
    {
      'image': 'assets/donation-3.jpg',
      'title': 'Donasi Peduli Palestina',
      'url': 'https://lazismu.org/bantupalestina'
    },
    {
      'image': 'assets/donation-4.jpg',
      'title': 'Donasi Anak Yatim Palestina',
      'url': 'https://donasipalestina.com/campaign/santunan-anak-yatim'
    },
    {
      'image': 'assets/donation-5.png',
      'title': 'Darurat Kemanusiaan Gaza - Palestina 2023',
      'url': 'https://kitabisa.com/campaign/daruratgaza2023'
    },
    {
      'image': 'assets/donation-6.jpg',
      'title': 'All Eyes on Rafah',
      'url': 'https://www.rumahzakat.org/donasi/palestina'
    },
    {
      'image': 'assets/donation-7.jpeg',
      'title': 'Gaza Memanggil',
      'url': 'https://donasi.npc.id/'
    },
    {
      'image': 'assets/donation-8.jpg',
      'title': 'Darurat Kemanusiaan Gaza - Palestina 2023',
      'url': 'https://kasihpalestina.com/campaign/medispalestina'
    },
    {
      'image': 'assets/donation-9.jpg',
      'title': 'Bantu Palestina Bangkit',
      'url': 'https://donasipalestina.id/campaign/donasipalestina'
    },
    {
      'image': 'assets/donation-10.jpg',
      'title': 'Peduli Kucing Palestina',
      'url': 'https://be.sharinghappiness.org/BantuKucingdiJalurGazaPalestina'
    },

    // You can keep the rest of your donation data here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FOR HUMANITY'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: donationList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () =>
                        _launchURL(context, donationList[index]['url']!),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0)),
                            child: Image.asset(
                              donationList[index]['image']!,
                              fit: BoxFit.cover,
                              height: 150,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              donationList[index]['title']!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Donasi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Terima kasih karena telah berdonasi semoga kebaikan ini bisa meringankan penderitaan untuk warga Palestina dan seluruh dunia.',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      _showErrorDialog(context, 'Could not launch $url');
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
