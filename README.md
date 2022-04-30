# sqfe_ntity_exemple

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application 
when you want to use local database to your app using an ORM calles SqfEntity.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# package to install
- sqfentity
- sqfentity_gen
- http

# dev dependencies package
- build_runner
- build_verify

# steps to do
- create a file where you define your database model (table, relations ...) like in lib/data/db_model.dart
- run this command to generate your model : flutter pub run build_runner build --delete-conflicting-outputs