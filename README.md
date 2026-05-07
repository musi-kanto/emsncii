# 🚑 EMS NC II Mobile Reviewer Application

A **comprehensive, production-ready mobile learning platform** for Emergency Medical Services NC II (EMS NC II) competency assessment preparation, designed for TESDA certification in the Philippines.

## 🎯 Project Overview

**emsncii** is a full-featured emergency medical services training application that combines:

- 📘 Interactive reviewer modules aligned with TESDA EMS NC II competency standards
- 🧪 1000+ quiz questions with instant feedback and detailed rationales
- 🚨 Real-world scenario simulations and branching decision trees
- 🔬 Interactive procedure trainers (CPR, AED, trauma assessment, etc.)
- 📝 Practice exams simulating actual TESDA assessment experience
- 🌐 Bilingual support (English + Filipino/Tagalog)
- 📱 Full offline-first functionality with local data persistence
- 🎮 Gamification system with achievements, badges, and streaks
- 📊 Comprehensive analytics and progress tracking

## 🛠️ Technology Stack

### Frontend
- **Framework**: Flutter (cross-platform) + React Native alternative
- **State Management**: Provider / Riverpod (Flutter) | Redux/MobX (React Native)
- **UI Components**: Material Design 3 + Custom Emergency Theme
- **Animations**: Flutter Animations / React Native Reanimated

### Backend & Data
- **Backend**: Firebase (Firestore, Realtime Database, Authentication)
- **Local Database**: SQLite (via sqflite) + Hive (for cached data)
- **PWA**: Service Workers + IndexedDB for web version
- **Offline Sync**: Custom background sync layer

### Development
- **Language**: Dart (Flutter) / TypeScript (React Native)
- **Testing**: Unit + Integration + E2E tests
- **CI/CD**: GitHub Actions
- **Package Management**: Pub (Dart) / npm/yarn (JS)

## 📱 Platform Support

- ✅ Android (API 21+)
- ✅ iOS (12.0+)
- ✅ iPad / Tablets
- ✅ Progressive Web App (PWA)
- ✅ Responsive mobile-first design

## 🏗️ Project Structure

```
emsncii/
├── flutter_app/                 # Main Flutter application
│   ├── lib/
│   │   ├── main.dart
│   │   ├── app/
│   │   │   ├── app.dart
│   │   │   └── routes.dart
│   │   ├── core/
│   │   │   ├── theme/           # Design system & color palette
│   │   │   ├── utils/           # Utilities (formatters, validators, etc.)
│   │   │   ├── services/        # Core services (navigation, storage, etc.)
│   │   │   └── constants/       # App-wide constants
│   │   ├── features/
│   │   │   ├── auth/            # Authentication feature
│   │   │   ├── home/            # Home dashboard
│   │   │   ├── competencies/    # Basic/Common/Core competency modules
│   │   │   ├── assessment/      # Self-assessment mode
│   │   │   ├── practice_exam/   # Practice exam simulator
│   │   │   ├── scenarios/       # Pre-hospital scenarios
│   │   │   ├── simulations/     # Procedure simulations
│   │   │   ├── acronyms/        # EMS acronyms database
│   │   │   ├── glossary/        # Terms & definitions
│   │   │   ├── visualization/   # Anatomy/visual center
│   │   │   ├── scripts/         # Assessment day scripts
│   │   │   ├── flashcards/      # Flashcard system
│   │   │   ├── audio/           # Audio reviewer
│   │   │   ├── tracker/         # Progress tracking & analytics
│   │   │   ├── settings/        # App settings & preferences
│   │   │   └── offline/         # Offline data management
│   │   ├── data/
│   │   │   ├── datasources/     # Local & remote data sources
│   │   │   ├── models/          # Data models
│   │   │   ├── repositories/    # Repository pattern
│   │   │   └── local/           # SQLite/Hive implementations
│   │   ├── domain/
│   │   │   ├── entities/        # Business entities
│   │   │   ├── repositories/    # Repository interfaces
│   │   │   └── usecases/        # Business logic
│   │   └── presentation/
│   │       ├── widgets/         # Reusable UI widgets
│   │       ├── screens/         # Full screens
│   │       └── providers/       # Riverpod providers
│   ├── pubspec.yaml
│   ├── test/
│   └── android/ / ios/          # Platform-specific code
│
├── content_db/                  # Content database (1000+ Q&A)
│   ├── questions.json           # Quiz question bank
│   ├── scenarios.json           # Pre-hospital scenarios
│   ├── acronyms.json            # EMS acronyms
│   ├── glossary.json            # Terms & definitions
│   ├── simulations.json         # Procedure trainers
│   ├── flashcards.json          # Flashcard content
│   └── scripts.json             # Assessment scripts
│
├── web/                         # Progressive Web App (PWA)
│   ├── index.html
│   ├── manifest.json
│   ├── service-worker.js
│   └── src/
│
├── docs/                        # Documentation
│   ├── API.md
│   ├── FEATURES.md
│   ├── ARCHITECTURE.md
│   └── CONTENT_GUIDELINES.md
│
├── .github/
│   └── workflows/               # CI/CD pipelines
│
└── pubspec.yaml / package.json  # Dependencies

```

## 🎨 Design System

