import 'package:flutter/material.dart';
import 'package:longevo_flutter_ui_kit/longevo_flutter_ui_kit.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => Storybook(
        stories: [
          Story(
            name: 'Widgets/MediumCard',
            description: 'MediumCard Component',
            builder: (context) => MediumCard(
              title:
                  context.knobs.text(label: 'Title', initial: 'Batch cooking'),
              image: AssetImage(context.knobs
                  .text(label: 'Image', initial: "assets/example_card.png")),
              status: context.knobs.options(
                label: 'Status',
                initial: CardStatus.active,
                options: const [
                  Option(label: "Active", value: CardStatus.active),
                  Option(label: "Inactive", value: CardStatus.inactive),
                  Option(label: "Null", value: null)
                ],
              ),
              tags: context.knobs
                  .text(label: 'Tags', initial: '15min,estiramentos')
                  .split(",")
                  .map((tag) => CardTag(
                        text: tag,
                      ))
                  .toList(),
            ),
          ),
          Story(
            name: 'Widgets/BannerCard',
            description: 'BannerCard Component',
            builder: (context) => BannerCard(
              title: context.knobs.text(label: 'Title', initial: 'Power Body'),
              subtitle: context.knobs
                  .text(label: 'Subtitle', initial: 'Tren superior • 45min'),
              image: AssetImage(context.knobs
                  .text(label: 'Image', initial: "assets/example_card.png")),
              category:
                  context.knobs.text(label: 'Category', initial: 'Fitness'),
              tag: CardTag(
                text: context.knobs.text(label: 'Tag', initial: '15min'),
                color: LongevoColors.darkGray,
              ),
            ),
          ),
        ],
      );
}
