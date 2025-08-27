import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toku2_app/core/utils/app_router.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
    with TickerProviderStateMixin {
  late final List<AnimationController> _controllers;
  late final List<Animation<Offset>> _animations;

  @override
  void initState() {
    super.initState();
    _initAnimations();
    _startAnimations();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _restartAnimations();
  }

  void _initAnimations() {
    _controllers = List.generate(
      4,
          (index) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 600),
      ),
    );

    _animations = List.generate(4, (index) {
      final isTop = index < 2;
      return Tween<Offset>(
        begin: Offset(0, isTop ? -1 : 1),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _controllers[index],
          curve: Curves.easeOutBack,
        ),
      );
    });
  }

  Future<void> _startAnimations() async {
    for (int i = 0; i < _controllers.length; i++) {
      await Future.delayed(Duration(milliseconds: i * 150));
      _controllers[i].forward();
    }
  }

  void _restartAnimations() {
    for (var controller in _controllers) {
      controller.reset();
    }
    _startAnimations();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<_HomeItem> items = [
      _HomeItem(
        title: 'Numbers',
        icon: Icons.confirmation_number_outlined,
        colors: [const Color(0xFF4A90E2), const Color(0xFF007AFF)], // Blue
        onTap: () => GoRouter.of(context).push(AppRouter.kNumbersView),
      ),
      _HomeItem(
        title: 'Family',
        icon: Icons.family_restroom,
        colors: [const Color(0xFF2ECC71), const Color(0xFF27AE60)], // Teal/Green
        onTap: () => GoRouter.of(context).push(AppRouter.kFamilyMemberView),
      ),
      _HomeItem(
        title: 'Colors',
        icon: Icons.color_lens_outlined,
        colors: [const Color(0xFF9B59B6), const Color(0xFF8E44AD)], // Purple
        onTap: () => GoRouter.of(context).push(AppRouter.kColorsView),
      ),
      _HomeItem(
        title: 'Phrases',
        icon: Icons.chat_bubble_outline,
        colors: [const Color(0xFFF39C12), const Color(0xFFD35400)], // Amber/Orange
        onTap: () => GoRouter.of(context).push(AppRouter.kPhrasesView),
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 12),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: List.generate(
          items.length,
              (index) => SlideTransition(
            position: _animations[index],
            child: items[index],
          ),
        ),
      ),
    );
  }
}

class _HomeItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Color> colors;
  final VoidCallback onTap;

  const _HomeItem({
    required this.title,
    required this.icon,
    required this.colors,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: colors.last.withOpacity(0.4),
              blurRadius: 12,
              offset: const Offset(3, 5),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.white, size: 42),
              const SizedBox(height: 14),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
