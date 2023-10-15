# speech2text-mandarin-magicdata

# How to run
```
docker build -t myspeech .
docker run -it --rm --entrypoint bash -v $(pwd)/wav:/app/code/wav myspeech
```

Or, 
```
docker run -it --rm --entrypoint "/app/code/init.sh" -v $(pwd)/wav:/app/code/wav myspeech
```
