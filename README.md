# TODO App — BLoC + Isar

> A TODO app built with clean architecture, BLoC/Cubit state management, and Isar local database for offline-first persistence.

![Screenshot](https://github.com/user-attachments/assets/61093f87-67d9-455a-9e6a-21485831d609)

## Features

- Create, complete, and delete todos
- Offline-first with Isar local database
- BLoC/Cubit state management
- Clean architecture with separated data, domain, and presentation layers

## Architecture

```
lib/
├── data/            # Isar models & repository implementation
├── domain/          # Abstract models & repository interface
└── presentation/    # Cubit, pages & UI
```

## Tech Stack

- Flutter & Dart
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) — state management
- [Isar](https://pub.dev/packages/isar) — local NoSQL database
- [path_provider](https://pub.dev/packages/path_provider) — file system paths

## Getting Started

```bash
git clone https://github.com/mitchkoko/todo_bloc_isar.git
cd todo_bloc_isar
flutter pub get
flutter run
```

## Tutorial

Watch the full build tutorial: [YouTube](https://youtu.be/brDKUf1yV6c)

## License

MIT License - see [LICENSE](LICENSE)

---

Created by [Mitch Koko](https://youtube.com/mitchkoko)
