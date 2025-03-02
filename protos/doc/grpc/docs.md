# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [mediafile/v1/mediafile.proto](#mediafile_v1_mediafile-proto)
    - [Camera](#mediafile-v1-Camera)
    - [CameraList](#mediafile-v1-CameraList)
    - [CameraMap](#mediafile-v1-CameraMap)
    - [CameraMap.ByModelEntry](#mediafile-v1-CameraMap-ByModelEntry)
    - [Config](#mediafile-v1-Config)
    - [GetCamerasRequest](#mediafile-v1-GetCamerasRequest)
    - [GetCamerasResponse](#mediafile-v1-GetCamerasResponse)
    - [GetConfigRequest](#mediafile-v1-GetConfigRequest)
    - [GetConfigResponse](#mediafile-v1-GetConfigResponse)
    - [GetLogRequest](#mediafile-v1-GetLogRequest)
    - [GetLogResponse](#mediafile-v1-GetLogResponse)
    - [GetPhotosRequest](#mediafile-v1-GetPhotosRequest)
    - [GetPhotosResponse](#mediafile-v1-GetPhotosResponse)
    - [Instant](#mediafile-v1-Instant)
    - [LoadCameraCacheRequest](#mediafile-v1-LoadCameraCacheRequest)
    - [LoadCameraCacheResponse](#mediafile-v1-LoadCameraCacheResponse)
    - [LoadConfigRequest](#mediafile-v1-LoadConfigRequest)
    - [LoadConfigResponse](#mediafile-v1-LoadConfigResponse)
    - [LoadLogRequest](#mediafile-v1-LoadLogRequest)
    - [LoadLogResponse](#mediafile-v1-LoadLogResponse)
    - [LoadPhotoCacheRequest](#mediafile-v1-LoadPhotoCacheRequest)
    - [LoadPhotoCacheResponse](#mediafile-v1-LoadPhotoCacheResponse)
    - [Log](#mediafile-v1-Log)
    - [LogList](#mediafile-v1-LogList)
    - [Metadata](#mediafile-v1-Metadata)
    - [MovePhotosRequest](#mediafile-v1-MovePhotosRequest)
    - [MovePhotosResponse](#mediafile-v1-MovePhotosResponse)
    - [Photo](#mediafile-v1-Photo)
    - [PhotoList](#mediafile-v1-PhotoList)
    - [PhotoMap](#mediafile-v1-PhotoMap)
    - [PhotoMap.ByIdEntry](#mediafile-v1-PhotoMap-ByIdEntry)
    - [SaveCameraCacheRequest](#mediafile-v1-SaveCameraCacheRequest)
    - [SaveCameraCacheResponse](#mediafile-v1-SaveCameraCacheResponse)
    - [SaveConfigRequest](#mediafile-v1-SaveConfigRequest)
    - [SaveConfigResponse](#mediafile-v1-SaveConfigResponse)
    - [SaveLogRequest](#mediafile-v1-SaveLogRequest)
    - [SaveLogResponse](#mediafile-v1-SaveLogResponse)
    - [SavePhotoCacheRequest](#mediafile-v1-SavePhotoCacheRequest)
    - [SavePhotoCacheResponse](#mediafile-v1-SavePhotoCacheResponse)
    - [SetConfigRequest](#mediafile-v1-SetConfigRequest)
    - [SetConfigResponse](#mediafile-v1-SetConfigResponse)
  
    - [Mode](#mediafile-v1-Mode)
  
    - [MediafileService](#mediafile-v1-MediafileService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="mediafile_v1_mediafile-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## mediafile/v1/mediafile.proto



<a name="mediafile-v1-Camera"></a>

### Camera
カメラ情報


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| maker | [string](#string) |  | メーカー名 |
| model | [string](#string) |  | モデル名 |
| label | [string](#string) |  | カメラのラベル |
| photo_count | [int32](#int32) |  | 撮影された写真の枚数 |
| first_at | [Instant](#mediafile-v1-Instant) |  | 最初の撮影された写真の日時 |
| last_at | [Instant](#mediafile-v1-Instant) |  | 最後に撮影された写真の日時 |






<a name="mediafile-v1-CameraList"></a>

### CameraList



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cameras | [Camera](#mediafile-v1-Camera) | repeated |  |






<a name="mediafile-v1-CameraMap"></a>

### CameraMap
Key: カメラモデル名, Value: Camera


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| by_model | [CameraMap.ByModelEntry](#mediafile-v1-CameraMap-ByModelEntry) | repeated |  |






<a name="mediafile-v1-CameraMap-ByModelEntry"></a>

### CameraMap.ByModelEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Camera](#mediafile-v1-Camera) |  |  |






<a name="mediafile-v1-Config"></a>

### Config
サーバー環境メッセージです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| server_url | [string](#string) |  | サーバーのURL |
| config_path | [string](#string) |  | Configファイルのファイル名(ex. .config.json) ex. photo_distination/.config.json |
| photo_distination | [string](#string) |  | 写真の移動先ディレクトリ |
| photofile_extensions | [string](#string) | repeated | 対象とする画像ファイルの拡張子配列 ex [&#34;jpg&#34;, &#34;jpeg&#34;, &#34;png&#34;] |
| photo_cache_path | [string](#string) |  | 写真リスト（キャッシュ）を保存するファイル名 ex. photo_distination/.cache/photo_cache.json |
| camera_cache_path | [string](#string) |  | カメラリスト（キャッシュ）を保存するファイル名 ex. photo_distination/.cache/camera_cache.json |
| log_path | [string](#string) |  | ログファイル名 ex. photo_distination/.log/log.json |
| photo_sources | [string](#string) | repeated | 画像ファイルのソースディレクトリ |






<a name="mediafile-v1-GetCamerasRequest"></a>

### GetCamerasRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-GetCamerasResponse"></a>

### GetCamerasResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| camera_map | [CameraMap](#mediafile-v1-CameraMap) |  |  |






<a name="mediafile-v1-GetConfigRequest"></a>

### GetConfigRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-GetConfigResponse"></a>

### GetConfigResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [Config](#mediafile-v1-Config) |  |  |






<a name="mediafile-v1-GetLogRequest"></a>

### GetLogRequest
GetLogのリクエストメッセージです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-GetLogResponse"></a>

### GetLogResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| log | [Log](#mediafile-v1-Log) | repeated |  |






<a name="mediafile-v1-GetPhotosRequest"></a>

### GetPhotosRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-GetPhotosResponse"></a>

### GetPhotosResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| photos | [Photo](#mediafile-v1-Photo) | repeated |  |






<a name="mediafile-v1-Instant"></a>

### Instant
タイムゾーン保持可能な日時メッセージです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seconds | [int64](#int64) |  | 1970/1/1 00:00:00からの秒数 |
| nanos | [uint32](#uint32) |  | 秒未満のナノ秒 |
| timezone_offset | [int32](#int32) |  | タイムゾーンオフセット（秒単位） |






<a name="mediafile-v1-LoadCameraCacheRequest"></a>

### LoadCameraCacheRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-LoadCameraCacheResponse"></a>

### LoadCameraCacheResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="mediafile-v1-LoadConfigRequest"></a>

### LoadConfigRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-LoadConfigResponse"></a>

### LoadConfigResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="mediafile-v1-LoadLogRequest"></a>

### LoadLogRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-LoadLogResponse"></a>

### LoadLogResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="mediafile-v1-LoadPhotoCacheRequest"></a>

### LoadPhotoCacheRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-LoadPhotoCacheResponse"></a>

### LoadPhotoCacheResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="mediafile-v1-Log"></a>

### Log
ログのメッセージです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| created_at | [Instant](#mediafile-v1-Instant) |  | ログ作成日 |
| message | [string](#string) |  |  |






<a name="mediafile-v1-LogList"></a>

### LogList
ログリストの汎用メッセージです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| log | [Log](#mediafile-v1-Log) | repeated |  |






<a name="mediafile-v1-Metadata"></a>

### Metadata
メタデータ


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| shot_at | [Instant](#mediafile-v1-Instant) |  | 撮影日時 |
| maker | [string](#string) |  | メーカー名 |
| model | [string](#string) |  | モデル名 |






<a name="mediafile-v1-MovePhotosRequest"></a>

### MovePhotosRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |
| ids | [string](#string) | repeated |  |






<a name="mediafile-v1-MovePhotosResponse"></a>

### MovePhotosResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="mediafile-v1-Photo"></a>

### Photo
写真情報メッセージ


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | ディレクトリ及びファイル名に依存しない一意のID このIDは、ファイル名が変更された場合でも変更されない カメラのモデル名・SUBSEC含む撮影日時（取得不可はファイルの作成日時）及び ファイルサイズをハッシュ化したもの |
| fullpath | [string](#string) |  | フルパス |
| file_size | [uint64](#uint64) |  | ファイルサイズ |
| metadata | [Metadata](#mediafile-v1-Metadata) |  | メタデータ |
| recommended_path | [string](#string) |  | 推奨フルパス |






<a name="mediafile-v1-PhotoList"></a>

### PhotoList



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| photos | [Photo](#mediafile-v1-Photo) | repeated |  |






<a name="mediafile-v1-PhotoMap"></a>

### PhotoMap



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| by_id | [PhotoMap.ByIdEntry](#mediafile-v1-PhotoMap-ByIdEntry) | repeated |  |






<a name="mediafile-v1-PhotoMap-ByIdEntry"></a>

### PhotoMap.ByIdEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Photo](#mediafile-v1-Photo) |  |  |






<a name="mediafile-v1-SaveCameraCacheRequest"></a>

### SaveCameraCacheRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-SaveCameraCacheResponse"></a>

### SaveCameraCacheResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="mediafile-v1-SaveConfigRequest"></a>

### SaveConfigRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-SaveConfigResponse"></a>

### SaveConfigResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="mediafile-v1-SaveLogRequest"></a>

### SaveLogRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-SaveLogResponse"></a>

### SaveLogResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="mediafile-v1-SavePhotoCacheRequest"></a>

### SavePhotoCacheRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |






<a name="mediafile-v1-SavePhotoCacheResponse"></a>

### SavePhotoCacheResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="mediafile-v1-SetConfigRequest"></a>

### SetConfigRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [Mode](#mediafile-v1-Mode) |  |  |
| config | [Config](#mediafile-v1-Config) |  |  |






<a name="mediafile-v1-SetConfigResponse"></a>

### SetConfigResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |





 


<a name="mediafile-v1-Mode"></a>

### Mode
各種モードの列挙型です。

| Name | Number | Description |
| ---- | ------ | ----------- |
| MODE_UNSPECIFIED | 0 |  |
| MODE_FILE | 1 | ファイルから取得、ファイルアクセスありキャッシュの更新 |
| MODE_CACHE | 2 | キャッシュのみ、ファイルアクセスしない |
| MODE_TEST | 3 | テスト用 |


 

 


<a name="mediafile-v1-MediafileService"></a>

### MediafileService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| SaveConfig | [SaveConfigRequest](#mediafile-v1-SaveConfigRequest) | [SaveConfigResponse](#mediafile-v1-SaveConfigResponse) | コンフィギュレーションを保存します。 |
| LoadConfig | [LoadConfigRequest](#mediafile-v1-LoadConfigRequest) | [LoadConfigResponse](#mediafile-v1-LoadConfigResponse) | コンフィギュレーションを読み込みます。 |
| SavePhotoCache | [SavePhotoCacheRequest](#mediafile-v1-SavePhotoCacheRequest) | [SavePhotoCacheResponse](#mediafile-v1-SavePhotoCacheResponse) | 写真のキャッシュ情報を保存します。 |
| LoadPhotoCache | [LoadPhotoCacheRequest](#mediafile-v1-LoadPhotoCacheRequest) | [LoadPhotoCacheResponse](#mediafile-v1-LoadPhotoCacheResponse) | 写真のキャッシュ情報を読み込みます。 |
| SaveCameraCache | [SaveCameraCacheRequest](#mediafile-v1-SaveCameraCacheRequest) | [SaveCameraCacheResponse](#mediafile-v1-SaveCameraCacheResponse) | カメラのキャッシュ情報を保存します。 |
| LoadCameraCache | [LoadCameraCacheRequest](#mediafile-v1-LoadCameraCacheRequest) | [LoadCameraCacheResponse](#mediafile-v1-LoadCameraCacheResponse) | カメラのキャッシュ情報を読み込みます。 |
| SaveLog | [SaveLogRequest](#mediafile-v1-SaveLogRequest) | [SaveLogResponse](#mediafile-v1-SaveLogResponse) | ログを存します。 |
| LoadLog | [LoadLogRequest](#mediafile-v1-LoadLogRequest) | [LoadLogResponse](#mediafile-v1-LoadLogResponse) | ログを読み込みます。 |
| SetConfig | [SetConfigRequest](#mediafile-v1-SetConfigRequest) | [SetConfigResponse](#mediafile-v1-SetConfigResponse) | コンフィギュレーションを取得します。 |
| GetConfig | [GetConfigRequest](#mediafile-v1-GetConfigRequest) | [GetConfigResponse](#mediafile-v1-GetConfigResponse) | コンフィギュレーションを設定します。 |
| GetPhotos | [GetPhotosRequest](#mediafile-v1-GetPhotosRequest) | [GetPhotosResponse](#mediafile-v1-GetPhotosResponse) | 写真情報を取得します。 |
| MovePhotos | [MovePhotosRequest](#mediafile-v1-MovePhotosRequest) | [MovePhotosResponse](#mediafile-v1-MovePhotosResponse) | 写真を移動します。 |
| GetCameras | [GetCamerasRequest](#mediafile-v1-GetCamerasRequest) | [GetCamerasResponse](#mediafile-v1-GetCamerasResponse) | カメラ情報を取得します。 |
| GetLog | [GetLogRequest](#mediafile-v1-GetLogRequest) | [GetLogResponse](#mediafile-v1-GetLogResponse) | ログを取得します。 |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

