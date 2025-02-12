# PalVoice: Palestine Voice
![iphone-x-in-hand-mockup](https://github.com/user-attachments/assets/211742a7-b0af-4f6a-8760-a3de81db0b86)

## Description

PalVoice (Palestine Voice) is a mobile application developed using Flutter. The main purpose of this app is to help voice the struggle of the Palestinian people. It provides various features that allow users to get the latest information, participate in solidarity actions, and support the Palestinian cause.

## Main Features

### 1. Real-time News

- Presents the latest news about Palestine
- Uses API from News API to ensure accurate and up-to-date information
- Users can read news summaries within the app
- A "Read Full Article" button directs users to the original news site for the complete article

### 2. Donation

- Provides a list of organizations supporting Palestine
- Users can select from various donation options
- Upon selection, users are directed to the official donation site of the chosen organization
- All transactions occur on the external donation platforms, not within the app

### 3. Petitions

- Provides a list of petitions related to Palestinian issues
- Users can sign and share petitions
- Regular updates on the status and impact of petitions

### 4. Boycott Product List

- Displays a list of products affiliated with Israel
- Data is stored and managed using Firebase Cloud Firestore
- Users can view product names and categories
- Features a search function to find products by name
- Includes a filtering option to sort products by category

### 5. About Us

- Information about the app developers
- Vision and mission behind the creation of PalVoice
- Contact for feedback and support

## Technologies Used

- **Framework**: Flutter
- **Backend**: Firebase
- **Database**: Cloud Firestore
- **API**: News API

## Installation

1. Clone this repository:
   - git clone https://github.com/Vinandra-Adam-Saputra/PalVoice.git
2. Navigate to the project directory:
   - cd PalVoice
3. Install dependencies:
   - flutter pub get
4. Run the application:
   - flutter run
  
## Configuration

1. Create a project in Firebase Console and add Android/iOS app.
2. Download the Firebase configuration file (`google-services.json` for Android or `GoogleService-Info.plist` for iOS) and place it in the appropriate directory.
3. Enable Cloud Firestore in Firebase Console.
4. Register and obtain an API key from News API.
5. Create a `.env` file in the project root and add the API key:

## Usage

1. Open the PalVoice application.
2. Navigate through the main menu to access the available features.
3. To view the latest news, click on the "Berita" tab.
4. To make a donation, select the "Donasi" option and follow the instructions.
5. To sign petitions, visit the "Petisi" section.
6. To view the list of boycotted products, open the "Daftar Produk" menu.

## Contributing

We greatly appreciate contributions from the community. If you want to contribute to this project, please follow these steps:

1. Fork the repository
2. Create a new feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the [MIT License](LICENSE)

## Contact

For questions or suggestions, please contact:

- Email : adamvinandra767@gmail.com
- Project Link: (https://github.com/Vinandra-Adam-Saputra/PalVoice.git)

## Acknowledgements

- [Flutter](https://flutter.dev/)
- [Firebase](https://firebase.google.com/)
- [News API](https://newsapi.org/)
- [Font Awesome Flutter](https://pub.dev/packages/font_awesome_flutter)
