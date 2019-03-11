FROM crystallang/crystal:latest AS build-env
LABEL stage=intermediate
WORKDIR /app

# Copy everything else and build
COPY . ./
RUN crystal build --release --static --no-debug main.cr

# Build runtime image
FROM scratch
WORKDIR /app
COPY --from=build-env /app .
ENTRYPOINT ["./main"]
