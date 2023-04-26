

import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theBookKey = dotenv.env["THE_BOOK_KEY"] ?? 'No hay api key';
}