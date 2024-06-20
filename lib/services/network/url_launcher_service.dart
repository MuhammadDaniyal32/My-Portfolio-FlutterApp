import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherService{

  Future<void> launchInBrowser(String url) async {

    try{
      if(await canLaunchUrl(Uri.parse(url))){
        await launchUrl(Uri.parse(url));
      }
      else {
        throw 'Could not launch $url';
      }
    }
    catch(e){
      throw Exception(e);
    }
  }


/*  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }*/


  Future<void> launchAsInAppWebViewWithCustomHeaders(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> launchInWebViewWithoutJavaScript(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: false),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> launchInWebViewWithoutDomStorage(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableDomStorage: false),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> launchUniversalLinkIOS(Uri url) async {
    final bool nativeAppLaunchSucceeded = await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    );
    if (!nativeAppLaunchSucceeded) {
      await launchUrl(
        url,
        mode: LaunchMode.inAppWebView,
      );
    }
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future lunchsms(String phoneNumber, String message) async {
    String uri = 'sms:$phoneNumber?body=$message';
    if (await canLaunchUrlString(uri)) {
      await launchUrlString(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  Uri smsLaunchUri = Uri(
    scheme: 'sms',
    path: '0118 999 881 999 119 7253',
    queryParameters: <String, String>{
      'body': Uri.encodeComponent('Example Subject & Symbols are allowed!'),
    },
  );

}