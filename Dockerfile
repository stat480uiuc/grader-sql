# Borrow the leg work done by the PrairieLearn project
FROM prairielearn/grader-python:latest

# Set a new label for the image
LABEL org.label-schema.license="AGPL-3.0" \
      org.label-schema.vcs-url="stat480uiuc/grader-sql" \
      org.label-schema.vendor="PrairieLearn SQL" \
      maintainer="James Joseph Balamuta <balamut2@illinois.edu>"


# Add layer for SQL packages
COPY install.sh requirements-sql.txt /

# Run the SQL requirements
RUN /bin/bash /install.sh
