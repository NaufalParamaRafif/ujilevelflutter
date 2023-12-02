import 'package:flutter/material.dart';
import 'input_barang.dart';
import 'keranjang_page.dart';

const List<String> pilihan = <String>['All', 'Makanan', 'Minuman'];

void main() => runApp(MaterialApp(
  home: FormSubmit(),
));

class FormSubmit extends StatefulWidget {
  @override
  _FormSubmitState createState() => _FormSubmitState();
}

class _FormSubmitState extends State<FormSubmit> {
  String dropdownValue = pilihan.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 92, 92, 92).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return InputBarang();
              }));
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.orange),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(25.0), // Adjust the radius as needed
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 92, 92, 92).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.person,
                  color: Colors.orange,
                )),
          ),
        ],
      ),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Masukkan nama produk',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Masukkan harga',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),]
                ),
                child: DropdownMenu<String>(
                inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    )
                  ),
                  width: 375,
                  initialSelection: pilihan.first,
                  onSelected: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries: pilihan.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(value: value, label: value);
                  }).toList(),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            //   child: DropdownMenu<String>(
            //     inputDecorationTheme: InputDecorationTheme(
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(25),
            //       )
            //     ),
            //     width: 375,
            //     initialSelection: pilihan.first,
            //     onSelected: (String? value) {
            //       setState(() {
            //         dropdownValue = value!;
            //       });
            //     },
            //     dropdownMenuEntries: pilihan.map<DropdownMenuEntry<String>>((String value) {
            //       return DropdownMenuEntry<String>(value: value, label: value);
            //     }).toList(),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Choose file',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 33, 65, 243),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                    },
                    child: Text('Submit', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                  ),
                ),
              ),
            ),
          ],
       ),
    ),);
  }
}
