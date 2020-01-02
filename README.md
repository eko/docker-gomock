docker-gomock
=============

This is a Docker image to retrieve `gomock` tools such as `mockgen`.

## Usage

```bash
$ docker run -v $(PWD):/app -w /app ekofr/gomock:go-1.13 \
	mockgen -source=service/client.go -destination=service/client_mock.go -package=service
```