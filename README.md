# Whisper-API
Everything you need to build a OpenAI Whisper (Speech to Text Transcription ML model) API, and associated docker container.
![image](https://user-images.githubusercontent.com/36832027/209445003-ab3fc086-4d23-4f58-87ff-6b26f98ebc37.png)

### Getting started
1. Clone this repo
2. CD into the appropriate folder
3. ```docker build -t whisper .```
  - Takes about 3 minutes to build, depending on your machine
4. ```docker run -p 5000:5000 whisper```
5. Pitch MP3s at the endpoint, and recieve transcriptions as a JSON response object. Neat!
