import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final AgoraClient _client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
          appId: "d76c37e4c44249ab9c71b0b0c0713aec",
          channelName: "Astotesting",
          tempToken:
              "007eJxTYPC1/Tm/0Ov3yn6Z9bOVvp6V1Evm6Lx1bVvVRbXgmG+z9mkoMKSYmyUbm6eaJJuYGJlYJiZZJpsbJhkkGSQbmBsaJ6YmX93VktwQyMgw5epnZkYGRgYWIAbxmcAkM5hkAZPcDI7FJfklqcUlmXnpDAwAQkknVA=="));
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initAgora();
  }

  Future<void> _initAgora() async {
    await _client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("video Call"),
        ),
        body: SafeArea(
            child: Stack(
          children: [
            AgoraVideoViewer(
              client: _client,
              layoutType: Layout.floating,
              showNumberOfUsers: true,
            ),
            AgoraVideoButtons(
              client: _client,
              enabledButtons: [
                BuiltInButtons.toggleCamera,
                BuiltInButtons.callEnd,
                BuiltInButtons.toggleMic
              ],
              onDisconnect: () {
                setState(() {});
              },
            )
          ],
        )),
      ),
    );
  }
}
