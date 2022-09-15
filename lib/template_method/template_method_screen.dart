import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../_core/theme/the_fonts.dart';
import '../_core/theme/the_styles.dart';
import '../_widget/bright_square_background.dart';
import '../_widget/page_foundation.dart';
import 'model/i_structure_builder.dart';
import 'provider/structure_list_provider.dart';

class TemplateMethodScreen extends ConsumerStatefulWidget {
  const TemplateMethodScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _StrategyPatternScreenState();
}

class _StrategyPatternScreenState extends ConsumerState<TemplateMethodScreen> {
  IStructureBuilder? _structureBuilder;

  @override
  Widget build(BuildContext context) {
    final structureBuilderList = ref.watch(structureListProvider);

    return PageFoundation(
      appBar: AppBar(
        centerTitle: true,
        title: Text('structure_builder'.tr()),
      ),
      padding: TheStyles.generalBodyPadding,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'structure'.plural(100),
                style: TheFonts.title(context),
              ),
            ),
            Wrap(
              children: [
                for (final structure in structureBuilderList) ...[
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _structureBuilder = structure;
                      });
                    },
                    child: Text(structure.name),
                  ),
                ]
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            if (_structureBuilder != null) ...[
              BrightSquareBackground(
                padding: const EdgeInsets.all(10),
                child: _structureBuilder!.buildStructure(),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
