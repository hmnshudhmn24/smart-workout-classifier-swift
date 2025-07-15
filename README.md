# 🧠 Swift Smart Workout Classifier (CoreMotion + CoreML)

Automatically detect and classify workouts like **pushups, squats, and burpees** using live sensor data from the device’s **accelerometer and gyroscope**, processed through a trained CoreML model.

---

## 📲 Features

- 🏃 Real-time motion detection
- 🧠 CoreML-powered activity classification
- 📡 Uses accelerometer and gyroscope via CoreMotion
- 📱 SwiftUI-based beautiful iOS interface
- 🔒 Processes data fully offline — privacy-friendly

---

## 🛠 Tech Stack

- Swift 5.9
- CoreMotion
- CoreML
- SwiftUI
- Xcode 15+

---

## 🚀 How to Install & Run

1. **Clone the Repo**
   ```bash
   git clone https://github.com/yourusername/swift-smart-workout-classifier.git
   cd swift-smart-workout-classifier
   ```

2. **Open in Xcode**
   - Open the `.xcodeproj` file in **Xcode 15+**
   - Connect a real iOS device (sensor data requires physical hardware)

3. **Import the ML Model**
   - Add your CoreML model file `WorkoutClassifier.mlmodel` to the project
   - Rebuild the app to auto-generate Swift model interface

4. **Run the App**
   - Tap “Run” on Xcode
   - The app will display predicted workout activity in real-time

---

## 📌 Use Cases

- Personal fitness tracking
- Home workout assistants
- Smart gym companions
- Research in biomechanics

---

⚡ Track your moves. Train smarter. Stay healthier.