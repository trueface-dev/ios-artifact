# TrueFace iOS Liveness SDK

Standalone native Swift SDK for integrating secure biometric liveness check in iOS applications.

## Integration

Add this package to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/trueface/trueface-ios-sdk.git", from: "1.0.0")
]
```

Or add it directly via Xcode Package Manager.

## Usage

1. Configure camera permission description in your app's `Info.plist`:
   ```xml
   <key>NSCameraUsageDescription</key>
   <string>TrueFace needs access to your camera for liveness verification.</string>
   ```

2. Construct and present the `TrueFaceLivenessViewController`:

```swift
import UIKit
import TrueFaceLiveness

class ViewController: UIViewController, TrueFaceLivenessDelegate {

    func startVerification() {
        let config = TrueFaceConfig(
            backendBaseUrl: "https://api.trueface.dev",
            publicKey: "pk_test_SFJdgYdzDh84SO2jKDwL6qTxQINZCOi6",
            verificationId: "ca93f062-7c46-43b1-be08-5136fc02e83b",
            clientSecret: "vs_4f4PZPic2lkqlY8UEgFcQHLdrMdaY3VM"
        )
        
        let vc = TrueFaceLivenessViewController(config: config)
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }

    // MARK: - TrueFaceLivenessDelegate

    func livenessViewController(_ vc: TrueFaceLivenessViewController, didUpdateEvent event: [String : Any]) {
        print("Liveness Event: \(event)")
    }

    func livenessViewController(_ vc: TrueFaceLivenessViewController, didCompleteWithResult result: [String : Any]) {
        print("Liveness Success: \(result)")
        vc.dismiss(animated: true)
    }

    func livenessViewController(_ vc: TrueFaceLivenessViewController, didFailWithError error: Error) {
        print("Liveness Error: \(error.localizedDescription)")
        vc.dismiss(animated: true)
    }
}
```
