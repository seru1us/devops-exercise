FROM python:3.7.6

# Best Practice for Least Privilege.
RUN useradd --create-home flaskuser
WORKDIR /home/flaskuser

# Requirements
COPY requirements.txt /tmp/

# Speaking of Least Privilege, venv should be used everywhere.
RUN pip install virtualenv
RUN python3 -m virtualenv --python=/usr/bin/python3 venv
RUN . venv/bin/activate && pip install -r /tmp/requirements.txt

# Break down the walls
EXPOSE 5000

# Now let's invite the app to its new home.
COPY app/ app/
COPY data/ data/
COPY tests.py .
RUN chown -R flaskuser:flaskuser ./
USER flaskuser 
# And take it for a spin.
CMD . venv/bin/activate && exec python app/main.py
