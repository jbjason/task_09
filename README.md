# task_09

Live Demo:

<img width=30% height=14%  alt="Screenshot_1762591990" src="https://github.com/user-attachments/assets/c96fab18-493a-43d1-a7e4-917e2761f55b"> <img width=30% height=14% alt="Screenshot_1762623181" src="https://github.com/user-attachments/assets/e82e66f3-fbba-4c6f-85ec-58c6f762d90d" />

          (Without API Integration)            (With API)

## Architecture & Approach

- **Clean Architecture**: Organized into `config`, `core`, and `feature` layers with data, domain, and presentation modules
- **Type Safety**: Used safety parse for robust JSON conversion and easier debugging
- **Network**: Dio package for API handling
- **Image Caching**: Cached network image implementation for optimal performance
- **Responsive Design**: Flutter ScreenUtil for device-adaptive UI
- **Code Quality**: Well-structured, readable code with comprehensive comments

## Getting Started

### Prerequisites
- Flutter SDK (3.0 or higher)
- Dart SDK
- Android Studio / VS Code

### Installation

1. Clone the repository
```bash
git clone <repository-url>
cd <project-name>
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
flutter run
```

## Project Structure

```
lib/
├── config/          # App configuration
├── core/            # Core utilities and shared resources
└── features/        # Feature modules
    ├── data/        # Data sources and repositories
    ├── domain/      # Business logic and entities
    └── presentation/ # UI and state management
```

## Key Dependencies

- `dio` - HTTP client
- `cached_network_image` - Image caching
- `flutter_screenutil` - Responsive design

## Notes

- API endpoints and configurations are located in the config layer
- Error handling implemented across all layers
- Comments provided throughout for code clarity
