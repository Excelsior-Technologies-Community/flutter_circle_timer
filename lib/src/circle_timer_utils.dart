String formatTime(int seconds) {
  int m = seconds ~/ 60;
  int s = seconds % 60;

  String mm = m.toString().padLeft(2, '0');
  String ss = s.toString().padLeft(2, '0');

  return "$mm:$ss";
}