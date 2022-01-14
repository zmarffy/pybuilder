FROM python:latest

ENV GH_TOKEN=

COPY entrypoint.sh .

RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null

RUN apt-get update && apt-get install --no-install-recommends -y \
    software-properties-common \
    gh \
    && rm -rf /var/lib/apt/lists/*

RUN pip install \
    poetry \
    poetry-dynamic-versioning \
    poethepoet \
    pytest \
    twine

ENTRYPOINT [ "sh", "/entrypoint.sh" ]
CMD [ "bash" ]