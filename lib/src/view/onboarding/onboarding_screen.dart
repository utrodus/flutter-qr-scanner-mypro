import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner_mypro/src/res/constant/assets_path.dart';
import 'package:flutter_qr_scanner_mypro/src/res/tokens/app_colors.dart';
import 'package:flutter_qr_scanner_mypro/src/res/tokens/app_text_styles.dart';
import 'package:flutter_qr_scanner_mypro/src/utils/extensions/extension.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          key: introKey,
          globalBackgroundColor: Colors.white,
          allowImplicitScrolling: true,
          showSkipButton: true,
          skip: Text(
            'Skip',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: AppColors.primary,
                  fontWeight: medium,
                ),
          ),
          next: Text(
            'Next',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: AppColors.primary,
                ),
          ),
          done: const Text(
            "Get Started",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          onDone: () {
            // On Done button pressed
          },
          onSkip: () {
            // On Skip button pressed
          },
          dotsDecorator: DotsDecorator(
            activeColor: AppColors.primary,
            activeSize: const Size(22, 10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          pages: [
            PageViewModel(
              titleWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage(
                      AssetsPath.icLogo,
                    ),
                    width: context.width * 0.15,
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "QR Scanner",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "Mypro-solution",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: medium),
                      ),
                    ],
                  )
                ],
              ),
              bodyWidget: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: context.height * 0.05,
                    ),
                    Image(
                      image: const AssetImage(
                        AssetsPath.imgOnBoarding1,
                      ),
                      width: context.width * 0.6,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Unlock Information with Ease",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Our QR Code Scanner app makes it easy\nfor you to unlock information",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: medium),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            PageViewModel(
              titleWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage(
                      AssetsPath.icLogo,
                    ),
                    width: context.width * 0.15,
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "QR Scanner",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "Mypro-solution",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: medium),
                      ),
                    ],
                  )
                ],
              ),
              bodyWidget: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: context.height * 0.05,
                    ),
                    Image(
                      image: const AssetImage(
                        AssetsPath.imgOnBoarding2,
                      ),
                      width: context.width * 0.6,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Discover More with Every Scan",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Whether it's to access exclusive content,\nredeem a voucher or follow a link.",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: medium),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
