import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../_core/theme/the_styles.dart';
import '../_widget/page_foundation.dart';
import 'provider/design_pattern_list_provider.dart';
import 'widget/design_pattern_container.dart';

class DesignPatternsScreen extends ConsumerWidget {
  const DesignPatternsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final designPatternList = ref.watch(designPatternListProvider);

    return PageFoundation(
      appBar: AppBar(
        centerTitle: true,
        title: Text('title'.tr()),
      ),
      padding: TheStyles.generalBodyPadding,
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: designPatternList.length,
        itemBuilder: (BuildContext context, int index) => DesignPatternContainer(
          designPattern: designPatternList[index],
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 12,
        ),
      ),
    );
  }
}
