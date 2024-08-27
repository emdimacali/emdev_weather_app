# emdev_weather_app

A Flutter Weather App created using the following packages:

- bloc
- hydrated_bloc
- dio
- geolocator
- built_value

Flutter version used for this app is: 3.24.1. There is a `.fvmrc` included in this repo if you are using Flutter Version Manager.

This app can be run in both Android and iOS.

## App Demo

[Simple Weather App Demo](https://youtu.be/sm1whnJ1iNU)

## Getting Started

### Pre-requisite/s:

Before running the app, please ensure that you put your API key for the OpenWeatherMap on the `api-keys.json` file. An `api-keys.json.example` file is already in place and you can just remove the `.example` in the end and replace the placeholder `XXXXX` with the actual key.

### Running the app:

#### VSCode:

If you are opening this in VSCode, there is already an included `.vscode/launch.json` which will already launch the app using the API keys in your `api-keys.json` file.

#### Other IDEs:

If you are not using VSCode, simply run the command below to still use the api keys in the file:

`flutter run --dart-define-from-file=api-keys.json`
