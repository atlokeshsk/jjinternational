import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';
import 'package:jjinternational/constants/constants.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: Header(
                minExtent: AppConstant.minExtend,
                maxExtent: constraints.maxWidth < AppConstant.widthBreakPoint
                    ? AppConstant.minimizedMaxExtedn
                    : AppConstant.maxExtend,
              ),
            ),
            const SliverToBoxAdapter(
              child: PageBanner(
                title: 'Welcome to JJ International Imports & Exports',
                tagline: 'We Will Contact Get You Shortly',
              ),
            ),
            //Contactus form
            SliverToBoxAdapter(
              child: constraints.maxWidth < 693
                  ? Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 500),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 40),
                          child: Column(
                            children: [
                              ContactInfo(),
                              SizedBox(height: 30),
                              ContactForm(),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1000),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(child: ContactInfo()),
                              Expanded(child: ContactForm()),
                            ],
                          ),
                        ),
                      ),
                    ),
            ),
            const SliverToBoxAdapter(
              child: Footer(),
            ),
          ],
        );
      }),
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contact Us',
            style:
                textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            'Any question we would be\nhappy to help you',
            style: textTheme.titleMedium,
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 300,
            height: 40,
            child: OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  10,
                )),
                padding: const EdgeInsets.all(20.0),
              ),
              label: const Text(phoneNumber),
              icon: const Icon(Icons.call),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 300,
            height: 40,
            child: FilledButton.icon(
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(20.0),
              ),
              onPressed: () {},
              label: const Text(email),
              icon: const Icon(Icons.mail),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 300,
            height: 60,
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
              ),
              onPressed: () {},
              label: const Text(
                address,
                overflow: TextOverflow.visible,
              ),
              icon: const Icon(Icons.location_on),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final messgeController = TextEditingController();
  final productController = TextEditingController();

  String? emptyFieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'field is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Firstname and lastname.
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // firstname.
              Expanded(
                child: CustomFormField(
                  fieldName: 'FirstName:',
                  controller: firstNameController,
                  textInputType: TextInputType.name,
                  validator: emptyFieldValidator,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              //lastname
              Expanded(
                child: CustomFormField(
                  fieldName: 'LastName:',
                  controller: lastNameController,
                  textInputType: TextInputType.name,
                  validator: emptyFieldValidator,
                ),
              )
            ],
          ),
          CustomFormField(
            fieldName: 'Phone:',
            controller: phoneController,
            textInputType: TextInputType.phone,
            validator: emptyFieldValidator,
          ),
          CustomFormField(
            fieldName: 'Email:',
            controller: emailController,
            textInputType: TextInputType.emailAddress,
            validator: emptyFieldValidator,
          ),
          CustomFormField(
            fieldName: 'Address:',
            controller: addressController,
            textInputType: TextInputType.streetAddress,
          ),
          CustomFormField(
            fieldName: 'Product:',
            controller: productController,
            textInputType: TextInputType.text,
          ),
          CustomFormField(
            fieldName: 'Comment or Message:',
            controller: messgeController,
            textInputType: TextInputType.text,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: FilledButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  try {
                    await FirebaseFirestore.instance
                        .collection('customers')
                        .add(<String, String>{
                      'firstname': firstNameController.text,
                      'lastname': lastNameController.text,
                      'phone': phoneController.text,
                      'email': emailController.text,
                      'address': addressController.text,
                      'product': productController.text,
                      'message': messgeController.text,
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('We Will Contact You Shortly'),
                      ),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Something Went Wrong'),
                      ),
                    );
                  }
                }
              },
              child: const Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}
