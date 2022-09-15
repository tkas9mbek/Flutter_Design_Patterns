import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../_core/theme/the_fonts.dart';
import '../_core/theme/the_styles.dart';
import '../_widget/page_foundation.dart';
import '../_widget/talking_image.dart';
import 'model/i_bird.dart';
import 'provider/bird_list_provider.dart';

class StrategyPatternScreen extends ConsumerStatefulWidget {
  const StrategyPatternScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _StrategyPatternScreenState();
}

class _StrategyPatternScreenState extends ConsumerState<StrategyPatternScreen> {
  IBird? _birdSelected;
  String? _birdsMessage;

  @override
  Widget build(BuildContext context) {
    final birdList = ref.watch(birdListProvider);

    return PageFoundation(
      appBar: AppBar(
        centerTitle: true,
        title: Text('birds_planet'.tr()),
      ),
      padding: TheStyles.generalBodyPadding,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'bird'.plural(100),
                style: TheFonts.title(context),
              ),
            ),
            Wrap(
              children: [
                for (final bird in birdList) ...[
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _birdSelected = bird;
                        _birdsMessage = bird.introduction();
                      });
                    },
                    child: Text(bird.name),
                  ),
                ]
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'operation'.plural(100),
                style: TheFonts.title(context),
              ),
            ),
            Wrap(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _birdsMessage = _birdSelected?.fly();
                    });
                  },
                  child: const Text('Fly'),
                ),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _birdsMessage = _birdSelected?.eat();
                    });
                  },
                  child: const Text('Eat'),
                ),
              ],
            ),
            if (_birdSelected != null) ...[
              const SizedBox(
                height: 15,
              ),
              TalkingImage(
                message: _birdsMessage,
                child: Image.asset(_birdSelected!.image),
              )
            ],
          ],
        ),
      ),
    );
  }
}
