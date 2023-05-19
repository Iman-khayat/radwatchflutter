 

FROM gradle:latest
FROM dart:latest
FROM airbyte/firebase-emulator:latest
FROM mobiledevops/flutter-sdk-image:latest



CMD ["dart","main.dart"]
 