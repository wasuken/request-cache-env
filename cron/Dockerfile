# Use Alpine Linux
FROM alpine:latest

# Install curl
RUN apk --no-cache add curl

# Add crontab file
COPY ./crontab /etc/crontabs/root

# Run crond in foreground
CMD ["crond", "-f"]
