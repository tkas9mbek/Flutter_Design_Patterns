import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/barn_builder.dart';
import '../model/garage_builder.dart';
import '../model/house_builder.dart';
import '../model/i_structure_builder.dart';

final structureListProvider = Provider<List<IStructureBuilder>>(
  (ref) => [
    const HouseBuilder(),
    const GarageBuilder(),
    const BarnBuilder(),
  ],
);
