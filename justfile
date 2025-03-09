gen-dir := 'generated'
dest-rust := '~/Source/Repos/MediaPathServer/src/generated'
dest-jsts := '~/Source/Repos/MediaPathClient/app/generated'

gen-rust:
    @echo "Generating Rust code..."
    cargo build
    mkdir -p {{dest-rust}}
    cd {{gen-dir}} && cp -r rust {{dest-rust}}
    mv {{dest-rust}}/rust {{dest-rust}}/grpc

gen-jsts:
    @echo "Generating JS/TS code..."
    bunx buf generate
    mkdir -p {{dest-jsts}}
    cd {{gen-dir}} && cp -r jsts {{dest-jsts}}
    mv {{dest-jsts}}/jsts {{dest-jsts}}/grpc

all: gen-rust gen-jsts

clean:
    @echo "Cleaning up..."
    rm -rf {{gen-dir}}/docs
    rm -rf {{gen-dir}}/rust
    rm -rf {{gen-dir}}/jsts

clean-dest:
    rm -rf {{dest-rust}}/grpc
    rm -rf {{dest-jsts}}/grpc

clean-all: clean clean-dest

