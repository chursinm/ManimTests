FROM manimcommunity/manim:v0.18.0

USER root
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir notebook ipyturtle3 ipyturtle mobilechelonian matplotlib pillow med2image

ARG NB_USER=manimuser
USER ${NB_USER}

COPY --chown=manimuser:manimuser . /manim