### Color Palette
- **Emergency Red**: `#E53935` - Primary action, alerts
- **Dark Blue**: `#0D47A1` - Sidebar, headers, trust
- **Success Green**: `#43A047` - Completion, correct answers
- **Warning Orange**: `#FB8C00` - Caution, review needed
- **White**: `#FFFFFF` - Clean backgrounds
- **Light Gray**: `#F5F5F5` - Secondary backgrounds
- **Dark Gray**: `#424242` - Text, secondary content

### Typography
- **Headings**: `Poppins Bold` (24px-32px)
- **Body**: `Roboto Regular` (14px-16px)
- **Mono**: `Courier New` (12px-14px) for medical codes

### Components
- Rounded cards (12px border-radius)
- Glassmorphism effects on overlays
- Smooth transitions (200-400ms)
- Touch-friendly buttons (48px minimum)
- Sticky navigation headers

## 📋 Feature Roadmap

### Phase 1: MVP (Weeks 1-4)
- ✅ Basic project structure & architecture
- ✅ Authentication system
- ✅ Home dashboard
- ✅ Basic competencies module
- ✅ 200+ quiz questions
- ✅ Offline local storage

### Phase 2: Core Content (Weeks 5-8)
- Common & Core competencies modules
- 1000+ complete question bank
- Assessment mode implementation
- Acronyms & glossary database
- Audio reviewer basics

### Phase 3: Interactive Features (Weeks 9-12)
- Practice exam simulator
- Pre-hospital scenarios (branching)
- Procedure simulations
- Flashcard system
- Visualization center

### Phase 4: Advanced Features (Weeks 13+)
- AI quiz generator
- Smart weak-area detection
- Mock oral interview
- Advanced analytics dashboard
- Community features

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.0+ or Node.js 16+
- Android SDK / Xcode
- Firebase account
- Git

### Installation

```bash
# Clone repository
git clone https://github.com/musi-kanto/emsncii.git
cd emsncii

# Navigate to Flutter app
cd flutter_app

# Get dependencies
flutter pub get

# Run app
flutter run
```

### Firebase Setup

1. Create Firebase project at https://console.firebase.google.com
2. Enable Firestore Database, Authentication, Storage
3. Download `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
4. Place files in respective platform directories
5. Initialize in `lib/main.dart`:

```dart
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
```

## 📚 Content Structure

All content is stored in structured JSON format with multilingual support:

```json
{
  "questions": [
    {
      "id": "q001",
      "competency": "CPR_WITH_AED",
      "difficulty": "intermediate",
      "type": "multiple_choice",
      "question": {
        "en": "When performing CPR, what is the correct compression-to-ventilation ratio?",
        "tl": "Kapag nagsasagawa ng CPR, ano ang tamang compression-to-ventilation ratio?"
      },
      "options": [
        {
          "id": "a",
          "text": { "en": "30:2", "tl": "30:2" },
          "correct": true
        }
      ],
      "rationale": {
        "en": "Current AHA guidelines recommend 30 chest compressions followed by 2 rescue breaths.",
        "tl": "Ang kasalukuyang AHA guidelines ay nagrerekomenda ng 30 chest compressions na sinusundan ng 2 rescue breaths."
      },
      "references": ["AHA BLS Guidelines 2020"]
    }
  ]
}
```

## 🔐 Security & Privacy

- ✅ Firebase Authentication (phone, email, social)
- ✅ End-to-end encryption for sensitive data
- ✅ GDPR/CCPA compliant
- ✅ Local-first data storage (no automatic uploads)
- ✅ User consent for cloud sync
- ✅ Secure offline credentials

## 📊 Analytics

The app tracks:
- Quiz completion rates
- Time spent per module
- Weak areas identification
- Progress over time
- Badge/achievement unlocks
- Study streak patterns
- Overall competency coverage

*Privacy-first*: All analytics are anonymous unless user opts in.

## 🧪 Testing

```bash
# Unit tests
flutter test

# Integration tests
flutter test integration_test/

# Coverage report
flutter test --coverage
```

## 📱 Deployment

### Android
```bash
flutter build apk --release
# or
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

### Web (PWA)
```bash
flutter build web --release
# Deploy to Firebase Hosting
firebase deploy
```

## 📖 Documentation

See `/docs` folder for detailed documentation:
- **API.md** - API endpoints and data structures
- **FEATURES.md** - Detailed feature specifications
- **ARCHITECTURE.md** - Technical architecture decisions
- **CONTENT_GUIDELINES.md** - How to add/update content

## 🤝 Contributing

1. Fork the repository
2. Create feature branch: `git checkout -b feature/your-feature`
3. Commit changes: `git commit -m 'Add your feature'`
4. Push to branch: `git push origin feature/your-feature`
5. Submit Pull Request

### Code Standards
- Follow Dart style guide (dart analyze)
- Write tests for new features
- Document public APIs
- Update README for major changes

## 📄 License

GNU General Public License v3.0 - See LICENSE file

## 📞 Support & Contact

- **Issues**: https://github.com/musi-kanto/emsncii/issues
- **Discussions**: https://github.com/musi-kanto/emsncii/discussions
- **Email**: support@emsncii.app
- **Documentation**: https://emsncii.app/docs

## 🙏 Acknowledgments

- TESDA (Technical Education and Skills Development Authority) for EMS NC II standards
- Emergency Medical Services professionals for guidance
- Flutter and Firebase communities

---

**Made with ❤️ for Philippine Emergency Medical Services**

*Helping students and candidates pass the TESDA EMS NC II competency assessment.*

---

## Status

⚠️ **Currently in Active Development** - Version 0.1.0-alpha

Last Updated: 2026-05-07
