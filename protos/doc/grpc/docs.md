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
    - [GetLogRequest](#mediafile-v1-GetLogRequest)
    - [GetLogResponse](#mediafile-v1-GetLogResponse)
    - [GetPhotosRequest](#mediafile-v1-GetPhotosRequest)
    - [GetPhotosResponse](#mediafile-v1-GetPhotosResponse)
    - [Instant](#mediafile-v1-Instant)
    - [LoadCameraCacheRequest](#mediafile-v1-LoadCameraCacheRequest)
    - [LoadCameraCacheResponse](#mediafile-v1-LoadCameraCacheResponse)
    - [LoadLogRequest](#mediafile-v1-LoadLogRequest)
    - [LoadLogResponse](#mediafile-v1-LoadLogResponse)
    - [LoadPhotoCacheRequest](#mediafile-v1-LoadPhotoCacheRequest)
    - [LoadPhotoCacheResponse](#mediafile-v1-LoadPhotoCacheResponse)
    - [Log](#mediafile-v1-Log)
    - [LogList](#mediafile-v1-LogList)
    - [MovePhotosRequest](#mediafile-v1-MovePhotosRequest)
    - [MovePhotosResponse](#mediafile-v1-MovePhotosResponse)
    - [Photo](#mediafile-v1-Photo)
    - [PhotoList](#mediafile-v1-PhotoList)
    - [PhotoMap](#mediafile-v1-PhotoMap)
    - [PhotoMap.ByIdEntry](#mediafile-v1-PhotoMap-ByIdEntry)
    - [ReadConfigRequest](#mediafile-v1-ReadConfigRequest)
    - [ReadConfigResponse](#mediafile-v1-ReadConfigResponse)
    - [ReadFolderRequest](#mediafile-v1-ReadFolderRequest)
    - [ReadFolderResponse](#mediafile-v1-ReadFolderResponse)
    - [SaveCameraCacheRequest](#mediafile-v1-SaveCameraCacheRequest)
    - [SaveCameraCacheResponse](#mediafile-v1-SaveCameraCacheResponse)
    - [SaveLogRequest](#mediafile-v1-SaveLogRequest)
    - [SaveLogResponse](#mediafile-v1-SaveLogResponse)
    - [SavePhotoCacheRequest](#mediafile-v1-SavePhotoCacheRequest)
    - [SavePhotoCacheResponse](#mediafile-v1-SavePhotoCacheResponse)
    - [WriteConfigRequest](#mediafile-v1-WriteConfigRequest)
    - [WriteConfigResponse](#mediafile-v1-WriteConfigResponse)
  
    - [RequestMode](#mediafile-v1-RequestMode)
    - [ResponseStatus](#mediafile-v1-ResponseStatus)
  
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
| config_file | [string](#string) |  | Configファイルのフルパス文字列 |
| managed_photo_folder | [string](#string) |  | 管理する写真フォルダー |
| photofile_extensions | [string](#string) | repeated | 対象とする画像ファイルの拡張子配列 ex [&#34;jpg&#34;, &#34;jpeg&#34;, &#34;png&#34;] |
| photo_cache_file | [string](#string) |  | 写真情報ののキャッシュを保存するファイル名 ex. [managed_photo_folder]/.cache/photo_cache.json |
| camera_cache_file | [string](#string) |  | カメラ情報のキャッシュを保存するファイル名 ex. [managed_photo_folder]/.cache/camera_cache.json |
| log_file | [string](#string) |  | ログファイル名 ex. [managed_photo_folder]/.log/log.json |






<a name="mediafile-v1-GetCamerasRequest"></a>

### GetCamerasRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |






<a name="mediafile-v1-GetCamerasResponse"></a>

### GetCamerasResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| camera_map | [CameraMap](#mediafile-v1-CameraMap) |  |  |






<a name="mediafile-v1-GetLogRequest"></a>

### GetLogRequest
GetLogのリクエストメッセージです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |






<a name="mediafile-v1-GetLogResponse"></a>

### GetLogResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| log | [Log](#mediafile-v1-Log) | repeated |  |






<a name="mediafile-v1-GetPhotosRequest"></a>

### GetPhotosRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |
| source_path | [string](#string) |  |  |






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
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |






<a name="mediafile-v1-LoadCameraCacheResponse"></a>

### LoadCameraCacheResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ResponseStatus](#mediafile-v1-ResponseStatus) |  |  |






<a name="mediafile-v1-LoadLogRequest"></a>

### LoadLogRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |






<a name="mediafile-v1-LoadLogResponse"></a>

### LoadLogResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ResponseStatus](#mediafile-v1-ResponseStatus) |  |  |






<a name="mediafile-v1-LoadPhotoCacheRequest"></a>

### LoadPhotoCacheRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |






<a name="mediafile-v1-LoadPhotoCacheResponse"></a>

### LoadPhotoCacheResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ResponseStatus](#mediafile-v1-ResponseStatus) |  |  |






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






<a name="mediafile-v1-MovePhotosRequest"></a>

### MovePhotosRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |
| ids | [string](#string) | repeated |  |






<a name="mediafile-v1-MovePhotosResponse"></a>

### MovePhotosResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ResponseStatus](#mediafile-v1-ResponseStatus) |  |  |






<a name="mediafile-v1-Photo"></a>

### Photo
写真情報メッセージ


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | フォルダー及びファイル名に依存しない一意のID このIDは、ファイル名が変更された場合でも変更されない カメラのモデル名・SUBSEC含む撮影日時（取得不可はファイルの作成日時）及び ファイルサイズをハッシュ化したもの

一意のID文字列 |
| file | [string](#string) |  | フルパスファイル名 |
| size | [uint64](#uint64) |  | ファイルサイズ |
| shot_at | [Instant](#mediafile-v1-Instant) |  | 撮影日時 |
| maker | [string](#string) |  | メーカー名 |
| model | [string](#string) |  | モデル名 |
| unique_file | [string](#string) |  | 推奨フルパスファイル名 |






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






<a name="mediafile-v1-ReadConfigRequest"></a>

### ReadConfigRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |






<a name="mediafile-v1-ReadConfigResponse"></a>

### ReadConfigResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [Config](#mediafile-v1-Config) |  |  |






<a name="mediafile-v1-ReadFolderRequest"></a>

### ReadFolderRequest
フォルダー読み込みリクエストメッセージです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |
| folder | [string](#string) |  |  |






<a name="mediafile-v1-ReadFolderResponse"></a>

### ReadFolderResponse
フォルダー読み込みレスポンスメッセージです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| folders | [string](#string) | repeated |  |
| files | [string](#string) | repeated |  |






<a name="mediafile-v1-SaveCameraCacheRequest"></a>

### SaveCameraCacheRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |






<a name="mediafile-v1-SaveCameraCacheResponse"></a>

### SaveCameraCacheResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ResponseStatus](#mediafile-v1-ResponseStatus) |  |  |






<a name="mediafile-v1-SaveLogRequest"></a>

### SaveLogRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |






<a name="mediafile-v1-SaveLogResponse"></a>

### SaveLogResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ResponseStatus](#mediafile-v1-ResponseStatus) |  |  |






<a name="mediafile-v1-SavePhotoCacheRequest"></a>

### SavePhotoCacheRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |






<a name="mediafile-v1-SavePhotoCacheResponse"></a>

### SavePhotoCacheResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ResponseStatus](#mediafile-v1-ResponseStatus) |  |  |






<a name="mediafile-v1-WriteConfigRequest"></a>

### WriteConfigRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [RequestMode](#mediafile-v1-RequestMode) |  |  |
| config | [Config](#mediafile-v1-Config) |  |  |






<a name="mediafile-v1-WriteConfigResponse"></a>

### WriteConfigResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [ResponseStatus](#mediafile-v1-ResponseStatus) |  |  |





 


<a name="mediafile-v1-RequestMode"></a>

### RequestMode
リクエストモードの列挙型です。

| Name | Number | Description |
| ---- | ------ | ----------- |
| DEFAULT_MODE | 0 |  |
| FILE_MODE | 1 | ファイルから取得、ファイルアクセスありキャッシュの更新 |
| CACHE_MODE | 2 | キャッシュのみ、ファイルアクセスしない |
| TEST_MODE | 3 | テスト用 |



<a name="mediafile-v1-ResponseStatus"></a>

### ResponseStatus
レスポンスステータスの列挙型です。

| Name | Number | Description |
| ---- | ------ | ----------- |
| STATUS_OK | 0 | 正常終了 |
| STATUS_ERROR | 1 | エラー |


 

 


<a name="mediafile-v1-MediafileService"></a>

### MediafileService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ReadFolder | [ReadFolderRequest](#mediafile-v1-ReadFolderRequest) | [ReadFolderResponse](#mediafile-v1-ReadFolderResponse) |  |
| ReadConfig | [ReadConfigRequest](#mediafile-v1-ReadConfigRequest) | [ReadConfigResponse](#mediafile-v1-ReadConfigResponse) | コンフィギュレーションを読み込みます。 |
| WriteConfig | [WriteConfigRequest](#mediafile-v1-WriteConfigRequest) | [WriteConfigResponse](#mediafile-v1-WriteConfigResponse) | コンフィギュレーションを保存します。 |
| SavePhotoCache | [SavePhotoCacheRequest](#mediafile-v1-SavePhotoCacheRequest) | [SavePhotoCacheResponse](#mediafile-v1-SavePhotoCacheResponse) | 写真のキャッシュ情報を保存します。 |
| LoadPhotoCache | [LoadPhotoCacheRequest](#mediafile-v1-LoadPhotoCacheRequest) | [LoadPhotoCacheResponse](#mediafile-v1-LoadPhotoCacheResponse) | 写真のキャッシュ情報を読み込みます。 |
| SaveCameraCache | [SaveCameraCacheRequest](#mediafile-v1-SaveCameraCacheRequest) | [SaveCameraCacheResponse](#mediafile-v1-SaveCameraCacheResponse) | カメラのキャッシュ情報を保存します。 |
| LoadCameraCache | [LoadCameraCacheRequest](#mediafile-v1-LoadCameraCacheRequest) | [LoadCameraCacheResponse](#mediafile-v1-LoadCameraCacheResponse) | カメラのキャッシュ情報を読み込みます。 |
| SaveLog | [SaveLogRequest](#mediafile-v1-SaveLogRequest) | [SaveLogResponse](#mediafile-v1-SaveLogResponse) | ログを存します。 |
| LoadLog | [LoadLogRequest](#mediafile-v1-LoadLogRequest) | [LoadLogResponse](#mediafile-v1-LoadLogResponse) | ログを読み込みます。 |
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

