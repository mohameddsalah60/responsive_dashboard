import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_button.dart';
import 'title_text_filed.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(children: [
          Expanded(
            child: TitleTextField(
              hintText: 'Type customer name',
              title: 'Customer name',
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TitleTextField(
              hintText: 'Type customer email',
              title: 'Customer Email',
            ),
          ),
        ]),
        SizedBox(
          height: 24,
        ),
        Row(children: [
          Expanded(
            child: TitleTextField(
              hintText: 'Type customer name',
              title: 'Item name',
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TitleTextField(
              hintText: 'USD',
              title: 'Item mount',
            ),
          ),
        ]),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 62,
                child: CustomButton(
                  title: 'Add more details',
                  color: Colors.transparent,
                  colorBtn: Color(0xff4EB7F2),
                ),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: SizedBox(
                height: 62,
                child: CustomButton(
                  title: 'Send Money',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
