import 'dart:async';

class CircleTimerController {
  Timer? _timer;

  int _duration = 0;
  int _current = 0;

  bool _isRunning = false;
  bool autoRepeat = false;
  bool countUp = false;

  Function(int value)? onTick;
  Function()? onComplete;

  void start(int seconds) {
    _duration = seconds;
    _current = countUp ? 0 : seconds;

    _run();
  }

  void _run() {
    _timer?.cancel();
    _isRunning = true;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countUp) {
        _current++;
      } else {
        _current--;
      }

      onTick?.call(_current);

      if (_isFinished()) {
        onComplete?.call();

        if (autoRepeat) {
          start(_duration);
        } else {
          stop();
        }
      }
    });
  }

  bool _isFinished() {
    if (countUp) {
      return _current >= _duration;
    } else {
      return _current <= 0;
    }
  }

  void pause() {
    _timer?.cancel();
    _isRunning = false;
  }

  void resume() {
    if (_isRunning) return;
    _run();
  }

  void reset() {
    stop();
    _current = countUp ? 0 : _duration;
    onTick?.call(_current);
  }

  void stop() {
    _timer?.cancel();
    _isRunning = false;
  }

  int get current => _current;
  int get duration => _duration;
}