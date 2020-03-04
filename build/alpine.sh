apt-get update && \
apt-get install build-essential \
    libxml2-dev \
    libxslt-dev \
    postgresql-dev \
    curl unzip libexif udev chromium chromium-chromedriver wait4ports xvfb xorg-server dbus ttf-freefont mesa-dri-swrast && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apk/*
