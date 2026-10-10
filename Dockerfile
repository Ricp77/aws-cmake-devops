FROM rockylinux:9 AS builder

RUN dnf install -y gcc-c++ cmake make && \
    dnf clean all

WORKDIR /app
COPY CMakeLists.txt .
COPY src ./src
COPY tests ./tests

RUN cmake -S . -B build \
      -DCMAKE_BUILD_TYPE=Release \
      -DBUILD_TESTING=ON && \
    cmake --build build --parallel 2 && \
    ctest --test-dir build --output-on-failure

FROM rockylinux:9 AS runtime

RUN dnf install -y libstdc++ && dnf clean all

WORKDIR /app
COPY --from=builder /app/build/devops-demo /app/devops-demo

CMD ["/app/devops-demo"]
