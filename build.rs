use std::{fs, path::PathBuf};

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let includes = &["protos", "protos/v1"];
    let out_dir = &PathBuf::from("generated/rust");

    fs::create_dir_all(out_dir)?;

    let mut config = prost_build::Config::new();
    config.protoc_arg("--experimental_allow_proto3_optional");

    let protos = &["v1/mediapath.proto"];
    tonic_build::configure()
        .out_dir(out_dir)
        .type_attribute(".", "#[derive(serde::Serialize, serde::Deserialize)]")
        .type_attribute(".", "#[serde(rename_all = \"camelCase\")]")
        .build_client(true)
        .build_server(true)
        .compile_protos_with_config(config, protos, includes)?;

    Ok(())
}
