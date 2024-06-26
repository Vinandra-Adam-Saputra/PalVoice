import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PetitionPage extends StatelessWidget {
  final List<Map<String, String>> petitionList = [
    {
      'image': 'assets/petition-1.jpg',
      'title': 'Minta Gencatan Senjata dan Hak Kembali untuk Rakyat Palestina',
      'url':
          'https://www.change.org/p/minta-gencatan-senjata-dan-hak-kembali-untuk-rakyat-palestina'
    },
    {
      'image': 'assets/petition-2.jpg',
      'title': 'GOOGLE: Put Palestine On Your Maps!',
      'url':
          'https://www.change.org/p/google-inc-google-put-palestine-on-your-maps'
    },
    {
      'image': 'assets/petition-3.jpg',
      'title': 'Free Palestine',
      'url':
          'https://www.change.org/p/all-of-us-free-palestine-e8784c52-3213-4a9e-884c-428aabda8107'
    },
    {
      'image': 'assets/petition-4.jpg',
      'title': 'Recognise the Palestinian voice and future!',
      'url':
          'https://action.wemove.eu/sign/2024-04-recognise-Palestine-petition-EN'
    },
    {
      'image': 'assets/petition-5.jpg',
      'title':
          'Stop Erasing Palestine, Hold Israel Accountable - Permanent Ceasefire NOW',
      'url': 'https://resist.bot/petitions/PRMHXE'
    },
    {
      'image': 'assets/petition-6.jpg',
      'title':
          'Menuntut gencatan senjata oleh semua pihak untuk mengakhiri penderitaan warga sipil',
      'url':
          'https://www.amnesty.org/en/petition/demand-a-ceasefire-by-all-parties-to-end-civilian-suffering/'
    },
    {
      'image': 'assets/petition-7.jpg',
      'title':
          'PETISI UNTUK MELINDUNGI RUMAH SAKIT INDONESIA DI GAZA UTARA',
      'url':
          'https://www.change.org/p/petisi-untuk-melindungi-rumah-sakit-indonesia-di-gaza-utara'
    },
      {
      'image': 'assets/petition-8.jpg',
      'title':
          '#CeasefireNow: Open Call for an Immediate Ceasefire in the Gaza Strip and Israel',
      'url':
          'https://www.change.org/p/sign-and-share-this-urgent-petition-calling-for-a-ceasefirenow-in-gaza-and-israel'
    },
    {
      'image': 'assets/petition-9.jpg',
      'title':
          'Invoke Article 6 and Expel the US from the United Nations',
      'url':
          'https://www.change.org/p/invoke-article-6-and-expel-the-us-from-the-united-nations'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VOICES FOR JUSTICE'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: petitionList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () =>
                        _launchURL(context, petitionList[index]['url']!),
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
                              petitionList[index]['image']!,
                              fit: BoxFit.cover,
                              height: 150,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              petitionList[index]['title']!,
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
                  'Petisi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Setiap tanda tangan adalah langkah menuju keadilan dan perdamaian yang lebih baik bagi rakyat Palestina dan seluruh dunia.',
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
