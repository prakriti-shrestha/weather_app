# Clima

A live weather app built with Flutter that provides real-time weather data for your current location and allows you to search for the weather in any city worldwide. This project is focused on asynchronous programming, API communication, and handling device permissions.

## About The Project

The primary goal was to learn how to perform time-consuming tasks asynchronously without freezing the UI. The app fetches live weather data from the OpenWeatherMap API based on the device's current GPS location and also allows users to get weather data for any city they search for. The beautiful UI was inspired by the work of designer [Olia Gozha](https://dribbble.com/shots/4663154-Weather-App).

## Key Features & Concepts

This project was an opportunity to practice and master several key Flutter and Dart concepts, particularly around asynchronous programming and networking:

* **Asynchronous Programming:**
    * Deep understanding of `async` and `await` in Dart.
    * Working with `Future`s to handle operations that take time to complete.
* **Networking & APIs:**
    * Making network requests using the Dart `http` package.
    * Understanding and using REST APIs to fetch live data from the internet (OpenWeatherMap).
    * Parsing JSON data into usable Dart objects with the `dart:convert` package.
* **Location Services:**
    * Using the `geolocator` package to get live GPS location data from both iOS and Android devices.
* **Flutter UI & Navigation:**
    * Passing data both forwards and backwards between screens using the `Navigator`.
    * Using the `TextField` widget to capture and handle user input.
* **Error Handling:**
    * Gracefully handling exceptions (e.g., network errors, invalid city names) using `try`/`catch`/`throw`.
* **Widget Lifecycle:**
    * Understanding the lifecycle of `StatefulWidgets` (`initState`, `deactivate`, etc.) and overriding its methods to manage resources effectively.

## Built With

* **[Flutter](https://flutter.dev/)** - The UI toolkit for building beautiful, natively compiled applications.
* **[Dart](https://dart.dev/)** - The programming language used by Flutter.
* **[OpenWeatherMap API](https://openweathermap.org/api)** - For providing real-time weather data.
  
## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

* **Flutter SDK:** Make sure you have the Flutter SDK installed. [Installation Guide](https://flutter.dev/docs/get-started/install)
* **An IDE:** VS Code with the Flutter extension, or Android Studio.
* **API Key:** You will need an API key from [OpenWeatherMap](https://openweathermap.org/api).

### Installation

1.  **Clone the repo**
    ```sh
    git clone [https://github.com/your-username/your-repository-name.git](https://github.com/your-username/your-repository-name.git)
    ```
2.  **Navigate to the project directory**
    ```sh
    cd your-repository-name
    ```
3.  **Install dependencies**
    ```sh
    flutter pub get
    ```
4.  **Add your API Key**
    * Open the file `lib/services/networking.dart` (or wherever you handle your API calls).
    * Replace the placeholder for the API key with your own key.
5.  **Run the app**
    ```sh
    flutter run
    ```
