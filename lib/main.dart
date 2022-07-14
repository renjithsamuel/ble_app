import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';
import 'package:fluttergametemp/rowWidget.dart';
import 'dart:math';
import 'dart:async';
import 'package:async/async.dart';
// import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';

void main() {
  runApp(const MyApp());
}

bool check = true;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: newMethod(),
    );
  }
}

//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int sec=5;
//   var rng = Random();
//   var neg=Random();
//   var num;
//   int q=5;
//   void postive(){
//     print("CLicked positive");
//   }
//
//   void negative(){
//     print("CLicked negative");
//   }
//
//
//
//   Expanded rowfunc(int w,bool negOrpos){
//     return Expanded(
//       child: Row(
//         children: [
//           Padding(
//               padding: EdgeInsets.only(left: w.toDouble()),
//               child: GestureDetector(
//                 child: CircleAvatar(
//                   child:(negOrpos)?Icon(Icons.close):Icon(Icons.add),
//                 ),
//                 onTap: (){
//                   if(negOrpos){
//
//                       setState(() {
//
//                           // timerfunc(5);
//                           // // aa?.tick;
//                       });
//                       aa?.cancel();
//                       _timerfuncState().timer();
//
//                   }
//                   else{
//                         alertclass c=new alertclass();
//                         c.alertfunc(context);
//                   }
//                 },
//               )),
//         ],
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     num=neg.nextInt(10);
//     return Scaffold(
//       appBar:AppBar(),
//       body:Column(
//         children: [
//           new  timerfunc(q),
//           for (int i=0; i<10; i++)
//             (num==i)?rowfunc(rng.nextInt(MediaQuery.of(context).size.width.toInt()-100),true):rowfunc(rng.nextInt(MediaQuery.of(context).size.width.toInt()-100),false)
//       ],
//       )
//     );
//   }
// }
//
// class timerfunc extends StatefulWidget {
//   final int sec;
//   const timerfunc(this.sec, {Key? key}) : super(key: key);
//
//   @override
//   State<timerfunc> createState() => _timerfuncState();
// }
// Timer? aa;
// RestartableTimer? _timer;
// class _timerfuncState extends State<timerfunc> {
//
//   int? sec;
//   void timer() {
//     print("IM in timer func");
//     _timer = new RestartableTimer(Duration(seconds: 5), (){
//         alertclass c=new alertclass();
//         c.alertfunc(context);
//     });
//
//     //sec=5;
//     // aa = Timer.periodic(Duration(seconds: 1), (Timer t) {
//     //   print(sec);
//     //   if(sec==0){
//     //
//     //     t.cancel();
//     //   }
//     //   else{
//     //     setState(() {
//     //       sec= (sec! - 1);
//     //     });
//     //
//     //   }
//     //
//     // });
//   }
//
//   @override
//   void initState() {
//     setState(() {
//       print("ak");
//       sec=widget.sec.toInt();
//     });
//     timer();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(sec.toString());
//   }
// }
//
// class bluetooth extends StatefulWidget {
//   const bluetooth({Key? key}) : super(key: key);
//
//   @override
//   State<bluetooth> createState() => _bluetoothState();
// }
//
// class _bluetoothState extends State<bluetooth> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//
//     );
//   }
//   connectToBluetooth() async {
//     print("hello");
//     FlutterBlue flutterBlue = FlutterBlue.instance;
//     // Start scanning
//     await flutterBlue.startScan(timeout: Duration(seconds:4 ));
//     BluetoothDevice? device;
// // Listen to scan results
//     var subscription = await flutterBlue.scanResults.listen((results) {
//       // do something with scan results
//       for (ScanResult r in results) {
//         print("name "+r.device.name);
//         device=r.device;
//         //print('${r.device.name} found! rssi: ${r.rssi}');
//       }
//     });
// // Stop scanning
//     flutterBlue.stopScan();
//
//     // await device?.connect();
//     // print("Hell lo");
//     // print(device?.name.toString());
//     // List<BluetoothService>? services = await device?.discoverServices();
//     // services?.forEach((service) {
//     //   print(service.characteristics);
//     //   // do something with service
//     // });
// // Disconnect from device
//     //device?.disconnect();
//   }
//   @override
//   void initState() {
//     connectToBluetooth();
//   }
// }

