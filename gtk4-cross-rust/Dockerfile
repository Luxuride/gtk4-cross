FROM mglolenstine/gtk4-cross:rust-gtk-4.6

# Add build.sh
ADD build-windows.sh /usr/bin/build-windows
ADD build-linux.sh /usr/bin/build-linux
RUN dos2unix /usr/bin/build-windows && \
dos2unix /usr/bin/build-linux && \
chmod +x /usr/bin/build-windows && \
chmod +x /usr/bin/build-linux

# Setup rust
RUN . ~/.cargo/env && \
rustup update && \
rustup target add x86_64-pc-windows-gnu

# Set default linker to the GCC linker
ADD cargo.config ~/.cargo/config

# Install dependencies for linux build
RUN dnf install pango cairo-devel pango-devel cairo-gobject-devel gdk-pixbuf2-devel gtk4-devel libadwaita-devel gcc -y && dnf clean all -y
CMD ["/bin/bash"]
