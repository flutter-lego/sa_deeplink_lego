[![lego project](https://img.shields.io/badge/powered%20by-lego-blue?logo=github)](https://github.com/melodysdreamj/lego)
[![pub package](https://img.shields.io/pub/v/sa_deeplink_lego.svg)](https://pub.dartlang.org/packages/sa_deeplink_lego)

# sa_deeplink_lego
deep link dto template under simple architecture framework.

##  Installation
1. open terminal in the lego project root directory, enter the following command for install cli.
   and create a new lego project if you don't have one.
```bash
flutter pub global activate lego_cli
lego create
```
2. in terminal, enter the following command for add lego to project.
```bash
lego add sa_deeplink_lego
```

## Usage
1. change all `New` in blueprint folder to your dto name.
2. change _new.dart to your dto file name.
3. copy all in lib/blueprint/deeplink to your app folder.
4. generate deeplink 
```dart
String url = NewDeepLink.buildLink(
   'https://deeplinktest.junestory.com',
   New()
     ..docId = 'angel'
     ..s000 = 'sky');
print(url);
```
5. when you click the link on the phone, the app will open and 
   `lib/app/frontend/listener/deeplink/[your dto name].dart` `ReceiveNewDeepLinkData` function 
   will be called with the dto data.
