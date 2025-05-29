# flutter_nice_gap

A simple and elegant gap widget for Flutter that automatically adapts to its parent's direction.

## Features

- 🎯 Simple API - just use `Gap(10)` to add spacing
- 🔄 Automatically adapts to parent direction (Row/Column)
- 🚀 Zero dependencies
- 📦 Lightweight and focused

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_nice_gap: ^1.0.0
```

## Usage

Import the package:

```dart
import 'package:flutter_nice_gap/flutter_nice_gap.dart';
```

### Basic Usage

```dart
Row(
  children: [
    Text('Hello'),
    Gap(10), // Creates 10 logical pixels of horizontal spacing
    Text('World'),
  ],
)

Column(
  children: [
    Text('Hello'),
    Gap(10), // Creates 10 logical pixels of vertical spacing
    Text('World'),
  ],
)
```

## How it works

The `Gap` widget automatically detects whether it's inside a `Row` or `Column` and creates the appropriate spacing:

- In a `Row`, it creates horizontal spacing
- In a `Column`, it creates vertical spacing

## Contributing

Feel free to contribute to this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
