FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends python3 python3-virtualenv python3-pip

# Best Practice for Least Privilege.
RUN useradd --create-home flaskuser
WORKDIR /home/flaskuser
USER flaskuser 

# Requirements
COPY requirements.txt /tmp/

# Speaking of Least Privilege, venv should be used everywhere.
RUN python3 -m virtualenv --python=/usr/bin/python3 venv
RUN . venv/bin/activate && pip install -r /tmp/requirements.txt

# Break down the walls
EXPOSE 5000

# Now let's invite the app to its new home.
COPY app/ app/
COPY data/ data/
# And take it for a spin.
CMD . venv/bin/activate && exec python app/main.py
