import SwiftUI
import CoreMotion
import CoreML

class WorkoutClassifierViewModel: ObservableObject {
    private var motionManager = CMMotionManager()
    private var timer: Timer?
    private var model: WorkoutClassifier?

    @Published var currentPrediction: String = "Waiting for data..."

    init() {
        loadModel()
        startSensors()
    }

    func loadModel() {
        do {
            model = try WorkoutClassifier(configuration: MLModelConfiguration())
        } catch {
            print("Model failed to load: \(error)")
        }
    }

    func startSensors() {
        guard motionManager.isAccelerometerAvailable, motionManager.isGyroAvailable else { return }

        motionManager.accelerometerUpdateInterval = 0.1
        motionManager.gyroUpdateInterval = 0.1

        motionManager.startAccelerometerUpdates()
        motionManager.startGyroUpdates()

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.collectSensorData()
        }
    }

    func collectSensorData() {
        guard let acc = motionManager.accelerometerData, let gyro = motionManager.gyroData else { return }

        do {
            let prediction = try model?.prediction(acc_x: acc.acceleration.x, acc_y: acc.acceleration.y, acc_z: acc.acceleration.z,
                                                  gyro_x: gyro.rotationRate.x, gyro_y: gyro.rotationRate.y, gyro_z: gyro.rotationRate.z)
            currentPrediction = prediction?.label ?? "Unknown"
        } catch {
            currentPrediction = "Prediction failed: \(error.localizedDescription)"
        }
    }

    func stopSensors() {
        motionManager.stopAccelerometerUpdates()
        motionManager.stopGyroUpdates()
        timer?.invalidate()
    }
}

struct ContentView: View {
    @StateObject private var viewModel = WorkoutClassifierViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("🏋️ Workout Detector")
                .font(.largeTitle)
                .bold()

            Text(viewModel.currentPrediction)
                .font(.title2)
                .padding()

            Spacer()
        }
        .padding()
    }
}

@main
struct WorkoutClassifierApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
import SwiftUI
import CoreMotion
import CoreML

class WorkoutClassifierViewModel: ObservableObject {
    private var motionManager = CMMotionManager()
    private var timer: Timer?
    private var model: WorkoutClassifier?

    @Published var currentPrediction: String = "Waiting for data..."

    init() {
        loadModel()
        startSensors()
    }

    func loadModel() {
        do {
            model = try WorkoutClassifier(configuration: MLModelConfiguration())
        } catch {
            print("Model failed to load: \(error)")
        }
    }

    func startSensors() {
        guard motionManager.isAccelerometerAvailable, motionManager.isGyroAvailable else { return }

        motionManager.accelerometerUpdateInterval = 0.1
        motionManager.gyroUpdateInterval = 0.1

        motionManager.startAccelerometerUpdates()
        motionManager.startGyroUpdates()

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.collectSensorData()
        }
    }

    func collectSensorData() {
        guard let acc = motionManager.accelerometerData, let gyro = motionManager.gyroData else { return }

        do {
            let prediction = try model?.prediction(acc_x: acc.acceleration.x, acc_y: acc.acceleration.y, acc_z: acc.acceleration.z,
                                                  gyro_x: gyro.rotationRate.x, gyro_y: gyro.rotationRate.y, gyro_z: gyro.rotationRate.z)
            currentPrediction = prediction?.label ?? "Unknown"
        } catch {
            currentPrediction = "Prediction failed: \(error.localizedDescription)"
        }
    }

    func stopSensors() {
        motionManager.stopAccelerometerUpdates()
        motionManager.stopGyroUpdates()
        timer?.invalidate()
    }
}

struct ContentView: View {
    @StateObject private var viewModel = WorkoutClassifierViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("🏋️ Workout Detector")
                .font(.largeTitle)
                .bold()

            Text(viewModel.currentPrediction)
                .font(.title2)
                .padding()

            Spacer()
        }
        .padding()
    }
}

