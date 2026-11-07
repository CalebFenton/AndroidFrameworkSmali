.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$Rational;,
        Landroid/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroid/media/ExifInterface$IfdType;,
        Landroid/media/ExifInterface$ExifStreamType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ASCII:Ljava/nio/charset/Charset;

.field private static final greylist-max-o BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final greylist-max-o BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final greylist-max-o BITS_PER_SAMPLE_RGB:[I

.field private static final greylist-max-o BYTE_ALIGN_II:S = 0x4949s

.field private static final greylist-max-o BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final greylist-max-o DATA_DEFLATE_ZIP:I = 0x8

.field private static final greylist-max-o DATA_HUFFMAN_COMPRESSED:I = 0x2

.field private static final greylist-max-o DATA_JPEG:I = 0x6

.field private static final greylist-max-o DATA_JPEG_COMPRESSED:I = 0x7

.field private static final greylist-max-o DATA_LOSSY_JPEG:I = 0x884c

.field private static final greylist-max-o DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field private static final greylist-max-o DATA_UNCOMPRESSED:I = 0x1

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o EXIF_ASCII_PREFIX:[B

.field private static final greylist-max-o EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final blacklist HEIF_BRAND_AVIF:[B

.field private static final blacklist HEIF_BRAND_AVIS:[B

.field private static final greylist-max-o HEIF_BRAND_HEIC:[B

.field private static final greylist-max-o HEIF_BRAND_MIF1:[B

.field private static final greylist-max-o HEIF_TYPE_FTYP:[B

.field private static final greylist-max-o IDENTIFIER_EXIF_APP1:[B

.field private static final blacklist IDENTIFIER_XMP_APP1:[B

.field private static final greylist-max-o IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_FORMAT_BYTE:I = 0x1

.field private static final greylist-max-o IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final greylist-max-o IFD_FORMAT_DOUBLE:I = 0xc

.field private static final greylist-max-o IFD_FORMAT_IFD:I = 0xd

.field private static final greylist-max-o IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o IFD_FORMAT_SBYTE:I = 0x6

.field private static final greylist-max-o IFD_FORMAT_SINGLE:I = 0xb

.field private static final greylist-max-o IFD_FORMAT_SLONG:I = 0x9

.field private static final greylist-max-o IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final greylist-max-o IFD_FORMAT_SSHORT:I = 0x8

.field private static final greylist-max-o IFD_FORMAT_STRING:I = 0x2

.field private static final greylist-max-o IFD_FORMAT_ULONG:I = 0x4

.field private static final greylist-max-o IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final greylist-max-o IFD_FORMAT_URATIONAL:I = 0x5

.field private static final greylist-max-o IFD_FORMAT_USHORT:I = 0x3

.field private static final greylist-max-o IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_OFFSET:I = 0x8

.field private static final greylist-max-o IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_TYPE_EXIF:I = 0x1

.field private static final greylist-max-o IFD_TYPE_GPS:I = 0x2

.field private static final greylist-max-o IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final greylist-max-o IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final greylist-max-o IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final greylist-max-o IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final greylist-max-o IFD_TYPE_PEF:I = 0x9

.field private static final greylist-max-o IFD_TYPE_PREVIEW:I = 0x5

.field private static final greylist-max-o IFD_TYPE_PRIMARY:I = 0x0

.field private static final greylist-max-o IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final greylist-max-o IMAGE_TYPE_ARW:I = 0x1

.field private static final greylist-max-o IMAGE_TYPE_CR2:I = 0x2

.field private static final greylist-max-o IMAGE_TYPE_DNG:I = 0x3

.field private static final greylist-max-o IMAGE_TYPE_HEIF:I = 0xc

.field private static final greylist-max-o IMAGE_TYPE_JPEG:I = 0x4

.field private static final greylist-max-o IMAGE_TYPE_NEF:I = 0x5

.field private static final greylist-max-o IMAGE_TYPE_NRW:I = 0x6

.field private static final greylist-max-o IMAGE_TYPE_ORF:I = 0x7

.field private static final greylist-max-o IMAGE_TYPE_PEF:I = 0x8

.field private static final blacklist IMAGE_TYPE_PNG:I = 0xd

.field private static final greylist-max-o IMAGE_TYPE_RAF:I = 0x9

.field private static final greylist-max-o IMAGE_TYPE_RW2:I = 0xa

.field private static final greylist-max-o IMAGE_TYPE_SRW:I = 0xb

.field private static final greylist-max-o IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist IMAGE_TYPE_WEBP:I = 0xe

.field private static final greylist-max-o JPEG_SIGNATURE:[B

.field private static final greylist-max-o MARKER:B = -0x1t

.field private static final greylist-max-o MARKER_APP1:B = -0x1ft

.field private static final greylist-max-o MARKER_COM:B = -0x2t

.field private static final greylist-max-o MARKER_EOI:B = -0x27t

.field private static final greylist-max-o MARKER_SOF0:B = -0x40t

.field private static final greylist-max-o MARKER_SOF1:B = -0x3ft

.field private static final greylist-max-o MARKER_SOF10:B = -0x36t

.field private static final greylist-max-o MARKER_SOF11:B = -0x35t

.field private static final greylist-max-o MARKER_SOF13:B = -0x33t

.field private static final greylist-max-o MARKER_SOF14:B = -0x32t

.field private static final greylist-max-o MARKER_SOF15:B = -0x31t

.field private static final greylist-max-o MARKER_SOF2:B = -0x3et

.field private static final greylist-max-o MARKER_SOF3:B = -0x3dt

.field private static final greylist-max-o MARKER_SOF5:B = -0x3bt

.field private static final greylist-max-o MARKER_SOF6:B = -0x3at

.field private static final greylist-max-o MARKER_SOF7:B = -0x39t

.field private static final greylist-max-o MARKER_SOF9:B = -0x37t

.field private static final greylist-max-o MARKER_SOI:B = -0x28t

.field private static final greylist-max-o MARKER_SOS:B = -0x26t

.field private static final greylist-max-o MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final greylist-max-o ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_1:[B

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_2:[B

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final greylist-max-o ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_SIGNATURE_1:S = 0x4f52s

.field private static final greylist-max-o ORF_SIGNATURE_2:S = 0x5352s

.field public static final whitelist ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final whitelist ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final whitelist ORIENTATION_NORMAL:I = 0x1

.field public static final whitelist ORIENTATION_ROTATE_180:I = 0x3

.field public static final whitelist ORIENTATION_ROTATE_270:I = 0x8

.field public static final whitelist ORIENTATION_ROTATE_90:I = 0x6

.field public static final whitelist ORIENTATION_TRANSPOSE:I = 0x5

.field public static final whitelist ORIENTATION_TRANSVERSE:I = 0x7

.field public static final whitelist ORIENTATION_UNDEFINED:I = 0x0

.field private static final greylist-max-o ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final greylist-max-o PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final greylist-max-o PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final greylist-max-o PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final blacklist PNG_CHUNK_CRC_BYTE_LENGTH:I = 0x4

.field private static final blacklist PNG_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final blacklist PNG_CHUNK_TYPE_EXIF:[B

.field private static final blacklist PNG_CHUNK_TYPE_IEND:[B

.field private static final blacklist PNG_CHUNK_TYPE_IHDR:[B

.field private static final blacklist PNG_SIGNATURE:[B

.field private static final greylist-max-o RAF_INFO_SIZE:I = 0xa0

.field private static final greylist-max-o RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final greylist-max-o RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final greylist-max-o RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final greylist-max-o REDUCED_RESOLUTION_IMAGE:I = 0x1

.field private static final greylist-max-o RW2_SIGNATURE:S = 0x55s

.field private static final greylist-max-o SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final greylist-max-o START_CODE:B = 0x2at

.field public static final whitelist STREAM_TYPE_EXIF_DATA_ONLY:I = 0x1

.field public static final whitelist STREAM_TYPE_FULL_IMAGE_DATA:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ExifInterface"

.field public static final whitelist TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final whitelist TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final whitelist TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final whitelist TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final whitelist TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final whitelist TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final whitelist TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final whitelist TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final whitelist TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final whitelist TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final whitelist TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final whitelist TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final whitelist TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final whitelist TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final whitelist TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final whitelist TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final whitelist TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final whitelist TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final whitelist TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final greylist-max-o TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final whitelist TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final whitelist TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final whitelist TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final whitelist TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final whitelist TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final whitelist TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final whitelist TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final whitelist TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final whitelist TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final whitelist TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final whitelist TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final whitelist TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final whitelist TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final whitelist TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final whitelist TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final whitelist TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final whitelist TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final whitelist TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final whitelist TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final whitelist TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final whitelist TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final whitelist TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final whitelist TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final whitelist TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final whitelist TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final whitelist TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final whitelist TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final whitelist TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final whitelist TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final whitelist TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final whitelist TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final whitelist TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final whitelist TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final greylist-max-o TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final whitelist TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final whitelist TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final whitelist TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final whitelist TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final whitelist TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final whitelist TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final whitelist TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final whitelist TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final whitelist TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final whitelist TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final whitelist TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final whitelist TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final whitelist TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final whitelist TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final whitelist TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final greylist-max-o TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final whitelist TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final whitelist TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final whitelist TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final whitelist TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final greylist-max-o TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final whitelist TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final whitelist TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final whitelist TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final whitelist TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final whitelist TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final whitelist TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final whitelist TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final whitelist TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final whitelist TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final whitelist TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final whitelist TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final whitelist TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final whitelist TAG_OFFSET_TIME:Ljava/lang/String; = "OffsetTime"

.field public static final whitelist TAG_OFFSET_TIME_DIGITIZED:Ljava/lang/String; = "OffsetTimeDigitized"

.field public static final whitelist TAG_OFFSET_TIME_ORIGINAL:Ljava/lang/String; = "OffsetTimeOriginal"

.field public static final whitelist TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final greylist-max-o TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final greylist-max-o TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final whitelist TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final whitelist TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final whitelist TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final whitelist TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final whitelist TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final whitelist TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final whitelist TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final whitelist TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final whitelist TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final greylist-max-o TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

.field public static final whitelist TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final whitelist TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final whitelist TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final whitelist TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final whitelist TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final whitelist TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final whitelist TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final whitelist TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final whitelist TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final whitelist TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final whitelist TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final whitelist TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final whitelist TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final whitelist TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final whitelist TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final whitelist TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final whitelist TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final whitelist TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final whitelist TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final whitelist TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final whitelist TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final whitelist TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final whitelist TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final whitelist TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final whitelist TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final whitelist TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final whitelist TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final whitelist TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final whitelist TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final whitelist TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final whitelist TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final whitelist TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final greylist-max-o TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final greylist-max-o TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final whitelist TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final whitelist TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final greylist-max-o TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final greylist-max-o TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final whitelist TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field public static final whitelist TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final whitelist TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final whitelist TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final whitelist TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final whitelist TAG_XMP:Ljava/lang/String; = "Xmp"

.field public static final whitelist TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final whitelist TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final whitelist TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final whitelist TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final whitelist TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field private static final blacklist WEBP_CHUNK_SIZE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_CHUNK_TYPE_ANIM:[B

.field private static final blacklist WEBP_CHUNK_TYPE_ANMF:[B

.field private static final blacklist WEBP_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_CHUNK_TYPE_EXIF:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8L:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8X:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8X_DEFAULT_LENGTH:I = 0xa

.field private static final blacklist WEBP_FILE_SIZE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_SIGNATURE_1:[B

.field private static final blacklist WEBP_SIGNATURE_2:[B

.field private static final blacklist WEBP_VP8L_SIGNATURE:B = 0x2ft

.field private static final blacklist WEBP_VP8_SIGNATURE:[B

.field public static final whitelist WHITEBALANCE_AUTO:I = 0x0

.field public static final whitelist WHITEBALANCE_MANUAL:I = 0x1

.field private static final greylist-max-o sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final greylist-max-o sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static blacklist sFormatter:Ljava/text/SimpleDateFormat;

.field private static blacklist sFormatterTz:Ljava/text/SimpleDateFormat;

.field private static final greylist-max-o sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAreThumbnailStripsConsecutive:Z

.field private greylist-max-o mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final greylist mAttributes:[Ljava/util/HashMap;

.field private greylist-max-o mExifByteOrder:Ljava/nio/ByteOrder;

.field private greylist-max-o mExifOffset:I

.field private blacklist mFilename:Ljava/lang/String;

.field private blacklist mHandledIfdOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasThumbnail:Z

.field private blacklist mHasThumbnailStrips:Z

.field private blacklist mIsExifDataOnly:Z

.field private greylist-max-o mIsInputStream:Z

.field private greylist-max-o mIsSupportedFile:Z

.field private greylist-max-o mMimeType:I

.field private blacklist mModified:Z

.field private greylist-max-o mOrfMakerNoteOffset:I

.field private greylist-max-o mOrfThumbnailLength:I

.field private greylist-max-o mOrfThumbnailOffset:I

.field private greylist-max-o mRw2JpgFromRawOffset:I

.field private greylist-max-o mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private greylist-max-o mThumbnailBytes:[B

.field private greylist-max-o mThumbnailCompression:I

.field private greylist-max-o mThumbnailLength:I

.field private greylist-max-o mThumbnailOffset:I

.field private blacklist mXmpIsFromSeparateMarker:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetASCII()Ljava/nio/charset/Charset;
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEXIF_ASCII_PREFIX()[B
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetIFD_FORMAT_NAMES()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 32

    .line 104
    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    .line 547
    new-array v0, v1, [B

    fill-array-data v0, :array_bfa

    sput-object v0, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 553
    const/4 v0, 0x4

    new-array v2, v0, [B

    fill-array-data v2, :array_c00

    sput-object v2, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 554
    new-array v2, v0, [B

    fill-array-data v2, :array_c06

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 555
    new-array v2, v0, [B

    fill-array-data v2, :array_c0c

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 556
    new-array v2, v0, [B

    fill-array-data v2, :array_c12

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    .line 557
    new-array v2, v0, [B

    fill-array-data v2, :array_c18

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 565
    const/4 v2, 0x6

    new-array v3, v2, [B

    fill-array-data v3, :array_c1e

    sput-object v3, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 567
    const/16 v3, 0xa

    new-array v4, v3, [B

    fill-array-data v4, :array_c26

    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 583
    const/16 v4, 0x8

    new-array v5, v4, [B

    fill-array-data v5, :array_c30

    sput-object v5, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 587
    new-array v5, v0, [B

    fill-array-data v5, :array_c38

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 589
    new-array v5, v0, [B

    fill-array-data v5, :array_c3e

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    .line 591
    new-array v5, v0, [B

    fill-array-data v5, :array_c44

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    .line 597
    new-array v5, v0, [B

    fill-array-data v5, :array_c4a

    sput-object v5, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 598
    new-array v5, v0, [B

    fill-array-data v5, :array_c50

    sput-object v5, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 600
    new-array v5, v0, [B

    fill-array-data v5, :array_c56

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 602
    new-array v5, v1, [B

    fill-array-data v5, :array_c5c

    sput-object v5, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 605
    const-string v5, "VP8X"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 606
    const-string v5, "VP8L"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 607
    const-string v5, "VP8 "

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 608
    const-string v5, "ANIM"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 609
    const-string v5, "ANMF"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 648
    const-string v18, "DOUBLE"

    const-string v19, "IFD"

    const-string v6, ""

    const-string v7, "BYTE"

    const-string v8, "STRING"

    const-string v9, "USHORT"

    const-string v10, "ULONG"

    const-string v11, "URATIONAL"

    const-string v12, "SBYTE"

    const-string v13, "UNDEFINED"

    const-string v14, "SSHORT"

    const-string v15, "SLONG"

    const-string v16, "SRATIONAL"

    const-string v17, "SINGLE"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 653
    const/16 v5, 0xe

    new-array v6, v5, [I

    fill-array-data v6, :array_c62

    sput-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 656
    new-array v6, v4, [B

    fill-array-data v6, :array_c82

    sput-object v6, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 679
    filled-new-array {v4, v4, v4}, [I

    move-result-object v6

    sput-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 680
    filled-new-array {v0}, [I

    move-result-object v6

    sput-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 681
    filled-new-array {v4}, [I

    move-result-object v6

    sput-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 1113
    const/16 v6, 0x2a

    new-array v6, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v7, Landroid/media/ExifInterface$ExifTag;

    const-string v8, "NewSubfileType"

    const/16 v9, 0xfe

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubfileType"

    const/16 v11, 0xff

    invoke-direct {v7, v9, v11, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/4 v9, 0x1

    aput-object v7, v6, v9

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "ImageWidth"

    const/16 v13, 0x100

    const/4 v14, 0x3

    invoke-direct/range {v11 .. v16}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    const/4 v7, 0x2

    aput-object v11, v6, v7

    new-instance v12, Landroid/media/ExifInterface$ExifTag;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "ImageLength"

    const/16 v14, 0x101

    const/4 v15, 0x3

    invoke-direct/range {v12 .. v17}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    aput-object v12, v6, v1

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v12, "BitsPerSample"

    const/16 v13, 0x102

    invoke-direct {v11, v12, v13, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v11, v6, v0

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v12, "Compression"

    const/16 v13, 0x103

    invoke-direct {v11, v12, v13, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/4 v12, 0x5

    aput-object v11, v6, v12

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v11, v13, v14, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v11, v6, v2

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v11, v13, v14, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/4 v13, 0x7

    aput-object v11, v6, v13

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Make"

    const/16 v15, 0x10f

    invoke-direct {v11, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v11, v6, v4

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Model"

    const/16 v15, 0x110

    invoke-direct {v11, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x9

    aput-object v11, v6, v14

    new-instance v15, Landroid/media/ExifInterface$ExifTag;

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v16, "StripOffsets"

    const/16 v17, 0x111

    const/16 v18, 0x3

    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    aput-object v15, v6, v3

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "Orientation"

    move/from16 v16, v5

    const/16 v5, 0x112

    invoke-direct {v11, v15, v5, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v5, 0xb

    aput-object v11, v6, v5

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    move/from16 v17, v5

    const/16 v5, 0x115

    invoke-direct {v11, v15, v5, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v5, 0xc

    aput-object v11, v6, v5

    new-instance v18, Landroid/media/ExifInterface$ExifTag;

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "RowsPerStrip"

    const/16 v20, 0x116

    const/16 v21, 0x3

    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0xd

    aput-object v18, v6, v11

    new-instance v19, Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "StripByteCounts"

    const/16 v21, 0x117

    const/16 v22, 0x3

    invoke-direct/range {v19 .. v24}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    aput-object v19, v6, v16

    new-instance v15, Landroid/media/ExifInterface$ExifTag;

    move/from16 v18, v11

    const-string v11, "XResolution"

    move/from16 v19, v5

    const/16 v5, 0x11a

    invoke-direct {v15, v11, v5, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v5, 0xf

    aput-object v15, v6, v5

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "YResolution"

    move/from16 v20, v5

    const/16 v5, 0x11b

    invoke-direct {v11, v15, v5, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v5, 0x10

    aput-object v11, v6, v5

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PlanarConfiguration"

    move/from16 v21, v5

    const/16 v5, 0x11c

    invoke-direct {v11, v15, v5, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v5, 0x11

    aput-object v11, v6, v5

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ResolutionUnit"

    move/from16 v22, v5

    const/16 v5, 0x128

    invoke-direct {v11, v15, v5, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v5, 0x12

    aput-object v11, v6, v5

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v5, v11, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x13

    aput-object v5, v6, v11

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "Software"

    const/16 v15, 0x131

    invoke-direct {v5, v11, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x14

    aput-object v5, v6, v11

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v5, v11, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x15

    aput-object v5, v6, v11

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v5, v11, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x16

    aput-object v5, v6, v11

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v5, v11, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x17

    aput-object v5, v6, v11

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    move/from16 v23, v14

    const/16 v14, 0x13f

    invoke-direct {v5, v15, v14, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x18

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v5, v14, v15, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x19

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v5, v14, v15, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1a

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "JPEGInterchangeFormatLength"

    move/from16 v24, v14

    const/16 v14, 0x202

    invoke-direct {v5, v15, v14, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1b

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v5, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1c

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v5, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1d

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v5, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1e

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v5, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1f

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Copyright"

    const v15, 0x8298

    invoke-direct {v5, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x20

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v5, v14, v15, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x21

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v5, v14, v15, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x22

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SensorTopBorder"

    invoke-direct {v5, v14, v0, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x23

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SensorLeftBorder"

    invoke-direct {v5, v14, v12, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x24

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SensorBottomBorder"

    invoke-direct {v5, v14, v2, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x25

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SensorRightBorder"

    invoke-direct {v5, v14, v13, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x26

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ISO"

    invoke-direct {v5, v14, v11, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x27

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v5, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x28

    aput-object v5, v6, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Xmp"

    const/16 v15, 0x2bc

    invoke-direct {v5, v14, v15, v9, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x29

    aput-object v5, v6, v14

    sput-object v6, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1163
    const/16 v5, 0x3e

    new-array v5, v5, [Landroid/media/ExifInterface$ExifTag;

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ExposureTime"

    const v15, 0x829a

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v8

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "FNumber"

    const v15, 0x829d

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v9

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v7

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v1

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ISOSpeedRatings"

    const v15, 0x8827

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v0

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "OECF"

    const v15, 0x8828

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v12

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v2

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v13

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v4

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "OffsetTime"

    const v15, 0x9010

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v23

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "OffsetTimeOriginal"

    const v15, 0x9011

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v3

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "OffsetTimeDigitized"

    const v15, 0x9012

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v17

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v19

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v18

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ShutterSpeedValue"

    const v15, 0x9201

    invoke-direct {v6, v14, v15, v3, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v16

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v20

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v6, v14, v15, v3, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v21

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v6, v14, v15, v3, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v22

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "MaxApertureValue"

    const v15, 0x9205

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x12

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SubjectDistance"

    const v15, 0x9206

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x13

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "MeteringMode"

    const v15, 0x9207

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x14

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "LightSource"

    const v15, 0x9208

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x15

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Flash"

    const v15, 0x9209

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x16

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "FocalLength"

    const v15, 0x920a

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SubjectArea"

    const v15, 0x9214

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x18

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "MakerNote"

    const v15, 0x927c

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x19

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "UserComment"

    const v15, 0x9286

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v24

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SubSecTime"

    const v15, 0x9290

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1b

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SubSecTimeOriginal"

    const v15, 0x9291

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1c

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SubSecTimeDigitized"

    const v15, 0x9292

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1d

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "FlashpixVersion"

    const v15, 0xa000

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1e

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ColorSpace"

    const v15, 0xa001

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1f

    aput-object v6, v5, v14

    new-instance v25, Landroid/media/ExifInterface$ExifTag;

    const/16 v29, 0x4

    const/16 v30, 0x0

    const-string v26, "PixelXDimension"

    const v27, 0xa002

    const/16 v28, 0x3

    invoke-direct/range {v25 .. v30}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    const/16 v6, 0x20

    aput-object v25, v5, v6

    new-instance v26, Landroid/media/ExifInterface$ExifTag;

    const/16 v30, 0x4

    const/16 v31, 0x0

    const-string v27, "PixelYDimension"

    const v28, 0xa003

    const/16 v29, 0x3

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    const/16 v6, 0x21

    aput-object v26, v5, v6

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "RelatedSoundFile"

    const v15, 0xa004

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x22

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "InteroperabilityIFDPointer"

    const v15, 0xa005

    invoke-direct {v6, v14, v15, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x23

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "FlashEnergy"

    const v15, 0xa20b

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x24

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SpatialFrequencyResponse"

    const v15, 0xa20c

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x25

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "FocalPlaneXResolution"

    const v15, 0xa20e

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x26

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "FocalPlaneYResolution"

    const v15, 0xa20f

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x27

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "FocalPlaneResolutionUnit"

    const v15, 0xa210

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x28

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SubjectLocation"

    const v15, 0xa214

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x29

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ExposureIndex"

    const v15, 0xa215

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x2a

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SensingMethod"

    const v15, 0xa217

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x2b

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "FileSource"

    const v15, 0xa300

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x2c

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SceneType"

    const v15, 0xa301

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x2d

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "CFAPattern"

    const v15, 0xa302

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x2e

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "CustomRendered"

    const v15, 0xa401

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x2f

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ExposureMode"

    const v15, 0xa402

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x30

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "WhiteBalance"

    const v15, 0xa403

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x31

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "DigitalZoomRatio"

    const v15, 0xa404

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x32

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "FocalLengthIn35mmFilm"

    const v15, 0xa405

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x33

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SceneCaptureType"

    const v15, 0xa406

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x34

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GainControl"

    const v15, 0xa407

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x35

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Contrast"

    const v15, 0xa408

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x36

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Saturation"

    const v15, 0xa409

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x37

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Sharpness"

    const v15, 0xa40a

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x38

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "DeviceSettingDescription"

    const v15, 0xa40b

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x39

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SubjectDistanceRange"

    const v15, 0xa40c

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x3a

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageUniqueID"

    const v15, 0xa420

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x3b

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "DNGVersion"

    const v15, 0xc612

    invoke-direct {v6, v14, v15, v9, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x3c

    aput-object v6, v5, v14

    new-instance v25, Landroid/media/ExifInterface$ExifTag;

    const/16 v29, 0x4

    const/16 v30, 0x0

    const-string v26, "DefaultCropSize"

    const v27, 0xc620

    const/16 v28, 0x3

    invoke-direct/range {v25 .. v30}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    const/16 v6, 0x3d

    aput-object v25, v5, v6

    sput-object v5, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1229
    const/16 v5, 0x1f

    new-array v5, v5, [Landroid/media/ExifInterface$ExifTag;

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSVersionID"

    invoke-direct {v6, v14, v8, v9, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v8

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLatitudeRef"

    invoke-direct {v6, v14, v9, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v9

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLatitude"

    invoke-direct {v6, v14, v7, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v7

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLongitudeRef"

    invoke-direct {v6, v14, v1, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v1

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLongitude"

    invoke-direct {v6, v14, v0, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v0

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitudeRef"

    invoke-direct {v6, v14, v12, v9, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v12

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitude"

    invoke-direct {v6, v14, v2, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v2

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTimeStamp"

    invoke-direct {v6, v14, v13, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v13

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSatellites"

    invoke-direct {v6, v14, v4, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v4

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSStatus"

    move/from16 v15, v23

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v15

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSMeasureMode"

    invoke-direct {v6, v14, v3, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v3

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDOP"

    move/from16 v15, v17

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v15

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeedRef"

    move/from16 v15, v19

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v15

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeed"

    move/from16 v15, v18

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v15

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrackRef"

    move/from16 v15, v16

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v15

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrack"

    move/from16 v15, v20

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v15

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirectionRef"

    move/from16 v15, v21

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v15

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirection"

    move/from16 v15, v22

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v15

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSMapDatum"

    const/16 v15, 0x12

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x12

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitudeRef"

    const/16 v15, 0x13

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x13

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitude"

    const/16 v15, 0x14

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x14

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitudeRef"

    const/16 v15, 0x15

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x15

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitude"

    const/16 v15, 0x16

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x16

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearingRef"

    invoke-direct {v6, v14, v11, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearing"

    const/16 v15, 0x18

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x18

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistanceRef"

    const/16 v15, 0x19

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x19

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistance"

    move/from16 v15, v24

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v15

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSProcessingMethod"

    const/16 v15, 0x1b

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1b

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAreaInformation"

    const/16 v15, 0x1c

    invoke-direct {v6, v14, v15, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1c

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDateStamp"

    const/16 v15, 0x1d

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1d

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDifferential"

    const/16 v15, 0x1e

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x1e

    aput-object v6, v5, v14

    sput-object v5, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1263
    new-array v5, v9, [Landroid/media/ExifInterface$ExifTag;

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "InteroperabilityIndex"

    invoke-direct {v6, v14, v9, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v8

    sput-object v5, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1267
    const/16 v5, 0x25

    new-array v5, v5, [Landroid/media/ExifInterface$ExifTag;

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "NewSubfileType"

    const/16 v15, 0xfe

    invoke-direct {v6, v14, v15, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v8

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v6, v14, v15, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v9

    new-instance v25, Landroid/media/ExifInterface$ExifTag;

    const-string v26, "ThumbnailImageWidth"

    const/16 v27, 0x100

    invoke-direct/range {v25 .. v30}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    aput-object v25, v5, v7

    new-instance v26, Landroid/media/ExifInterface$ExifTag;

    const/16 v30, 0x4

    const-string v27, "ThumbnailImageLength"

    const/16 v28, 0x101

    const/16 v29, 0x3

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    aput-object v26, v5, v1

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v0

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Compression"

    const/16 v15, 0x103

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v12

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v2

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v13

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Make"

    const/16 v15, 0x10f

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v4

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Model"

    const/16 v15, 0x110

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v23, 0x9

    aput-object v6, v5, v23

    new-instance v25, Landroid/media/ExifInterface$ExifTag;

    const/16 v29, 0x4

    const/16 v30, 0x0

    const-string v26, "StripOffsets"

    const/16 v27, 0x111

    const/16 v28, 0x3

    invoke-direct/range {v25 .. v30}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    aput-object v25, v5, v3

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ThumbnailOrientation"

    const/16 v15, 0x112

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v17, 0xb

    aput-object v6, v5, v17

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v19, 0xc

    aput-object v6, v5, v19

    new-instance v25, Landroid/media/ExifInterface$ExifTag;

    const-string v26, "RowsPerStrip"

    const/16 v27, 0x116

    invoke-direct/range {v25 .. v30}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    const/16 v18, 0xd

    aput-object v25, v5, v18

    new-instance v26, Landroid/media/ExifInterface$ExifTag;

    const/16 v30, 0x4

    const-string v27, "StripByteCounts"

    const/16 v28, 0x117

    const/16 v29, 0x3

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    const/16 v16, 0xe

    aput-object v26, v5, v16

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v20, 0xf

    aput-object v6, v5, v20

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v21, 0x10

    aput-object v6, v5, v21

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v22, 0x11

    aput-object v6, v5, v22

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x12

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v6, v14, v15, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x13

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Software"

    const/16 v15, 0x131

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x14

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x15

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v6, v14, v15, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v14, 0x16

    aput-object v6, v5, v14

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v6, v14, v15, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "PrimaryChromaticities"

    const/16 v14, 0x13f

    invoke-direct {v6, v11, v14, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x18

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "SubIFDPointer"

    const/16 v14, 0x14a

    invoke-direct {v6, v11, v14, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x19

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "JPEGInterchangeFormat"

    const/16 v14, 0x201

    invoke-direct {v6, v11, v14, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v24, 0x1a

    aput-object v6, v5, v24

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "JPEGInterchangeFormatLength"

    const/16 v14, 0x202

    invoke-direct {v6, v11, v14, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x1b

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "YCbCrCoefficients"

    const/16 v14, 0x211

    invoke-direct {v6, v11, v14, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x1c

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "YCbCrSubSampling"

    const/16 v14, 0x212

    invoke-direct {v6, v11, v14, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x1d

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "YCbCrPositioning"

    const/16 v14, 0x213

    invoke-direct {v6, v11, v14, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x1e

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "ReferenceBlackWhite"

    const/16 v14, 0x214

    invoke-direct {v6, v11, v14, v12, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x1f

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "Copyright"

    const v14, 0x8298

    invoke-direct {v6, v11, v14, v7, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x20

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "ExifIFDPointer"

    const v14, 0x8769

    invoke-direct {v6, v11, v14, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x21

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSInfoIFDPointer"

    const v14, 0x8825

    invoke-direct {v6, v11, v14, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x22

    aput-object v6, v5, v11

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v6, v11, v14, v9, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    const/16 v11, 0x23

    aput-object v6, v5, v11

    new-instance v14, Landroid/media/ExifInterface$ExifTag;

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "DefaultCropSize"

    const v16, 0xc620

    const/16 v17, 0x3

    invoke-direct/range {v14 .. v19}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface-IA;)V

    const/16 v6, 0x24

    aput-object v14, v5, v6

    sput-object v5, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1310
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v6, "StripOffsets"

    const/16 v11, 0x111

    invoke-direct {v5, v6, v11, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    sput-object v5, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    .line 1314
    new-array v5, v1, [Landroid/media/ExifInterface$ExifTag;

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "ThumbnailImage"

    const/16 v14, 0x100

    invoke-direct {v6, v11, v14, v13, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v8

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "CameraSettingsIFDPointer"

    const/16 v14, 0x2020

    invoke-direct {v6, v11, v14, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v9

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "ImageProcessingIFDPointer"

    const/16 v14, 0x2040

    invoke-direct {v6, v11, v14, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v7

    sput-object v5, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1319
    new-array v5, v7, [Landroid/media/ExifInterface$ExifTag;

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "PreviewImageStart"

    const/16 v14, 0x101

    invoke-direct {v6, v11, v14, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v8

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "PreviewImageLength"

    const/16 v14, 0x102

    invoke-direct {v6, v11, v14, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v9

    sput-object v5, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1323
    new-array v5, v9, [Landroid/media/ExifInterface$ExifTag;

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "AspectFrame"

    const/16 v14, 0x1113

    invoke-direct {v6, v11, v14, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v8

    sput-object v5, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1327
    new-array v5, v9, [Landroid/media/ExifInterface$ExifTag;

    new-instance v6, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "ColorSpace"

    const/16 v14, 0x37

    invoke-direct {v6, v11, v14, v1, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v6, v5, v8

    sput-object v5, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1354
    new-array v3, v3, [[Landroid/media/ExifInterface$ExifTag;

    sget-object v5, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v5, v3, v8

    sget-object v5, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v5, v3, v9

    sget-object v5, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v5, v3, v7

    sget-object v5, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v5, v3, v1

    sget-object v5, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v5, v3, v0

    sget-object v5, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v5, v3, v12

    sget-object v5, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v5, v3, v2

    sget-object v5, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v5, v3, v13

    sget-object v5, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v5, v3, v4

    sget-object v5, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x9

    aput-object v5, v3, v23

    sput-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 1360
    new-array v2, v2, [Landroid/media/ExifInterface$ExifTag;

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SubIFDPointer"

    const/16 v6, 0x14a

    invoke-direct {v3, v5, v6, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ExifIFDPointer"

    const v6, 0x8769

    invoke-direct {v3, v5, v6, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v3, v2, v9

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "GPSInfoIFDPointer"

    const v6, 0x8825

    invoke-direct {v3, v5, v6, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "InteroperabilityIFDPointer"

    const v6, 0xa005

    invoke-direct {v3, v5, v6, v0, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v3, v2, v1

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "CameraSettingsIFDPointer"

    const/16 v6, 0x2020

    invoke-direct {v3, v5, v6, v9, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v3, v2, v0

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ImageProcessingIFDPointer"

    const/16 v6, 0x2040

    invoke-direct {v3, v5, v6, v9, v10}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface-IA;)V

    aput-object v3, v2, v12

    sput-object v2, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1370
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/HashMap;

    sput-object v2, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 1372
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/HashMap;

    sput-object v2, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 1373
    new-instance v2, Ljava/util/HashSet;

    const-string v3, "SubjectDistance"

    const-string v5, "GPSTimeStamp"

    const-string v6, "FNumber"

    const-string v10, "DigitalZoomRatio"

    const-string v11, "ExposureTime"

    filled-new-array {v6, v10, v11, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v2, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 1377
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 1384
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 1386
    const-string v2, "Exif\u0000\u0000"

    sget-object v3, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sput-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 1388
    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    sget-object v3, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sput-object v2, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 1430
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 1431
    sget-object v2, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1432
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd HH:mm:ss XXX"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    .line 1433
    sget-object v2, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1436
    const/4 v2, 0x0

    .local v2, "ifdType":I
    :goto_b39
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v2, v3, :cond_b76

    .line 1437
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    aput-object v5, v3, v2

    .line 1438
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    aput-object v5, v3, v2

    .line 1439
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v3, v2

    array-length v5, v3

    move v6, v8

    :goto_b56
    if-ge v6, v5, :cond_b73

    aget-object v10, v3, v6

    .line 1440
    .local v10, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-object v11, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v11, v11, v2

    iget v14, v10, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v11, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v11, v11, v2

    iget-object v14, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v11, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    .end local v10    # "tag":Landroid/media/ExifInterface$ExifTag;
    add-int/lit8 v6, v6, 0x1

    goto :goto_b56

    .line 1436
    :cond_b73
    add-int/lit8 v2, v2, 0x1

    goto :goto_b39

    .line 1446
    .end local v2    # "ifdType":I
    :cond_b76
    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v3, v8

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v3, v9

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v3, v7

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    sget-object v1, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v0, v2, v0

    iget v0, v0, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 1487
    nop

    .line 1488
    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 1487
    return-void

    :array_bfa
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_c00
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_c06
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_c0c
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_c12
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    :array_c18
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    :array_c1e
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_c26
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_c30
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_c38
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_c3e
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_c44
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_c4a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_c50
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c56
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_c5c
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_c62
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_c82
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1463
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1464
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1499
    if-eqz p1, :cond_22

    .line 1502
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    .line 1503
    return-void

    .line 1500
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1463
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1464
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1531
    if-eqz p1, :cond_6d

    .line 1540
    invoke-static {p1}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1541
    .local v0, "modernFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_24

    .line 1542
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 1545
    :cond_24
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1546
    iput-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1548
    const/4 v2, 0x0

    .line 1551
    .local v2, "isFdDuped":Z
    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_41

    if-nez v0, :cond_41

    .line 1552
    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1557
    :try_start_34
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_38
    .catch Landroid/system/ErrnoException; {:try_start_34 .. :try_end_38} :catch_3b

    move-object p1, v1

    .line 1558
    const/4 v2, 0x1

    .line 1561
    goto :goto_43

    .line 1559
    :catch_3b
    move-exception v1

    .line 1560
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1563
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_41
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1565
    :goto_43
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1566
    const/4 v1, 0x0

    .line 1568
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_47
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    .line 1569
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_5e

    .line 1571
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1572
    if-eqz v2, :cond_58

    .line 1573
    invoke-static {p1}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1575
    :cond_58
    if-eqz v0, :cond_5d

    .line 1576
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1579
    :cond_5d
    return-void

    .line 1571
    :catchall_5e
    move-exception v3

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1572
    if-eqz v2, :cond_67

    .line 1573
    invoke-static {p1}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1575
    :cond_67
    if-eqz v0, :cond_6c

    .line 1576
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1578
    :cond_6c
    throw v3

    .line 1532
    .end local v0    # "modernFd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v2    # "isFdDuped":Z
    :cond_6d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fileDescriptor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1591
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;Z)V

    .line 1592
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1608
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;Z)V

    .line 1609
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .registers 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "shouldBeExifDataOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1463
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1464
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1613
    if-eqz p1, :cond_71

    .line 1616
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1618
    if-eqz p2, :cond_40

    .line 1619
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v1

    .line 1620
    move-object v1, p1

    check-cast v1, Ljava/io/BufferedInputStream;

    invoke-static {v1}, Landroid/media/ExifInterface;->isExifDataOnly(Ljava/io/BufferedInputStream;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1621
    const-string v0, "ExifInterface"

    const-string v1, "Given data does not follow the structure of an Exif-only data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    return-void

    .line 1624
    :cond_38
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    .line 1625
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1626
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_6d

    .line 1628
    :cond_40
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_4c

    .line 1629
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1630
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_6d

    .line 1631
    :cond_4c
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_69

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 1632
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1633
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1634
    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_6d

    .line 1636
    :cond_69
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1637
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1640
    :goto_6d
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    .line 1641
    return-void

    .line 1614
    :cond_71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1463
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1464
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1514
    if-eqz p1, :cond_1e

    .line 1517
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    .line 1518
    return-void

    .line 1515
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addDefaultValuesForCompatibility()V
    .registers 8

    .line 3968
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3969
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    .line 3970
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 3971
    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 3970
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3975
    :cond_1c
    const-string v2, "ImageWidth"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_33

    .line 3976
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3977
    invoke-static {v4, v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 3976
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3979
    :cond_33
    const-string v2, "ImageLength"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_48

    .line 3980
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3981
    invoke-static {v4, v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 3980
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3983
    :cond_48
    const-string v2, "Orientation"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5d

    .line 3984
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3985
    invoke-static {v1, v6}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 3984
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3987
    :cond_5d
    const-string v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_73

    .line 3988
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3989
    invoke-static {v4, v5, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 3988
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3991
    :cond_73
    return-void
.end method

.method public static blacklist convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 14
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .line 2542
    const-string v0, "/"

    :try_start_2
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2545
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2546
    .local v3, "pair":[Ljava/lang/String;
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v7, v3, v6

    .line 2547
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 2549
    .local v4, "degrees":D
    aget-object v7, v1, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2550
    .end local v3    # "pair":[Ljava/lang/String;
    .local v7, "pair":[Ljava/lang/String;
    aget-object v3, v7, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aget-object v3, v7, v6

    .line 2551
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    div-double/2addr v8, v10

    .line 2553
    .local v8, "minutes":D
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2554
    .end local v7    # "pair":[Ljava/lang/String;
    .local v0, "pair":[Ljava/lang/String;
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aget-object v6, v0, v6

    .line 2555
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v2, v6

    .line 2557
    .local v2, "seconds":D
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double v6, v8, v6

    add-double/2addr v6, v4

    const-wide v10, 0x40ac200000000000L    # 3600.0

    div-double v10, v2, v10

    add-double/2addr v6, v10

    .line 2558
    .local v6, "result":D
    const-string v10, "S"

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7c

    const-string v10, "W"

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_77} :catch_7f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_77} :catch_7f

    if-eqz v10, :cond_7a

    goto :goto_7c

    .line 2561
    :cond_7a
    double-to-float v10, v6

    return v10

    .line 2559
    :cond_7c
    :goto_7c
    neg-double v10, v6

    double-to-float v10, v10

    return v10

    .line 2562
    .end local v0    # "pair":[Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "seconds":D
    .end local v4    # "degrees":D
    .end local v6    # "result":D
    .end local v8    # "minutes":D
    :catch_7f
    move-exception v0

    .line 2564
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private blacklist copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V
    .registers 11
    .param p1, "inputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "outputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p3, "firstGivenType"    # [B
    .param p4, "secondGivenType"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3930
    nop

    :goto_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 3931
    .local v0, "type":[B
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_4e

    .line 3932
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid length while copying WebP chunks up tochunk type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, p3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3934
    if-nez p4, :cond_28

    const-string v3, ""

    goto :goto_42

    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, p4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3937
    :cond_4e
    invoke-direct {p0, p1, p2, v0}, Landroid/media/ExifInterface;->copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 3938
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_61

    if-eqz p4, :cond_60

    .line 3939
    invoke-static {v0, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 3940
    goto :goto_61

    .line 3942
    .end local v0    # "type":[B
    :cond_60
    goto :goto_1

    .line 3943
    :cond_61
    :goto_61
    return-void
.end method

.method private blacklist copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V
    .registers 7
    .param p1, "inputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "outputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p3, "type"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3947
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 3948
    .local v0, "size":I
    invoke-virtual {p2, p3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3949
    invoke-virtual {p2, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3951
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    add-int/lit8 v1, v0, 0x1

    goto :goto_13

    :cond_12
    move v1, v0

    :goto_13
    invoke-static {p1, p2, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3952
    return-void
.end method

.method private greylist-max-o getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 1683
    if-eqz p1, :cond_1b

    .line 1688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 1689
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1690
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_16

    .line 1691
    move-object v2, v1

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    return-object v2

    .line 1688
    .end local v1    # "value":Ljava/lang/Object;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1694
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0

    .line 1684
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 28
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3073
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Xmp"

    const-string v3, "yes"

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3075
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_d
    new-instance v5, Landroid/media/ExifInterface$1;

    invoke-direct {v5, v1, v2}, Landroid/media/ExifInterface$1;-><init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 3126
    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 3128
    .local v5, "exifOffsetStr":Ljava/lang/String;
    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 3130
    .local v6, "exifLengthStr":Ljava/lang/String;
    const/16 v7, 0x1a

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 3132
    .local v7, "hasImage":Ljava/lang/String;
    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 3135
    .local v8, "hasVideo":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3136
    .local v9, "width":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3137
    .local v10, "height":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3138
    .local v11, "rotation":Ljava/lang/String;
    move-object v12, v3

    .line 3142
    .local v12, "METADATA_VALUE_YES":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_1b5

    if-eqz v13, :cond_51

    .line 3143
    const/16 v3, 0x1d

    :try_start_39
    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 3145
    const/16 v3, 0x1e

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 3147
    const/16 v3, 0x1f

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_4d

    move-object v11, v3

    goto :goto_6c

    .line 3237
    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .end local v6    # "exifLengthStr":Ljava/lang/String;
    .end local v7    # "hasImage":Ljava/lang/String;
    .end local v8    # "hasVideo":Ljava/lang/String;
    .end local v9    # "width":Ljava/lang/String;
    .end local v10    # "height":Ljava/lang/String;
    .end local v11    # "rotation":Ljava/lang/String;
    .end local v12    # "METADATA_VALUE_YES":Ljava/lang/String;
    :catchall_4d
    move-exception v0

    move-object v15, v4

    goto/16 :goto_1b7

    .line 3149
    .restart local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local v6    # "exifLengthStr":Ljava/lang/String;
    .restart local v7    # "hasImage":Ljava/lang/String;
    .restart local v8    # "hasVideo":Ljava/lang/String;
    .restart local v9    # "width":Ljava/lang/String;
    .restart local v10    # "height":Ljava/lang/String;
    .restart local v11    # "rotation":Ljava/lang/String;
    .restart local v12    # "METADATA_VALUE_YES":Ljava/lang/String;
    :cond_51
    :try_start_51
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_1b5

    if-eqz v3, :cond_6c

    .line 3150
    const/16 v3, 0x12

    :try_start_59
    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 3152
    const/16 v3, 0x13

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 3154
    const/16 v3, 0x18

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 3158
    :cond_6c
    :goto_6c
    const/4 v3, 0x0

    if-eqz v9, :cond_85

    .line 3159
    iget-object v13, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v3

    const-string v14, "ImageWidth"

    .line 3160
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v3

    iget-object v3, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v15, v3}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 3159
    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_87

    .line 3158
    :cond_85
    move/from16 v16, v3

    .line 3163
    :goto_87
    if-eqz v10, :cond_9c

    .line 3164
    iget-object v3, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v16

    const-string v13, "ImageLength"

    .line 3165
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 3164
    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    :cond_9c
    if-eqz v11, :cond_bd

    .line 3169
    const/4 v3, 0x1

    .line 3172
    .local v3, "orientation":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sparse-switch v13, :sswitch_data_1bc

    goto :goto_ae

    .line 3180
    :sswitch_a7
    const/16 v3, 0x8

    goto :goto_ae

    .line 3177
    :sswitch_aa
    const/4 v3, 0x3

    .line 3178
    goto :goto_ae

    .line 3174
    :sswitch_ac
    const/4 v3, 0x6

    .line 3175
    nop

    .line 3184
    :goto_ae
    iget-object v13, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v16

    const-string v14, "Orientation"

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3185
    invoke-static {v3, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 3184
    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3188
    .end local v3    # "orientation":I
    :cond_bd
    if-eqz v5, :cond_122

    if-eqz v6, :cond_122

    .line 3189
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3190
    .local v3, "offset":I
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3191
    .local v13, "length":I
    const/4 v14, 0x6

    if-le v13, v14, :cond_116

    .line 3194
    int-to-long v14, v3

    invoke-virtual {v2, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3195
    const/4 v14, 0x6

    new-array v15, v14, [B

    .line 3196
    .local v15, "identifier":[B
    invoke-virtual {v2, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    move/from16 v18, v3

    const/4 v3, 0x6

    .end local v3    # "offset":I
    .local v18, "offset":I
    if-ne v14, v3, :cond_10c

    .line 3199
    add-int/lit8 v3, v18, 0x6

    .line 3200
    .end local v18    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v13, v13, -0x6

    .line 3201
    sget-object v14, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v15, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_102

    .line 3206
    new-array v14, v13, [B

    .line 3207
    .local v14, "bytes":[B
    move-object/from16 v17, v5

    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .local v17, "exifOffsetStr":Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v13, :cond_fa

    .line 3211
    iput v3, v1, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3212
    move/from16 v5, v16

    invoke-direct {v1, v14, v5}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_124

    .line 3208
    :cond_fa
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Can\'t read exif"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3202
    .end local v14    # "bytes":[B
    .end local v17    # "exifOffsetStr":Ljava/lang/String;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_102
    move-object/from16 v17, v5

    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local v17    # "exifOffsetStr":Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Invalid identifier"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3197
    .end local v3    # "offset":I
    .end local v17    # "exifOffsetStr":Ljava/lang/String;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local v18    # "offset":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_10c
    move-object/from16 v17, v5

    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local v17    # "exifOffsetStr":Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Can\'t read identifier"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3192
    .end local v15    # "identifier":[B
    .end local v17    # "exifOffsetStr":Ljava/lang/String;
    .end local v18    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_116
    move/from16 v18, v3

    move-object/from16 v17, v5

    .end local v3    # "offset":I
    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local v17    # "exifOffsetStr":Ljava/lang/String;
    .restart local v18    # "offset":I
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid exif length"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0
    :try_end_122
    .catchall {:try_start_59 .. :try_end_122} :catchall_4d

    .line 3188
    .end local v13    # "length":I
    .end local v17    # "exifOffsetStr":Ljava/lang/String;
    .end local v18    # "offset":I
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_122
    move-object/from16 v17, v5

    .line 3215
    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local v17    # "exifOffsetStr":Ljava/lang/String;
    :goto_124
    const/16 v3, 0x29

    :try_start_126
    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 3217
    .local v3, "xmpOffsetStr":Ljava/lang/String;
    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 3219
    .local v5, "xmpLengthStr":Ljava/lang/String;
    if-eqz v3, :cond_17b

    if-eqz v5, :cond_17b

    .line 3220
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3221
    .local v13, "offset":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_13c
    .catchall {:try_start_126 .. :try_end_13c} :catchall_1b5

    .line 3222
    .local v14, "length":I
    move-object/from16 v18, v3

    move-object v15, v4

    .end local v3    # "xmpOffsetStr":Ljava/lang/String;
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v15, "retriever":Landroid/media/MediaMetadataRetriever;
    .local v18, "xmpOffsetStr":Ljava/lang/String;
    int-to-long v3, v13

    :try_start_140
    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3223
    new-array v3, v14, [B

    .line 3224
    .local v3, "xmpBytes":[B
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v14, :cond_171

    .line 3227
    invoke-virtual {v1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16e

    .line 3228
    iget-object v4, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v4, v4, v16

    new-instance v19, Landroid/media/ExifInterface$ExifAttribute;

    array-length v1, v3

    move/from16 v21, v1

    int-to-long v1, v13

    const/16 v25, 0x0

    const/16 v20, 0x1

    move-wide/from16 v22, v1

    move-object/from16 v24, v3

    .end local v3    # "xmpBytes":[B
    .local v24, "xmpBytes":[B
    invoke-direct/range {v19 .. v25}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface-IA;)V

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17e

    .line 3227
    .end local v24    # "xmpBytes":[B
    .restart local v3    # "xmpBytes":[B
    :cond_16e
    move-object/from16 v24, v3

    .end local v3    # "xmpBytes":[B
    .restart local v24    # "xmpBytes":[B
    goto :goto_17e

    .line 3225
    .end local v24    # "xmpBytes":[B
    .restart local v3    # "xmpBytes":[B
    :cond_171
    move-object/from16 v24, v3

    .end local v3    # "xmpBytes":[B
    .restart local v24    # "xmpBytes":[B
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read XMP from HEIF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3219
    .end local v13    # "offset":I
    .end local v14    # "length":I
    .end local v18    # "xmpOffsetStr":Ljava/lang/String;
    .end local v24    # "xmpBytes":[B
    .local v3, "xmpOffsetStr":Ljava/lang/String;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_17b
    move-object/from16 v18, v3

    move-object v15, v4

    .line 3233
    .end local v3    # "xmpOffsetStr":Ljava/lang/String;
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v18    # "xmpOffsetStr":Ljava/lang/String;
    :goto_17e
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_1ae

    .line 3234
    const-string v0, "ExifInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heif meta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ae
    .catchall {:try_start_140 .. :try_end_1ae} :catchall_1b3

    .line 3237
    .end local v5    # "xmpLengthStr":Ljava/lang/String;
    .end local v6    # "exifLengthStr":Ljava/lang/String;
    .end local v7    # "hasImage":Ljava/lang/String;
    .end local v8    # "hasVideo":Ljava/lang/String;
    .end local v9    # "width":Ljava/lang/String;
    .end local v10    # "height":Ljava/lang/String;
    .end local v11    # "rotation":Ljava/lang/String;
    .end local v12    # "METADATA_VALUE_YES":Ljava/lang/String;
    .end local v17    # "exifOffsetStr":Ljava/lang/String;
    .end local v18    # "xmpOffsetStr":Ljava/lang/String;
    :cond_1ae
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 3238
    nop

    .line 3239
    return-void

    .line 3237
    :catchall_1b3
    move-exception v0

    goto :goto_1b7

    .end local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1b5
    move-exception v0

    move-object v15, v4

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_1b7
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 3238
    throw v0

    nop

    :sswitch_data_1bc
    .sparse-switch
        0x5a -> :sswitch_ac
        0xb4 -> :sswitch_aa
        0x10e -> :sswitch_a7
    .end sparse-switch
.end method

.method private greylist-max-o getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .registers 27
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "jpegOffset"    # I
    .param p3, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2841
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_22

    .line 2842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getJpegAttributes starting with: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :cond_22
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2849
    move/from16 v3, p2

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2850
    move/from16 v5, p2

    .line 2853
    .local v5, "bytesRead":I
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v6

    move v7, v6

    .local v7, "marker":B
    const-string v8, "Invalid marker: "

    const/4 v9, -0x1

    if-ne v6, v9, :cond_201

    .line 2856
    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 2857
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v10

    const/16 v11, -0x28

    if-ne v10, v11, :cond_1e4

    .line 2860
    add-int/2addr v5, v6

    .line 2862
    :goto_44
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    .line 2863
    if-ne v7, v9, :cond_1c5

    .line 2866
    add-int/lit8 v5, v5, 0x1

    .line 2867
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    .line 2868
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v8, :cond_70

    .line 2869
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found JPEG segment indicator: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int/lit16 v10, v7, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :cond_70
    add-int/2addr v5, v6

    .line 2875
    const/16 v8, -0x27

    if-eq v7, v8, :cond_1bf

    const/16 v8, -0x26

    if-ne v7, v8, :cond_7b

    .line 2876
    goto/16 :goto_1bf

    .line 2878
    :cond_7b
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    .line 2879
    .local v8, "length":I
    add-int/lit8 v5, v5, 0x2

    .line 2880
    sget-boolean v10, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_b5

    .line 2881
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "JPEG segment: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    and-int/lit16 v11, v7, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v8, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :cond_b5
    const-string v10, "Invalid length"

    if-ltz v8, :cond_1b9

    .line 2887
    sparse-switch v7, :sswitch_data_21e

    move v3, v6

    goto/16 :goto_19c

    .line 2919
    :sswitch_bf
    new-array v11, v8, [B

    .line 2920
    .local v11, "bytes":[B
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v12

    if-ne v12, v8, :cond_e5

    .line 2923
    const/4 v8, 0x0

    .line 2924
    const-string v12, "UserComment"

    invoke-virtual {v0, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_e2

    .line 2925
    iget-object v13, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v6

    new-instance v14, Ljava/lang/String;

    sget-object v15, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v14, v11, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v14}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2961
    .end local v11    # "bytes":[B
    :cond_e2
    move v3, v6

    goto/16 :goto_19c

    .line 2921
    .restart local v11    # "bytes":[B
    :cond_e5
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Invalid exif"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2889
    .end local v11    # "bytes":[B
    :sswitch_ed
    move v11, v5

    .line 2890
    .local v11, "start":I
    new-array v12, v8, [B

    .line 2891
    .local v12, "bytes":[B
    invoke-virtual {v1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 2892
    add-int/2addr v5, v8

    .line 2893
    const/4 v8, 0x0

    .line 2895
    sget-object v13, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v12, v13}, Landroid/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_113

    .line 2896
    sget-object v13, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v13, v13

    add-int/2addr v13, v11

    int-to-long v13, v13

    .line 2897
    .local v13, "offset":J
    sget-object v15, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v15, v15

    array-length v9, v12

    invoke-static {v12, v15, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2900
    .local v9, "value":[B
    long-to-int v15, v13

    iput v15, v0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 2901
    invoke-direct {v0, v9, v2}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 2902
    .end local v9    # "value":[B
    .end local v13    # "offset":J
    move v3, v6

    goto/16 :goto_19c

    :cond_113
    sget-object v9, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v12, v9}, Landroid/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v9

    if-eqz v9, :cond_155

    .line 2904
    sget-object v9, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    array-length v9, v9

    add-int/2addr v9, v11

    int-to-long v13, v9

    .line 2905
    .restart local v13    # "offset":J
    sget-object v9, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    array-length v9, v9

    array-length v15, v12

    invoke-static {v12, v9, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2909
    .restart local v9    # "value":[B
    const-string v15, "Xmp"

    invoke-virtual {v0, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_14f

    .line 2910
    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    new-instance v16, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v9

    const/16 v22, 0x0

    const/16 v17, 0x1

    move/from16 v18, v3

    move-object/from16 v21, v9

    move-wide/from16 v19, v13

    .end local v9    # "value":[B
    .end local v13    # "offset":J
    .local v19, "offset":J
    .local v21, "value":[B
    invoke-direct/range {v16 .. v22}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface-IA;)V

    move-object/from16 v3, v16

    invoke-virtual {v6, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    goto :goto_154

    .line 2909
    .end local v19    # "offset":J
    .end local v21    # "value":[B
    .restart local v9    # "value":[B
    .restart local v13    # "offset":J
    :cond_14f
    move v3, v6

    move-object/from16 v21, v9

    move-wide/from16 v19, v13

    .line 2914
    .end local v9    # "value":[B
    .end local v13    # "offset":J
    :goto_154
    goto :goto_19c

    .line 2902
    :cond_155
    move v3, v6

    goto :goto_19c

    .line 2944
    .end local v11    # "start":I
    .end local v12    # "bytes":[B
    :sswitch_157
    move v3, v6

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v6

    if-ne v6, v3, :cond_194

    .line 2947
    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v2

    const/4 v9, 0x4

    if-eq v2, v9, :cond_168

    .line 2948
    const-string v11, "ImageLength"

    goto :goto_16a

    :cond_168
    const-string v11, "ThumbnailImageLength"

    .line 2949
    :goto_16a
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v12

    int-to-long v12, v12

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v13, v14}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 2947
    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2950
    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v2

    if-eq v2, v9, :cond_181

    .line 2951
    const-string v9, "ImageWidth"

    goto :goto_183

    :cond_181
    const-string v9, "ThumbnailImageWidth"

    .line 2952
    :goto_183
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    int-to-long v11, v11

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 2950
    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    add-int/lit8 v8, v8, -0x5

    .line 2954
    goto :goto_19c

    .line 2945
    :cond_194
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid SOFx"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2961
    :goto_19c
    if-ltz v8, :cond_1b3

    .line 2964
    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v6

    if-ne v6, v8, :cond_1ab

    .line 2967
    add-int/2addr v5, v8

    .line 2968
    .end local v8    # "length":I
    move v6, v3

    const/4 v9, -0x1

    move/from16 v3, p2

    goto/16 :goto_44

    .line 2965
    .restart local v8    # "length":I
    :cond_1ab
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid JPEG segment"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2962
    :cond_1b3
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2885
    :cond_1b9
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2970
    .end local v8    # "length":I
    :cond_1bf
    :goto_1bf
    iget-object v3, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2971
    return-void

    .line 2864
    :cond_1c5
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid marker:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2858
    :cond_1e4
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2854
    :cond_201
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_21e
    .sparse-switch
        -0x40 -> :sswitch_157
        -0x3f -> :sswitch_157
        -0x3e -> :sswitch_157
        -0x3d -> :sswitch_157
        -0x3b -> :sswitch_157
        -0x3a -> :sswitch_157
        -0x39 -> :sswitch_157
        -0x37 -> :sswitch_157
        -0x36 -> :sswitch_157
        -0x35 -> :sswitch_157
        -0x33 -> :sswitch_157
        -0x32 -> :sswitch_157
        -0x31 -> :sswitch_157
        -0x1f -> :sswitch_ed
        -0x2 -> :sswitch_bf
    .end sparse-switch
.end method

.method private greylist-max-o getMimeType(Ljava/io/BufferedInputStream;)I
    .registers 4
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2596
    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2597
    new-array v0, v0, [B

    .line 2598
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 2599
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 2600
    invoke-static {v0}, Landroid/media/ExifInterface;->isJpegFormat([B)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2601
    const/4 v1, 0x4

    return v1

    .line 2602
    :cond_15
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRafFormat([B)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2603
    const/16 v1, 0x9

    return v1

    .line 2604
    :cond_1e
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isHeifFormat([B)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2605
    const/16 v1, 0xc

    return v1

    .line 2606
    :cond_27
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isOrfFormat([B)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2607
    const/4 v1, 0x7

    return v1

    .line 2608
    :cond_2f
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRw2Format([B)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2609
    const/16 v1, 0xa

    return v1

    .line 2610
    :cond_38
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isPngFormat([B)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2611
    const/16 v1, 0xd

    return v1

    .line 2612
    :cond_41
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isWebpFormat([B)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2613
    const/16 v1, 0xe

    return v1

    .line 2616
    :cond_4a
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 18
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3264
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 3269
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 3270
    const-string v3, "MakerNote"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3271
    .local v1, "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_df

    .line 3273
    new-instance v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v4, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3275
    .local v3, "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3279
    sget-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v4, v4

    new-array v4, v4, [B

    .line 3280
    .local v4, "makerNoteHeader1Bytes":[B
    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3281
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3282
    sget-object v5, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v5, v5

    new-array v5, v5, [B

    .line 3283
    .local v5, "makerNoteHeader2Bytes":[B
    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3285
    sget-object v6, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 3286
    const-wide/16 v6, 0x8

    invoke-virtual {v3, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_50

    .line 3287
    :cond_43
    sget-object v6, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 3288
    const-wide/16 v6, 0xc

    invoke-virtual {v3, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3292
    :cond_50
    :goto_50
    const/4 v6, 0x6

    invoke-direct {v0, v3, v6}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3295
    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    .line 3296
    const-string v8, "PreviewImageStart"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/ExifInterface$ExifAttribute;

    .line 3297
    .local v6, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v8, v7

    .line 3298
    const-string v8, "PreviewImageLength"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/ExifInterface$ExifAttribute;

    .line 3300
    .local v7, "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v6, :cond_84

    if-eqz v7, :cond_84

    .line 3301
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3303
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v9

    const-string v9, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3310
    :cond_84
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    .line 3311
    const-string v9, "AspectFrame"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    .line 3312
    .local v8, "aspectFrameAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v8, :cond_df

    .line 3313
    const/4 v9, 0x4

    new-array v9, v9, [I

    .line 3314
    .local v9, "aspectFrameValues":[I
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v10}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, [I

    .line 3315
    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x0

    aget v13, v9, v12

    if-le v11, v13, :cond_df

    const/4 v11, 0x3

    aget v13, v9, v11

    aget v14, v9, v2

    if-le v13, v14, :cond_df

    .line 3317
    aget v10, v9, v10

    aget v13, v9, v12

    sub-int/2addr v10, v13

    add-int/2addr v10, v2

    .line 3318
    .local v10, "primaryImageWidth":I
    aget v11, v9, v11

    aget v13, v9, v2

    sub-int/2addr v11, v13

    add-int/2addr v11, v2

    .line 3320
    .local v11, "primaryImageLength":I
    if-ge v10, v11, :cond_c1

    .line 3321
    add-int/2addr v10, v11

    .line 3322
    sub-int v11, v10, v11

    .line 3323
    sub-int/2addr v10, v11

    .line 3325
    :cond_c1
    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3326
    invoke-static {v10, v2}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 3327
    .local v2, "primaryImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3328
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3330
    .local v13, "primaryImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    const-string v15, "ImageWidth"

    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3331
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v14, v12

    const-string v14, "ImageLength"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3335
    .end local v2    # "primaryImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v4    # "makerNoteHeader1Bytes":[B
    .end local v5    # "makerNoteHeader2Bytes":[B
    .end local v6    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v7    # "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v8    # "aspectFrameAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "aspectFrameValues":[I
    .end local v10    # "primaryImageWidth":I
    .end local v11    # "primaryImageLength":I
    .end local v13    # "primaryImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_df
    return-void
.end method

.method private blacklist getPngAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 12
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3364
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 3365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPngAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    :cond_1c
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3373
    const/4 v0, 0x0

    .line 3376
    .local v0, "bytesRead":I
    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3377
    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 3391
    :goto_2c
    :try_start_2c
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 3392
    .local v1, "length":I
    add-int/lit8 v0, v0, 0x4

    .line 3394
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 3395
    .local v2, "type":[B
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_dc

    .line 3399
    add-int/lit8 v0, v0, 0x4

    .line 3402
    const/16 v3, 0x10

    if-ne v0, v3, :cond_53

    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_53

    .line 3403
    :cond_4b
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3

    .line 3407
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_53
    :goto_53
    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 3409
    goto :goto_8c

    .line 3410
    :cond_5c
    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 3412
    new-array v3, v1, [B

    .line 3413
    .local v3, "data":[B
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_b5

    .line 3419
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    .line 3421
    .local v4, "dataCrcValue":I
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 3422
    .local v5, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 3423
    invoke-virtual {v5, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 3424
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    if-ne v6, v4, :cond_8e

    .line 3430
    iput v0, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3431
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3433
    invoke-direct {p0}, Landroid/media/ExifInterface;->validateImages()V

    .line 3434
    nop

    .line 3445
    .end local v1    # "length":I
    .end local v2    # "type":[B
    .end local v3    # "data":[B
    .end local v4    # "dataCrcValue":I
    .end local v5    # "crc":Ljava/util/zip/CRC32;
    :goto_8c
    nop

    .line 3446
    return-void

    .line 3425
    .restart local v1    # "length":I
    .restart local v2    # "type":[B
    .restart local v3    # "data":[B
    .restart local v4    # "dataCrcValue":I
    .restart local v5    # "crc":Ljava/util/zip/CRC32;
    :cond_8e
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", calculated CRC value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3427
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v6

    .line 3414
    .end local v4    # "dataCrcValue":I
    .end local v5    # "crc":Ljava/util/zip/CRC32;
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_b5
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3415
    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v4

    .line 3437
    .end local v3    # "data":[B
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_d2
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3438
    add-int/lit8 v3, v1, 0x4

    add-int/2addr v0, v3

    .line 3440
    .end local v1    # "length":I
    .end local v2    # "type":[B
    goto/16 :goto_2c

    .line 3396
    .restart local v1    # "length":I
    .restart local v2    # "type":[B
    :cond_dc
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3
    :try_end_e4
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_e4} :catch_e4

    .line 3441
    .end local v1    # "length":I
    .end local v2    # "type":[B
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_e4
    move-exception v1

    .line 3444
    .local v1, "e":Ljava/io/EOFException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered corrupt PNG file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 20
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3026
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3027
    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 3028
    .local v3, "jpegOffsetBytes":[B
    new-array v4, v2, [B

    .line 3029
    .local v4, "cfaHeaderOffsetBytes":[B
    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3031
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3032
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3033
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 3034
    .local v2, "rafJpegOffset":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 3037
    .local v5, "rafCfaHeaderOffset":I
    const/4 v6, 0x5

    invoke-direct {v0, v1, v2, v6}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 3040
    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3043
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3044
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 3045
    .local v6, "numberOfDirectoryEntry":I
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v8, "ExifInterface"

    if-eqz v7, :cond_54

    .line 3046
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numberOfDirectoryEntry: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    :cond_54
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_55
    if-ge v7, v6, :cond_bc

    .line 3052
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 3053
    .local v9, "tagNumber":I
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    .line 3054
    .local v10, "numberOfBytes":I
    sget-object v11, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    iget v11, v11, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v9, v11, :cond_b4

    .line 3055
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v11

    .line 3056
    .local v11, "imageLength":I
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v12

    .line 3057
    .local v12, "imageWidth":I
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3058
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3059
    .local v13, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3060
    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 3061
    .local v14, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move/from16 v17, v2

    .end local v2    # "rafJpegOffset":I
    .local v17, "rafJpegOffset":I
    const-string v2, "ImageLength"

    invoke-virtual {v15, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3062
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v16

    const-string v15, "ImageWidth"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3063
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_b3

    .line 3064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updated to length: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", width: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    :cond_b3
    return-void

    .line 3068
    .end local v11    # "imageLength":I
    .end local v12    # "imageWidth":I
    .end local v13    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v14    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v17    # "rafJpegOffset":I
    .restart local v2    # "rafJpegOffset":I
    :cond_b4
    move/from16 v17, v2

    .end local v2    # "rafJpegOffset":I
    .restart local v17    # "rafJpegOffset":I
    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3051
    .end local v9    # "tagNumber":I
    .end local v10    # "numberOfBytes":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 3070
    .end local v7    # "i":I
    .end local v17    # "rafJpegOffset":I
    .restart local v2    # "rafJpegOffset":I
    :cond_bc
    return-void
.end method

.method private greylist-max-o getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 8
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2975
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2978
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2981
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2982
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2983
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2986
    invoke-direct {p0}, Landroid/media/ExifInterface;->validateImages()V

    .line 2988
    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_59

    .line 2991
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 2992
    const-string v2, "MakerNote"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 2993
    .local v0, "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_59

    .line 2995
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2997
    .local v2, "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3000
    const-wide/16 v3, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3003
    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3006
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    .line 3007
    const-string v4, "ColorSpace"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 3008
    .local v3, "colorSpaceAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_59

    .line 3009
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v5, v1

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3013
    .end local v0    # "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v2    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v3    # "colorSpaceAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_59
    return-void
.end method

.method private greylist-max-o getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 8
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3342
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 3345
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3346
    const-string v2, "JpgFromRaw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3347
    .local v0, "jpgFromRawAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_18

    .line 3348
    iget v2, p0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v3, 0x5

    invoke-direct {p0, p1, v2, v3}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 3352
    :cond_18
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    .line 3353
    const-string v2, "ISO"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3354
    .local v1, "rw2IsoAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 3355
    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3356
    .local v2, "exifIsoAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_3c

    if-nez v2, :cond_3c

    .line 3358
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v5, v3

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3360
    :cond_3c
    return-void
.end method

.method private blacklist getStandaloneAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 4
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3242
    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3244
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 3245
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3247
    sget-object v1, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v1

    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3248
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3249
    return-void
.end method

.method private blacklist getWebpAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 10
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3452
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 3453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    :cond_1c
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3458
    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3461
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 3462
    .local v0, "fileSize":I
    const/16 v1, 0x8

    .line 3463
    .local v1, "bytesRead":I
    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 3476
    :goto_37
    const/4 v2, 0x4

    :try_start_38
    new-array v2, v2, [B

    .line 3477
    .local v2, "code":[B
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_a9

    .line 3481
    add-int/lit8 v1, v1, 0x4

    .line 3482
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    .line 3483
    .local v3, "chunkSize":I
    add-int/lit8 v1, v1, 0x4

    .line 3484
    sget-object v4, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 3486
    new-array v4, v3, [B

    .line 3487
    .local v4, "payload":[B
    invoke-virtual {p1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_62

    .line 3492
    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3493
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3496
    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3497
    goto :goto_8d

    .line 3488
    :cond_62
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3489
    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v5

    .line 3500
    .end local v4    # "payload":[B
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_7f
    rem-int/lit8 v4, v3, 0x2
    :try_end_81
    .catch Ljava/io/EOFException; {:try_start_38 .. :try_end_81} :catch_b1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_87

    add-int/lit8 v4, v3, 0x1

    goto :goto_88

    :cond_87
    move v4, v3

    .line 3502
    .end local v3    # "chunkSize":I
    .local v4, "chunkSize":I
    :goto_88
    add-int v3, v1, v4

    if-ne v3, v0, :cond_8f

    .line 3504
    nop

    .line 3520
    .end local v2    # "code":[B
    .end local v4    # "chunkSize":I
    :goto_8d
    nop

    .line 3521
    return-void

    .line 3505
    .restart local v2    # "code":[B
    .restart local v4    # "chunkSize":I
    :cond_8f
    add-int v3, v1, v4

    const-string v5, "Encountered WebP file with invalid chunk size"

    if-gt v3, v0, :cond_a3

    .line 3509
    :try_start_95
    invoke-virtual {p1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v3

    .line 3510
    .local v3, "skipped":I
    if-ne v3, v4, :cond_9d

    .line 3513
    add-int/2addr v1, v3

    .line 3515
    .end local v2    # "code":[B
    .end local v3    # "skipped":I
    .end local v4    # "chunkSize":I
    goto :goto_37

    .line 3511
    .restart local v2    # "code":[B
    .restart local v3    # "skipped":I
    .restart local v4    # "chunkSize":I
    :cond_9d
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v6

    .line 3506
    .end local v3    # "skipped":I
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_a3
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3

    .line 3478
    .end local v4    # "chunkSize":I
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_a9
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3
    :try_end_b1
    .catch Ljava/io/EOFException; {:try_start_95 .. :try_end_b1} :catch_b1

    .line 3516
    .end local v2    # "code":[B
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_b1
    move-exception v2

    .line 3519
    .local v2, "e":Ljava/io/EOFException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered corrupt WebP file."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static greylist-max-o guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .registers 14
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4839
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 4889
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4839
    const/4 v5, -0x1

    .line 4889
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4839
    if-eqz v1, :cond_9d

    .line 4840
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4841
    .local v0, "entryValues":[Ljava/lang/String;
    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 4842
    .local v1, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_28

    .line 4843
    return-object v1

    .line 4845
    :cond_28
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_29
    array-length v3, v0

    if-ge v2, v3, :cond_9c

    .line 4846
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 4847
    .local v3, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    .local v7, "first":I
    const/4 v8, -0x1

    .line 4848
    .local v8, "second":I
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 4849
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 4850
    :cond_48
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4852
    :cond_50
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_76

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4853
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6e

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4854
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 4855
    :cond_6e
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4857
    :cond_76
    if-ne v7, v5, :cond_80

    if-ne v8, v5, :cond_80

    .line 4858
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 4860
    :cond_80
    if-ne v7, v5, :cond_8d

    .line 4861
    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4862
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v9, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v1, v9

    goto :goto_99

    .line 4864
    .end local v9    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8d
    if-ne v8, v5, :cond_99

    .line 4865
    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4866
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v9    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v1, v9

    .line 4845
    .end local v3    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "first":I
    .end local v8    # "second":I
    .end local v9    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_99
    :goto_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 4869
    .end local v2    # "i":I
    :cond_9c
    return-object v1

    .line 4872
    .end local v0    # "entryValues":[Ljava/lang/String;
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9d
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_fe

    .line 4873
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4874
    .local v0, "rationalNumber":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_f8

    .line 4876
    :try_start_ae
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    .line 4877
    .local v1, "numerator":J
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-long v9, v9

    .line 4878
    .local v9, "denominator":J
    cmp-long v3, v1, v7

    const/16 v5, 0xa

    if-ltz v3, :cond_ed

    cmp-long v3, v9, v7

    if-gez v3, :cond_c8

    goto :goto_ed

    .line 4881
    :cond_c8
    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v1, v7

    const/4 v11, 0x5

    if-gtz v3, :cond_e3

    cmp-long v3, v9, v7

    if-lez v3, :cond_d5

    goto :goto_e3

    .line 4884
    :cond_d5
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 4882
    :cond_e3
    :goto_e3
    new-instance v3, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 4879
    :cond_ed
    :goto_ed
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f6
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_f6} :catch_f7

    return-object v3

    .line 4885
    .end local v1    # "numerator":J
    .end local v9    # "denominator":J
    :catch_f7
    move-exception v1

    .line 4889
    :cond_f8
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4892
    .end local v0    # "rationalNumber":[Ljava/lang/String;
    :cond_fe
    :try_start_fe
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4893
    .local v0, "longValue":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v7

    const/4 v2, 0x4

    if-ltz v1, :cond_129

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/32 v11, 0xffff

    cmp-long v1, v9, v11

    if-gtz v1, :cond_129

    .line 4894
    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4896
    :cond_129
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-gez v1, :cond_13d

    .line 4897
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4899
    :cond_13d
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_146
    .catch Ljava/lang/NumberFormatException; {:try_start_fe .. :try_end_146} :catch_147

    return-object v1

    .line 4900
    .end local v0    # "longValue":Ljava/lang/Long;
    :catch_147
    move-exception v0

    .line 4904
    :try_start_148
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 4905
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_156
    .catch Ljava/lang/NumberFormatException; {:try_start_148 .. :try_end_156} :catch_157

    return-object v0

    .line 4906
    :catch_157
    move-exception v0

    .line 4909
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private greylist-max-o handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .registers 10
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4331
    nop

    .line 4332
    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4333
    .local v0, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    nop

    .line 4334
    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4335
    .local v1, "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_85

    if-eqz v1, :cond_85

    .line 4337
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 4338
    .local v2, "thumbnailOffset":I
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4340
    .local v3, "thumbnailLength":I
    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2a

    .line 4342
    iget v4, p0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v2, v4

    .line 4345
    :cond_2a
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->getLength()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4347
    if-lez v2, :cond_5f

    if-lez v3, :cond_5f

    .line 4348
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 4350
    iget v4, p0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4351
    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 4352
    const/4 v4, 0x6

    iput v4, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 4354
    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v4, :cond_5f

    iget-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v4, :cond_5f

    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v4, :cond_5f

    .line 4358
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v4, v4, [B

    .line 4359
    .local v4, "thumbnailBytes":[B
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v5, v5

    invoke-virtual {p1, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4360
    invoke-virtual {p1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 4361
    iput-object v4, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 4364
    .end local v4    # "thumbnailBytes":[B
    :cond_5f
    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_85

    .line 4365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting thumbnail attributes with offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExifInterface"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    .end local v2    # "thumbnailOffset":I
    .end local v3    # "thumbnailLength":I
    :cond_85
    return-void
.end method

.method private greylist-max-o handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .registers 23
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 4375
    const-string v3, "StripOffsets"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4376
    .local v3, "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    nop

    .line 4377
    const-string v4, "StripByteCounts"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4379
    .local v4, "stripByteCountsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_c2

    if-eqz v4, :cond_c2

    .line 4380
    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4381
    invoke-static {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroid/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v5

    .line 4382
    .local v5, "stripOffsets":[J
    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4383
    invoke-static {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroid/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v6

    .line 4385
    .local v6, "stripByteCounts":[J
    const-string v7, "ExifInterface"

    if-eqz v5, :cond_bc

    array-length v8, v5

    if-nez v8, :cond_38

    goto/16 :goto_bc

    .line 4389
    :cond_38
    if-eqz v6, :cond_b6

    array-length v8, v6

    if-nez v8, :cond_3f

    goto/16 :goto_b6

    .line 4393
    :cond_3f
    array-length v8, v5

    array-length v9, v6

    if-eq v8, v9, :cond_49

    .line 4394
    const-string v8, "stripOffsets and stripByteCounts should have same length."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    return-void

    .line 4400
    :cond_49
    nop

    .line 4401
    invoke-static {v6}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v8, v8, [B

    .line 4403
    .local v8, "totalStripBytes":[B
    const/4 v9, 0x0

    .line 4404
    .local v9, "bytesRead":I
    const/4 v10, 0x0

    .line 4405
    .local v10, "bytesAdded":I
    const/4 v11, 0x1

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 4406
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5f
    array-length v13, v5

    if-ge v12, v13, :cond_a1

    .line 4407
    aget-wide v14, v5, v12

    long-to-int v14, v14

    .line 4408
    .local v14, "stripOffset":I
    move/from16 v16, v14

    .end local v14    # "stripOffset":I
    .local v16, "stripOffset":I
    aget-wide v13, v6, v12

    long-to-int v14, v13

    .line 4412
    .local v14, "stripByteCount":I
    array-length v13, v5

    sub-int/2addr v13, v11

    if-ge v12, v13, :cond_7f

    add-int v13, v16, v14

    move/from16 v17, v12

    .end local v12    # "i":I
    .local v17, "i":I
    int-to-long v11, v13

    add-int/lit8 v13, v17, 0x1

    aget-wide v18, v5, v13

    cmp-long v11, v11, v18

    if-eqz v11, :cond_81

    .line 4414
    const/4 v13, 0x0

    iput-boolean v13, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    goto :goto_81

    .line 4412
    .end local v17    # "i":I
    .restart local v12    # "i":I
    :cond_7f
    move/from16 v17, v12

    .line 4418
    .end local v12    # "i":I
    .restart local v17    # "i":I
    :cond_81
    :goto_81
    sub-int v11, v16, v9

    .line 4419
    .local v11, "skipBytes":I
    if-gez v11, :cond_8a

    .line 4420
    const-string v12, "Invalid strip offset value"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    :cond_8a
    move v12, v14

    .end local v14    # "stripByteCount":I
    .local v12, "stripByteCount":I
    int-to-long v13, v11

    invoke-virtual {v1, v13, v14}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4423
    add-int/2addr v9, v11

    .line 4427
    new-array v13, v12, [B

    .line 4428
    .local v13, "stripBytes":[B
    invoke-virtual {v1, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4429
    add-int/2addr v9, v12

    .line 4432
    array-length v14, v13

    const/4 v15, 0x0

    invoke-static {v13, v15, v8, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4434
    array-length v14, v13

    add-int/2addr v10, v14

    .line 4406
    .end local v11    # "skipBytes":I
    .end local v12    # "stripByteCount":I
    .end local v13    # "stripBytes":[B
    .end local v16    # "stripOffset":I
    add-int/lit8 v12, v17, 0x1

    const/4 v11, 0x1

    .end local v17    # "i":I
    .local v12, "i":I
    goto :goto_5f

    :cond_a1
    move/from16 v17, v12

    .line 4436
    .end local v12    # "i":I
    iput-object v8, v0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 4438
    iget-boolean v7, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v7, :cond_c2

    .line 4440
    const/4 v13, 0x0

    aget-wide v11, v5, v13

    long-to-int v7, v11

    iget v11, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v7, v11

    iput v7, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4441
    array-length v7, v8

    iput v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    goto :goto_c2

    .line 4390
    .end local v8    # "totalStripBytes":[B
    .end local v9    # "bytesRead":I
    .end local v10    # "bytesAdded":I
    :cond_b6
    :goto_b6
    const-string v8, "stripByteCounts should not be null or have zero length."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    return-void

    .line 4386
    :cond_bc
    :goto_bc
    const-string v8, "stripOffsets should not be null or have zero length."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    return-void

    .line 4444
    .end local v5    # "stripOffsets":[J
    .end local v6    # "stripByteCounts":[J
    :cond_c2
    :goto_c2
    return-void
.end method

.method private blacklist initForFilename(Ljava/lang/String;)V
    .registers 7
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2569
    const/4 v0, 0x0

    .line 2570
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2571
    .local v1, "modernFd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 2572
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 2573
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 2575
    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2576
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v1, v3

    .line 2577
    if-eqz v1, :cond_2b

    .line 2578
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2579
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    .line 2580
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_3b

    .line 2581
    :cond_2b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 2582
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 2584
    :cond_3b
    :goto_3b
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_47

    .line 2586
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2587
    if-eqz v1, :cond_46

    .line 2588
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2591
    :cond_46
    return-void

    .line 2586
    :catchall_47
    move-exception v2

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2587
    if-eqz v1, :cond_50

    .line 2588
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2590
    :cond_50
    throw v2
.end method

.method private static blacklist isExifDataOnly(Ljava/io/BufferedInputStream;)Z
    .registers 5
    .param p0, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2816
    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2817
    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 2818
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 2819
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 2820
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    sget-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v2, v2

    if-ge v1, v2, :cond_24

    .line 2821
    aget-byte v2, v0, v1

    sget-object v3, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_21

    .line 2822
    const/4 v2, 0x0

    return v2

    .line 2820
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2825
    .end local v1    # "i":I
    :cond_24
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o isHeifFormat([B)Z
    .registers 23
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2649
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2651
    .local v2, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v3, 0x0

    :try_start_4
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v0

    .line 2653
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v4, v0

    .line 2654
    .local v4, "chunkSize":J
    const/4 v0, 0x4

    new-array v6, v0, [B

    .line 2655
    .local v6, "chunkType":[B
    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2657
    sget-object v7, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_bd
    .catchall {:try_start_4 .. :try_end_1b} :catchall_bb

    if-nez v7, :cond_24

    .line 2658
    nop

    .line 2715
    nop

    .line 2716
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2717
    const/4 v0, 0x0

    .line 2658
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2661
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_24
    const-wide/16 v7, 0x8

    .line 2662
    .local v7, "chunkDataOffset":J
    const-wide/16 v9, 0x1

    cmp-long v11, v4, v9

    const-wide/16 v12, 0x8

    if-nez v11, :cond_41

    .line 2665
    :try_start_2e
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v14
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_bd
    .catchall {:try_start_2e .. :try_end_32} :catchall_bb

    move-wide v4, v14

    .line 2666
    const-wide/16 v14, 0x10

    cmp-long v11, v4, v14

    if-gez v11, :cond_40

    .line 2668
    nop

    .line 2715
    nop

    .line 2716
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2717
    const/4 v0, 0x0

    .line 2668
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2670
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_40
    add-long/2addr v7, v12

    .line 2674
    :cond_41
    :try_start_41
    array-length v11, v1

    int-to-long v14, v11

    cmp-long v11, v4, v14

    if-lez v11, :cond_49

    .line 2675
    array-length v11, v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_bd
    .catchall {:try_start_41 .. :try_end_48} :catchall_bb

    int-to-long v4, v11

    .line 2678
    :cond_49
    sub-long v14, v4, v7

    .line 2682
    .local v14, "chunkDataSize":J
    cmp-long v11, v14, v12

    if-gez v11, :cond_56

    .line 2683
    nop

    .line 2715
    nop

    .line 2716
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2717
    const/4 v0, 0x0

    .line 2683
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2686
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_56
    :try_start_56
    new-array v0, v0, [B

    .line 2687
    .local v0, "brand":[B
    const/4 v11, 0x0

    .line 2688
    .local v11, "isMif1":Z
    const/4 v12, 0x0

    .line 2689
    .local v12, "isHeic":Z
    const/4 v13, 0x0

    .line 2690
    .local v13, "isAvif":Z
    const-wide/16 v16, 0x0

    .local v16, "i":J
    :goto_5d
    const-wide/16 v18, 0x4

    div-long v18, v14, v18
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_61} :catch_bd
    .catchall {:try_start_56 .. :try_end_61} :catchall_bb

    cmp-long v18, v16, v18

    if-gez v18, :cond_b8

    .line 2691
    move/from16 v18, v3

    :try_start_67
    invoke-virtual {v2, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    move-wide/from16 v19, v9

    array-length v9, v0
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6e} :catch_b6
    .catchall {:try_start_67 .. :try_end_6e} :catchall_bb

    if-eq v3, v9, :cond_77

    .line 2692
    nop

    .line 2715
    nop

    .line 2716
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2717
    const/4 v2, 0x0

    .line 2692
    return v18

    .line 2694
    :cond_77
    cmp-long v3, v16, v19

    if-nez v3, :cond_7c

    .line 2696
    goto :goto_af

    .line 2698
    :cond_7c
    :try_start_7c
    sget-object v3, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 2699
    const/4 v11, 0x1

    goto :goto_a1

    .line 2700
    :cond_86
    sget-object v3, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 2701
    const/4 v12, 0x1

    goto :goto_a1

    .line 2702
    :cond_90
    sget-object v3, Landroid/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_a0

    sget-object v3, Landroid/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 2703
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_9e} :catch_b6
    .catchall {:try_start_7c .. :try_end_9e} :catchall_bb

    if-eqz v3, :cond_a1

    .line 2704
    :cond_a0
    const/4 v13, 0x1

    .line 2706
    :cond_a1
    :goto_a1
    if-eqz v11, :cond_af

    if-nez v12, :cond_a7

    if-eqz v13, :cond_af

    .line 2707
    :cond_a7
    nop

    .line 2715
    nop

    .line 2716
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2717
    const/4 v2, 0x0

    .line 2707
    const/4 v3, 0x1

    return v3

    .line 2690
    :cond_af
    :goto_af
    add-long v16, v16, v19

    move/from16 v3, v18

    move-wide/from16 v9, v19

    goto :goto_5d

    .line 2710
    .end local v0    # "brand":[B
    .end local v4    # "chunkSize":J
    .end local v6    # "chunkType":[B
    .end local v7    # "chunkDataOffset":J
    .end local v11    # "isMif1":Z
    .end local v12    # "isHeic":Z
    .end local v13    # "isAvif":Z
    .end local v14    # "chunkDataSize":J
    .end local v16    # "i":J
    :catch_b6
    move-exception v0

    goto :goto_c0

    .line 2690
    .restart local v0    # "brand":[B
    .restart local v4    # "chunkSize":J
    .restart local v6    # "chunkType":[B
    .restart local v7    # "chunkDataOffset":J
    .restart local v11    # "isMif1":Z
    .restart local v12    # "isHeic":Z
    .restart local v13    # "isAvif":Z
    .restart local v14    # "chunkDataSize":J
    .restart local v16    # "i":J
    :cond_b8
    move/from16 v18, v3

    .line 2715
    .end local v0    # "brand":[B
    .end local v4    # "chunkSize":J
    .end local v6    # "chunkType":[B
    .end local v7    # "chunkDataOffset":J
    .end local v11    # "isMif1":Z
    .end local v12    # "isHeic":Z
    .end local v13    # "isAvif":Z
    .end local v14    # "chunkDataSize":J
    .end local v16    # "i":J
    goto :goto_cd

    :catchall_bb
    move-exception v0

    goto :goto_d4

    .line 2710
    :catch_bd
    move-exception v0

    move/from16 v18, v3

    .line 2711
    .local v0, "e":Ljava/lang/Exception;
    :goto_c0
    :try_start_c0
    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_cb

    .line 2712
    const-string v3, "ExifInterface"

    const-string v4, "Exception parsing HEIF file type box."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_c0 .. :try_end_cb} :catchall_bb

    .line 2715
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_cb
    if-eqz v2, :cond_d2

    .line 2716
    :goto_cd
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2717
    const/4 v0, 0x0

    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_d3

    .line 2715
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_d2
    move-object v0, v2

    .line 2720
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_d3
    return v18

    .line 2715
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_d4
    if-eqz v2, :cond_da

    .line 2716
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2717
    const/4 v2, 0x0

    .line 2719
    :cond_da
    throw v0
.end method

.method private static greylist-max-o isJpegFormat([B)Z
    .registers 4
    .param p0, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2624
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 2625
    aget-byte v1, p0, v0

    sget-object v2, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_10

    .line 2626
    const/4 v1, 0x0

    return v1

    .line 2624
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2629
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isOrfFormat([B)Z
    .registers 6
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2732
    const/4 v0, 0x0

    .line 2735
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    .line 2738
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2740
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2742
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_2c
    .catchall {:try_start_2 .. :try_end_17} :catchall_25

    .line 2743
    .local v2, "orfSignature":S
    const/16 v3, 0x4f52

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x5352

    if-ne v2, v3, :cond_20

    :cond_1f
    const/4 v1, 0x1

    .line 2747
    :cond_20
    nop

    .line 2748
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2743
    return v1

    .line 2747
    .end local v2    # "orfSignature":S
    :catchall_25
    move-exception v1

    if-eqz v0, :cond_2b

    .line 2748
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2750
    :cond_2b
    throw v1

    .line 2744
    :catch_2c
    move-exception v2

    .line 2747
    if-eqz v0, :cond_32

    .line 2748
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2751
    :cond_32
    return v1
.end method

.method private blacklist isPngFormat([B)Z
    .registers 5
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2787
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 2788
    aget-byte v1, p1, v0

    sget-object v2, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_10

    .line 2789
    const/4 v1, 0x0

    return v1

    .line 2787
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2792
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isRafFormat([B)Z
    .registers 6
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2639
    const-string v0, "FUJIFILMCCD-RAW"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2640
    .local v0, "rafSignatureBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 2641
    aget-byte v2, p1, v1

    aget-byte v3, v0, v1

    if-eq v2, v3, :cond_12

    .line 2642
    const/4 v2, 0x0

    return v2

    .line 2640
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2645
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o isRw2Format([B)Z
    .registers 6
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2759
    const/4 v0, 0x0

    .line 2762
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    .line 2765
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2767
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2769
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    .line 2770
    .local v2, "signatureByte":S
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_2b
    .catchall {:try_start_2 .. :try_end_1a} :catchall_24

    .line 2771
    const/16 v3, 0x55

    if-ne v2, v3, :cond_1f

    const/4 v1, 0x1

    .line 2775
    :cond_1f
    nop

    .line 2776
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2771
    return v1

    .line 2775
    .end local v2    # "signatureByte":S
    :catchall_24
    move-exception v1

    if-eqz v0, :cond_2a

    .line 2776
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2778
    :cond_2a
    throw v1

    .line 2772
    :catch_2b
    move-exception v2

    .line 2775
    if-eqz v0, :cond_31

    .line 2776
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2779
    :cond_31
    return v1
.end method

.method private static greylist-max-o isSeekableFD(Ljava/io/FileDescriptor;)Z
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 2055
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2056
    const/4 v0, 0x1

    return v0

    .line 2057
    :catch_9
    move-exception v0

    .line 2058
    .local v0, "e":Landroid/system/ErrnoException;
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_15

    .line 2059
    const-string v1, "ExifInterface"

    const-string v2, "The file descriptor for the given input is not seekable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o isSupportedDataType(Ljava/util/HashMap;)Z
    .registers 8
    .param p1, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4448
    nop

    .line 4449
    const-string v0, "BitsPerSample"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4450
    .local v0, "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_49

    .line 4451
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 4453
    .local v1, "bitsPerSampleValue":[I
    sget-object v2, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    .line 4454
    return v3

    .line 4458
    :cond_1d
    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_49

    .line 4459
    nop

    .line 4460
    const-string v2, "PhotometricInterpretation"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 4461
    .local v2, "photometricInterpretationAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_49

    .line 4462
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4463
    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    .line 4464
    .local v4, "photometricInterpretationValue":I
    if-ne v4, v3, :cond_3d

    sget-object v5, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 4465
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_48

    :cond_3d
    const/4 v5, 0x6

    if-ne v4, v5, :cond_49

    sget-object v5, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 4467
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 4468
    :cond_48
    return v3

    .line 4475
    .end local v1    # "bitsPerSampleValue":[I
    .end local v2    # "photometricInterpretationAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v4    # "photometricInterpretationValue":I
    :cond_49
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_54

    .line 4476
    const-string v1, "ExifInterface"

    const-string v2, "Unsupported data type value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    :cond_54
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isSupportedFormatForSavingAttributes()Z
    .registers 3

    .line 5277
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v0, :cond_17

    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_17

    .line 5279
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 5281
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isSupportedMimeType(Ljava/lang/String;)Z
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 1650
    if-eqz p0, :cond_bc

    .line 1654
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_c4

    :cond_11
    goto/16 :goto_b6

    :sswitch_13
    const-string v1, "image/x-canon-cr2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    goto/16 :goto_b7

    :sswitch_1e
    const-string v1, "image/x-nikon-nrw"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x4

    goto/16 :goto_b7

    :sswitch_29
    const-string v1, "image/x-nikon-nef"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x3

    goto/16 :goto_b7

    :sswitch_34
    const-string v1, "image/x-olympus-orf"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x7

    goto/16 :goto_b7

    :sswitch_3f
    const-string v1, "image/x-pentax-pef"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x8

    goto/16 :goto_b7

    :sswitch_4b
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xd

    goto/16 :goto_b7

    :sswitch_57
    const-string v1, "image/x-panasonic-rw2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x6

    goto :goto_b7

    :sswitch_61
    const-string v1, "image/x-adobe-dng"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    goto :goto_b7

    :sswitch_6b
    const-string v1, "image/webp"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xe

    goto :goto_b7

    :sswitch_76
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_b7

    :sswitch_80
    const-string v1, "image/heif"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xc

    goto :goto_b7

    :sswitch_8b
    const-string v1, "image/heic"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xb

    goto :goto_b7

    :sswitch_96
    const-string v1, "image/x-sony-arw"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x5

    goto :goto_b7

    :sswitch_a0
    const-string v1, "image/x-samsung-srw"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x9

    goto :goto_b7

    :sswitch_ab
    const-string v1, "image/x-fuji-raf"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xa

    goto :goto_b7

    :goto_b6
    const/4 v0, -0x1

    :goto_b7
    packed-switch v0, :pswitch_data_102

    .line 1672
    return v2

    .line 1670
    :pswitch_bb
    return v3

    .line 1651
    :cond_bc
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mimeType shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_c4
    .sparse-switch
        -0x6fc6acff -> :sswitch_ab
        -0x617ac9e4 -> :sswitch_a0
        -0x5f082c57 -> :sswitch_96
        -0x58a8e8f5 -> :sswitch_8b
        -0x58a8e8f2 -> :sswitch_80
        -0x58a7d764 -> :sswitch_76
        -0x58a21830 -> :sswitch_6b
        -0x54d6098a -> :sswitch_61
        -0x3ab85cc1 -> :sswitch_57
        -0x34686c8b -> :sswitch_4b
        -0x13d592a1 -> :sswitch_3f
        0x52243d4a -> :sswitch_34
        0x7d1e84e8 -> :sswitch_29
        0x7d1e868c -> :sswitch_1e
        0x7dd6e2bc -> :sswitch_13
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
    .end packed-switch
.end method

.method private greylist-max-o isThumbnail(Ljava/util/HashMap;)Z
    .registers 7
    .param p1, "map"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4484
    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4485
    .local v0, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4487
    .local v1, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_28

    if-eqz v1, :cond_28

    .line 4488
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 4489
    .local v2, "imageLengthValue":I
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4490
    .local v3, "imageWidthValue":I
    const/16 v4, 0x200

    if-gt v2, v4, :cond_28

    if-gt v3, v4, :cond_28

    .line 4491
    const/4 v4, 0x1

    return v4

    .line 4494
    .end local v2    # "imageLengthValue":I
    .end local v3    # "imageWidthValue":I
    :cond_28
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isWebpFormat([B)Z
    .registers 6
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_13

    .line 2802
    aget-byte v1, p1, v0

    sget-object v3, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_10

    .line 2803
    return v2

    .line 2801
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2806
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_14
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2b

    .line 2807
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x4

    aget-byte v1, p1, v1

    sget-object v3, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_28

    .line 2809
    return v2

    .line 2806
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2812
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o loadAttributes(Ljava/io/InputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;

    .line 1967
    if-eqz p1, :cond_8e

    .line 1972
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/4 v1, 0x0

    :try_start_4
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 1973
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    .line 1972
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1977
    .end local v0    # "i":I
    :cond_15
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v0, :cond_2a

    .line 1978
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 1979
    move-object v0, p1

    check-cast v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 1983
    :cond_2a
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1985
    .local v0, "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-boolean v2, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v2, :cond_59

    .line 1986
    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    packed-switch v2, :pswitch_data_96

    .line 2027
    goto :goto_5c

    .line 2012
    :pswitch_39
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getWebpAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2013
    goto :goto_5c

    .line 2008
    :pswitch_3d
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getPngAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2009
    goto :goto_5c

    .line 1996
    :pswitch_41
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 1997
    goto :goto_5c

    .line 2004
    :pswitch_45
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2005
    goto :goto_5c

    .line 1992
    :pswitch_49
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 1993
    goto :goto_5c

    .line 2000
    :pswitch_4d
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2001
    goto :goto_5c

    .line 1988
    :pswitch_51
    invoke-direct {p0, v0, v1, v1}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 1989
    goto :goto_5c

    .line 2023
    :pswitch_55
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2024
    goto :goto_5c

    .line 2031
    :cond_59
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getStandaloneAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2034
    :goto_5c
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2035
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_62} :catch_6f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_62} :catch_6f
    .catchall {:try_start_4 .. :try_end_62} :catchall_6d

    .line 2045
    .end local v0    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2047
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_82

    .line 2048
    :goto_69
    invoke-direct {p0}, Landroid/media/ExifInterface;->printAttributes()V

    goto :goto_82

    .line 2045
    :catchall_6d
    move-exception v0

    goto :goto_83

    .line 2036
    :catch_6f
    move-exception v0

    .line 2039
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_70
    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    .line 2040
    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported or corrupted image file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_6d

    .line 2045
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2047
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_82

    .line 2048
    goto :goto_69

    .line 2051
    :cond_82
    :goto_82
    return-void

    .line 2045
    :goto_83
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2047
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_8d

    .line 2048
    invoke-direct {p0}, Landroid/media/ExifInterface;->printAttributes()V

    .line 2050
    :cond_8d
    throw v0

    .line 1968
    :cond_8e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputstream shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_51
        :pswitch_55
        :pswitch_55
        :pswitch_4d
        :pswitch_55
        :pswitch_49
        :pswitch_45
        :pswitch_55
        :pswitch_41
        :pswitch_3d
        :pswitch_39
    .end packed-switch
.end method

.method private static blacklist parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 13
    .param p0, "dateTimeString"    # Ljava/lang/String;
    .param p1, "subSecs"    # Ljava/lang/String;
    .param p2, "offsetString"    # Ljava/lang/String;

    .line 2471
    const-wide/16 v0, -0x1

    if-eqz p0, :cond_71

    sget-object v2, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 2472
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_71

    .line 2474
    :cond_11
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2479
    .local v2, "pos":Ljava/text/ParsePosition;
    :try_start_17
    sget-object v4, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v4
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1a} :catch_6f

    .line 2480
    :try_start_1a
    sget-object v5, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 2481
    .local v5, "datetime":Ljava/util/Date;
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_6c

    .line 2483
    if-eqz p2, :cond_4f

    .line 2484
    :try_start_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 2485
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2486
    .local v4, "position":Ljava/text/ParsePosition;
    sget-object v3, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    monitor-enter v3
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_43} :catch_6f

    .line 2487
    :try_start_43
    sget-object v6, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    move-object v5, v6

    .line 2488
    monitor-exit v3

    goto :goto_4f

    :catchall_4c
    move-exception v6

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_4c

    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "dateTimeString":Ljava/lang/String;
    .end local p1    # "subSecs":Ljava/lang/String;
    .end local p2    # "offsetString":Ljava/lang/String;
    :try_start_4e
    throw v6

    .line 2491
    .end local v4    # "position":Ljava/text/ParsePosition;
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "dateTimeString":Ljava/lang/String;
    .restart local p1    # "subSecs":Ljava/lang/String;
    .restart local p2    # "offsetString":Ljava/lang/String;
    :cond_4f
    :goto_4f
    if-nez v5, :cond_52

    return-wide v0

    .line 2492
    :cond_52
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_56} :catch_6f

    .line 2494
    .local v3, "msecs":J
    if-eqz p1, :cond_6b

    .line 2496
    :try_start_58
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2497
    .local v6, "sub":J
    :goto_5c
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_68

    .line 2498
    const-wide/16 v8, 0xa

    div-long v8, v6, v8
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_66} :catch_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_66} :catch_6f

    move-wide v6, v8

    goto :goto_5c

    .line 2500
    :cond_68
    add-long/2addr v3, v6

    .line 2503
    .end local v6    # "sub":J
    goto :goto_6b

    .line 2501
    :catch_6a
    move-exception v0

    .line 2505
    :cond_6b
    :goto_6b
    return-wide v3

    .line 2481
    .end local v3    # "msecs":J
    .end local v5    # "datetime":Ljava/util/Date;
    :catchall_6c
    move-exception v3

    :try_start_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "dateTimeString":Ljava/lang/String;
    .end local p1    # "subSecs":Ljava/lang/String;
    .end local p2    # "offsetString":Ljava/lang/String;
    :try_start_6e
    throw v3
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_6f} :catch_6f

    .line 2506
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "dateTimeString":Ljava/lang/String;
    .restart local p1    # "subSecs":Ljava/lang/String;
    .restart local p2    # "offsetString":Ljava/lang/String;
    :catch_6f
    move-exception v3

    .line 2507
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-wide v0

    .line 2472
    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_71
    :goto_71
    return-wide v0
.end method

.method private greylist-max-o parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 8
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "exifBytesLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4016
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4018
    iget-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4021
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 4022
    .local v0, "startCode":I
    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3c

    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3c

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1f

    goto :goto_3c

    .line 4023
    :cond_1f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid start code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4027
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 4028
    .local v1, "firstIfdOffset":I
    const/16 v2, 0x8

    if-lt v1, v2, :cond_6b

    if-ge v1, p2, :cond_6b

    .line 4031
    add-int/lit8 v1, v1, -0x8

    .line 4032
    if-lez v1, :cond_6a

    .line 4033
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v1, :cond_51

    goto :goto_6a

    .line 4034
    :cond_51
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4037
    :cond_6a
    :goto_6a
    return-void

    .line 4029
    :cond_6b
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o printAttributes()V
    .registers 8

    .line 2067
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_91

    .line 2068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of tag group["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2070
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2071
    .local v4, "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagValue: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2072
    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2071
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_3c

    .line 2067
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2075
    .end local v0    # "i":I
    :cond_91
    return-void
.end method

.method private greylist-max-o readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .registers 6
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3996
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 3997
    .local v0, "byteOrder":S
    const-string v1, "ExifInterface"

    sparse-switch v0, :sswitch_data_3e

    .line 4009
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4004
    :sswitch_26
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_2f

    .line 4005
    const-string v2, "readExifSegment: Byte Align MM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    :cond_2f
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    .line 3999
    :sswitch_32
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_3b

    .line 4000
    const-string v2, "readExifSegment: Byte Align II"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    :cond_3b
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    :sswitch_data_3e
    .sparse-switch
        0x4949 -> :sswitch_32
        0x4d4d -> :sswitch_26
    .end sparse-switch
.end method

.method private greylist-max-o readExifSegment([BI)V
    .registers 5
    .param p1, "exifBytes"    # [B
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3956
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3960
    .local v0, "dataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    array-length v1, p1

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3963
    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3964
    return-void
.end method

.method private greylist-max-o readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 29
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "ifdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4043
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    invoke-static {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4045
    invoke-static {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-le v3, v4, :cond_20

    .line 4047
    return-void

    .line 4050
    :cond_20
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 4051
    .local v3, "numberOfDirectoryEntry":S
    invoke-static {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    mul-int/lit8 v5, v3, 0xc

    add-int/2addr v4, v5

    invoke-static {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    if-gt v4, v5, :cond_3f6

    if-gtz v3, :cond_37

    move/from16 v19, v3

    goto/16 :goto_3f8

    .line 4057
    :cond_37
    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v5, "ExifInterface"

    if-eqz v4, :cond_53

    .line 4058
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberOfDirectoryEntry: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    :cond_53
    const/4 v4, 0x0

    .local v4, "i":S
    :goto_54
    const/4 v8, 0x4

    if-ge v4, v3, :cond_359

    .line 4063
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 4064
    .local v9, "tagNumber":I
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    .line 4065
    .local v11, "dataFormat":I
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v12

    .line 4067
    .local v12, "numberOfComponents":I
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v13, v10

    .line 4070
    .local v13, "nextEntryOffset":J
    sget-object v10, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v10, v10, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/ExifInterface$ExifTag;

    .line 4072
    .local v10, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-boolean v15, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v15, :cond_a6

    .line 4073
    nop

    .line 4074
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-wide/16 v16, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4075
    if-eqz v10, :cond_8b

    iget-object v7, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_8c

    :cond_8b
    const/4 v7, 0x0

    :goto_8c
    move/from16 v18, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move/from16 v19, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .local v19, "numberOfDirectoryEntry":S
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v15, v6, v7, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 4073
    const-string v6, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 4072
    .end local v19    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_a6
    move/from16 v19, v3

    move/from16 v18, v8

    const-wide/16 v16, 0x0

    .line 4078
    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v19    # "numberOfDirectoryEntry":S
    :goto_ac
    const-wide/16 v6, 0x0

    .line 4079
    .local v6, "byteCount":J
    const/4 v3, 0x0

    .line 4080
    .local v3, "valid":Z
    if-nez v10, :cond_d2

    .line 4081
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v8, :cond_cf

    .line 4082
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v3

    move v8, v4

    goto/16 :goto_12e

    .line 4081
    :cond_cf
    move v15, v3

    move v8, v4

    goto :goto_12e

    .line 4084
    :cond_d2
    if-lez v11, :cond_112

    sget-object v8, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v8, v8

    if-lt v11, v8, :cond_dc

    move v15, v3

    move v8, v4

    goto :goto_114

    .line 4089
    :cond_dc
    move v15, v3

    move v8, v4

    .end local v3    # "valid":Z
    .end local v4    # "i":S
    .local v8, "i":S
    .local v15, "valid":Z
    int-to-long v3, v12

    sget-object v20, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    move-wide/from16 v21, v3

    aget v3, v20, v11

    int-to-long v3, v3

    mul-long v6, v21, v3

    .line 4090
    cmp-long v3, v6, v16

    if-ltz v3, :cond_f6

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v6, v3

    if-lez v3, :cond_f4

    goto :goto_f6

    .line 4096
    :cond_f4
    const/4 v3, 0x1

    .end local v15    # "valid":Z
    .restart local v3    # "valid":Z
    goto :goto_12f

    .line 4091
    .end local v3    # "valid":Z
    .restart local v15    # "valid":Z
    :cond_f6
    :goto_f6
    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_110

    .line 4092
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4099
    :cond_110
    move v3, v15

    goto :goto_12f

    .line 4084
    .end local v8    # "i":S
    .end local v15    # "valid":Z
    .restart local v3    # "valid":Z
    .restart local v4    # "i":S
    :cond_112
    move v15, v3

    move v8, v4

    .line 4085
    .end local v3    # "valid":Z
    .end local v4    # "i":S
    .restart local v8    # "i":S
    .restart local v15    # "valid":Z
    :goto_114
    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_12e

    .line 4086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4099
    .end local v8    # "i":S
    .end local v15    # "valid":Z
    .restart local v3    # "valid":Z
    .restart local v4    # "i":S
    :cond_12e
    :goto_12e
    move v3, v15

    .end local v4    # "i":S
    .restart local v8    # "i":S
    :goto_12f
    if-nez v3, :cond_138

    .line 4100
    invoke-virtual {v1, v13, v14}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4101
    move/from16 v21, v8

    goto/16 :goto_350

    .line 4106
    :cond_138
    const-wide/16 v20, 0x4

    cmp-long v4, v6, v20

    const-string v15, "Compression"

    if-lez v4, :cond_203

    .line 4107
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    .line 4108
    .local v4, "offset":I
    sget-boolean v20, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v20, :cond_163

    .line 4109
    move/from16 v20, v3

    .end local v3    # "valid":Z
    .local v20, "valid":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v8

    .end local v8    # "i":S
    .local v21, "i":S
    const-string v8, "seek to data offset: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_167

    .line 4108
    .end local v20    # "valid":Z
    .end local v21    # "i":S
    .restart local v3    # "valid":Z
    .restart local v8    # "i":S
    :cond_163
    move/from16 v20, v3

    move/from16 v21, v8

    .line 4111
    .end local v3    # "valid":Z
    .end local v8    # "i":S
    .restart local v20    # "valid":Z
    .restart local v21    # "i":S
    :goto_167
    iget v3, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v8, 0x7

    if-ne v3, v8, :cond_1c2

    .line 4112
    iget-object v3, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v8, "MakerNote"

    if-ne v3, v8, :cond_179

    .line 4114
    iput v4, v0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    move/from16 v22, v9

    move/from16 v23, v11

    goto :goto_1d4

    .line 4115
    :cond_179
    const/4 v3, 0x6

    if-ne v2, v3, :cond_1bd

    iget-object v8, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v3, "ThumbnailImage"

    if-ne v8, v3, :cond_1bd

    .line 4118
    iput v4, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 4119
    iput v12, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    .line 4121
    iget-object v3, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4122
    const/4 v8, 0x6

    invoke-static {v8, v3}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 4123
    .local v3, "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget v8, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v22, v9

    .end local v9    # "tagNumber":I
    .local v22, "tagNumber":I
    int-to-long v8, v8

    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4124
    invoke-static {v8, v9, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 4125
    .local v2, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget v8, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v8, v8

    move/from16 v23, v11

    .end local v11    # "dataFormat":I
    .local v23, "dataFormat":I
    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4126
    invoke-static {v8, v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4128
    .local v8, "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v18

    invoke-virtual {v9, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4129
    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v18

    const-string v11, "JPEGInterchangeFormat"

    invoke-virtual {v9, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4131
    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v18

    const-string v11, "JPEGInterchangeFormatLength"

    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4133
    .end local v2    # "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v8    # "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_1d4

    .line 4115
    .end local v22    # "tagNumber":I
    .end local v23    # "dataFormat":I
    .restart local v9    # "tagNumber":I
    .restart local v11    # "dataFormat":I
    :cond_1bd
    move/from16 v22, v9

    move/from16 v23, v11

    .end local v9    # "tagNumber":I
    .end local v11    # "dataFormat":I
    .restart local v22    # "tagNumber":I
    .restart local v23    # "dataFormat":I
    goto :goto_1d4

    .line 4134
    .end local v22    # "tagNumber":I
    .end local v23    # "dataFormat":I
    .restart local v9    # "tagNumber":I
    .restart local v11    # "dataFormat":I
    :cond_1c2
    move/from16 v22, v9

    move/from16 v23, v11

    .end local v9    # "tagNumber":I
    .end local v11    # "dataFormat":I
    .restart local v22    # "tagNumber":I
    .restart local v23    # "dataFormat":I
    iget v2, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1d4

    .line 4135
    iget-object v2, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v3, "JpgFromRaw"

    if-ne v2, v3, :cond_1d4

    .line 4136
    iput v4, v0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    .line 4139
    :cond_1d4
    :goto_1d4
    int-to-long v2, v4

    add-long/2addr v2, v6

    invoke-static {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v2, v2, v8

    if-gtz v2, :cond_1e4

    .line 4140
    int-to-long v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_20b

    .line 4143
    :cond_1e4
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_1fe

    .line 4144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    :cond_1fe
    invoke-virtual {v1, v13, v14}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4147
    goto/16 :goto_350

    .line 4106
    .end local v4    # "offset":I
    .end local v20    # "valid":Z
    .end local v21    # "i":S
    .end local v22    # "tagNumber":I
    .end local v23    # "dataFormat":I
    .local v3, "valid":Z
    .local v8, "i":S
    .restart local v9    # "tagNumber":I
    .restart local v11    # "dataFormat":I
    :cond_203
    move/from16 v20, v3

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v11

    .line 4152
    .end local v3    # "valid":Z
    .end local v8    # "i":S
    .end local v9    # "tagNumber":I
    .end local v11    # "dataFormat":I
    .restart local v20    # "valid":Z
    .restart local v21    # "i":S
    .restart local v22    # "tagNumber":I
    .restart local v23    # "dataFormat":I
    :goto_20b
    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4153
    .local v2, "nextIfdType":Ljava/lang/Integer;
    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_23b

    .line 4154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextIfdType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    :cond_23b
    if-eqz v2, :cond_2e0

    .line 4158
    const-wide/16 v3, -0x1

    .line 4160
    .local v3, "offset":J
    sparse-switch v23, :sswitch_data_3fa

    goto :goto_25a

    .line 4175
    :sswitch_243
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    int-to-long v3, v8

    .line 4176
    goto :goto_25a

    .line 4166
    :sswitch_249
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v8

    int-to-long v3, v8

    .line 4167
    goto :goto_25a

    .line 4170
    :sswitch_24f
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    .line 4171
    goto :goto_25a

    .line 4162
    :sswitch_254
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    int-to-long v3, v8

    .line 4163
    nop

    .line 4183
    :goto_25a
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v8, :cond_271

    .line 4184
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Offset: %d, tagName: %s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    :cond_271
    cmp-long v8, v3, v16

    if-lez v8, :cond_2c1

    invoke-static {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v3, v8

    if-gez v8, :cond_2c1

    .line 4191
    iget-object v8, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    long-to-int v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_296

    .line 4192
    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4193
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v0, v1, v8}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_2db

    .line 4195
    :cond_296
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v8, :cond_2db

    .line 4196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2db

    .line 4201
    :cond_2c1
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v8, :cond_2db

    .line 4202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    :cond_2db
    :goto_2db
    invoke-virtual {v1, v13, v14}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4207
    goto/16 :goto_350

    .line 4210
    .end local v3    # "offset":J
    :cond_2e0
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v3

    iget v4, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v3, v4

    .line 4211
    .local v3, "bytesOffset":I
    long-to-int v4, v6

    new-array v4, v4, [B

    .line 4212
    .local v4, "bytes":[B
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 4213
    move-object v8, v10

    .end local v10    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v8, "tag":Landroid/media/ExifInterface$ExifTag;
    new-instance v10, Landroid/media/ExifInterface$ExifAttribute;

    move-wide/from16 v16, v13

    .end local v13    # "nextEntryOffset":J
    .local v16, "nextEntryOffset":J
    int-to-long v13, v3

    move-wide/from16 v17, v16

    .end local v16    # "nextEntryOffset":J
    .local v17, "nextEntryOffset":J
    const/16 v16, 0x0

    move-wide/from16 v24, v17

    move-object/from16 v18, v2

    move-object v2, v15

    move-object v15, v4

    move-object v4, v8

    move-wide/from16 v8, v24

    move/from16 v11, v23

    .end local v2    # "nextIfdType":Ljava/lang/Integer;
    .end local v17    # "nextEntryOffset":J
    .end local v23    # "dataFormat":I
    .local v4, "tag":Landroid/media/ExifInterface$ExifTag;
    .local v8, "nextEntryOffset":J
    .restart local v11    # "dataFormat":I
    .local v15, "bytes":[B
    .local v18, "nextIfdType":Ljava/lang/Integer;
    invoke-direct/range {v10 .. v16}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface-IA;)V

    .line 4215
    .end local v11    # "dataFormat":I
    .local v10, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v23    # "dataFormat":I
    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, p2

    iget-object v13, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v11, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4220
    iget-object v11, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v13, "DNGVersion"

    if-ne v11, v13, :cond_317

    .line 4221
    const/4 v11, 0x3

    iput v11, v0, Landroid/media/ExifInterface;->mMimeType:I

    .line 4227
    :cond_317
    iget-object v11, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v13, "Make"

    if-eq v11, v13, :cond_323

    iget-object v11, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v13, "Model"

    if-ne v11, v13, :cond_331

    :cond_323
    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4228
    invoke-virtual {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "PENTAX"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_340

    :cond_331
    iget-object v11, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    if-ne v11, v2, :cond_344

    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4230
    invoke-virtual {v10, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v11, 0xffff

    if-ne v2, v11, :cond_344

    .line 4231
    :cond_340
    const/16 v2, 0x8

    iput v2, v0, Landroid/media/ExifInterface;->mMimeType:I

    .line 4235
    :cond_344
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    int-to-long v13, v2

    cmp-long v2, v13, v8

    if-eqz v2, :cond_350

    .line 4236
    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4062
    .end local v3    # "bytesOffset":I
    .end local v4    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v6    # "byteCount":J
    .end local v8    # "nextEntryOffset":J
    .end local v10    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v12    # "numberOfComponents":I
    .end local v15    # "bytes":[B
    .end local v18    # "nextIfdType":Ljava/lang/Integer;
    .end local v20    # "valid":Z
    .end local v22    # "tagNumber":I
    .end local v23    # "dataFormat":I
    :cond_350
    :goto_350
    add-int/lit8 v4, v21, 0x1

    int-to-short v4, v4

    move/from16 v2, p2

    move/from16 v3, v19

    .end local v21    # "i":S
    .local v4, "i":S
    goto/16 :goto_54

    .end local v19    # "numberOfDirectoryEntry":S
    .local v3, "numberOfDirectoryEntry":S
    :cond_359
    move/from16 v19, v3

    move/from16 v21, v4

    move/from16 v18, v8

    const-wide/16 v16, 0x0

    .line 4240
    .end local v3    # "numberOfDirectoryEntry":S
    .end local v4    # "i":S
    .restart local v19    # "numberOfDirectoryEntry":S
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-gt v2, v3, :cond_3f5

    .line 4241
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 4242
    .local v2, "nextIfdOffset":I
    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_386

    .line 4243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "nextIfdOffset: %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    :cond_386
    int-to-long v3, v2

    cmp-long v3, v3, v16

    if-lez v3, :cond_3db

    invoke-static {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-ge v2, v3, :cond_3db

    .line 4249
    iget-object v3, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c0

    .line 4250
    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4252
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b1

    .line 4253
    move/from16 v3, v18

    invoke-direct {v0, v1, v3}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_3f5

    .line 4254
    :cond_3b1
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3f5

    .line 4255
    invoke-direct {v0, v1, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_3f5

    .line 4258
    :cond_3c0
    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_3f5

    .line 4259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f5

    .line 4264
    :cond_3db
    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_3f5

    .line 4265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    .end local v2    # "nextIfdOffset":I
    :cond_3f5
    :goto_3f5
    return-void

    .line 4051
    .end local v19    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_3f6
    move/from16 v19, v3

    .line 4054
    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v19    # "numberOfDirectoryEntry":S
    :goto_3f8
    return-void

    nop

    :sswitch_data_3fa
    .sparse-switch
        0x3 -> :sswitch_254
        0x4 -> :sswitch_24f
        0x8 -> :sswitch_249
        0x9 -> :sswitch_243
        0xd -> :sswitch_243
    .end sparse-switch
.end method

.method private greylist-max-o removeAttribute(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 1957
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 1958
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1960
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method private blacklist replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "ifdType"    # I
    .param p2, "invalidTag"    # Ljava/lang/String;
    .param p3, "validTag"    # Ljava/lang/String;

    .line 5267
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 5268
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 5269
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p1

    .line 5270
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5269
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5271
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5274
    :cond_2a
    return-void
.end method

.method private greylist-max-o retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 7
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4281
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    .line 4282
    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4283
    .local v0, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 4284
    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4286
    .local v1, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_1c

    if-nez v1, :cond_33

    .line 4288
    :cond_1c
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    .line 4289
    const-string v3, "JPEGInterchangeFormat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 4290
    .local v2, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_33

    .line 4291
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4292
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4295
    .local v3, "jpegInterchangeFormat":I
    invoke-direct {p0, p1, v3, p2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 4298
    .end local v2    # "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "jpegInterchangeFormat":I
    :cond_33
    return-void
.end method

.method private greylist-max-o saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 16
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3527
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 3528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveJpegAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    :cond_2c
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3532
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3534
    .local v1, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const-string v3, "Invalid marker"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_131

    .line 3537
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3538
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/16 v5, -0x28

    if-ne v2, v5, :cond_12b

    .line 3541
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3546
    const/4 v2, 0x0

    .line 3547
    .local v2, "xmpAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v5, "Xmp"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_68

    iget-boolean v6, p0, Landroid/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    if-eqz v6, :cond_68

    .line 3548
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3552
    :cond_68
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3553
    const/16 v6, -0x1f

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3554
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3557
    if-eqz v2, :cond_7c

    .line 3558
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3561
    :cond_7c
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 3564
    .local v5, "bytes":[B
    :goto_80
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 3565
    .local v6, "marker":B
    if-ne v6, v4, :cond_125

    .line 3568
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 3569
    const-string v8, "Invalid length"

    sparse-switch v6, :sswitch_data_138

    .line 3614
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3615
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3616
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    .line 3617
    .local v9, "length":I
    invoke-virtual {v1, v9}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3618
    add-int/lit8 v9, v9, -0x2

    .line 3619
    if-ltz v9, :cond_11f

    goto :goto_10a

    .line 3571
    .end local v9    # "length":I
    :sswitch_a1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    .line 3572
    .restart local v9    # "length":I
    if-ltz v9, :cond_fa

    .line 3575
    const/4 v10, 0x6

    new-array v11, v10, [B

    .line 3576
    .local v11, "identifier":[B
    if-lt v9, v10, :cond_d5

    .line 3577
    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_cd

    .line 3580
    sget-object v12, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_d5

    .line 3582
    add-int/lit8 v10, v9, -0x6

    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v10

    add-int/lit8 v12, v9, -0x6

    if-ne v10, v12, :cond_c7

    goto :goto_11d

    .line 3583
    :cond_c7
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3578
    :cond_cd
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid exif"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3589
    :cond_d5
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3590
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3591
    add-int/lit8 v8, v9, 0x2

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3592
    if-lt v9, v10, :cond_e7

    .line 3593
    add-int/lit8 v9, v9, -0x6

    .line 3594
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3597
    :cond_e7
    :goto_e7
    if-lez v9, :cond_11d

    array-length v8, v5

    .line 3598
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3597
    invoke-virtual {v0, v5, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v10, v8

    .local v10, "read":I
    if-ltz v8, :cond_11d

    .line 3599
    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 3600
    sub-int/2addr v9, v10

    goto :goto_e7

    .line 3573
    .end local v10    # "read":I
    .end local v11    # "identifier":[B
    :cond_fa
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3606
    .end local v9    # "length":I
    :sswitch_100
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3607
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3609
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3610
    return-void

    .line 3623
    .restart local v9    # "length":I
    :goto_10a
    if-lez v9, :cond_11d

    array-length v8, v5

    .line 3624
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3623
    invoke-virtual {v0, v5, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v10, v8

    .restart local v10    # "read":I
    if-ltz v8, :cond_11d

    .line 3625
    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 3626
    sub-int/2addr v9, v10

    goto :goto_10a

    .line 3631
    .end local v6    # "marker":B
    .end local v9    # "length":I
    .end local v10    # "read":I
    :cond_11d
    :goto_11d
    goto/16 :goto_80

    .line 3620
    .restart local v6    # "marker":B
    .restart local v9    # "length":I
    :cond_11f
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3566
    .end local v9    # "length":I
    :cond_125
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3539
    .end local v2    # "xmpAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "bytes":[B
    .end local v6    # "marker":B
    :cond_12b
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3535
    :cond_131
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_138
    .sparse-switch
        -0x27 -> :sswitch_100
        -0x26 -> :sswitch_100
        -0x1f -> :sswitch_a1
    .end sparse-switch
.end method

.method private blacklist savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3636
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 3637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePngAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    :cond_2c
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3641
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3644
    .local v1, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    sget-object v2, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3651
    iget v2, p0, Landroid/media/ExifInterface;->mExifOffset:I

    const/4 v3, 0x4

    if-nez v2, :cond_51

    .line 3653
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 3654
    .local v2, "ihdrChunkLength":I
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3655
    add-int/lit8 v4, v2, 0x4

    add-int/2addr v4, v3

    invoke-static {v0, v1, v4}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3657
    .end local v2    # "ihdrChunkLength":I
    goto :goto_66

    .line 3659
    :cond_51
    iget v2, p0, Landroid/media/ExifInterface;->mExifOffset:I

    sget-object v4, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v4, v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    sub-int/2addr v2, v3

    .line 3662
    .local v2, "copyLength":I
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3664
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 3665
    .local v4, "exifChunkLength":I
    add-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 3669
    .end local v2    # "copyLength":I
    .end local v4    # "exifChunkLength":I
    :goto_66
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3672
    .local v2, "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_6b
    new-instance v4, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v4, v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3676
    .local v4, "exifDataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-direct {p0, v4}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3677
    iget-object v5, v4, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v5, Ljava/io/ByteArrayOutputStream;

    .line 3678
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 3680
    .local v5, "exifBytes":[B
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3682
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 3683
    .local v6, "crc":Ljava/util/zip/CRC32;
    array-length v7, v5

    sub-int/2addr v7, v3

    invoke-virtual {v6, v5, v3, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 3684
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    long-to-int v3, v7

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V
    :try_end_92
    .catchall {:try_start_6b .. :try_end_92} :catchall_99

    .line 3685
    .end local v4    # "exifDataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v5    # "exifBytes":[B
    .end local v6    # "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3687
    .end local v2    # "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3688
    return-void

    .line 3669
    .restart local v2    # "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_99
    move-exception v3

    :try_start_9a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a2
    throw v3
.end method

.method private blacklist saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 25
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3724
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 3725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveWebpAttributes starting with (inputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", outputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ExifInterface"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    :cond_32
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v2, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    move-object v4, v0

    .line 3730
    .local v4, "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    move-object v5, v0

    .line 3734
    .local v5, "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-static {v4, v5, v0}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3736
    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v0, v0

    const/4 v6, 0x4

    add-int/2addr v0, v6

    invoke-virtual {v4, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3739
    const/4 v7, 0x0

    .line 3741
    .local v7, "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v0

    .line 3742
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3746
    .local v0, "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    iget v8, v1, Landroid/media/ExifInterface;->mExifOffset:I

    if-eqz v8, :cond_87

    .line 3749
    sget-object v8, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v8, v8

    add-int/2addr v8, v6

    sget-object v9, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v9, v9

    add-int/2addr v8, v9

    .line 3751
    .local v8, "bytesRead":I
    iget v9, v1, Landroid/media/ExifInterface;->mExifOffset:I

    sub-int/2addr v9, v8

    sub-int/2addr v9, v6

    sub-int/2addr v9, v6

    invoke-static {v4, v0, v9}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3756
    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3757
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 3760
    .local v6, "exifChunkLength":I
    rem-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_7f

    .line 3761
    add-int/lit8 v6, v6, 0x1

    .line 3763
    :cond_7f
    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3766
    invoke-direct {v1, v0}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3767
    .end local v6    # "exifChunkLength":I
    .end local v8    # "bytesRead":I
    goto/16 :goto_201

    .line 3769
    :cond_87
    new-array v8, v6, [B

    .line 3770
    .local v8, "firstChunkType":[B
    invoke-virtual {v4, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v9

    array-length v10, v8

    if-ne v9, v10, :cond_21c

    .line 3775
    sget-object v9, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v9, :cond_ef

    .line 3777
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v9

    .line 3779
    .local v9, "size":I
    rem-int/lit8 v13, v9, 0x2

    if-ne v13, v12, :cond_a7

    add-int/lit8 v13, v9, 0x1

    goto :goto_a8

    :cond_a7
    move v13, v9

    :goto_a8
    new-array v13, v13, [B

    .line 3780
    .local v13, "data":[B
    invoke-virtual {v4, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3783
    aget-byte v14, v13, v11

    or-int/2addr v10, v14

    int-to-byte v10, v10

    aput-byte v10, v13, v11

    .line 3786
    aget-byte v10, v13, v11

    shr-int/2addr v10, v12

    and-int/2addr v10, v12

    if-ne v10, v12, :cond_ba

    move v11, v12

    .line 3789
    .local v11, "containsAnimation":Z
    :cond_ba
    sget-object v10, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-virtual {v0, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3790
    invoke-virtual {v0, v9}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3791
    invoke-virtual {v0, v13}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3800
    if-eqz v11, :cond_e3

    .line 3801
    sget-object v10, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    const/4 v12, 0x0

    invoke-direct {v1, v4, v0, v10, v12}, Landroid/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 3805
    :goto_cd
    new-array v10, v6, [B

    .line 3806
    .local v10, "type":[B
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 3807
    .local v12, "read":I
    sget-object v14, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    invoke-static {v10, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-nez v14, :cond_df

    .line 3809
    invoke-direct {v1, v0}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3810
    goto :goto_ed

    .line 3812
    :cond_df
    invoke-direct {v1, v4, v0, v10}, Landroid/media/ExifInterface;->copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 3813
    .end local v10    # "type":[B
    .end local v12    # "read":I
    goto :goto_cd

    .line 3816
    :cond_e3
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    sget-object v10, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-direct {v1, v4, v0, v6, v10}, Landroid/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 3818
    invoke-direct {v1, v0}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3820
    .end local v9    # "size":I
    .end local v11    # "containsAnimation":Z
    .end local v13    # "data":[B
    :goto_ed
    goto/16 :goto_201

    :cond_ef
    sget-object v9, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_ff

    sget-object v9, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 3821
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_201

    .line 3822
    :cond_ff
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v9

    .line 3823
    .restart local v9    # "size":I
    move v13, v9

    .line 3825
    .local v13, "bytesToRead":I
    rem-int/lit8 v14, v9, 0x2

    if-ne v14, v12, :cond_10a

    .line 3826
    add-int/lit8 v13, v13, 0x1

    .line 3830
    :cond_10a
    const/4 v14, 0x0

    .line 3831
    .local v14, "widthAndHeight":I
    const/4 v15, 0x0

    .line 3832
    .local v15, "width":I
    const/16 v16, 0x0

    .line 3833
    .local v16, "height":I
    const/16 v17, 0x0

    .line 3835
    .local v17, "alpha":Z
    move/from16 v18, v6

    const/4 v6, 0x3

    move/from16 v19, v10

    new-array v10, v6, [B

    .line 3837
    .local v10, "vp8Frame":[B
    move/from16 v20, v11

    sget-object v11, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v8, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    move/from16 v21, v12

    if-eqz v11, :cond_153

    .line 3838
    invoke-virtual {v4, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3841
    new-array v6, v6, [B

    .line 3842
    .local v6, "vp8Signature":[B
    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v11

    array-length v12, v6

    if-ne v11, v12, :cond_14b

    sget-object v11, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 3843
    invoke-static {v11, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_14b

    .line 3849
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    move v14, v11

    .line 3850
    shl-int/lit8 v11, v14, 0x12

    shr-int/lit8 v15, v11, 0x12

    .line 3851
    shl-int/lit8 v11, v14, 0x2

    shr-int/lit8 v16, v11, 0x12

    .line 3852
    array-length v11, v10

    array-length v12, v6

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x4

    sub-int/2addr v13, v11

    .end local v6    # "vp8Signature":[B
    goto :goto_18b

    .line 3844
    .restart local v6    # "vp8Signature":[B
    :cond_14b
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Encountered error while checking VP8 signature"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v11

    .line 3853
    .end local v6    # "vp8Signature":[B
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :cond_153
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v8, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_18b

    .line 3855
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v6

    .line 3856
    .local v6, "vp8lSignature":B
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_183

    .line 3862
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    move v14, v11

    .line 3865
    shl-int/lit8 v11, v14, 0x12

    shr-int/lit8 v11, v11, 0x12

    add-int/lit8 v15, v11, 0x1

    .line 3866
    shl-int/lit8 v11, v14, 0x4

    shr-int/lit8 v11, v11, 0x12

    add-int/lit8 v16, v11, 0x1

    .line 3868
    const/high16 v11, 0x10000000

    and-int/2addr v11, v14

    if-eqz v11, :cond_17c

    move/from16 v12, v21

    goto :goto_17e

    :cond_17c
    move/from16 v12, v20

    :goto_17e
    move/from16 v17, v12

    .line 3869
    add-int/lit8 v13, v13, -0x5

    goto :goto_18c

    .line 3857
    :cond_183
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Encountered error while checking VP8L signature"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v11

    .line 3853
    .end local v6    # "vp8lSignature":B
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :cond_18b
    :goto_18b
    nop

    .line 3873
    :goto_18c
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-virtual {v0, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3874
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3875
    new-array v6, v6, [B

    .line 3877
    .local v6, "data":[B
    if-eqz v17, :cond_1a1

    .line 3878
    aget-byte v11, v6, v20

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v6, v20

    .line 3881
    :cond_1a1
    aget-byte v11, v6, v20

    or-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v6, v20

    .line 3883
    add-int/lit8 v15, v15, -0x1

    .line 3884
    add-int/lit8 v11, v16, -0x1

    .line 3885
    .end local v16    # "height":I
    .local v11, "height":I
    int-to-byte v12, v15

    aput-byte v12, v6, v18

    .line 3886
    shr-int/lit8 v12, v15, 0x8

    int-to-byte v12, v12

    const/16 v16, 0x5

    aput-byte v12, v6, v16

    .line 3887
    shr-int/lit8 v12, v15, 0x10

    int-to-byte v12, v12

    const/16 v16, 0x6

    aput-byte v12, v6, v16

    .line 3888
    const/16 v16, 0x7

    int-to-byte v12, v11

    aput-byte v12, v6, v16

    .line 3889
    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v19

    .line 3890
    shr-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    const/16 v16, 0x9

    aput-byte v12, v6, v16

    .line 3891
    invoke-virtual {v0, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3894
    invoke-virtual {v0, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3895
    invoke-virtual {v0, v9}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3896
    sget-object v12, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v8, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_1eb

    .line 3897
    invoke-virtual {v0, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3898
    sget-object v12, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-virtual {v0, v12}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3899
    invoke-virtual {v0, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_1fb

    .line 3900
    :cond_1eb
    sget-object v12, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v8, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_1fb

    .line 3901
    const/16 v12, 0x2f

    invoke-virtual {v0, v12}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write(I)V

    .line 3902
    invoke-virtual {v0, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3904
    :cond_1fb
    :goto_1fb
    invoke-static {v4, v0, v13}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3907
    invoke-direct {v1, v0}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3912
    .end local v6    # "data":[B
    .end local v8    # "firstChunkType":[B
    .end local v9    # "size":I
    .end local v10    # "vp8Frame":[B
    .end local v11    # "height":I
    .end local v13    # "bytesToRead":I
    .end local v14    # "widthAndHeight":I
    .end local v15    # "width":I
    .end local v17    # "alpha":Z
    :cond_201
    :goto_201
    invoke-static {v4, v0}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3915
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    sget-object v8, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v8, v8

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3917
    sget-object v6, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    invoke-virtual {v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3918
    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_217} :catch_226
    .catchall {:try_start_51 .. :try_end_217} :catchall_224

    .line 3922
    .end local v0    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-static {v7}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 3923
    nop

    .line 3924
    return-void

    .line 3771
    .restart local v0    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v8    # "firstChunkType":[B
    :cond_21c
    :try_start_21c
    new-instance v6, Ljava/io/IOException;

    const-string v9, "Encountered invalid length while parsing WebP chunk type"

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v6
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_224} :catch_226
    .catchall {:try_start_21c .. :try_end_224} :catchall_224

    .line 3922
    .end local v0    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v8    # "firstChunkType":[B
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :catchall_224
    move-exception v0

    goto :goto_22f

    .line 3919
    :catch_226
    move-exception v0

    .line 3920
    .local v0, "e":Ljava/lang/Exception;
    :try_start_227
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Failed to save WebP file"

    invoke-direct {v6, v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v6
    :try_end_22f
    .catchall {:try_start_227 .. :try_end_22f} :catchall_224

    .line 3922
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :goto_22f
    invoke-static {v7}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 3923
    throw v0
.end method

.method private greylist-max-o setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 5
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4302
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 4304
    .local v0, "thumbnailData":Ljava/util/HashMap;
    nop

    .line 4305
    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4306
    .local v1, "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_2c

    .line 4307
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 4308
    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    sparse-switch v2, :sswitch_data_30

    goto :goto_2b

    .line 4310
    :sswitch_1e
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 4311
    goto :goto_2b

    .line 4315
    :sswitch_22
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 4316
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_2b
    :goto_2b
    goto :goto_2f

    .line 4323
    :cond_2c
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 4325
    :goto_2f
    return-void

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_22
        0x6 -> :sswitch_1e
        0x7 -> :sswitch_22
    .end sparse-switch
.end method

.method private greylist-max-o swapBasedOnImageSize(II)V
    .registers 14
    .param p1, "firstIfdType"    # I
    .param p2, "secondIfdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5227
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_8f

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_8f

    .line 5234
    :cond_18
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 5235
    const-string v2, "ImageLength"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 5236
    .local v0, "firstImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    .line 5237
    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 5238
    .local v3, "firstImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 5239
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 5240
    .local v2, "secondImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 5241
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 5243
    .local v4, "secondImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_85

    if-nez v3, :cond_49

    goto :goto_85

    .line 5247
    :cond_49
    if-eqz v2, :cond_7b

    if-nez v4, :cond_4e

    goto :goto_7b

    .line 5252
    :cond_4e
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 5253
    .local v1, "firstImageLengthValue":I
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 5254
    .local v5, "firstImageWidthValue":I
    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    .line 5255
    .local v6, "secondImageLengthValue":I
    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    .line 5257
    .local v7, "secondImageWidthValue":I
    if-ge v1, v6, :cond_8e

    if-ge v5, v7, :cond_8e

    .line 5259
    iget-object v8, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, p1

    .line 5260
    .local v8, "tempMap":Ljava/util/HashMap;
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v10, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    aput-object v10, v9, p1

    .line 5261
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aput-object v8, v9, p2

    goto :goto_8e

    .line 5248
    .end local v1    # "firstImageLengthValue":I
    .end local v5    # "firstImageWidthValue":I
    .end local v6    # "secondImageLengthValue":I
    .end local v7    # "secondImageWidthValue":I
    .end local v8    # "tempMap":Ljava/util/HashMap;
    :cond_7b
    :goto_7b
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_8e

    .line 5249
    const-string v5, "Second image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 5244
    :cond_85
    :goto_85
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_8e

    .line 5245
    const-string v5, "First image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    :cond_8e
    :goto_8e
    return-void

    .line 5228
    .end local v0    # "firstImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v2    # "secondImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "firstImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v4    # "secondImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_8f
    :goto_8f
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_98

    .line 5229
    const-string v0, "Cannot perform swap since only one image data exists"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    :cond_98
    return-void
.end method

.method private greylist-max-o updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/ExifInterface$ExifAttribute;

    .line 1941
    const/4 v0, 0x0

    .line 1942
    .local v0, "updated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_1c

    .line 1943
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1944
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    const/4 v0, 0x1

    .line 1942
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1948
    .end local v1    # "i":I
    :cond_1c
    return v0
.end method

.method private greylist-max-o updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 20
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4556
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 4557
    const-string v2, "DefaultCropSize"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4559
    .local v1, "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    .line 4560
    const-string v3, "SensorTopBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 4561
    .local v2, "topBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    .line 4562
    const-string v4, "SensorLeftBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4563
    .local v3, "leftBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 4564
    const-string v5, "SensorBottomBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4565
    .local v4, "bottomBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 4566
    const-string v6, "SensorRightBorder"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ExifInterface$ExifAttribute;

    .line 4568
    .local v5, "rightBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v6, "ImageLength"

    const-string v7, "ImageWidth"

    if-eqz v1, :cond_8e

    .line 4571
    iget v8, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_64

    .line 4572
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4573
    invoke-static {v1, v8}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/media/ExifInterface$Rational;

    .line 4574
    .local v8, "defaultCropSizeValue":[Landroid/media/ExifInterface$Rational;
    aget-object v9, v8, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4575
    invoke-static {v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4576
    .local v9, "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    aget-object v10, v8, v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4577
    invoke-static {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4578
    .local v8, "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_7d

    .line 4579
    .end local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_64
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4580
    invoke-static {v1, v8}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 4581
    .local v8, "defaultCropSizeValue":[I
    aget v9, v8, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4582
    invoke-static {v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4583
    .restart local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    aget v10, v8, v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4584
    invoke-static {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v10

    move-object v8, v10

    .line 4586
    .local v8, "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_7d
    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4587
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, p2

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4588
    .end local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v16, v1

    goto :goto_db

    :cond_8e
    if-eqz v2, :cond_d6

    if-eqz v3, :cond_d6

    if-eqz v4, :cond_d6

    if-eqz v5, :cond_d6

    .line 4591
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v8}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v8

    .line 4592
    .local v8, "topBorderValue":I
    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v9

    .line 4593
    .local v9, "bottomBorderValue":I
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v10}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v10

    .line 4594
    .local v10, "rightBorderValue":I
    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v11

    .line 4595
    .local v11, "leftBorderValue":I
    if-le v9, v8, :cond_d3

    if-le v10, v11, :cond_d3

    .line 4596
    sub-int v12, v9, v8

    .line 4597
    .local v12, "length":I
    sub-int v13, v10, v11

    .line 4598
    .local v13, "width":I
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4599
    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 4600
    .local v14, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4601
    invoke-static {v13, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 4602
    .local v15, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v16, v1

    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v16, "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4603
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    .line 4595
    .end local v12    # "length":I
    .end local v13    # "width":I
    .end local v14    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_d3
    move-object/from16 v16, v1

    .line 4605
    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v8    # "topBorderValue":I
    .end local v9    # "bottomBorderValue":I
    .end local v10    # "rightBorderValue":I
    .end local v11    # "leftBorderValue":I
    .restart local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_d5
    goto :goto_db

    .line 4588
    .end local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_d6
    move-object/from16 v16, v1

    .line 4606
    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-direct/range {p0 .. p2}, Landroid/media/ExifInterface;->retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4608
    :goto_db
    return-void
.end method

.method private blacklist validateImages()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4500
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4501
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4502
    invoke-direct {p0, v1, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4508
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 4509
    const-string v5, "PixelXDimension"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4510
    .local v3, "pixelXDimAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    .line 4511
    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4512
    .local v4, "pixelYDimAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v3, :cond_3b

    if-eqz v4, :cond_3b

    .line 4513
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4514
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4519
    :cond_3b
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_60

    .line 4520
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v1

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 4521
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v8, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v1

    aput-object v8, v7, v2

    .line 4522
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    aput-object v8, v7, v1

    .line 4527
    :cond_60
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-nez v7, :cond_71

    .line 4528
    const-string v7, "ExifInterface"

    const-string v8, "No image meets the size requirements of a thumbnail image."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4532
    :cond_71
    const-string v7, "ThumbnailOrientation"

    const-string v8, "Orientation"

    invoke-direct {p0, v0, v7, v8}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4533
    const-string v9, "ThumbnailImageLength"

    invoke-direct {p0, v0, v9, v5}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4534
    const-string v10, "ThumbnailImageWidth"

    invoke-direct {p0, v0, v10, v6}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4535
    invoke-direct {p0, v1, v7, v8}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4536
    invoke-direct {p0, v1, v9, v5}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4537
    invoke-direct {p0, v1, v10, v6}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4538
    invoke-direct {p0, v2, v8, v7}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4539
    invoke-direct {p0, v2, v5, v9}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4540
    invoke-direct {p0, v2, v6, v10}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4541
    return-void
.end method

.method private blacklist writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I
    .registers 21
    .param p1, "dataOutputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4613
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [I

    .line 4614
    .local v2, "ifdOffsets":[I
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    new-array v3, v3, [I

    .line 4617
    .local v3, "ifdDataSizes":[I
    sget-object v4, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v5, :cond_1e

    aget-object v8, v4, v7

    .line 4618
    .local v8, "tag":Landroid/media/ExifInterface$ExifTag;
    iget-object v9, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4617
    .end local v8    # "tag":Landroid/media/ExifInterface$ExifTag;
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 4621
    :cond_1e
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const-string v5, "StripByteCounts"

    const-string v7, "JPEGInterchangeFormatLength"

    const-string v8, "StripOffsets"

    const-string v9, "JPEGInterchangeFormat"

    if-eqz v4, :cond_3b

    .line 4622
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_35

    .line 4623
    invoke-direct {v0, v8}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4624
    invoke-direct {v0, v5}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    goto :goto_3b

    .line 4626
    :cond_35
    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4627
    invoke-direct {v0, v7}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4632
    :cond_3b
    :goto_3b
    const/4 v4, 0x0

    .local v4, "ifdType":I
    :goto_3c
    sget-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v10, v10

    if-ge v4, v10, :cond_74

    .line 4633
    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_4f
    if-ge v12, v11, :cond_6f

    aget-object v13, v10, v12

    .line 4634
    .local v13, "obj":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Ljava/util/Map$Entry;

    .line 4635
    .local v14, "entry":Ljava/util/Map$Entry;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_6a

    .line 4636
    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v15, v15, v4

    const/16 v16, 0x0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 4635
    :cond_6a
    const/16 v16, 0x0

    .line 4633
    .end local v13    # "obj":Ljava/lang/Object;
    .end local v14    # "entry":Ljava/util/Map$Entry;
    :goto_6c
    add-int/lit8 v12, v12, 0x1

    goto :goto_4f

    .line 4632
    :cond_6f
    const/16 v16, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_74
    const/16 v16, 0x0

    .line 4643
    .end local v4    # "ifdType":I
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v10, 0x0

    if-nez v4, :cond_96

    .line 4644
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v16

    sget-object v12, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v12, v12, v6

    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4645
    invoke-static {v10, v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 4644
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4647
    :cond_96
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v12, 0x2

    aget-object v4, v4, v12

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b4

    .line 4648
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v16

    sget-object v13, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v13, v13, v12

    iget-object v13, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4649
    invoke-static {v10, v11, v14}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 4648
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4651
    :cond_b4
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x3

    aget-object v4, v4, v13

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d2

    .line 4652
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v14, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v14, v14, v13

    iget-object v14, v14, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4653
    invoke-static {v10, v11, v15}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 4652
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4655
    :cond_d2
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v14, 0x4

    if-eqz v4, :cond_11e

    .line 4656
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_fd

    .line 4657
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4658
    move/from16 v15, v16

    invoke-static {v15, v7}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 4657
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4659
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4660
    invoke-static {v7, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 4659
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v15, v12

    move/from16 v17, v13

    goto :goto_121

    .line 4662
    :cond_fd
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4663
    invoke-static {v10, v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4662
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4664
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget v5, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move v15, v12

    move/from16 v17, v13

    int-to-long v12, v5

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4665
    invoke-static {v12, v13, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4664
    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_121

    .line 4655
    :cond_11e
    move v15, v12

    move/from16 v17, v13

    .line 4671
    :goto_121
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_122
    sget-object v5, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_15c

    .line 4672
    const/4 v5, 0x0

    .line 4673
    .local v5, "sum":I
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_134
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_152

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 4674
    .local v12, "entry":Ljava/util/Map$Entry;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/ExifInterface$ExifAttribute;

    .line 4675
    .local v13, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move/from16 v18, v15

    invoke-virtual {v13}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 4676
    .local v15, "size":I
    if-le v15, v14, :cond_14f

    .line 4677
    add-int/2addr v5, v15

    .line 4679
    .end local v12    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "size":I
    :cond_14f
    move/from16 v15, v18

    goto :goto_134

    .line 4680
    :cond_152
    move/from16 v18, v15

    aget v7, v3, v4

    add-int/2addr v7, v5

    aput v7, v3, v4

    .line 4671
    .end local v5    # "sum":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_122

    :cond_15c
    move/from16 v18, v15

    .line 4686
    .end local v4    # "i":I
    const/16 v4, 0x8

    .line 4687
    .local v4, "position":I
    const/4 v5, 0x0

    .local v5, "ifdType":I
    :goto_161
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_186

    .line 4688
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_183

    .line 4689
    aput v4, v2, v5

    .line 4690
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v14

    aget v12, v3, v5

    add-int/2addr v7, v12

    add-int/2addr v4, v7

    .line 4687
    :cond_183
    add-int/lit8 v5, v5, 0x1

    goto :goto_161

    .line 4693
    .end local v5    # "ifdType":I
    :cond_186
    iget-boolean v5, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v5, :cond_1b3

    .line 4694
    move v5, v4

    .line 4695
    .local v5, "thumbnailOffset":I
    iget-boolean v7, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v7, :cond_19d

    .line 4696
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v14

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4697
    invoke-static {v5, v9}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4696
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ab

    .line 4699
    :cond_19d
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v14

    int-to-long v12, v5

    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4700
    invoke-static {v12, v13, v8}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4699
    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4703
    :goto_1ab
    iget v7, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v7, v5

    iput v7, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4704
    iget v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v4, v7

    .line 4707
    .end local v5    # "thumbnailOffset":I
    :cond_1b3
    move v5, v4

    .line 4708
    .local v5, "totalSize":I
    iget v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    if-ne v7, v14, :cond_1ba

    .line 4710
    add-int/lit8 v5, v5, 0x8

    .line 4712
    :cond_1ba
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_1f7

    .line 4713
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1bf
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_1f7

    .line 4714
    nop

    .line 4715
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget v9, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v12, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aget v13, v3, v7

    .line 4716
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v8, v9, v12, v13, v15}, [Ljava/lang/Object;

    move-result-object v8

    .line 4714
    const-string v9, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ExifInterface"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4713
    add-int/lit8 v7, v7, 0x1

    goto :goto_1bf

    .line 4721
    .end local v7    # "i":I
    :cond_1f7
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_219

    .line 4722
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v7, v7, v16

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v6

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v2, v6

    int-to-long v12, v9

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4723
    invoke-static {v12, v13, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4722
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4725
    :cond_219
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v18

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_23b

    .line 4726
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v7, v7, v16

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v18

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v2, v18

    int-to-long v12, v9

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4727
    invoke-static {v12, v13, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4726
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4729
    :cond_23b
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v17

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_25b

    .line 4730
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v17

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v2, v17

    int-to-long v12, v9

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v13, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4734
    :cond_25b
    iget v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    sparse-switch v7, :sswitch_data_3a0

    goto :goto_27c

    .line 4747
    :sswitch_261
    sget-object v7, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4748
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_27c

    .line 4742
    :sswitch_26a
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 4743
    sget-object v7, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4744
    goto :goto_27c

    .line 4737
    :sswitch_273
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4738
    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4739
    nop

    .line 4753
    :goto_27c
    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v8, :cond_285

    .line 4754
    const/16 v7, 0x4d4d

    goto :goto_287

    :cond_285
    const/16 v7, 0x4949

    .line 4753
    :goto_287
    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 4755
    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4756
    const/16 v7, 0x2a

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4757
    const-wide/16 v7, 0x8

    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4760
    const/4 v7, 0x0

    .local v7, "ifdType":I
    :goto_29a
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_37f

    .line 4761
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_376

    .line 4764
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4767
    aget v8, v2, v7

    add-int/lit8 v8, v8, 0x2

    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    add-int/2addr v8, v14

    .line 4768
    .local v8, "dataOffset":I
    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2d0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_329

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 4770
    .restart local v12    # "entry":Ljava/util/Map$Entry;
    sget-object v13, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v13, v13, v7

    .line 4771
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/ExifInterface$ExifTag;

    .line 4772
    .local v13, "tag":Landroid/media/ExifInterface$ExifTag;
    iget v15, v13, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 4773
    .local v15, "tagNumber":I
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Landroid/media/ExifInterface$ExifAttribute;

    .line 4774
    .local v6, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v6}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v10

    .line 4776
    .local v10, "size":I
    invoke-virtual {v1, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4777
    iget v11, v6, Landroid/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4778
    iget v11, v6, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 4779
    if-le v10, v14, :cond_30f

    .line 4780
    move/from16 v17, v15

    .end local v15    # "tagNumber":I
    .local v17, "tagNumber":I
    int-to-long v14, v8

    invoke-virtual {v1, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4781
    add-int/2addr v8, v10

    goto :goto_324

    .line 4783
    .end local v17    # "tagNumber":I
    .restart local v15    # "tagNumber":I
    :cond_30f
    move/from16 v17, v15

    .end local v15    # "tagNumber":I
    .restart local v17    # "tagNumber":I
    iget-object v14, v6, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4785
    const/4 v11, 0x4

    if-ge v10, v11, :cond_324

    .line 4786
    move v14, v10

    .local v14, "i":I
    :goto_31a
    if-ge v14, v11, :cond_324

    .line 4787
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 4786
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x4

    goto :goto_31a

    .line 4791
    .end local v6    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v10    # "size":I
    .end local v12    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v14    # "i":I
    .end local v17    # "tagNumber":I
    :cond_324
    :goto_324
    const/4 v6, 0x1

    const-wide/16 v10, 0x0

    const/4 v14, 0x4

    goto :goto_2d0

    .line 4796
    :cond_329
    if-nez v7, :cond_33f

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v11, 0x4

    aget-object v6, v6, v11

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33f

    .line 4797
    aget v6, v2, v11

    int-to-long v9, v6

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v9, 0x0

    goto :goto_344

    .line 4799
    :cond_33f
    const-wide/16 v9, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4803
    :goto_344
    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_350
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_374

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 4804
    .restart local v12    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/ExifInterface$ExifAttribute;

    .line 4806
    .local v13, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v14, v14

    const/4 v11, 0x4

    if-le v14, v11, :cond_371

    .line 4807
    iget-object v14, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v15, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v15, v15

    const/4 v9, 0x0

    invoke-virtual {v1, v14, v9, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 4809
    .end local v12    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_371
    const-wide/16 v9, 0x0

    goto :goto_350

    .line 4803
    :cond_374
    const/4 v11, 0x4

    goto :goto_377

    .line 4761
    .end local v8    # "dataOffset":I
    :cond_376
    move v11, v14

    .line 4760
    :goto_377
    add-int/lit8 v7, v7, 0x1

    move v14, v11

    const/4 v6, 0x1

    const-wide/16 v10, 0x0

    goto/16 :goto_29a

    .line 4814
    .end local v7    # "ifdType":I
    :cond_37f
    iget-boolean v6, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v6, :cond_38a

    .line 4815
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4819
    :cond_38a
    iget v6, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_399

    rem-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_399

    .line 4820
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 4824
    :cond_399
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4826
    return v5

    nop

    :sswitch_data_3a0
    .sparse-switch
        0x4 -> :sswitch_273
        0xd -> :sswitch_26a
        0xe -> :sswitch_261
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getAltitude(D)D
    .registers 9
    .param p1, "defaultValue"    # D

    .line 2432
    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 2433
    .local v0, "altitude":D
    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 2435
    .local v2, "ref":I
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1f

    if-ltz v2, :cond_1f

    .line 2436
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v4

    :goto_1c
    int-to-double v3, v3

    mul-double/2addr v3, v0

    return-wide v3

    .line 2438
    :cond_1f
    return-wide p1
.end method

.method public whitelist getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;

    .line 1704
    if-eqz p1, :cond_85

    .line 1707
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1708
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    const/4 v1, 0x0

    if-eqz v0, :cond_84

    .line 1709
    sget-object v2, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1710
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1712
    :cond_18
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1714
    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2c

    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2c

    .line 1716
    return-object v1

    .line 1718
    :cond_2c
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/ExifInterface$Rational;

    .line 1719
    .local v2, "array":[Landroid/media/ExifInterface$Rational;
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_39

    .line 1720
    return-object v1

    .line 1722
    :cond_39
    const/4 v1, 0x0

    aget-object v3, v2, v1

    iget-wide v3, v3, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object v1, v2, v1

    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v1, v4

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 1723
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v3, v2, v3

    iget-wide v5, v3, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v3, v5

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 1724
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v5, v2, v4

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v5

    aget-object v4, v2, v4

    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v4, v6

    div-float/2addr v5, v4

    float-to-int v4, v5

    .line 1725
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1722
    const-string v3, "%02d:%02d:%02d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1728
    .end local v2    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_77
    :try_start_77
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_81} :catch_82

    return-object v1

    .line 1729
    :catch_82
    move-exception v2

    .line 1730
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 1733
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_84
    return-object v1

    .line 1705
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeBytes(Ljava/lang/String;)[B
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 2390
    if-eqz p1, :cond_d

    .line 2393
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2394
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_b

    .line 2395
    iget-object v1, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    return-object v1

    .line 2397
    :cond_b
    const/4 v1, 0x0

    return-object v1

    .line 2391
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeDouble(Ljava/lang/String;D)D
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 1769
    if-eqz p1, :cond_12

    .line 1772
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1773
    .local v0, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_9

    .line 1774
    return-wide p2

    .line 1778
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_f} :catch_10

    return-wide v1

    .line 1779
    :catch_10
    move-exception v1

    .line 1780
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-wide p2

    .line 1770
    .end local v0    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1745
    if-eqz p1, :cond_12

    .line 1748
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1749
    .local v0, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_9

    .line 1750
    return p2

    .line 1754
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    .line 1755
    :catch_10
    move-exception v1

    .line 1756
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 1746
    .end local v0    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeRange(Ljava/lang/String;)[J
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;

    .line 2366
    if-eqz p1, :cond_26

    .line 2369
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_1e

    .line 2374
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2375
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_1c

    .line 2376
    iget-wide v1, v0, Landroid/media/ExifInterface$ExifAttribute;->bytesOffset:J

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    int-to-long v3, v3

    const/4 v5, 0x2

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v1, v5, v6

    const/4 v1, 0x1

    aput-wide v3, v5, v1

    return-object v5

    .line 2378
    :cond_1c
    const/4 v1, 0x0

    return-object v1

    .line 2370
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2367
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDateTime()J
    .registers 4

    .line 2446
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2447
    const-string v1, "SubSecTime"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2448
    const-string v2, "OffsetTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2446
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDateTimeDigitized()J
    .registers 4

    .line 2455
    const-string v0, "DateTimeDigitized"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2456
    const-string v1, "SubSecTimeDigitized"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2457
    const-string v2, "OffsetTimeDigitized"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2455
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDateTimeOriginal()J
    .registers 4

    .line 2464
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2465
    const-string v1, "SubSecTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2466
    const-string v2, "OffsetTimeOriginal"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2464
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getGpsDateTime()J
    .registers 9

    .line 2516
    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2517
    .local v0, "date":Ljava/lang/String;
    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2518
    .local v1, "time":Ljava/lang/String;
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_5f

    if-eqz v1, :cond_5f

    sget-object v4, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 2519
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_2b

    sget-object v4, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 2520
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_5f

    .line 2524
    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2526
    .local v4, "dateTimeString":Ljava/lang/String;
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2529
    .local v5, "pos":Ljava/text/ParsePosition;
    :try_start_48
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v6
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_4b} :catch_5d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_48 .. :try_end_4b} :catch_5d

    .line 2530
    :try_start_4b
    sget-object v7, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v7

    .line 2531
    .local v7, "datetime":Ljava/util/Date;
    monitor-exit v6
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_5a

    .line 2532
    if-nez v7, :cond_55

    return-wide v2

    .line 2533
    :cond_55
    :try_start_55
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_59} :catch_5d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_55 .. :try_end_59} :catch_5d

    return-wide v2

    .line 2531
    .end local v7    # "datetime":Ljava/util/Date;
    :catchall_5a
    move-exception v7

    :try_start_5b
    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "time":Ljava/lang/String;
    .end local v4    # "dateTimeString":Ljava/lang/String;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :try_start_5c
    throw v7
    :try_end_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_5d} :catch_5d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5c .. :try_end_5d} :catch_5d

    .line 2534
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v1    # "time":Ljava/lang/String;
    .restart local v4    # "dateTimeString":Ljava/lang/String;
    .restart local v5    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catch_5d
    move-exception v6

    .line 2535
    .local v6, "e":Ljava/lang/RuntimeException;
    return-wide v2

    .line 2521
    .end local v4    # "dateTimeString":Ljava/lang/String;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_5f
    :goto_5f
    return-wide v2
.end method

.method public whitelist getLatLong([F)Z
    .registers 9
    .param p1, "output"    # [F

    .line 2407
    const-string v0, "GPSLatitude"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2408
    .local v0, "latValue":Ljava/lang/String;
    const-string v1, "GPSLatitudeRef"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2409
    .local v1, "latRef":Ljava/lang/String;
    const-string v2, "GPSLongitude"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2410
    .local v2, "lngValue":Ljava/lang/String;
    const-string v3, "GPSLongitudeRef"

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2412
    .local v3, "lngRef":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    if-eqz v2, :cond_30

    if-eqz v3, :cond_30

    .line 2414
    :try_start_21
    invoke-static {v0, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v4

    .line 2415
    invoke-static {v2, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2e} :catch_2f

    .line 2416
    return v6

    .line 2417
    :catch_2f
    move-exception v5

    .line 2422
    :cond_30
    return v4
.end method

.method public whitelist getThumbnail()[B
    .registers 3

    .line 2216
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    goto :goto_d

    .line 2219
    :cond_b
    const/4 v0, 0x0

    return-object v0

    .line 2217
    :cond_d
    :goto_d
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThumbnailBitmap()Landroid/graphics/Bitmap;
    .registers 9

    .line 2284
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2285
    return-object v1

    .line 2286
    :cond_6
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_10

    .line 2287
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2290
    :cond_10
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_7e

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1b

    goto :goto_7e

    .line 2292
    :cond_1b
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7d

    .line 2293
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    .line 2294
    .local v0, "rgbValues":[I
    const/4 v3, 0x0

    .line 2295
    .local v3, "alpha":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    array-length v5, v0

    if-ge v4, v5, :cond_4d

    .line 2296
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v6, v4, 0x3

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v3

    iget-object v6, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v2

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v0, v4

    .line 2295
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 2300
    .end local v4    # "i":I
    :cond_4d
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    .line 2301
    const-string v5, "ThumbnailImageLength"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 2302
    .local v2, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    .line 2303
    const-string v5, "ThumbnailImageWidth"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2304
    .local v4, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_7d

    if-eqz v4, :cond_7d

    .line 2305
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 2306
    .local v1, "imageLength":I
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 2307
    .local v5, "imageWidth":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 2311
    .end local v0    # "rgbValues":[I
    .end local v1    # "imageLength":I
    .end local v2    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "alpha":B
    .end local v4    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "imageWidth":I
    :cond_7d
    return-object v1

    .line 2291
    :cond_7e
    :goto_7e
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThumbnailBytes()[B
    .registers 9

    .line 2227
    const-string v0, "ExifInterface"

    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 2228
    return-object v2

    .line 2230
    :cond_8
    iget-object v1, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_f

    .line 2231
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    return-object v0

    .line 2235
    :cond_f
    const/4 v1, 0x0

    .line 2236
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 2238
    .local v3, "newFileDescriptor":Ljava/io/FileDescriptor;
    :try_start_11
    iget-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v4, :cond_31

    .line 2239
    iget-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    move-object v1, v4

    .line 2240
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2241
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_56

    .line 2243
    :cond_22
    const-string v4, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_27} :catch_94
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_27} :catch_94
    .catchall {:try_start_11 .. :try_end_27} :catchall_92

    .line 2244
    nop

    .line 2271
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2272
    if-eqz v3, :cond_30

    .line 2273
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2244
    :cond_30
    return-object v2

    .line 2246
    :cond_31
    :try_start_31
    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_3e

    .line 2247
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_56

    .line 2248
    :cond_3e
    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_56

    .line 2249
    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v4}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v3, v4

    .line 2250
    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2251
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    .line 2253
    :cond_56
    :goto_56
    if-eqz v1, :cond_8c

    .line 2257
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_61} :catch_94
    .catch Landroid/system/ErrnoException; {:try_start_31 .. :try_end_61} :catch_94
    .catchall {:try_start_31 .. :try_end_61} :catchall_92

    int-to-long v6, v6

    cmp-long v4, v4, v6

    const-string v5, "Corrupted image"

    if-nez v4, :cond_86

    .line 2261
    :try_start_68
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v4, v4, [B

    .line 2262
    .local v4, "buffer":[B
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-ne v6, v7, :cond_80

    .line 2265
    iput-object v4, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_76} :catch_94
    .catch Landroid/system/ErrnoException; {:try_start_68 .. :try_end_76} :catch_94
    .catchall {:try_start_68 .. :try_end_76} :catchall_92

    .line 2266
    nop

    .line 2271
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2272
    if-eqz v3, :cond_7f

    .line 2273
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2266
    :cond_7f
    return-object v4

    .line 2263
    :cond_80
    :try_start_80
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v6

    .line 2258
    .end local v4    # "buffer":[B
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_86
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4

    .line 2255
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_8c
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_92} :catch_94
    .catch Landroid/system/ErrnoException; {:try_start_80 .. :try_end_92} :catch_94
    .catchall {:try_start_80 .. :try_end_92} :catchall_92

    .line 2271
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_92
    move-exception v0

    goto :goto_a4

    .line 2267
    :catch_94
    move-exception v4

    .line 2269
    .local v4, "e":Ljava/lang/Exception;
    :try_start_95
    const-string v5, "Encountered exception while getting thumbnail"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_92

    .line 2271
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2272
    if-eqz v3, :cond_a3

    .line 2273
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2276
    :cond_a3
    return-object v2

    .line 2271
    :goto_a4
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2272
    if-eqz v3, :cond_ac

    .line 2273
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2275
    :cond_ac
    throw v0
.end method

.method public whitelist getThumbnailRange()[J
    .registers 7

    .line 2341
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_23

    .line 2346
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 2347
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-nez v0, :cond_12

    .line 2348
    return-object v1

    .line 2350
    :cond_12
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v0, v0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    return-object v4

    .line 2352
    :cond_22
    return-object v1

    .line 2342
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasAttribute(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 2206
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasThumbnail()Z
    .registers 2

    .line 2197
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public whitelist isThumbnailCompressed()Z
    .registers 4

    .line 2319
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2320
    return v1

    .line 2322
    :cond_6
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_12

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_11

    goto :goto_12

    .line 2325
    :cond_11
    return v1

    .line 2323
    :cond_12
    :goto_12
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist saveAttributes()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2102
    invoke-direct {p0}, Landroid/media/ExifInterface;->isSupportedFormatForSavingAttributes()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 2106
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    if-nez v0, :cond_144

    iget-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_144

    .line 2110
    :cond_12
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v0, :cond_1f

    goto :goto_27

    .line 2111
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2117
    :cond_27
    :goto_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    .line 2120
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2122
    const/4 v0, 0x0

    .line 2123
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2124
    .local v1, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2127
    .local v2, "tempFile":Ljava/io/File;
    :try_start_33
    const-string v3, "temp"

    const-string v4, "tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 2128
    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4b

    .line 2129
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    goto :goto_5e

    .line 2130
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :cond_4b
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_5e

    .line 2131
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2132
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    .line 2134
    :cond_5e
    :goto_5e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 2135
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_67} :catch_134
    .catchall {:try_start_33 .. :try_end_67} :catchall_132

    .line 2139
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2140
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2141
    nop

    .line 2143
    const/4 v0, 0x0

    .line 2144
    const/4 v1, 0x0

    .line 2147
    :try_start_70
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 2148
    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_83

    .line 2149
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_96

    .line 2150
    :cond_83
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_96

    .line 2151
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2152
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    .line 2154
    :cond_96
    :goto_96
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_9b} :catch_e6
    .catchall {:try_start_70 .. :try_end_9b} :catchall_e4

    .line 2155
    .local v3, "bufferedIn":Ljava/io/BufferedInputStream;
    :try_start_9b
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_da

    .line 2156
    .local v6, "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_a0
    iget v7, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a9

    .line 2157
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_bc

    .line 2158
    :cond_a9
    iget v7, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v8, 0xd

    if-ne v7, v8, :cond_b3

    .line 2159
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_bc

    .line 2160
    :cond_b3
    iget v7, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v8, 0xe

    if-ne v7, v8, :cond_bc

    .line 2161
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_bc
    .catchall {:try_start_a0 .. :try_end_bc} :catchall_d0

    .line 2163
    :cond_bc
    :goto_bc
    :try_start_bc
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_da

    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_bf
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_e6
    .catchall {:try_start_bf .. :try_end_c2} :catchall_e4

    .line 2184
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2185
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2186
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2187
    nop

    .line 2190
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2191
    return-void

    .line 2154
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    :catchall_d0
    move-exception v7

    :try_start_d1
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_d5

    goto :goto_d9

    :catchall_d5
    move-exception v8

    :try_start_d6
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :goto_d9
    throw v7
    :try_end_da
    .catchall {:try_start_d6 .. :try_end_da} :catchall_da

    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_da
    move-exception v6

    :try_start_db
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_e3

    :catchall_df
    move-exception v7

    :try_start_e0
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :goto_e3
    throw v6
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e4} :catch_e6
    .catchall {:try_start_e0 .. :try_end_e4} :catchall_e4

    .line 2184
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_e4
    move-exception v3

    goto :goto_128

    .line 2164
    :catch_e6
    move-exception v3

    .line 2166
    .local v3, "e":Ljava/lang/Exception;
    :try_start_e7
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v6

    .line 2167
    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v6, :cond_10f

    .line 2169
    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_f3
    .catchall {:try_start_e7 .. :try_end_f3} :catchall_e4

    if-eqz v6, :cond_117

    .line 2171
    :try_start_f5
    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v6, v4, v5, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_fc
    .catch Landroid/system/ErrnoException; {:try_start_f5 .. :try_end_fc} :catch_106
    .catchall {:try_start_f5 .. :try_end_fc} :catchall_e4

    .line 2176
    nop

    .line 2177
    :try_start_fd
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_117

    .line 2172
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catch_106
    move-exception v4

    .line 2173
    .local v4, "exception":Landroid/system/ErrnoException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to save new file. Original file may be corrupted since error occurred while trying to restore it."

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v5

    .line 2168
    .end local v4    # "exception":Landroid/system/ErrnoException;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_10f
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 2179
    :cond_117
    :goto_117
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 2180
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2181
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2182
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to save new file"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_128
    .catchall {:try_start_fd .. :try_end_128} :catchall_e4

    .line 2184
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :goto_128
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2185
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2186
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2187
    throw v3

    .line 2139
    :catchall_132
    move-exception v3

    goto :goto_13d

    .line 2136
    :catch_134
    move-exception v3

    .line 2137
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_135
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to copy original file to temp file"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_13d
    .catchall {:try_start_135 .. :try_end_13d} :catchall_132

    .line 2139
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :goto_13d
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2140
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2141
    throw v3

    .line 2107
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    :cond_144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2103
    :cond_14c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, and WebP formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 29
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1791
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_38f

    .line 1795
    const/4 v0, 0x2

    const-string v4, "ExifInterface"

    const/4 v5, 0x1

    if-eqz v3, :cond_c8

    sget-object v6, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 1796
    const-string v6, "GPSTimeStamp"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " : "

    const-string v8, "Invalid value for "

    if-eqz v6, :cond_8a

    .line 1797
    sget-object v6, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1798
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_4b

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    return-void

    .line 1802
    :cond_4b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/1,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1803
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1804
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local p2    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    goto :goto_c8

    .line 1806
    .end local v3    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_8a
    :try_start_8a
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 1807
    .local v9, "doubleValue":D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v11, v9

    double-to-long v11, v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "/10000"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_8a .. :try_end_a8} :catch_aa

    .line 1811
    .end local v9    # "doubleValue":D
    .end local p2    # "value":Ljava/lang/String;
    .local v6, "value":Ljava/lang/String;
    move-object v3, v6

    goto :goto_c8

    .line 1808
    .end local v6    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catch_aa
    move-exception v0

    .line 1809
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    return-void

    .line 1815
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_c8
    :goto_c8
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c9
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v6, v7, :cond_38e

    .line 1816
    const/4 v7, 0x4

    if-ne v6, v7, :cond_db

    iget-boolean v7, v1, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_db

    .line 1817
    move/from16 v22, v5

    move/from16 p2, v6

    goto/16 :goto_387

    .line 1819
    :cond_db
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1820
    .local v7, "obj":Ljava/lang/Object;
    if-eqz v7, :cond_381

    .line 1821
    if-nez v3, :cond_f4

    .line 1822
    iget-object v8, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v6

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    move/from16 v22, v5

    move/from16 p2, v6

    goto/16 :goto_387

    .line 1825
    :cond_f4
    move-object v8, v7

    check-cast v8, Landroid/media/ExifInterface$ExifTag;

    .line 1826
    .local v8, "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 1828
    .local v9, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_1eb

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_115

    goto/16 :goto_1eb

    .line 1830
    :cond_115
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_136

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v10, v12, :cond_132

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 1831
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v10, v12, :cond_136

    .line 1832
    :cond_132
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .local v10, "dataFormat":I
    goto/16 :goto_1ed

    .line 1833
    .end local v10    # "dataFormat":I
    :cond_136
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v10, v5, :cond_1e8

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v12, 0x7

    if-eq v10, v12, :cond_1e8

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v10, v0, :cond_145

    goto/16 :goto_1e8

    .line 1838
    :cond_145
    sget-boolean v10, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_1e2

    .line 1839
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given tag ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1842
    iget v12, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const-string v13, ""

    const-string v14, ", "

    if-ne v12, v11, :cond_172

    move-object v0, v13

    goto :goto_189

    .line 1843
    :cond_172
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v0, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v0, v15, v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_189
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " (guess: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v10, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 1844
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v10, v10, v12

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v11, :cond_1ae

    goto :goto_1cb

    .line 1845
    :cond_1ae
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1cb
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1839
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v22, v5

    move/from16 p2, v6

    goto/16 :goto_387

    .line 1838
    :cond_1e2
    move/from16 v22, v5

    move/from16 p2, v6

    goto/16 :goto_387

    .line 1836
    :cond_1e8
    :goto_1e8
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .restart local v10    # "dataFormat":I
    goto :goto_1ed

    .line 1829
    .end local v10    # "dataFormat":I
    :cond_1eb
    :goto_1eb
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 1849
    .restart local v10    # "dataFormat":I
    :goto_1ed
    const/4 v0, 0x0

    const-string v11, "/"

    const-string v12, ","

    packed-switch v10, :pswitch_data_398

    .line 1924
    :pswitch_1f5
    move/from16 v22, v5

    move/from16 p2, v6

    move-object/from16 v24, v7

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .local v24, "obj":Ljava/lang/Object;
    .local p2, "i":I
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_387

    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_387

    .line 1914
    .end local v24    # "obj":Ljava/lang/Object;
    .end local p2    # "i":I
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    :pswitch_217
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1915
    .local v0, "values":[Ljava/lang/String;
    array-length v11, v0

    new-array v11, v11, [D

    .line 1916
    .local v11, "doubleArray":[D
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_21f
    array-length v13, v0

    if-ge v12, v13, :cond_22d

    .line 1917
    aget-object v13, v0, v12

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 1916
    add-int/lit8 v12, v12, 0x1

    goto :goto_21f

    .line 1919
    .end local v12    # "j":I
    :cond_22d
    iget-object v12, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v6

    iget-object v13, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1920
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 1919
    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    move/from16 v22, v5

    move/from16 p2, v6

    goto/16 :goto_387

    .line 1902
    .end local v0    # "values":[Ljava/lang/String;
    .end local v11    # "doubleArray":[D
    :pswitch_240
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1903
    .local v12, "values":[Ljava/lang/String;
    array-length v13, v12

    new-array v13, v13, [Landroid/media/ExifInterface$Rational;

    .line 1904
    .local v13, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_248
    array-length v15, v12

    if-ge v14, v15, :cond_27d

    .line 1905
    aget-object v15, v12, v14

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1906
    .local v15, "numbers":[Ljava/lang/String;
    new-instance v16, Landroid/media/ExifInterface$Rational;

    aget-object v17, v15, v0

    move/from16 v22, v5

    move/from16 p2, v6

    .end local v6    # "i":I
    .restart local p2    # "i":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    aget-object v17, v15, v22

    .line 1907
    move/from16 v23, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    const/16 v21, 0x0

    move-wide/from16 v19, v0

    move-wide/from16 v17, v5

    invoke-direct/range {v16 .. v21}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface-IA;)V

    aput-object v16, v13, v14

    .line 1904
    .end local v15    # "numbers":[Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move/from16 v6, p2

    move/from16 v5, v22

    move/from16 v0, v23

    goto :goto_248

    .end local p2    # "i":I
    .restart local v6    # "i":I
    :cond_27d
    move/from16 v22, v5

    move/from16 p2, v6

    .line 1909
    .end local v6    # "i":I
    .end local v14    # "j":I
    .restart local p2    # "i":I
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    iget-object v5, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1910
    invoke-static {v13, v5}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 1909
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    goto/16 :goto_387

    .line 1870
    .end local v12    # "values":[Ljava/lang/String;
    .end local v13    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local p2    # "i":I
    .restart local v6    # "i":I
    :pswitch_292
    move/from16 v22, v5

    move/from16 p2, v6

    .end local v6    # "i":I
    .restart local p2    # "i":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1871
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [I

    .line 1872
    .local v5, "intArray":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_29e
    array-length v11, v0

    if-ge v6, v11, :cond_2ac

    .line 1873
    aget-object v11, v0, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v6

    .line 1872
    add-int/lit8 v6, v6, 0x1

    goto :goto_29e

    .line 1875
    .end local v6    # "j":I
    :cond_2ac
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, p2

    iget-object v11, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1876
    invoke-static {v5, v11}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 1875
    invoke-virtual {v6, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    goto/16 :goto_387

    .line 1890
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "intArray":[I
    .end local p2    # "i":I
    .local v6, "i":I
    :pswitch_2bb
    move/from16 v23, v0

    move/from16 v22, v5

    move/from16 p2, v6

    .end local v6    # "i":I
    .restart local p2    # "i":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1891
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [Landroid/media/ExifInterface$Rational;

    .line 1892
    .local v5, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2c9
    array-length v12, v0

    if-ge v6, v12, :cond_2f6

    .line 1893
    aget-object v12, v0, v6

    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1894
    .local v12, "numbers":[Ljava/lang/String;
    new-instance v16, Landroid/media/ExifInterface$Rational;

    aget-object v13, v12, v23

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-long v13, v13

    aget-object v15, v12, v22

    .line 1895
    move/from16 v25, v6

    move-object/from16 v24, v7

    .end local v6    # "j":I
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local v24    # "obj":Ljava/lang/Object;
    .local v25, "j":I
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    const/16 v21, 0x0

    move-wide/from16 v19, v6

    move-wide/from16 v17, v13

    invoke-direct/range {v16 .. v21}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface-IA;)V

    aput-object v16, v5, v25

    .line 1892
    .end local v12    # "numbers":[Ljava/lang/String;
    add-int/lit8 v6, v25, 0x1

    move-object/from16 v7, v24

    .end local v25    # "j":I
    .restart local v6    # "j":I
    goto :goto_2c9

    .end local v24    # "obj":Ljava/lang/Object;
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_2f6
    move/from16 v25, v6

    move-object/from16 v24, v7

    .line 1897
    .end local v6    # "j":I
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local v24    # "obj":Ljava/lang/Object;
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, p2

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1898
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1897
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    goto/16 :goto_387

    .line 1880
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v24    # "obj":Ljava/lang/Object;
    .end local p2    # "i":I
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    :pswitch_309
    move/from16 v22, v5

    move/from16 p2, v6

    move-object/from16 v24, v7

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local v24    # "obj":Ljava/lang/Object;
    .restart local p2    # "i":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1881
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [J

    .line 1882
    .local v5, "longArray":[J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_317
    array-length v7, v0

    if-ge v6, v7, :cond_325

    .line 1883
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    aput-wide v11, v5, v6

    .line 1882
    add-int/lit8 v6, v6, 0x1

    goto :goto_317

    .line 1885
    .end local v6    # "j":I
    :cond_325
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, p2

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1886
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1885
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    goto :goto_387

    .line 1860
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "longArray":[J
    .end local v24    # "obj":Ljava/lang/Object;
    .end local p2    # "i":I
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    :pswitch_333
    move/from16 v22, v5

    move/from16 p2, v6

    move-object/from16 v24, v7

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local v24    # "obj":Ljava/lang/Object;
    .restart local p2    # "i":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1861
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [I

    .line 1862
    .local v5, "intArray":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_341
    array-length v7, v0

    if-ge v6, v7, :cond_34f

    .line 1863
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 1862
    add-int/lit8 v6, v6, 0x1

    goto :goto_341

    .line 1865
    .end local v6    # "j":I
    :cond_34f
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, p2

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1866
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1865
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    goto :goto_387

    .line 1856
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "intArray":[I
    .end local v24    # "obj":Ljava/lang/Object;
    .end local p2    # "i":I
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    :pswitch_35d
    move/from16 v22, v5

    move/from16 p2, v6

    move-object/from16 v24, v7

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local v24    # "obj":Ljava/lang/Object;
    .restart local p2    # "i":I
    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    goto :goto_387

    .line 1851
    .end local v24    # "obj":Ljava/lang/Object;
    .end local p2    # "i":I
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    :pswitch_36f
    move/from16 v22, v5

    move/from16 p2, v6

    move-object/from16 v24, v7

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local v24    # "obj":Ljava/lang/Object;
    .restart local p2    # "i":I
    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    goto :goto_387

    .line 1820
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .end local v9    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "dataFormat":I
    .end local v24    # "obj":Ljava/lang/Object;
    .end local p2    # "i":I
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_381
    move/from16 v22, v5

    move/from16 p2, v6

    move-object/from16 v24, v7

    .line 1815
    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local p2    # "i":I
    :cond_387
    :goto_387
    add-int/lit8 v6, p2, 0x1

    move/from16 v5, v22

    const/4 v0, 0x2

    .end local p2    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_c9

    .line 1931
    .end local v6    # "i":I
    :cond_38e
    return-void

    .line 1792
    .end local v3    # "value":Ljava/lang/String;
    .local p2, "value":Ljava/lang/String;
    :cond_38f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "tag shouldn\'t be null"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_398
    .packed-switch 0x1
        :pswitch_36f
        :pswitch_35d
        :pswitch_333
        :pswitch_309
        :pswitch_2bb
        :pswitch_1f5
        :pswitch_35d
        :pswitch_1f5
        :pswitch_292
        :pswitch_240
        :pswitch_1f5
        :pswitch_217
    .end packed-switch
.end method
