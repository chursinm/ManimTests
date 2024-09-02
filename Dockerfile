FROM manimcommunity/manim:v0.18.0

USER root
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir notebook ipyturtle3 matplotlib pillow med2image

ARG NB_USER=manimuser
USER ${NB_USER}

COPY --chown=manimuser:manimuser . /manim


# Update the system and install tk
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm tk

# Set a default command, if needed (optional)
#CMD ["/bin/bash"]

