import 'package:flutter/material.dart';

class LatteDetailPage extends StatefulWidget {
  const LatteDetailPage({
    super.key,
    required this.description,
    required this.reviews,
    required this.imageUrl,
    required this.title,
    required this.rating,
  });

  final String imageUrl;
  final String title;
  final double rating;
  final int reviews;
  final String description;

  @override
  _LatteDetailPageState createState() => _LatteDetailPageState();
}

class _LatteDetailPageState extends State<LatteDetailPage> {
  int quantity = 1, selectedIndex = 0;
  String _selectedCupFilling = 'Full';
  String _selectedSugar = 'No Sugar';
  bool _highPriority = false;
  List<String> choiceSection = ['Full', '1/2 Full', '3/4 Full', '1/4 Full'];
  final Map<String, bool> _milkChoices1 = {
    'Skim Milk': false,
    'Almond Milk': false,
    'Soy Milk': false,
    'Lactose Free Milk': false,
  };
  final Map<String, bool> _milkChoices2 = {
    'Full Cream Milk': false,
    'Premium Milk': false,
    'Oat Milk': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.imageUrl,
                  height: 446,
                  width: 456,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 416),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(29.0),
                          topRight: Radius.circular(29.0),
                        ),
                        child: Image.asset(
                          'assets/images/Background.jpeg',
                          height: 769,
                          width: double.infinity,
                          fit: BoxFit.fitHeight,
                          colorBlendMode: BlendMode.overlay,
                        ),
                      ),
                      Container(
                        height: 769,
                        width: double.infinity,
                        color: Colors.black.withOpacity(0.1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFCDCDCD),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Text(
                                  '${widget.rating}  ',
                                  style: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFC4C4C4),
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  size: 11,
                                  color: Color(0xFFFFC003),
                                ),
                                Text(
                                  '(${widget.reviews})    ',
                                  style: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFC4C4C4),
                                  ),
                                ),
                                Image.asset(
                                  'assets/icons/HalalMark.png',
                                  height: 14,
                                  width: 14,
                                ),
                              ],
                            ),
                            const SizedBox(height: 13),
                            SizedBox(
                              height: 35,
                              width: 347,
                              child: Text(
                                widget.description,
                                style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Color(0xFFC0C0C0),
                                ),
                                maxLines: 2,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Choice of Cup Filling',
                              style: TextStyle(
                                color: Color(0xFFCDCDCD),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: List.generate(4, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(right: 9, top: 17),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4)),
                                      child: Container(
                                          height: 27,
                                          color: selectedIndex == index
                                              ? Colors.green
                                              : Colors.white,
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 16, right: 16),
                                              child: Text(
                                                choiceSection[index],
                                                style: TextStyle(
                                                  color: selectedIndex == index
                                                      ? const Color(0xFFD9D9D9)
                                                      : const Color(0xFF000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                  ),
                                );
                              }),
                            ),
                            const SizedBox(height: 23),
                            const Text(
                              'Choice of Milk',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFCDCDCD),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                Column(
                                children: _milkChoices1.keys.map((milk) {
                                  return Row(
                                    children: [
                                      _buildCheckboxRow(_milkChoices1[milk]!),
                                      SizedBox(
                                        width: 117 ,
                                      child: Text(
                                        milk,
                                        style: const TextStyle(
                                          color: Color(0xFFCDCDCD),
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16,
                                        ),
                                        maxLines: 2,
                                      ),
                                      ),
                                    ],
                                  );
                                }).toList(),
                                ),
                                Column(
                                children: _milkChoices2.keys.map((milk) {
                                  return Row(
                                    children: [
                                      _buildCheckboxRow(_milkChoices2[milk]!),
                                      SizedBox(
                                        width: 117 ,
                                      child: Text(
                                        milk,
                                        style: const TextStyle(
                                          color: Color(0xFFCDCDCD),
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16,
                                        ),
                                        maxLines: 2,
                                      ),
                                      ),
                                    ],
                                  );
                                }).toList(),
                              ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 36, left: 310),
                        child: Container(
                          width: 53,
                          height: 27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFFD9D9D9),
                          ),
                          child: DropdownButton<int>(
                            value: quantity,
                            onChanged: (int? newValue) {
                              setState(() {
                                quantity = newValue!;
                              });
                            },
                            items:
                                List.generate(5, (index) => index + 1).map((int value) {
                              return DropdownMenuItem<int>(
                                value: value,
                                child: Row(
                                  children: [
                                    const SizedBox(width: 7),
                                    Text(
                                      value.toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0XFF9B9B9B),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(width: 7),
                                    Container(
                                      width: 1,
                                      height: 27,
                                      color: const Color(0xFF9B9B9B),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                            underline: const SizedBox(),
                            icon: const Icon(Icons.keyboard_arrow_down,
                                color: Color(0xFF9B9B9B)),
                            isExpanded: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadio(String label, String groupValue) {
    return SwitchListTile(
      title: Text(label),
      value: groupValue == label,
      onChanged: (value) {
        setState(() {
          _selectedSugar = value ? label : '';
        });
      },
      activeColor: const Color(0xFF206823),
      activeTrackColor: const Color(0xFF51E068),
      inactiveThumbColor: const Color(0xFF575757),
      inactiveTrackColor: const Color(0xFFBABABA),
    );
  }

  Widget _buildCheckboxRow(bool isChecked) {
    return Transform.scale(
      scale: 13 / 25, 
      child: Switch(
        value: isChecked,
        onChanged: (value) {
          setState(() {
            // handle state changes here
          });
        },
        activeColor: const Color(0xFF206823),
        activeTrackColor: const Color(0xFF51E068),
        inactiveThumbColor: const Color(0xFF575757),
        inactiveTrackColor: const Color(0xFFBABABA),
      ),
    );
  }
}
