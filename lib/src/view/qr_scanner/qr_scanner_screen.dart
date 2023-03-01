import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner_mypro/src/res/tokens/app_colors.dart';
import 'package:flutter_qr_scanner_mypro/src/utils/extensions/extension.dart';
import 'package:flutter_qr_scanner_mypro/src/view_model/qr_scanner_vm.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScannerScreen extends StatefulWidget {
  const QrScannerScreen({Key? key}) : super(key: key);

  @override
  State<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      context.read<QRScannerViewModel>().qrController?.pauseCamera();
    }
    context.read<QRScannerViewModel>().qrController?.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QRScannerViewModel>(
      builder: (context, vm, child) {
        return SafeArea(
          child: Scaffold(
            body: Stack(
              alignment: Alignment.center,
              children: [
                QRView(
                  key: vm.qrKey,
                  onQRViewCreated: vm.onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                    cutOutSize: context.width * 0.8,
                    borderLength: 30,
                    borderRadius: 18,
                    borderWidth: 10,
                    borderColor: AppColors.primary,
                  ),
                ),
                Positioned(
                  top: 80,
                  child: Text(
                    "Align the QR code within\n the frame to scan",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: AppColors.onPrimary,
                        ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: Column(
                    children: [
                      Visibility(
                        visible: vm.isCameraPause,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white54,
                            minimumSize: Size(context.width * 0.75, 44),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () => vm.onTapTryAgain(),
                          child: const Text("Try Again"),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: context.width * 0.5,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.grey.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () => vm.onTapToggleFlash(),
                                icon: Icon(
                                  vm.isFlashOn
                                      ? Icons.flash_off
                                      : Icons.flash_on,
                                  color: AppColors.onPrimary,
                                ),
                              ),
                              IconButton(
                                onPressed: () => vm.onTapFlipCamera(),
                                icon: const Icon(
                                  Icons.flip_camera_ios,
                                  color: AppColors.onPrimary,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
