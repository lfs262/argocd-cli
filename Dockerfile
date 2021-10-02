FROM alpine

RUN apk add curl && \
    curl -sSL -o /usr/local/bin/argocd \
    https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64  && \
    chmod +x /usr/local/bin/argocd && \
    apk del --purge curl

CMD argocd
