FROM nginx:alpine

# OCI label auto-links this image to the GitHub repo so the
# GITHUB_TOKEN-issued build can push to ghcr.io/aymenmastouri/ai-lab-portal.
# Without it, GHCR treats the package as user-owned and the repo's token
# is denied write access.
LABEL org.opencontainers.image.source="https://github.com/aymenmastouri/ai-lab-portal"
LABEL org.opencontainers.image.description="Aymen AI Lab portal — editorial launcher for ai.aymenmastouri.io"
LABEL org.opencontainers.image.licenses="MIT"

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY logos/ /usr/share/nginx/html/logos/
