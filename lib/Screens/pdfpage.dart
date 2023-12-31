import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:inventory/Utils/colorPalatte2.dart';

import '../Service/invoiceservice.dart';
import '../Utils/dummylists.dart';

class Pdfpage extends StatefulWidget {
  Pdfpage({Key? key}) : super(key: key);

  @override
  State<Pdfpage> createState() => _PdfpageState();
}

class _PdfpageState extends State<Pdfpage> {
  final PdfInvoiceService service = PdfInvoiceService();

  List<Product> products = [
    Product("Membership", 9.99, 19),
    Product("Nails", 0.30, 19),
    Product("Hammer", 26.43, 19),
    Product("Hamburger", 5.99, 7),
  ];
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: const Text("Invoice Generator"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final currentProduct = products[index];
                        return Row(
                          children: [
                            Expanded(child: Text(currentProduct.name)),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                      "Price: ${currentProduct.price.toStringAsFixed(2)} €"),
                                  Text(
                                      "VAT ${currentProduct.vatInPercent.toStringAsFixed(0)} %")
                                ],
                                crossAxisAlignment: CrossAxisAlignment.center,
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() => currentProduct.amount++);
                                      },
                                      icon: Icon(Icons.add,
                                          color: ColorConstant2.lightBlue),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      currentProduct.amount.toString(),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {
                                        if (currentProduct.amount > 0) {
                                          setState(
                                              () => currentProduct.amount--);
                                        }
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        color: ColorConstant2.lightBlue,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: products.length,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [const Text("VAT"), Text("${getVat()} €")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [const Text("Total"), Text("${getTotal()} €")],
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      //  await service.createHelloWorld();
                      // print("TAPP");
                      final data = await service.createHelloWorld();
                      
                      //

                      number++;
                    },
                    child: const Text("Create Invoice"),
                  ),
                ],
              ),
            ),
          );
  }

  getTotal() => products
      .fold(0.0,
          (double prev, element) => prev + (element.price * element.amount))
      .toStringAsFixed(2);

  getVat() => products
      .fold(
          0.0,
          (double prev, element) =>
              prev +
              (element.price / 100 * element.vatInPercent * element.amount))
      .toStringAsFixed(2);
}
