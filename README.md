# Hello App

A Flutter-based second-hand marketplace app built as a learning and development project.

The long-term goal is to build a simple and low-cost marketplace where users can list items for sale, post buying requests, and complete transactions through the platform.

## Current Status

🚧 **Early Development**

The project has reached its first stable milestone:

**v0.1-riverpod-state**

At this stage, the app demonstrates centralized product state management with Riverpod, including synchronized favorite state between the home page and product detail page.

## Features

### Currently Implemented

- Product listing
- Product detail page
- Product navigation
- Favorite / unfavorite products
- Synchronized favorite state between pages
- Riverpod-based state management
- Product repository layer
- Loading state handling
- Error state handling

### Planned

- User authentication
- User profiles
- Create and edit product listings
- "Sell" and "Want to Buy" posts
- Search and filtering
- Local data persistence
- REST API backend
- Database integration
- Payment integration
- Transaction workflow

## Tech Stack

- **Flutter**
- **Dart**
- **Riverpod**
- **Android Studio**
- **Git / GitHub**

## Project Architecture

The project follows a separation-of-concerns approach:

```text
lib/
├── controllers/
│   ├── product_controller.dart
│   └── product_state.dart
├── models/
│   └── product.dart
├── pages/
│   ├── home_page.dart
│   └── product_detail_page.dart
├── providers/
│   └── product_provider.dart
├── repositories/
│   └── product_repository.dart
└── widgets/
    └── product_card.dart

Architecture Overview
UI
│
├── HomePage
├── ProductDetailPage
└── ProductCard
        │
        ▼
Riverpod Provider
        │
        ▼
ProductController
        │
        ▼
ProductRepository
        │
        ▼
Product Data

This structure keeps UI code, application state, and data access separate, making the project easier to understand and extend.

Getting Started
Requirements

Before running the project, make sure you have:

Flutter SDK
Dart SDK
Android Studio
Android SDK
An Android emulator or physical Android device

Clone the Repository
git clone https://github.com/Chloe-gxy/hello_app.git
cd hello_app

Install Dependencies
flutter pub get

Run the App
flutter run

You can also run the project from Android Studio or VS Code.

Milestones
 Basic Flutter application
 Product model
 Product repository
 Product listing
 Product detail page
 Product navigation
 Riverpod state management
 Synchronized favorite state
 Git milestone checkpoint
 GitHub repository
 Local persistence
 REST API
 Backend database
 User authentication
 Product posting
 Buying and selling workflow
 Payment integration
Version History
v0.1-riverpod-state

First stable Riverpod state-management milestone

This version establishes centralized product state management using Riverpod.

It also ensures that the favorite state remains synchronized between the product list and product detail page.

Git tag:

v0.1-riverpod-state
Learning Goals

This project is also a hands-on learning project for:

Flutter application development
Dart programming
State management with Riverpod
Separation of concerns
Repository pattern
Widget communication
Navigation between pages
REST API integration
Backend development
Database integration
Git and GitHub workflow
Future Direction

The project will gradually evolve from a local Flutter prototype into a complete second-hand marketplace application.

The planned architecture is:

Flutter App
     │
     ▼
FastAPI Backend
     │
     ├── Authentication
     ├── Product Management
     ├── Transactions
     └── Payments
     │
     ▼
Database

The goal is to keep the system simple, affordable, and practical while using the project as a hands-on way to learn modern application development.