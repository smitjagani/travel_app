aaaaaaa# Welcome to Travel App 🚀

This travel app fetches and stores route and attraction data using Hive. It follows MVVM architecture and BLoC for state management, featuring route displays, nearby attractions, and on-demand data loading.

## Flutter Version

3.22.2

## Getting Started

To run this project locally, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/smitjagani/travel_app.git

   ```

2. Navigate to the project directory:

   ```bash
   cd travel_app

   ```

3. Install dependencies:

   ```bash
   flutter pub get

   ```

4. Generate models:

   ```bash
   dart run build_runner build

   ```

5. Run the project:

   ```bash
   flutter run
   ```

## Dependencies 📦

- cupertino_icons: ^1.0.6
- flutter_bloc: ^8.1.5
- http: ^1.2.1
- equatable: ^2.0.3
- cached_network_image: ^3.3.1
- hive: ^2.2.3
- hive_flutter: ^1.1.0

## Dev Dependencies 📦

- flutter_lints: ^3.0.0
- build_runner: ^2.4.9
- hive_generator: ^2.0.1

## Fonts 🖋️

The project uses the following fonts:

**Outfit (family)**

- Outfit-Bold.ttf (700)
- Outfit-Medium.ttf (500)
- Outfit-Regular.ttf (400)
- Outfit-Light.ttf (300)

## Assets 🌅

**The project includes assets in the following directories:**

- Fonts: assets/fonts/
- Icons: assets/icons/

## Features Folder :card_index_dividers:
    .lib
    │
    ├── config
    │   ├── constant
    │   ├── routes
    │   ├── styles
    │   └── widgets
    │
    ├── features
    │   ├── model
    │   │   ├── models
    │   │   └── repository
    │   │
    │   ├── view
    │   │   └── route_view
    │   │
    │   └── view_models
    │       └── route_viewmodel
    │
    ├── services
    │   ├── api_service
    │   └── hive_service
    │
    └── main.dart

