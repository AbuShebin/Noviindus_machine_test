import 'package:flutter/material.dart';

class TreatmentBottomSheet extends StatefulWidget {
  const TreatmentBottomSheet({Key? key}) : super(key: key);

  @override
  State<TreatmentBottomSheet> createState() => _TreatmentBottomSheetState();
}

class _TreatmentBottomSheetState extends State<TreatmentBottomSheet> {
  String? selectedTreatment;
  int maleCount = 0;
  int femaleCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Title
          const Text(
            'Choose Treatment',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),

          // Dropdown
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8),
            ),

            child: DropdownButtonFormField<String>(
              value: selectedTreatment,
              decoration:  InputDecoration(
                hintText: 'Choose preferred treatment',
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                fillColor: Color.fromRGBO(217, 217, 217, 0.25)
              ),
              icon: Icon(Icons.keyboard_arrow_down, color: Colors.teal[700]),
              items: ['Treatment A', 'Treatment B', 'Treatment C']
                  .map((treatment) => DropdownMenuItem(
                        value: treatment,
                        child: Text(treatment),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedTreatment = value;
                });
              },
            ),
          ),
          const SizedBox(height: 24),

          // Add Patients Label
          const Text(
            'Add Patients',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),

          // Male Counter
          _buildCounterRow('Male', maleCount, (newValue) {
            setState(() {
              maleCount = newValue;
            });
          }),
          const SizedBox(height: 12),

          // Female Counter
          _buildCounterRow('Female', femaleCount, (newValue) {
            setState(() {
              femaleCount = newValue;
            });
          }),
          const SizedBox(height: 24),

          // Save Button
          ElevatedButton(
            onPressed: () {
              // Handle save action
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Treatment: $selectedTreatment, Male: $maleCount, Female: $femaleCount',
                  ),
                  backgroundColor: Colors.green[700],
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(0, 104, 55, 1),
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
            ),
            child: const Text(
              'Save',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
        ],
      ),
    );
  }

  Widget _buildCounterRow(String label, int count, Function(int) onChanged) {
    return Row(
      children: [
        // Label
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),

        // Minus Button
        _buildCircleButton(
          icon: Icons.remove,
          onPressed: count > 0
              ? () => onChanged(count - 1)
              : null,
        ),
        const SizedBox(width: 16),

        // Count Display
        Container(
          width: 40,
          alignment: Alignment.center,
          child: Text(
            count.toString(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(width: 16),

        // Plus Button
        _buildCircleButton(
          icon: Icons.add,
          onPressed: () => onChanged(count + 1),
        ),
      ],
    );
  }

  Widget _buildCircleButton({
    required IconData icon,
    required VoidCallback? onPressed,
  }) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color:  Color.fromRGBO(0, 104, 55, 1),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        onPressed: onPressed,
      ),
    );
  }
}