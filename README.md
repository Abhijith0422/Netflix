# Netflix Spoof

Netflix Spoof is a Flutter application that mimics the Netflix user interface and functionality. It showcases trending movies, top TV shows, and other categories using data fetched from an API.

## Features

- Display trending movies and TV shows
- Search for movies
- View details of movies and TV shows
- Top 10 TV shows in India
- Tense dramas and other categories

## Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) (version 2.0 or higher)
- [Dart](https://dart.dev/get-dart)
- [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/)

### Installation

1. Clone the repository:

```sh
git clone https://github.com/yourusername/netflix_spoof.git
cd netflix_spoof 
```
##Project Strucure

lib/
├── application/
│   ├── newandhot/
│   ├── everyonewatching/
│   ├── top10/
│   ├── home/
│   └── ...
├── domain/
│   ├── core/
│   ├── newandhot/
│   ├── everyonewatching/
│   ├── top10/
│   ├── home/
│   └── ...
├── infrastructure/
│   ├── core/
│   ├── newandhot/
│   ├── everyonewatching/
│   ├── top10/
│   ├── home/
│   └── ...
├── presentation/
│   ├── newandhot/
│   ├── everyonewatching/
│   ├── top10/
│   ├── home/
│   └── ...
└── main.dart
