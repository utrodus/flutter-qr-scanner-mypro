import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner_mypro/src/utils/validations/validator_utils.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

import '../res/components/custom_snackbar.dart';

class QRScannerViewModel extends ChangeNotifier {
  final qrKey = GlobalKey(debugLabel: "QR");
  QRViewController? qrController;
  Barcode? qrCode;
  ValidatorUtils validator = ValidatorUtils();
  bool isFlashOn = false;
  bool isCameraPause = false;

  void onQRViewCreated(QRViewController controller) {
    qrController = controller;
    notifyListeners();
    qrController!.scannedDataStream.listen(
      (qrCode) {
        onQRCodeRead(qrCode);
      },
      onDone: () {},
    );
  }

  void onQRCodeRead(Barcode qrCode) {
    this.qrCode = qrCode;
    notifyListeners();
    qrCodeCheck();
  }

  void qrCodeCheck() {
    if (qrCode != null) {
      if (qrCode!.code != null) {
        if (validator.isUrlValid(qrCode!.code)) {
          _launchUrl(qrCode!.code.toString());
        } else {
          showSnackbarError("QR Code is not URL");
          qrController?.pauseCamera();
          isCameraPause = true;
          notifyListeners();
        }
      }
    }
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.inAppWebView,
    )) {
      showSnackbarError("Could not launch $url");
    }
  }

  onTapTryAgain() {
    qrController?.resumeCamera();
    isCameraPause = false;
    notifyListeners();
  }

  onTapToggleFlash() {
    qrController?.getSystemFeatures().then((value) {
      if (value.hasFlash) {
        toggleFlash();
      } else {
        showSnackbarError("Camera Flash is not available");
      }
    });
  }

  onTapFlipCamera() {
    qrController?.getSystemFeatures().then((value) {
      if (value.hasFrontCamera) {
        flipCamera();
      } else {
        showSnackbarError("Camera switch is not available");
      }
    });
  }

  void toggleFlash() {
    try {
      qrController?.toggleFlash();
      notifyListeners();
      qrController?.getFlashStatus().then((value) {
        isFlashOn = value ?? false;
        notifyListeners();
      });
    } catch (e) {
      debugPrint("Flash Error: $e");
    }
  }

  void flipCamera() {
    try {
      qrController?.flipCamera();
      notifyListeners();
    } catch (e) {
      debugPrint("Flip Camera Error: $e");
    }
  }

  @override
  void dispose() {
    super.dispose();
    qrController?.dispose();
  }
}
