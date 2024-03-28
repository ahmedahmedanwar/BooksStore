import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();

    _initSlidingAnimationFunction();

    navigateToHomePage();
  }

//animation
  @override
  void dispose() {
    super.dispose();
    // TODO: implement dispose
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          child: Image.asset(AssetsData.logo),
        ),
        const SizedBox(
          height: 10,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void navigateToHomePage() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.KHomeView);
      // Get.to(
      //   () => const HomeView(),
      //   // transiton: Transition.fade,
      //   duration: KTransitionDuration,
      //   transition: Transition.fadeIn,
      // );
    });
  }

  ///Functions
  void _initSlidingAnimationFunction() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {});
    });
  }
}
