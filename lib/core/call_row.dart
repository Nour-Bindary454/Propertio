import 'package:flutter/material.dart';

class CallRow extends StatefulWidget {
  const CallRow({super.key,required this.onpressedMute,required this.onpressedCall,required this.onpressedvideo});
final Function() onpressedCall;
final Function() onpressedMute;
final Function() onpressedvideo;
  @override
  State<CallRow> createState() => _CallRowState();
}

class _CallRowState extends State<CallRow> {
  @override
  Widget build(BuildContext context) {
    return  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(73, 11, 163, 80),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: IconButton(
                            onPressed: widget.onpressedMute,
                            icon: const Icon(
                              Icons.mic,
                              color: Colors.green,
                            )),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: IconButton(
                            onPressed: widget.onpressedCall,
                            icon: const Icon(
                              Icons.call_rounded,
                              color: Colors.white,
                            )),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(73, 11, 163, 80),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: IconButton(
                            onPressed: widget.onpressedvideo,
                            icon: const Icon(
                              Icons.videocam_rounded,
                              color: Colors.green,
                            )),
                      )
                    ],
                  );
  }
}