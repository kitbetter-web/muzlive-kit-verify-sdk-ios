# KiTverify SDK for iOS

KiT 태그 인식 기능을 제공하는 iOS SDK입니다. 마이크를 통해 KiT 태그를 인식하고 인증된 결과를 반환합니다.

## 주요 기능

- **KiT 태그 인식** - KiT 태그 자동 인식
- **인증 결과 제공** - 인식 성공 시 토큰 및 앨범 ID 제공
- **간편한 연동** - 초기화, 시작/종료의 단순한 API 구조
- **이벤트 기반 처리** - 성공, 실패, 종료 이벤트 Delegate 콜백

## 요구사항

- iOS 14.0+
- Swift 6.2+
- Xcode 16.0+

## 설치

### Swift Package Manager

1. Xcode에서 `File > Swift Packages > Add Package Dependency...` 선택
2. 저장소 URL 입력:
   ```
   https://github.com/kitbetter-web/muzlive-kit-verify-sdk-ios
   ```
3. `Add Package` 클릭

## 사용법

### 1. 마이크 권한 설정

`Info.plist`에 마이크 사용 권한을 추가합니다.

```xml
<key>NSMicrophoneUsageDescription</key>
<string>키트 인식을 위해 마이크 권한이 필요합니다.</string>
```

### 2. SDK 초기화

`AppDelegate`의 `application(_:didFinishLaunchingWithOptions:)` 에서 SDK를 초기화합니다.

```swift
import KiTverifySDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let clientId = "YOUR_CLIENT_ID"
        let secretKey = "YOUR_SECRET_KEY"
        KiTverify.initialize(with: clientId, secretKey: secretKey)
        return true
    }
}
```

> **보안 주의:** `SECRET_KEY`는 앱 보안을 위해 외부에 노출되지 않도록 주의하세요. 소스 코드에 하드코딩하지 않고 별도 파일에 보관하는 것을 권장합니다.

### 3. Delegate 등록

`KiTverifyDelegate`를 구현하여 SDK 이벤트를 수신합니다.

```swift
import KiTverifySDK

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        KiTverify.shared.addDelegate(self)
    }
}

extension ViewController: KiTverifyDelegate {
    func kitVerifyDidSuccess(_ result: KiTverifyResult) {
        print("인식 성공 - token: \(result.token), albumID: \(result.albumID)")
    }

    func kitVerifyDidFail(_ error: KiTverifyError) {
        print("인식 실패 - \(error.localizedDescription)")
    }

    func kitVerifyDidDismiss() {
        print("SDK 화면 종료")
    }
}
```

| 메서드 | 설명 |
|--------|------|
| `kitVerifyDidSuccess(_:)` | 태그 인식 성공 시 호출. `KiTverifyResult`에 `token`과 `albumID` 포함 |
| `kitVerifyDidFail(_:)` | 에러 발생 시 호출 |
| `kitVerifyDidDismiss()` | SDK UI 종료 시 호출 (optional, 기본 구현 제공) |

### 4. 인식 시작 / 종료

```swift
// 인식 시작
KiTverify.shared.start()

// 인식 종료
KiTverify.shared.stop()
```

### 5. 상태 확인

```swift
// SDK 초기화 여부 확인
KiTverify.shared.isInitialized

// SDK 실행 중 여부 확인
KiTverify.shared.isRunning
```

## 에러 코드

### 초기화

| 코드 | 설명 |
|------|------|
| `initializeFailed` | SDK 초기화에 실패했습니다 |
| `notInitialized` | SDK가 초기화되지 않았습니다 |

### 네트워크

| 코드 | 설명 |
|------|------|
| `networkError` | 네트워크 오류가 발생했습니다 |
| `micPositionFetchFailed` | 마이크 위치 정보를 가져오는데 실패했습니다 |
| `tagVerificationFailed` | 태그 검증에 실패했습니다 |

### 권한

| 코드 | 설명 |
|------|------|
| `microphonePermissionDenied` | 마이크 권한이 거부되었습니다 |

### 인식

| 코드 | 설명 |
|------|------|
| `recognitionTimeout` | 인식 시간이 초과되었습니다 |
| `invalidTag` | 잘못된 태그입니다 |
| `notSupportedTag` | 지원하지 않는 태그입니다 |

### 상태

| 코드 | 설명 |
|------|------|
| `alreadyRunning` | 이미 실행 중입니다 |
| `notRunning` | 실행 중이 아닙니다 |

## 문서

전체 문서는 [KiTverify SDK Documentation](https://kitbetter-web.github.io/kit-verify-sdk-docs/)에서 확인할 수 있습니다.

## 라이선스

Copyright © kitbetter-web. All rights reserved.
