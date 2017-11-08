function webm_to_mp3
  echo ffmpeg -i 'foo.webm' -vn -ab 128k -ar 44100 -y 'foo.webm.mp3';
end
