echo "http://dl-4.alpinelinux.org/alpine/v3.9/main/" >> /etc/apt/sources.list.d && \
echo "http://dl-4.alpinelinux.org/alpine/v3.9/community/" >> /etc/apt/sources.list.d

apt update && \
	apt add build-base \
    libxml2-dev \
    libxslt-dev \
    postgresql-dev \
    curl unzip libexif udev chromium chromium-chromedriver wait4ports xvfb xorg-server dbus ttf-freefont mesa-dri-swrast && \
    rm -rf /var/cache/apt/*