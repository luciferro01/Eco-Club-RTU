import 'package:appwrite/appwrite.dart';

class AppwriteInitialisation {
  AppwriteInitialisation() {
    _init();
  }
  void _init() {
    Client client = Client();
    client
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject('651fa88a9db70e203707')
        .setSelfSigned(
            status:
                true); // For self signed certificates, only use for development
  }
}
