[![Build Status](https://travis-ci.org/seru1us/devops-exercise.svg?branch=master)](https://travis-ci.org/seru1us/devops-exercise)

# DevOps Exercise

This project is meant to test skills for the VoteShield DevOps Engineer role. What it does is not that important.

See [./INSTRUCTIONS.md](./INSTRUCTIONS.md) to get started.

## Usage

This exercise provides a "thing" REST API.

- `/things`: List all things
- `/things/<id>`: List specific thing

## Install

- Install with `requirements.txt`

## Development

- Run `python app/main.py`

## Deployment

Build typically with Docker locally, or by using docker-compose.yml.

```local sh
git clone seru1us/devops-exercise
cd devops-exercise
docker build -t devops-excersise .
docker run -p 5000:5000 -it devops-excersise
```

Or, you can utilize the included docker-compose file.

```local sh
git clone seru1us/devops-exercise
cd devops-exercise
docker-compose up
```


## Testing

- Run `python tests.py`

## Credits

- Inspiration from [bregman-arie/devops-exercises](https://github.com/bregman-arie/devops-exercises)
