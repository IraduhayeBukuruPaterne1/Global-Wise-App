# Global-Wise-App

**GlobalWise** is a travel companion app that provides comprehensive information about countries and their weather conditions. It integrates two APIs: **REST Countries API** and **OpenWeatherMap API**. The app aims to assist users in exploring global insights, including demographic details, cultural aspects, and real-time weather updates.

---

## Features

- **Country Information**  
  Explore detailed information about countries, including:
  - Population
  - Languages
  - Currency
  - Flag

- **Smooth Navigation**  
  Navigate seamlessly between the app's screens:
  - **Home Screen**: List of countries with their flags.
  - **Country Details Screen**: Specific information about the selected country.
  - **Weather Screen**: Weather details for the capital city.

---

## Screens

1. **Home Screen**  
   Displays a list of countries and their flags.  

2. **Country Details Screen**  
   Presents detailed demographic and cultural data about the selected country. 

---

## Technologies Used

- **Flutter**  
  A powerful UI toolkit for building cross-platform applications.  
- **Provider**  
  For state management and efficient API integration.  
- **RESTful APIs**  
  - [REST Countries API](https://restcountries.com) for country information.

---

## Installation and Setup

Follow these steps to set up and run the app:

### 1. Prerequisites
Ensure you have the following installed on your machine:
- Flutter SDK
- A suitable code editor (Visual Studio Code or Android Studio)

### 2. Clone the Repository
```bash
git clone https://github.com/your-username/Global-Wise-App.git
cd Global-Wise-App
```

### 3. Install Dependencies
Run the following command to install the required dependencies:
```bash
flutter pub get
```

### 4. Run the App
Use the following command to start the app on an emulator or connected device:
```bash
flutter run
```

---

## API Documentation

### **REST Countries API**
- **Base URL**: `https://restcountries.com/v3.1/all`
- Provides comprehensive country data, including:
  - Name
  - Population
  - Languages
  - Currency
  - Flags

---

## Challenges and Solutions

1. **Handling API Errors**  
   - Implemented error handling for failed HTTP requests, ensuring user-friendly error messages.  

2. **API Integration**  
   - Used `Provider` for efficient state management and smooth data flow between widgets.  

3. **Dynamic Data Loading**  
   - Displayed loading indicators to enhance user experience during API data fetches.  

---
