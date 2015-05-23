# Dockerfile extending the generic Go image with application files for a
# single application.
FROM gcr.io/google_appengine_qa/golang

COPY . /go/src/app
RUN go get github.com/constabulary/gb
RUN go install github.com/constabulary/gb/...
RUN gb build all
CMD ["./bin/gbserver"]

