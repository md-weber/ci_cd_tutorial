# Flutter App with Codemagic CI/CD - Tutorial Repository

This repository contains a Flutter application that demonstrates the usage of unit and integration
testing in conjunction with Codemagic CI/CD. It serves as a practical resource for the [video]() on the 
[Flutter Explained YouTube channel](https://youtube.com/@flutterexplained).

## Application Overview

This simple Flutter application showcases key aspects of unit and integration testing. It includes:

- A basic UI with some interactive elements
- A suite of unit tests to verify the functionality of individual components
- Integration tests to ensure the whole application works together seamlessly

## Codemagic CI/CD

The repository is set up with a `codemagic.yaml` file for automating the testing and integration process using Codemagic CI/CD. The configuration includes:

- Instructions for setting up the CI/CD environment
- Steps for running unit and integration tests
- Optional settings for deployment

## Getting Started

1. Clone this repository to your local machine.
2. Install all dependencies by running `flutter pub get`.
3. To run unit tests, use `flutter test`.
4. For integration tests, use `flutter drive --target=test_driver/app.dart`.

Please refer to the video tutorial for a detailed guide on how to use this repository and set up your CI/CD pipeline using Codemagic.