//
// class newBluetoothPackage extends StatefulWidget {
//   const newBluetoothPackage({Key? key}) : super(key: key);
//
//   @override
//   State<newBluetoothPackage> createState() => _newBluetoothPackageState();
// }
//
// class _newBluetoothPackageState extends State<newBluetoothPackage> {
//   BluetoothManager bluetoothManager = BluetoothManager.instance;
//   bool _connected = false;
//   BluetoothDevice? _device;
//   String tips = 'no device connect';
//   akfunc(){
//     var ak=bluetoothManager.scanResults;
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//       padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
//       child: SafeArea(
//         child: Column(
//           children: <Widget>[
//         StreamBuilder<List<BluetoothDevice>>(
//           stream: bluetoothManager.scanResults,
//           initialData: [],
//           builder: (c, snapshot) => Column(
//             children: snapshot.data!
//                 .map((d) => ListTile(
//               title: Text(d.name ?? ''),
//               subtitle: Text(d.address.toString()),
//               onTap: () async {
//                 setState(() {
//                   _device = d;
//                 });
//               },
//               trailing:
//               _device != null && _device?.address == d.address
//                   ? Icon(
//                 Icons.check,
//                 color: Colors.green,
//               )
//                   : null,
//             ))
//                 .toList(),
//           ),),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 ElevatedButton(
//                   child: Text('connect'),
//                   onPressed: _connected ? null : _onConnect,
//                 ),
//                 SizedBox(width: 10.0),
//                 ElevatedButton(
//                   child: Text('disconnect'),
//                   onPressed: _connected ? _onDisconnect : null,
//                 ),
//               ],
//             ),
//             ElevatedButton(
//               child: Text('Send test data'),
//               onPressed: _connected ? _sendData : null,
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
//   void _sendData() async {
//     List<int> bytes = latin1.encode('Hello world!\n\n\n').toList();
//
//     // Set codetable west. Add import 'dart:typed_data';
//     // List<int> bytes = Uint8List.fromList(List.from('\x1Bt'.codeUnits)..add(6));
//     // Text with special characters
//     // bytes += latin1.encode('blåbærgrød\n\n\n');
//
//     await bluetoothManager.writeData(bytes);
//   }
//   Future<void> initBluetooth() async {
//     bluetoothManager.startScan(timeout: Duration(seconds: 4));
//
//     bool isConnected = await bluetoothManager.isConnected;
//
//     bluetoothManager.state.listen((state) {
//       print('cur device status: $state');
//
//       switch (state) {
//         case BluetoothManager.CONNECTED:
//           setState(() {
//             print("success");
//             _connected = true;
//             tips = 'connect success';
//           });
//           break;
//         case BluetoothManager.DISCONNECTED:
//           setState(() {
//             _connected = false;
//             tips = 'disconnect success';
//           });
//           break;
//         default:
//           print("nope");
//           break;
//       }
//     });
//
//     if (!mounted) return;
//
//     if (isConnected) {
//       setState(() {
//         _connected = true;
//       });
//     }
//   }
//   void _onConnect() async {
//     if (_device != null && _device?.address != null) {
//       await bluetoothManager.connect(_device!);
//     } else {
//       setState(() {
//         tips = 'please select device';
//       });
//       print('please select device');
//     }
//   }
//
//   void _onDisconnect() async {
//     await bluetoothManager.disconnect();
//   }
//   @override
//   void initState() {
//     WidgetsBinding.instance?.addPostFrameCallback((_) => initBluetooth());
//   }
// }

class newMethod extends StatefulWidget {
  const newMethod({Key? key}) : super(key: key);

  @override
  State<newMethod> createState() => _newMethodState();
}

class _newMethodState extends State<newMethod> {
  BluetoothManager bluetoothManager = BluetoothManager.instance;

  bool _connected = false;
  BluetoothDevice? _device;
  String tips = 'no device connect';

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) => initBluetooth());
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initBluetooth() async {
    bluetoothManager.startScan(timeout: Duration(seconds: 4));

    bool isConnected = await bluetoothManager.isConnected;

    bluetoothManager.state.listen((state) {
      print('cur device status: $state');

      switch (state) {
        case BluetoothManager.CONNECTED:
          setState(() {
            _connected = true;
            tips = 'connect success';
          });
          break;
        case BluetoothManager.DISCONNECTED:
          setState(() {
            _connected = false;
            tips = 'disconnect success';
          });
          break;
        default:
          break;
      }
    });

    if (!mounted) return;

    if (isConnected) {
      setState(() {
        _connected = true;
      });
    }
  }

  void _onConnect() async {
    if (_device != null && _device?.address != null) {
      await bluetoothManager.connect(_device!);
    } else {
      setState(() {
        tips = 'please select device';
      });
      print('please select device');
    }
  }

  void _onDisconnect() async {
    await bluetoothManager.disconnect();
  }

  void _sendData() async {
    //bluetoothManager.writeData(bytes)

    // Set codetable west. Add import 'dart:typed_data';
    // List<int> bytes = Uint8List.fromList(List.from('\x1Bt'.codeUnits)..add(6));
    // Text with special characters
    // bytes += latin1.encode('blåbærgrød\n\n\n');
    var bytes = <int>[1];
    await bluetoothManager.writeData(bytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bluetooth"),
      ),
      body: RefreshIndicator(
        onRefresh: () =>
            bluetoothManager.startScan(timeout: Duration(seconds: 4)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text(tips),
                  ),
                ],
              ),
              Divider(),
              StreamBuilder<List<BluetoothDevice>>(
                stream: bluetoothManager.scanResults,
                initialData: [],
                builder: (c, snapshot) => Column(
                  children: snapshot.data!
                      .map((d) => ListTile(
                            title: Text(d.name ?? ''),
                            subtitle: Text(d.address.toString()),
                            onTap: () async {
                              setState(() {
                                _device = d;
                              });
                            },
                            trailing:
                                _device != null && _device?.address == d.address
                                    ? Icon(
                                        Icons.check,
                                        color: Colors.green,
                                      )
                                    : null,
                          ))
                      .toList(),
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          child: Text('connect'),
                          onPressed: _connected ? null : _onConnect,
                        ),
                        SizedBox(width: 10.0),
                        ElevatedButton(
                          child: Text('disconnect'),
                          onPressed: _connected ? _onDisconnect : null,
                        ),
                      ],
                    ),
                    ElevatedButton(
                      child: Text('Send test data'),
                      onPressed: _connected ? _sendData : null,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: StreamBuilder<bool>(
        stream: bluetoothManager.isScanning,
        initialData: false,
        builder: (c, snapshot) {
          if (false) {
            return FloatingActionButton(
              child: Icon(Icons.stop),
              onPressed: () => bluetoothManager.stopScan(),
              backgroundColor: Colors.red,
            );
          } else {
            return FloatingActionButton(
                child: Icon(Icons.search),
                onPressed: () =>
                    bluetoothManager.startScan(timeout: Duration(seconds: 4)));
          }
        },
      ),
    );
  }
}
