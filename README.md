# DorossAI

## Overview

DorossAI is an innovative Flutter application designed to help educators create, share, and explore engaging multimedia lesson content. It offers three core screens:

* **Home**: A central dashboard with bottom navigation for quick access to all sections.
* **Create Content**: A form-based interface where teachers can submit new lesson modules, complete with title and description.
* **Community Content**: A browsable list of shared lesson modules from other educators, displaying titles and authors.

This repository provides a clean, modular structure with named routes, stateful form handling, and basic navigation. You can extend it by integrating your backend API, adding audio narration players, image carousels, or analytics tracking.

---

## Table of Contents

* [Features](#features)
* [Getting Started](#getting-started)

  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Project Structure](#project-structure)
* [Screens](#screens)
* [Extending the App](#extending-the-app)
* [Contributing](#contributing)
* [License](#license)

---

## Features

* **Bottom Navigation**
  Switch seamlessly between Home, Create Content, and Community screens.
* **Form Validation**
  Ensure that every new lesson has both a title and description before submission.
* **ListView of Shared Content**
  Display community contributions in a scrolling list with author attribution.
* **Modular Routing**
  Named routes defined in `MaterialApp` for clear navigation paths.

---

## Getting Started

### Prerequisites

* [Flutter SDK (>=2.10)](https://flutter.dev/docs/get-started/install)
* A code editor such as [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)
* An emulator or physical device for iOS/Android

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/your-org/dorossai-flutter.git
   cd dorossai-flutter
   ```

2. **Fetch dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the app**

   ```bash
   flutter run
   ```

---

## Project Structure

```
lib/
├── main.dart                # App entry point, routes setup
├── screens/
│   ├── home_screen.dart     # HomeScreen with BottomNavigationBar
│   ├── create_content_screen.dart # Stateful form for new content
│   └── content_list_screen.dart   # ListView of community content
```

* **main.dart**
  Sets up `MaterialApp`, defines the theme and named routes.
* **screens/**
  Contains all UI pages, each as its own widget for separation of concerns.

---

## Screens

### Home Screen

* **File**: `home_screen.dart`
* **Description**: Welcomes the user and provides bottom navigation to other screens.

### Create Content Screen

* **File**: `create_content_screen.dart`
* **Description**:

  * Uses a `Form` widget with two `TextFormField`s (title and description).
  * Validates inputs is non-empty.
  * Shows a `SnackBar` upon successful submission (placeholder for backend integration).

### Community Content Screen

* **File**: `content_list_screen.dart`
* **Description**:

  * Builds a `ListView` of dummy lesson entries.
  * Each `ListTile` displays a lesson title and its author.
  * Tapping an item is a placeholder for a detailed view.

---

## Extending the App

* **Backend Integration**
  Replace the dummy lists and submission `SnackBar` with actual API calls using packages like `http` or `dio`.
* **Multimedia Support**

  * Audio: Integrate `just_audio` or `audio_players` for narration streams.
  * Images: Use `carousel_slider` for image galleries.
* **State Management**
  Adopt `Provider`, `Bloc`, or `Riverpod` for scalable state handling.
* **Animations**
  Enhance UX with `flutter_animate` or built-in `AnimatedContainer` and `Hero` widgets.
