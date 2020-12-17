import Flutter
import UIKit

public class SwiftReceiveShareExtensiosPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "receive_share_extensios", binaryMessenger: registrar.messenger())
    let instance = SwiftReceiveShareExtensiosPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