@main
struct WorkoutClassifierApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
import SwiftUI
import CoreMotion
import CoreML

class WorkoutClassifierViewModel: ObservableObject {
    private var motionManager = CMMotionManager()
    private var timer: Timer?
    private var model: WorkoutClassifier?

    @Published var currentPrediction: String = "Waiting for data..."

    init() {
        loadModel()
        startSensors()
    }

    func loadModel() {
        do {
            model = try WorkoutClassifier(configuration: MLModelConfiguration())
        } catch {
            print("Model failed to load: \(error)")
        }
    }

    func startSensors() {
        guard motionManager.isAccelerometerAvailable, motionManager.isGyroAvailable else { return }

        motionManager.accelerometerUpdateInterval = 0.1
        motionManager.gyroUpdateInterval = 0.1

        motionManager.startAccelerometerUpdates()
        motionManager.startGyroUpdates()

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.collectSensorData()
        }
    }

    func collectSensorData() {
        guard let acc = motionManager.accelerometerData, let gyro = motionManager.gyroData else { return }

        do {
            let prediction = try model?.prediction(acc_x: acc.acceleration.x, acc_y: acc.acceleration.y, acc_z: acc.acceleration.z,
                                                  gyro_x: gyro.rotationRate.x, gyro_y: gyro.rotationRate.y, gyro_z: gyro.rotationRate.z)
            currentPrediction = prediction?.label ?? "Unknown"
        } catch {
            currentPrediction = "Prediction failed: \(error.localizedDescription)"
        }
    }

    func stopSensors() {
        motionManager.stopAccelerometerUpdates()
        motionManager.stopGyroUpdates()
        timer?.invalidate()
    }
}

struct ContentView: View {
    @StateObject private var viewModel = WorkoutClassifierViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("🏋️ Workout Detector")
                .font(.largeTitle)
                .bold()

            Text(viewModel.currentPrediction)
                .font(.title2)
                .padding()

            Spacer()
        }
        .padding()
    }
}

@main
struct WorkoutClassifierApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
import SwiftUI
import CoreMotion
import CoreML

class WorkoutClassifierViewModel: ObservableObject {
    private var motionManager = CMMotionManager()
    private var timer: Timer?
    private var model: WorkoutClassifier?

    @Published var currentPrediction: String = "Waiting for data..."

    init() {
        loadModel()
        startSensors()
    }

    func loadModel() {
        do {
            model = try WorkoutClassifier(configuration: MLModelConfiguration())
        } catch {
            print("Model failed to load: \(error)")
        }
    }

    func startSensors() {
        guard motionManager.isAccelerometerAvailable, motionManager.isGyroAvailable else { return }

        motionManager.accelerometerUpdateInterval = 0.1
        motionManager.gyroUpdateInterval = 0.1

        motionManager.startAccelerometerUpdates()
        motionManager.startGyroUpdates()

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.collectSensorData()
        }
    }

    func collectSensorData() {
        guard let acc = motionManager.accelerometerData, let gyro = motionManager.gyroData else { return }

        do {
            let prediction = try model?.prediction(acc_x: acc.acceleration.x, acc_y: acc.acceleration.y, acc_z: acc.acceleration.z,
                                                  gyro_x: gyro.rotationRate.x, gyro_y: gyro.rotationRate.y, gyro_z: gyro.rotationRate.z)
            currentPrediction = prediction?.label ?? "Unknown"
        } catch {
            currentPrediction = "Prediction failed: \(error.localizedDescription)"
        }
    }

    func stopSensors() {
        motionManager.stopAccelerometerUpdates()
        motionManager.stopGyroUpdates()
        timer?.invalidate()
    }
}

struct ContentView: View {
    @StateObject private var viewModel = WorkoutClassifierViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("🏋️ Workout Detector")
                .font(.largeTitle)
                .bold()

            Text(viewModel.currentPrediction)
                .font(.title2)
                .padding()

            Spacer()
        }
        .padding()
    }
}

@main
struct WorkoutClassifierApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}