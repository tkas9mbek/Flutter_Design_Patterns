import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/eagle.dart';
import '../model/hummingbird.dart';
import '../model/i_bird.dart';
import '../model/ostrich.dart';
import '../model/penguin.dart';

final birdListProvider = Provider<List<IBird>>(
  (ref) => [
    Eagle(),
    Hummingbird(),
    Penguin(),
    Ostrich(),
  ],
);
