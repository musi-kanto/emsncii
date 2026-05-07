import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase, Local DB, etc.
  // await Firebase.initializeApp();
  // await HiveUtil.initHive();
  
  runApp(const EmsNciiApp());
}

class EmsNciiApp extends StatelessWidget {
  const EmsNciiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'EMS NC II Reviewer',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('tl', 'PH'),
      ],
      routerConfig: _appRouter,
    );
  }
}

final GoRouter _appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/auth/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/auth/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/competencies/basic',
      builder: (context, state) => const BasicCompetenciesScreen(),
    ),
    GoRoute(
      path: '/competencies/common',
      builder: (context, state) => const CommonCompetenciesScreen(),
    ),
    GoRoute(
      path: '/competencies/core',
      builder: (context, state) => const CoreCompetenciesScreen(),
    ),
    GoRoute(
      path: '/assessment',
      builder: (context, state) => const AssessmentModeScreen(),
    ),
    GoRoute(
      path: '/practice-exam',
      builder: (context, state) => const PracticeExamScreen(),
    ),
    GoRoute(
      path: '/scenarios',
      builder: (context, state) => const ScenariosScreen(),
    ),
    GoRoute(
      path: '/simulations',
      builder: (context, state) => const SimulationsScreen(),
    ),
    GoRoute(
      path: '/acronyms',
      builder: (context, state) => const AcronymsScreen(),
    ),
    GoRoute(
      path: '/glossary',
      builder: (context, state) => const GlossaryScreen(),
    ),
    GoRoute(
      path: '/visualization',
      builder: (context, state) => const VisualizationCenterScreen(),
    ),
    GoRoute(
      path: '/scripts',
      builder: (context, state) => const AssessmentScriptsScreen(),
    ),
    GoRoute(
      path: '/flashcards',
      builder: (context, state) => const FlashcardsScreen(),
    ),
    GoRoute(
      path: '/audio',
      builder: (context, state) => const AudioReviewerScreen(),
    ),
    GoRoute(
      path: '/tracker',
      builder: (context, state) => const ProgressTrackerScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);

// Placeholder screens for routing
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Login')));
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Register')));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Home')));
  }
}

class BasicCompetenciesScreen extends StatelessWidget {
  const BasicCompetenciesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Basic Competencies')));
  }
}

class CommonCompetenciesScreen extends StatelessWidget {
  const CommonCompetenciesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Common Competencies')));
  }
}

class CoreCompetenciesScreen extends StatelessWidget {
  const CoreCompetenciesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Core Competencies')));
  }
}

class AssessmentModeScreen extends StatelessWidget {
  const AssessmentModeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Assessment Mode')));
  }
}

class PracticeExamScreen extends StatelessWidget {
  const PracticeExamScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Practice Exam')));
  }
}

class ScenariosScreen extends StatelessWidget {
  const ScenariosScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Scenarios')));
  }
}

class SimulationsScreen extends StatelessWidget {
  const SimulationsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Simulations')));
  }
}

class AcronymsScreen extends StatelessWidget {
  const AcronymsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Acronyms')));
  }
}

class GlossaryScreen extends StatelessWidget {
  const GlossaryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Glossary')));
  }
}

class VisualizationCenterScreen extends StatelessWidget {
  const VisualizationCenterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Visualization Center')));
  }
}

class AssessmentScriptsScreen extends StatelessWidget {
  const AssessmentScriptsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Assessment Scripts')));
  }
}

class FlashcardsScreen extends StatelessWidget {
  const FlashcardsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Flashcards')));
  }
}

class AudioReviewerScreen extends StatelessWidget {
  const AudioReviewerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Audio Reviewer')));
  }
}

class ProgressTrackerScreen extends StatelessWidget {
  const ProgressTrackerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Progress Tracker')));
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Settings')));
  }
}
