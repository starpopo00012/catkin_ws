import pyaudio
import time

# Initialize PyAudio
audio = pyaudio.PyAudio()

# Check the available audio devices
info = audio.get_default_input_device_info()
print("Default Input Device Info:", info)

# Start the microphone stream
stream = audio.open(format=pyaudio.paInt16, channels=1, rate=44100, input=True)

# Record for 5 seconds
duration = 5  # You can adjust this to the desired duration in seconds
time.sleep(duration)

# Stop the microphone stream (after 5 seconds)
stream.stop_stream()
stream.close()

# Terminate PyAudio
audio.terminate()
