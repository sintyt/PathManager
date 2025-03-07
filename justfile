set shell := ["bash", "-c"]

out-docs := 'generated/docs'
out-rust := 'generated/rust'
out-jsts := 'generated/jsts'
dest-rust := '~/Source/Repos/MediaPathServer/src/generated'
dest-jsts := '~/Source/Repos/MediaPathClient/app/generated'

gen-rust:
    @echo "Generating Rust code..."
    cargo build
    mkdir -p {{dest-rust}}
    cp -r {{out-rust}} {{dest-rust}}
    mv {{dest-rust}}/rust {{dest-rust}}/grpc

gen-jsts:
    @echo "Generating JS/TS code..."
    bunx buf generate
    mkdir -p {{dest-jsts}}
    cp -r {{out-jsts}} {{dest-jsts}}
    mv {{dest-jsts}}/jsts {{dest-jsts}}/grpc

all: gen-rust gen-jsts

clean:
    @echo "Cleaning up..."
    rm -rf {{out-docs}}
    rm -rf {{out-rust}}
    rm -rf {{out-jsts}}

clean-dest:
    rm -rf {{dest-rust}}
    rm -rf {{dest-jsts}}

clean-all: clean clean-dest

ts:
    @echo {{out-rust}}