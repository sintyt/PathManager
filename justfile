set shell := ["bash", "-c"]
# set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

gen-dir := 'generated'
dest-rust := '~/Source/Repos/MediaPathServer/src/generated'
dest-jsts := '~/Source/Repos/MediaPathClient/app/generated'

all: gen-rust gen-jsts

gen-rust: clean-rust
    @echo "Generating Rust code..."
    cargo build
    mkdir -p {{dest-rust}}
    cd {{gen-dir}} && cp -r rust {{dest-rust}}
    mv {{dest-rust}}/rust {{dest-rust}}/grpc

gen-jsts: clean-jsts
    @echo "Generating JS/TS code..."
    bunx buf generate
    mkdir -p {{dest-jsts}}
    cd {{gen-dir}} && cp -r jsts {{dest-jsts}}
    mv {{dest-jsts}}/jsts {{dest-jsts}}/grpc

clean-all: clean-docs clean-rust clean-jsts

clean-docs:
    @echo "Cleaning up..."
    rm -rf {{gen-dir}}/docs

clean-rust:
    @echo "Cleaning up..."
    rm -rf {{gen-dir}}/rust
    rm -rf {{dest-rust}}/grpc

clean-jsts:
    rm -rf {{gen-dir}}/jsts
    rm -rf {{dest-jsts}}/grpc
