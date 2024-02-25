# Multilingual Dictation App based on OpenAI Whisper

Multilingual dictation app based on the powerful OpenAI Whisper ASR model(s) to provide accurate and efficient speech-to-text conversion in any application. The app runs in the background and is triggered through a keyboard shortcut. It is also entirely offline, so no data will be shared. It allows users to set up their own keyboard combinations and choose from different Whisper models, and languages.

## Prerequisites

The PortAudio library is required for this app to work. You can install it on macOS using the following command:

```bash
brew install portaudio
```

## Permissions

The app requires accessibility permissions to register global hotkeys and permission to access your microphone for speech recognition.

## Installation

Clone the repository:

```bash
git clone https://github.com/foges/whisper-dictation.git
cd whisper-dictation
```

Install the required packages:

```bash
poetry install
```

## Usage

Run the application:

```bash
poetry run python whisper-dictation.py
```

By default, the app uses the "base" Whisper ASR model and the key combination to toggle dictation is cmd+option on macOS and ctrl+alt on other platforms. You can change the model and the key combination using command-line arguments. Note that models other than `tiny` and `base` can be slow to transcribe and are not recommended unless you're using a powerful computer, ideally one with a CUDA-enabled GPU. For example:

```bash
python whisper-dictation.py -m large -k cmd_r+shift -l en
```

The models are multilingual, and you can specify a two-letter language code (e.g., "no" for Norwegian) with the `-l` or `--language` option. Specifying the language can improve recognition accuracy, especially for smaller model sizes.

## Setting the App as a Startup Item

To have the app run automatically when your computer starts, follow these steps:

1.  Open System Preferences.
2.  Go to Users & Groups.
3.  Click on your username, then select the Login Items tab.
4.  Click the + button and add the `run.sh` script from the whisper-dictation folder.
