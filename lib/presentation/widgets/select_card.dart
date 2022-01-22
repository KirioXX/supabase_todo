part of 'index.dart';

class SelectCard extends StatelessWidget {
  final bool enabled;
  final bool selected;
  final void Function()? onTap;
  final Widget content;
  final Widget? trailing;
  final bool hideLeading;

  const SelectCard({
    Key? key,
    required this.content,
    this.selected = false,
    this.enabled = true,
    this.onTap,
    this.trailing,
    this.hideLeading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: enabled ? null : Colors.transparent,
      elevation: enabled ? 4 : 0,
      child: DottedBorder(
        color:
            enabled ? Colors.transparent : const Color.fromRGBO(0, 0, 0, 0.3),
        strokeWidth: enabled ? 0 : 1,
        radius: const Radius.circular(14),
        borderType: BorderType.RRect,
        padding: EdgeInsets.zero,
        child: ListTile(
          enabled: enabled,
          onTap: onTap,
          leading: enabled && !hideLeading
              ? RadioButton(selected: selected)
              : const SizedBox(),
          title: content,
          trailing: trailing,
          textColor: enabled ? null : Colors.black38,
        ).padding(vertical: 15),
      ),
    );
  }
}
