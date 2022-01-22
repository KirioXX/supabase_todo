part of 'index.dart';

class RadioButton extends StatelessWidget {
  final bool selected;

  const RadioButton({
    Key? key,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return selected
        ? Icon(
            Icons.radio_button_checked,
            color: Theme.of(context).primaryColorDark,
          )
        : const Icon(Icons.radio_button_off);
  }
}
