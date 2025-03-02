# UIKit VIPER Example App

## This project is example of implementation VIPER architecture pattern for UIKit iOS application

---

## What has been implemented?

* Modular and reusable screens;
* Networking (Mock REST API [JsonPlaceholder](https://jsonplaceholder.typicode.com));
* JSON parsing;
* Local Data Storage (SwiftData);
* Using localized strings (English & Russian language support) with plural tokens;
* Custom Popup Transitions;
* Async, Threading:
  * Swift Concurrency (async/await & Task);
  * Dispatch Frameword (Grand Central Dispatch, GCD);
* Animating views;

---

## Project structure

* **Sources:**
  * App Layer: AppDelegate & (optional) SceneDelegate;
  * Business Layer: business logic services & implementations, entities and models;
  * Core Layer: base implementations, extensions, protocols, etc;
  * Presentation Layer: screen modules & reusable views (cells);
* **Resources:**
  * Assets: all project assets;
  * Fonts (optional): custom app fonts;
  * Localizable string catalogs;
  * Launch/Splash screen storyboards;
  * .plist files;
  * etc;
