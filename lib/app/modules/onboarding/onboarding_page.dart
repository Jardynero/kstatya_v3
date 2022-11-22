import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kstatya/app/core/mixins/developer_mixin.dart';

import '../../core/widgets/widgets.dart';
import 'onboarding_controller.dart';

class OnboardingPage extends GetView<OnboardingController> with DeveloperMixin {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return testInterface(
      asset: 'assets/1_slide.jpg',
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                SizeWidget(height: 58), //TODO: remove 24px for dima test 2
                _OnboardingImageWidget('assets/images/onboarding_1.png'),
                SizeWidget(height: 13),
                _TextWidget(
                    'Найди родственную душу,\nзадавая важные или\nзабавные вопросы.'),
                SizeWidget(height: 4.3),
                _TextWidget(
                    'Заранее напиши подходящие\nи неподходящие ответы.'),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const _BottomBarWidget(),
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Text(
        text,
        textAlign: TextAlign.right,
        style: Get.textTheme.bodyLarge?.copyWith(
          letterSpacing: 0,
          height: 1.1904761904761905,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _BottomBarWidget extends StatelessWidget {
  const _BottomBarWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 15, 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 15,
            height: 15,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffED4372),
            ),
          ),
          const SizeWidget(width: 4),
          Container(
            width: 15,
            height: 15,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffED4372),
            ),
          ),
          const SizeWidget(width: 4),
          Container(
            width: 15,
            height: 15,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF78DBA),
            ),
          ),
          const SizeWidget(width: 13),
          IconButtonWidget(
            iconPath: 'assets/icons/right_arrow.svg',
            onPressed: () {},
          ),
          const SizeWidget(width: 5)
        ],
      ),
    );
  }
}

class _OnboardingImageWidget extends StatelessWidget {
  const _OnboardingImageWidget(this.imagePath);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 2, right: 8.0),
            child: Image.asset(imagePath, fit: BoxFit.fitWidth),
          ),
        ),
      ],
    );
  }
}
