.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;,
        Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BYTE_ALIGN_II:S = 0x4949s

.field private static final BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final DEBUG:Z = false

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_HINT:I = 0x1

.field private static final IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_HINT:I = 0x2

.field private static final IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_HINT:I = 0x3

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_POINTER_TAG_HINTS:[I

.field private static final IFD_THUMBNAIL_HINT:I = 0x4

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_HINT:I = 0x0

.field private static final IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_SIGNATURE:[B

.field private static final JPEG_SIGNATURE_SIZE:I = 0x3

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private final mIsInputStream:Z

.field private mIsRaw:Z

.field private mIsSupportedFile:Z

.field private final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static synthetic -get0()Ljava/nio/charset/Charset;
    .locals 1

    #@0
    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    #@2
    return-object v0
.end method

.method static synthetic -get1()[B
    .locals 1

    #@0
    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    #@2
    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    #@0
    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    #@2
    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v11, 0x5

    #@2
    const/4 v10, 0x2

    #@3
    const/4 v3, 0x3

    #@4
    const/4 v5, 0x0

    #@5
    .line 373
    new-array v0, v3, [B

    #@7
    fill-array-data v0, :array_0

    #@a
    sput-object v0, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    #@c
    .line 401
    const/16 v0, 0xd

    #@e
    new-array v0, v0, [Ljava/lang/String;

    #@10
    .line 402
    const-string/jumbo v1, ""

    #@13
    const/4 v2, 0x0

    #@14
    aput-object v1, v0, v2

    #@16
    const-string/jumbo v1, "BYTE"

    #@19
    const/4 v2, 0x1

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "STRING"

    #@1f
    aput-object v1, v0, v10

    #@21
    const-string/jumbo v1, "USHORT"

    #@24
    aput-object v1, v0, v3

    #@26
    const-string/jumbo v1, "ULONG"

    #@29
    aput-object v1, v0, v4

    #@2b
    const-string/jumbo v1, "URATIONAL"

    #@2e
    aput-object v1, v0, v11

    #@30
    const-string/jumbo v1, "SBYTE"

    #@33
    const/4 v2, 0x6

    #@34
    aput-object v1, v0, v2

    #@36
    const-string/jumbo v1, "UNDEFINED"

    #@39
    const/4 v2, 0x7

    #@3a
    aput-object v1, v0, v2

    #@3c
    const-string/jumbo v1, "SSHORT"

    #@3f
    const/16 v2, 0x8

    #@41
    aput-object v1, v0, v2

    #@43
    .line 403
    const-string/jumbo v1, "SLONG"

    #@46
    const/16 v2, 0x9

    #@48
    aput-object v1, v0, v2

    #@4a
    const-string/jumbo v1, "SRATIONAL"

    #@4d
    const/16 v2, 0xa

    #@4f
    aput-object v1, v0, v2

    #@51
    const-string/jumbo v1, "SINGLE"

    #@54
    const/16 v2, 0xb

    #@56
    aput-object v1, v0, v2

    #@58
    const-string/jumbo v1, "DOUBLE"

    #@5b
    const/16 v2, 0xc

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 401
    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    #@61
    .line 406
    const/16 v0, 0xd

    #@63
    new-array v0, v0, [I

    #@65
    fill-array-data v0, :array_1

    #@68
    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    #@6a
    .line 409
    const/16 v0, 0x8

    #@6c
    new-array v0, v0, [B

    #@6e
    fill-array-data v0, :array_2

    #@71
    sput-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    #@73
    .line 818
    const/16 v0, 0x20

    #@75
    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    #@77
    .line 819
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@79
    const-string/jumbo v1, "ImageWidth"

    #@7c
    const/16 v2, 0x100

    #@7e
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@81
    const/4 v1, 0x0

    #@82
    aput-object v0, v8, v1

    #@84
    .line 820
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@86
    const-string/jumbo v1, "ImageLength"

    #@89
    const/16 v2, 0x101

    #@8b
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@8e
    const/4 v1, 0x1

    #@8f
    aput-object v0, v8, v1

    #@91
    .line 821
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@93
    const-string/jumbo v1, "BitsPerSample"

    #@96
    const/16 v2, 0x102

    #@98
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@9b
    aput-object v0, v8, v10

    #@9d
    .line 822
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@9f
    const-string/jumbo v1, "Compression"

    #@a2
    const/16 v2, 0x103

    #@a4
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@a7
    aput-object v0, v8, v3

    #@a9
    .line 823
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@ab
    const-string/jumbo v1, "PhotometricInterpretation"

    #@ae
    const/16 v2, 0x106

    #@b0
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@b3
    aput-object v0, v8, v4

    #@b5
    .line 824
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@b7
    const-string/jumbo v1, "ImageDescription"

    #@ba
    const/16 v2, 0x10e

    #@bc
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@bf
    aput-object v0, v8, v11

    #@c1
    .line 825
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@c3
    const-string/jumbo v1, "Make"

    #@c6
    const/16 v2, 0x10f

    #@c8
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@cb
    const/4 v1, 0x6

    #@cc
    aput-object v0, v8, v1

    #@ce
    .line 826
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@d0
    const-string/jumbo v1, "Model"

    #@d3
    const/16 v2, 0x110

    #@d5
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@d8
    const/4 v1, 0x7

    #@d9
    aput-object v0, v8, v1

    #@db
    .line 827
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@dd
    const-string/jumbo v1, "StripOffsets"

    #@e0
    const/16 v2, 0x111

    #@e2
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@e5
    const/16 v1, 0x8

    #@e7
    aput-object v0, v8, v1

    #@e9
    .line 828
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@eb
    const-string/jumbo v1, "Orientation"

    #@ee
    const/16 v2, 0x112

    #@f0
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@f3
    const/16 v1, 0x9

    #@f5
    aput-object v0, v8, v1

    #@f7
    .line 829
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@f9
    const-string/jumbo v1, "SamplesPerPixel"

    #@fc
    const/16 v2, 0x115

    #@fe
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@101
    const/16 v1, 0xa

    #@103
    aput-object v0, v8, v1

    #@105
    .line 830
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@107
    const-string/jumbo v1, "RowsPerStrip"

    #@10a
    const/16 v2, 0x116

    #@10c
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@10f
    const/16 v1, 0xb

    #@111
    aput-object v0, v8, v1

    #@113
    .line 831
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@115
    const-string/jumbo v1, "StripByteCounts"

    #@118
    const/16 v2, 0x117

    #@11a
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@11d
    const/16 v1, 0xc

    #@11f
    aput-object v0, v8, v1

    #@121
    .line 832
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@123
    const-string/jumbo v1, "XResolution"

    #@126
    const/16 v2, 0x11a

    #@128
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@12b
    const/16 v1, 0xd

    #@12d
    aput-object v0, v8, v1

    #@12f
    .line 833
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@131
    const-string/jumbo v1, "YResolution"

    #@134
    const/16 v2, 0x11b

    #@136
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@139
    const/16 v1, 0xe

    #@13b
    aput-object v0, v8, v1

    #@13d
    .line 834
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@13f
    const-string/jumbo v1, "PlanarConfiguration"

    #@142
    const/16 v2, 0x11c

    #@144
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@147
    const/16 v1, 0xf

    #@149
    aput-object v0, v8, v1

    #@14b
    .line 835
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@14d
    const-string/jumbo v1, "ResolutionUnit"

    #@150
    const/16 v2, 0x128

    #@152
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@155
    const/16 v1, 0x10

    #@157
    aput-object v0, v8, v1

    #@159
    .line 836
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@15b
    const-string/jumbo v1, "TransferFunction"

    #@15e
    const/16 v2, 0x12d

    #@160
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@163
    const/16 v1, 0x11

    #@165
    aput-object v0, v8, v1

    #@167
    .line 837
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@169
    const-string/jumbo v1, "Software"

    #@16c
    const/16 v2, 0x131

    #@16e
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@171
    const/16 v1, 0x12

    #@173
    aput-object v0, v8, v1

    #@175
    .line 838
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@177
    const-string/jumbo v1, "DateTime"

    #@17a
    const/16 v2, 0x132

    #@17c
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@17f
    const/16 v1, 0x13

    #@181
    aput-object v0, v8, v1

    #@183
    .line 839
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@185
    const-string/jumbo v1, "Artist"

    #@188
    const/16 v2, 0x13b

    #@18a
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@18d
    const/16 v1, 0x14

    #@18f
    aput-object v0, v8, v1

    #@191
    .line 840
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@193
    const-string/jumbo v1, "WhitePoint"

    #@196
    const/16 v2, 0x13e

    #@198
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@19b
    const/16 v1, 0x15

    #@19d
    aput-object v0, v8, v1

    #@19f
    .line 841
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@1a1
    const-string/jumbo v1, "PrimaryChromaticities"

    #@1a4
    const/16 v2, 0x13f

    #@1a6
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@1a9
    const/16 v1, 0x16

    #@1ab
    aput-object v0, v8, v1

    #@1ad
    .line 842
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@1af
    const-string/jumbo v1, "JPEGInterchangeFormat"

    #@1b2
    const/16 v2, 0x201

    #@1b4
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@1b7
    const/16 v1, 0x17

    #@1b9
    aput-object v0, v8, v1

    #@1bb
    .line 843
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@1bd
    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    #@1c0
    const/16 v2, 0x202

    #@1c2
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@1c5
    const/16 v1, 0x18

    #@1c7
    aput-object v0, v8, v1

    #@1c9
    .line 844
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@1cb
    const-string/jumbo v1, "YCbCrCoefficients"

    #@1ce
    const/16 v2, 0x211

    #@1d0
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@1d3
    const/16 v1, 0x19

    #@1d5
    aput-object v0, v8, v1

    #@1d7
    .line 845
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@1d9
    const-string/jumbo v1, "YCbCrSubSampling"

    #@1dc
    const/16 v2, 0x212

    #@1de
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@1e1
    const/16 v1, 0x1a

    #@1e3
    aput-object v0, v8, v1

    #@1e5
    .line 846
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@1e7
    const-string/jumbo v1, "YCbCrPositioning"

    #@1ea
    const/16 v2, 0x213

    #@1ec
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@1ef
    const/16 v1, 0x1b

    #@1f1
    aput-object v0, v8, v1

    #@1f3
    .line 847
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@1f5
    const-string/jumbo v1, "ReferenceBlackWhite"

    #@1f8
    const/16 v2, 0x214

    #@1fa
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@1fd
    const/16 v1, 0x1c

    #@1ff
    aput-object v0, v8, v1

    #@201
    .line 848
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@203
    const-string/jumbo v1, "Copyright"

    #@206
    const v2, 0x8298

    #@209
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@20c
    const/16 v1, 0x1d

    #@20e
    aput-object v0, v8, v1

    #@210
    .line 849
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@212
    const-string/jumbo v1, "ExifIFDPointer"

    #@215
    const v2, 0x8769

    #@218
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@21b
    const/16 v1, 0x1e

    #@21d
    aput-object v0, v8, v1

    #@21f
    .line 850
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@221
    const-string/jumbo v1, "GPSInfoIFDPointer"

    #@224
    const v2, 0x8825

    #@227
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@22a
    const/16 v1, 0x1f

    #@22c
    aput-object v0, v8, v1

    #@22e
    .line 818
    sput-object v8, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@230
    .line 854
    const/16 v0, 0x39

    #@232
    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    #@234
    .line 855
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@236
    const-string/jumbo v1, "ExposureTime"

    #@239
    const v2, 0x829a

    #@23c
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@23f
    const/4 v1, 0x0

    #@240
    aput-object v0, v8, v1

    #@242
    .line 856
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@244
    const-string/jumbo v1, "FNumber"

    #@247
    const v2, 0x829d

    #@24a
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@24d
    const/4 v1, 0x1

    #@24e
    aput-object v0, v8, v1

    #@250
    .line 857
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@252
    const-string/jumbo v1, "ExposureProgram"

    #@255
    const v2, 0x8822

    #@258
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@25b
    aput-object v0, v8, v10

    #@25d
    .line 858
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@25f
    const-string/jumbo v1, "SpectralSensitivity"

    #@262
    const v2, 0x8824

    #@265
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@268
    aput-object v0, v8, v3

    #@26a
    .line 859
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@26c
    const-string/jumbo v1, "ISOSpeedRatings"

    #@26f
    const v2, 0x8827

    #@272
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@275
    aput-object v0, v8, v4

    #@277
    .line 860
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@279
    const-string/jumbo v1, "OECF"

    #@27c
    const v2, 0x8828

    #@27f
    const/4 v9, 0x7

    #@280
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@283
    aput-object v0, v8, v11

    #@285
    .line 861
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@287
    const-string/jumbo v1, "ExifVersion"

    #@28a
    const v2, 0x9000

    #@28d
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@290
    const/4 v1, 0x6

    #@291
    aput-object v0, v8, v1

    #@293
    .line 862
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@295
    const-string/jumbo v1, "DateTimeOriginal"

    #@298
    const v2, 0x9003

    #@29b
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@29e
    const/4 v1, 0x7

    #@29f
    aput-object v0, v8, v1

    #@2a1
    .line 863
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@2a3
    const-string/jumbo v1, "DateTimeDigitized"

    #@2a6
    const v2, 0x9004

    #@2a9
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@2ac
    const/16 v1, 0x8

    #@2ae
    aput-object v0, v8, v1

    #@2b0
    .line 864
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@2b2
    const-string/jumbo v1, "ComponentsConfiguration"

    #@2b5
    const v2, 0x9101

    #@2b8
    const/4 v9, 0x7

    #@2b9
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@2bc
    const/16 v1, 0x9

    #@2be
    aput-object v0, v8, v1

    #@2c0
    .line 865
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@2c2
    const-string/jumbo v1, "CompressedBitsPerPixel"

    #@2c5
    const v2, 0x9102

    #@2c8
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@2cb
    const/16 v1, 0xa

    #@2cd
    aput-object v0, v8, v1

    #@2cf
    .line 866
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@2d1
    const-string/jumbo v1, "ShutterSpeedValue"

    #@2d4
    const v2, 0x9201

    #@2d7
    const/16 v9, 0xa

    #@2d9
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@2dc
    const/16 v1, 0xb

    #@2de
    aput-object v0, v8, v1

    #@2e0
    .line 867
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@2e2
    const-string/jumbo v1, "ApertureValue"

    #@2e5
    const v2, 0x9202

    #@2e8
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@2eb
    const/16 v1, 0xc

    #@2ed
    aput-object v0, v8, v1

    #@2ef
    .line 868
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@2f1
    const-string/jumbo v1, "BrightnessValue"

    #@2f4
    const v2, 0x9203

    #@2f7
    const/16 v9, 0xa

    #@2f9
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@2fc
    const/16 v1, 0xd

    #@2fe
    aput-object v0, v8, v1

    #@300
    .line 869
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@302
    const-string/jumbo v1, "ExposureBiasValue"

    #@305
    const v2, 0x9204

    #@308
    const/16 v9, 0xa

    #@30a
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@30d
    const/16 v1, 0xe

    #@30f
    aput-object v0, v8, v1

    #@311
    .line 870
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@313
    const-string/jumbo v1, "MaxApertureValue"

    #@316
    const v2, 0x9205

    #@319
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@31c
    const/16 v1, 0xf

    #@31e
    aput-object v0, v8, v1

    #@320
    .line 871
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@322
    const-string/jumbo v1, "SubjectDistance"

    #@325
    const v2, 0x9206

    #@328
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@32b
    const/16 v1, 0x10

    #@32d
    aput-object v0, v8, v1

    #@32f
    .line 872
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@331
    const-string/jumbo v1, "MeteringMode"

    #@334
    const v2, 0x9207

    #@337
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@33a
    const/16 v1, 0x11

    #@33c
    aput-object v0, v8, v1

    #@33e
    .line 873
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@340
    const-string/jumbo v1, "LightSource"

    #@343
    const v2, 0x9208

    #@346
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@349
    const/16 v1, 0x12

    #@34b
    aput-object v0, v8, v1

    #@34d
    .line 874
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@34f
    const-string/jumbo v1, "Flash"

    #@352
    const v2, 0x9209

    #@355
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@358
    const/16 v1, 0x13

    #@35a
    aput-object v0, v8, v1

    #@35c
    .line 875
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@35e
    const-string/jumbo v1, "FocalLength"

    #@361
    const v2, 0x920a

    #@364
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@367
    const/16 v1, 0x14

    #@369
    aput-object v0, v8, v1

    #@36b
    .line 876
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@36d
    const-string/jumbo v1, "SubjectArea"

    #@370
    const v2, 0x9214

    #@373
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@376
    const/16 v1, 0x15

    #@378
    aput-object v0, v8, v1

    #@37a
    .line 877
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@37c
    const-string/jumbo v1, "MakerNote"

    #@37f
    const v2, 0x927c

    #@382
    const/4 v9, 0x7

    #@383
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@386
    const/16 v1, 0x16

    #@388
    aput-object v0, v8, v1

    #@38a
    .line 878
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@38c
    const-string/jumbo v1, "UserComment"

    #@38f
    const v2, 0x9286

    #@392
    const/4 v9, 0x7

    #@393
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@396
    const/16 v1, 0x17

    #@398
    aput-object v0, v8, v1

    #@39a
    .line 879
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@39c
    const-string/jumbo v1, "SubSecTime"

    #@39f
    const v2, 0x9290

    #@3a2
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@3a5
    const/16 v1, 0x18

    #@3a7
    aput-object v0, v8, v1

    #@3a9
    .line 880
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@3ab
    const-string/jumbo v1, "SubSecTimeOriginal"

    #@3ae
    const v2, 0x9291

    #@3b1
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@3b4
    const/16 v1, 0x19

    #@3b6
    aput-object v0, v8, v1

    #@3b8
    .line 881
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@3ba
    const-string/jumbo v1, "SubSecTimeDigitized"

    #@3bd
    const v2, 0x9292

    #@3c0
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@3c3
    const/16 v1, 0x1a

    #@3c5
    aput-object v0, v8, v1

    #@3c7
    .line 882
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@3c9
    const-string/jumbo v1, "FlashpixVersion"

    #@3cc
    const v2, 0xa000

    #@3cf
    const/4 v9, 0x7

    #@3d0
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@3d3
    const/16 v1, 0x1b

    #@3d5
    aput-object v0, v8, v1

    #@3d7
    .line 883
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@3d9
    const-string/jumbo v1, "ColorSpace"

    #@3dc
    const v2, 0xa001

    #@3df
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@3e2
    const/16 v1, 0x1c

    #@3e4
    aput-object v0, v8, v1

    #@3e6
    .line 884
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@3e8
    const-string/jumbo v1, "PixelXDimension"

    #@3eb
    const v2, 0xa002

    #@3ee
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@3f1
    const/16 v1, 0x1d

    #@3f3
    aput-object v0, v8, v1

    #@3f5
    .line 885
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@3f7
    const-string/jumbo v1, "PixelYDimension"

    #@3fa
    const v2, 0xa003

    #@3fd
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@400
    const/16 v1, 0x1e

    #@402
    aput-object v0, v8, v1

    #@404
    .line 886
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@406
    const-string/jumbo v1, "RelatedSoundFile"

    #@409
    const v2, 0xa004

    #@40c
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@40f
    const/16 v1, 0x1f

    #@411
    aput-object v0, v8, v1

    #@413
    .line 887
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@415
    const-string/jumbo v1, "InteroperabilityIFDPointer"

    #@418
    const v2, 0xa005

    #@41b
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@41e
    const/16 v1, 0x20

    #@420
    aput-object v0, v8, v1

    #@422
    .line 888
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@424
    const-string/jumbo v1, "FlashEnergy"

    #@427
    const v2, 0xa20b

    #@42a
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@42d
    const/16 v1, 0x21

    #@42f
    aput-object v0, v8, v1

    #@431
    .line 889
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@433
    const-string/jumbo v1, "SpatialFrequencyResponse"

    #@436
    const v2, 0xa20c

    #@439
    const/4 v9, 0x7

    #@43a
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@43d
    const/16 v1, 0x22

    #@43f
    aput-object v0, v8, v1

    #@441
    .line 890
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@443
    const-string/jumbo v1, "FocalPlaneXResolution"

    #@446
    const v2, 0xa20e

    #@449
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@44c
    const/16 v1, 0x23

    #@44e
    aput-object v0, v8, v1

    #@450
    .line 891
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@452
    const-string/jumbo v1, "FocalPlaneYResolution"

    #@455
    const v2, 0xa20f

    #@458
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@45b
    const/16 v1, 0x24

    #@45d
    aput-object v0, v8, v1

    #@45f
    .line 892
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@461
    const-string/jumbo v1, "FocalPlaneResolutionUnit"

    #@464
    const v2, 0xa210

    #@467
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@46a
    const/16 v1, 0x25

    #@46c
    aput-object v0, v8, v1

    #@46e
    .line 893
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@470
    const-string/jumbo v1, "SubjectLocation"

    #@473
    const v2, 0xa214

    #@476
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@479
    const/16 v1, 0x26

    #@47b
    aput-object v0, v8, v1

    #@47d
    .line 894
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@47f
    const-string/jumbo v1, "ExposureIndex"

    #@482
    const v2, 0xa215

    #@485
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@488
    const/16 v1, 0x27

    #@48a
    aput-object v0, v8, v1

    #@48c
    .line 895
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@48e
    const-string/jumbo v1, "SensingMethod"

    #@491
    const v2, 0xa217

    #@494
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@497
    const/16 v1, 0x28

    #@499
    aput-object v0, v8, v1

    #@49b
    .line 896
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@49d
    const-string/jumbo v1, "FileSource"

    #@4a0
    const v2, 0xa300

    #@4a3
    const/4 v9, 0x7

    #@4a4
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@4a7
    const/16 v1, 0x29

    #@4a9
    aput-object v0, v8, v1

    #@4ab
    .line 897
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@4ad
    const-string/jumbo v1, "SceneType"

    #@4b0
    const v2, 0xa301

    #@4b3
    const/4 v9, 0x7

    #@4b4
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@4b7
    const/16 v1, 0x2a

    #@4b9
    aput-object v0, v8, v1

    #@4bb
    .line 898
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@4bd
    const-string/jumbo v1, "CFAPattern"

    #@4c0
    const v2, 0xa302

    #@4c3
    const/4 v9, 0x7

    #@4c4
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@4c7
    const/16 v1, 0x2b

    #@4c9
    aput-object v0, v8, v1

    #@4cb
    .line 899
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@4cd
    const-string/jumbo v1, "CustomRendered"

    #@4d0
    const v2, 0xa401

    #@4d3
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@4d6
    const/16 v1, 0x2c

    #@4d8
    aput-object v0, v8, v1

    #@4da
    .line 900
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@4dc
    const-string/jumbo v1, "ExposureMode"

    #@4df
    const v2, 0xa402

    #@4e2
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@4e5
    const/16 v1, 0x2d

    #@4e7
    aput-object v0, v8, v1

    #@4e9
    .line 901
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@4eb
    const-string/jumbo v1, "WhiteBalance"

    #@4ee
    const v2, 0xa403

    #@4f1
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@4f4
    const/16 v1, 0x2e

    #@4f6
    aput-object v0, v8, v1

    #@4f8
    .line 902
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@4fa
    const-string/jumbo v1, "DigitalZoomRatio"

    #@4fd
    const v2, 0xa404

    #@500
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@503
    const/16 v1, 0x2f

    #@505
    aput-object v0, v8, v1

    #@507
    .line 903
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@509
    const-string/jumbo v1, "FocalLengthIn35mmFilm"

    #@50c
    const v2, 0xa405

    #@50f
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@512
    const/16 v1, 0x30

    #@514
    aput-object v0, v8, v1

    #@516
    .line 904
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@518
    const-string/jumbo v1, "SceneCaptureType"

    #@51b
    const v2, 0xa406

    #@51e
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@521
    const/16 v1, 0x31

    #@523
    aput-object v0, v8, v1

    #@525
    .line 905
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@527
    const-string/jumbo v1, "GainControl"

    #@52a
    const v2, 0xa407

    #@52d
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@530
    const/16 v1, 0x32

    #@532
    aput-object v0, v8, v1

    #@534
    .line 906
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@536
    const-string/jumbo v1, "Contrast"

    #@539
    const v2, 0xa408

    #@53c
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@53f
    const/16 v1, 0x33

    #@541
    aput-object v0, v8, v1

    #@543
    .line 907
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@545
    const-string/jumbo v1, "Saturation"

    #@548
    const v2, 0xa409

    #@54b
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@54e
    const/16 v1, 0x34

    #@550
    aput-object v0, v8, v1

    #@552
    .line 908
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@554
    const-string/jumbo v1, "Sharpness"

    #@557
    const v2, 0xa40a

    #@55a
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@55d
    const/16 v1, 0x35

    #@55f
    aput-object v0, v8, v1

    #@561
    .line 909
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@563
    const-string/jumbo v1, "DeviceSettingDescription"

    #@566
    const v2, 0xa40b

    #@569
    const/4 v9, 0x7

    #@56a
    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@56d
    const/16 v1, 0x36

    #@56f
    aput-object v0, v8, v1

    #@571
    .line 910
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@573
    const-string/jumbo v1, "SubjectDistanceRange"

    #@576
    const v2, 0xa40c

    #@579
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@57c
    const/16 v1, 0x37

    #@57e
    aput-object v0, v8, v1

    #@580
    .line 911
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@582
    const-string/jumbo v1, "ImageUniqueID"

    #@585
    const v2, 0xa420

    #@588
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@58b
    const/16 v1, 0x38

    #@58d
    aput-object v0, v8, v1

    #@58f
    .line 854
    sput-object v8, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@591
    .line 915
    const/16 v0, 0x1f

    #@593
    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    #@595
    .line 916
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@597
    const-string/jumbo v2, "GPSVersionID"

    #@59a
    const/4 v8, 0x0

    #@59b
    const/4 v9, 0x1

    #@59c
    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@59f
    const/4 v2, 0x0

    #@5a0
    aput-object v1, v0, v2

    #@5a2
    .line 917
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@5a4
    const-string/jumbo v2, "GPSLatitudeRef"

    #@5a7
    const/4 v8, 0x1

    #@5a8
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@5ab
    const/4 v2, 0x1

    #@5ac
    aput-object v1, v0, v2

    #@5ae
    .line 918
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@5b0
    const-string/jumbo v2, "GPSLatitude"

    #@5b3
    invoke-direct {v1, v2, v10, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@5b6
    aput-object v1, v0, v10

    #@5b8
    .line 919
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@5ba
    const-string/jumbo v2, "GPSLongitudeRef"

    #@5bd
    invoke-direct {v1, v2, v3, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@5c0
    aput-object v1, v0, v3

    #@5c2
    .line 920
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@5c4
    const-string/jumbo v2, "GPSLongitude"

    #@5c7
    invoke-direct {v1, v2, v4, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@5ca
    aput-object v1, v0, v4

    #@5cc
    .line 921
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@5ce
    const-string/jumbo v2, "GPSAltitudeRef"

    #@5d1
    const/4 v8, 0x1

    #@5d2
    invoke-direct {v1, v2, v11, v8, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@5d5
    aput-object v1, v0, v11

    #@5d7
    .line 922
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@5d9
    const-string/jumbo v2, "GPSAltitude"

    #@5dc
    const/4 v8, 0x6

    #@5dd
    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@5e0
    const/4 v2, 0x6

    #@5e1
    aput-object v1, v0, v2

    #@5e3
    .line 923
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@5e5
    const-string/jumbo v2, "GPSTimeStamp"

    #@5e8
    const/4 v8, 0x7

    #@5e9
    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@5ec
    const/4 v2, 0x7

    #@5ed
    aput-object v1, v0, v2

    #@5ef
    .line 924
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@5f1
    const-string/jumbo v2, "GPSSatellites"

    #@5f4
    const/16 v8, 0x8

    #@5f6
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@5f9
    const/16 v2, 0x8

    #@5fb
    aput-object v1, v0, v2

    #@5fd
    .line 925
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@5ff
    const-string/jumbo v2, "GPSStatus"

    #@602
    const/16 v8, 0x9

    #@604
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@607
    const/16 v2, 0x9

    #@609
    aput-object v1, v0, v2

    #@60b
    .line 926
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@60d
    const-string/jumbo v2, "GPSMeasureMode"

    #@610
    const/16 v8, 0xa

    #@612
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@615
    const/16 v2, 0xa

    #@617
    aput-object v1, v0, v2

    #@619
    .line 927
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@61b
    const-string/jumbo v2, "GPSDOP"

    #@61e
    const/16 v8, 0xb

    #@620
    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@623
    const/16 v2, 0xb

    #@625
    aput-object v1, v0, v2

    #@627
    .line 928
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@629
    const-string/jumbo v2, "GPSSpeedRef"

    #@62c
    const/16 v8, 0xc

    #@62e
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@631
    const/16 v2, 0xc

    #@633
    aput-object v1, v0, v2

    #@635
    .line 929
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@637
    const-string/jumbo v2, "GPSSpeed"

    #@63a
    const/16 v8, 0xd

    #@63c
    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@63f
    const/16 v2, 0xd

    #@641
    aput-object v1, v0, v2

    #@643
    .line 930
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@645
    const-string/jumbo v2, "GPSTrackRef"

    #@648
    const/16 v8, 0xe

    #@64a
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@64d
    const/16 v2, 0xe

    #@64f
    aput-object v1, v0, v2

    #@651
    .line 931
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@653
    const-string/jumbo v2, "GPSTrack"

    #@656
    const/16 v8, 0xf

    #@658
    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@65b
    const/16 v2, 0xf

    #@65d
    aput-object v1, v0, v2

    #@65f
    .line 932
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@661
    const-string/jumbo v2, "GPSImgDirectionRef"

    #@664
    const/16 v8, 0x10

    #@666
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@669
    const/16 v2, 0x10

    #@66b
    aput-object v1, v0, v2

    #@66d
    .line 933
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@66f
    const-string/jumbo v2, "GPSImgDirection"

    #@672
    const/16 v8, 0x11

    #@674
    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@677
    const/16 v2, 0x11

    #@679
    aput-object v1, v0, v2

    #@67b
    .line 934
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@67d
    const-string/jumbo v2, "GPSMapDatum"

    #@680
    const/16 v8, 0x12

    #@682
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@685
    const/16 v2, 0x12

    #@687
    aput-object v1, v0, v2

    #@689
    .line 935
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@68b
    const-string/jumbo v2, "GPSDestLatitudeRef"

    #@68e
    const/16 v8, 0x13

    #@690
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@693
    const/16 v2, 0x13

    #@695
    aput-object v1, v0, v2

    #@697
    .line 936
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@699
    const-string/jumbo v2, "GPSDestLatitude"

    #@69c
    const/16 v8, 0x14

    #@69e
    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@6a1
    const/16 v2, 0x14

    #@6a3
    aput-object v1, v0, v2

    #@6a5
    .line 937
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@6a7
    const-string/jumbo v2, "GPSDestLongitudeRef"

    #@6aa
    const/16 v8, 0x15

    #@6ac
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@6af
    const/16 v2, 0x15

    #@6b1
    aput-object v1, v0, v2

    #@6b3
    .line 938
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@6b5
    const-string/jumbo v2, "GPSDestLongitude"

    #@6b8
    const/16 v8, 0x16

    #@6ba
    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@6bd
    const/16 v2, 0x16

    #@6bf
    aput-object v1, v0, v2

    #@6c1
    .line 939
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@6c3
    const-string/jumbo v2, "GPSDestBearingRef"

    #@6c6
    const/16 v8, 0x17

    #@6c8
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@6cb
    const/16 v2, 0x17

    #@6cd
    aput-object v1, v0, v2

    #@6cf
    .line 940
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@6d1
    const-string/jumbo v2, "GPSDestBearing"

    #@6d4
    const/16 v8, 0x18

    #@6d6
    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@6d9
    const/16 v2, 0x18

    #@6db
    aput-object v1, v0, v2

    #@6dd
    .line 941
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@6df
    const-string/jumbo v2, "GPSDestDistanceRef"

    #@6e2
    const/16 v8, 0x19

    #@6e4
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@6e7
    const/16 v2, 0x19

    #@6e9
    aput-object v1, v0, v2

    #@6eb
    .line 942
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@6ed
    const-string/jumbo v2, "GPSDestDistance"

    #@6f0
    const/16 v8, 0x1a

    #@6f2
    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@6f5
    const/16 v2, 0x1a

    #@6f7
    aput-object v1, v0, v2

    #@6f9
    .line 943
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@6fb
    const-string/jumbo v2, "GPSProcessingMethod"

    #@6fe
    const/16 v8, 0x1b

    #@700
    const/4 v9, 0x7

    #@701
    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@704
    const/16 v2, 0x1b

    #@706
    aput-object v1, v0, v2

    #@708
    .line 944
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@70a
    const-string/jumbo v2, "GPSAreaInformation"

    #@70d
    const/16 v8, 0x1c

    #@70f
    const/4 v9, 0x7

    #@710
    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@713
    const/16 v2, 0x1c

    #@715
    aput-object v1, v0, v2

    #@717
    .line 945
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@719
    const-string/jumbo v2, "GPSDateStamp"

    #@71c
    const/16 v8, 0x1d

    #@71e
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@721
    const/16 v2, 0x1d

    #@723
    aput-object v1, v0, v2

    #@725
    .line 946
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@727
    const-string/jumbo v2, "GPSDifferential"

    #@72a
    const/16 v8, 0x1e

    #@72c
    invoke-direct {v1, v2, v8, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@72f
    const/16 v2, 0x1e

    #@731
    aput-object v1, v0, v2

    #@733
    .line 915
    sput-object v0, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@735
    .line 949
    const/4 v0, 0x1

    #@736
    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    #@738
    .line 950
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@73a
    const-string/jumbo v2, "InteroperabilityIndex"

    #@73d
    const/4 v8, 0x1

    #@73e
    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@741
    const/4 v2, 0x0

    #@742
    aput-object v1, v0, v2

    #@744
    .line 949
    sput-object v0, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@746
    .line 953
    const/16 v0, 0x20

    #@748
    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    #@74a
    .line 954
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@74c
    const-string/jumbo v1, "ThumbnailImageWidth"

    #@74f
    const/16 v2, 0x100

    #@751
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@754
    const/4 v1, 0x0

    #@755
    aput-object v0, v8, v1

    #@757
    .line 955
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@759
    const-string/jumbo v1, "ThumbnailImageLength"

    #@75c
    const/16 v2, 0x101

    #@75e
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@761
    const/4 v1, 0x1

    #@762
    aput-object v0, v8, v1

    #@764
    .line 956
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@766
    const-string/jumbo v1, "BitsPerSample"

    #@769
    const/16 v2, 0x102

    #@76b
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@76e
    aput-object v0, v8, v10

    #@770
    .line 957
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@772
    const-string/jumbo v1, "Compression"

    #@775
    const/16 v2, 0x103

    #@777
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@77a
    aput-object v0, v8, v3

    #@77c
    .line 958
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@77e
    const-string/jumbo v1, "PhotometricInterpretation"

    #@781
    const/16 v2, 0x106

    #@783
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@786
    aput-object v0, v8, v4

    #@788
    .line 959
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@78a
    const-string/jumbo v1, "ImageDescription"

    #@78d
    const/16 v2, 0x10e

    #@78f
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@792
    aput-object v0, v8, v11

    #@794
    .line 960
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@796
    const-string/jumbo v1, "Make"

    #@799
    const/16 v2, 0x10f

    #@79b
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@79e
    const/4 v1, 0x6

    #@79f
    aput-object v0, v8, v1

    #@7a1
    .line 961
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@7a3
    const-string/jumbo v1, "Model"

    #@7a6
    const/16 v2, 0x110

    #@7a8
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@7ab
    const/4 v1, 0x7

    #@7ac
    aput-object v0, v8, v1

    #@7ae
    .line 962
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@7b0
    const-string/jumbo v1, "StripOffsets"

    #@7b3
    invoke-direct {v0, v1, v3, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@7b6
    const/16 v1, 0x8

    #@7b8
    aput-object v0, v8, v1

    #@7ba
    .line 963
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@7bc
    const-string/jumbo v1, "Orientation"

    #@7bf
    const/16 v2, 0x112

    #@7c1
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@7c4
    const/16 v1, 0x9

    #@7c6
    aput-object v0, v8, v1

    #@7c8
    .line 964
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@7ca
    const-string/jumbo v1, "SamplesPerPixel"

    #@7cd
    const/16 v2, 0x115

    #@7cf
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@7d2
    const/16 v1, 0xa

    #@7d4
    aput-object v0, v8, v1

    #@7d6
    .line 965
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@7d8
    const-string/jumbo v1, "RowsPerStrip"

    #@7db
    const/16 v2, 0x116

    #@7dd
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@7e0
    const/16 v1, 0xb

    #@7e2
    aput-object v0, v8, v1

    #@7e4
    .line 966
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@7e6
    const-string/jumbo v1, "StripByteCounts"

    #@7e9
    const/16 v2, 0x117

    #@7eb
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    #@7ee
    const/16 v1, 0xc

    #@7f0
    aput-object v0, v8, v1

    #@7f2
    .line 967
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@7f4
    const-string/jumbo v1, "XResolution"

    #@7f7
    const/16 v2, 0x11a

    #@7f9
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@7fc
    const/16 v1, 0xd

    #@7fe
    aput-object v0, v8, v1

    #@800
    .line 968
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@802
    const-string/jumbo v1, "YResolution"

    #@805
    const/16 v2, 0x11b

    #@807
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@80a
    const/16 v1, 0xe

    #@80c
    aput-object v0, v8, v1

    #@80e
    .line 969
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@810
    const-string/jumbo v1, "PlanarConfiguration"

    #@813
    const/16 v2, 0x11c

    #@815
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@818
    const/16 v1, 0xf

    #@81a
    aput-object v0, v8, v1

    #@81c
    .line 970
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@81e
    const-string/jumbo v1, "ResolutionUnit"

    #@821
    const/16 v2, 0x128

    #@823
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@826
    const/16 v1, 0x10

    #@828
    aput-object v0, v8, v1

    #@82a
    .line 971
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@82c
    const-string/jumbo v1, "TransferFunction"

    #@82f
    const/16 v2, 0x12d

    #@831
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@834
    const/16 v1, 0x11

    #@836
    aput-object v0, v8, v1

    #@838
    .line 972
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@83a
    const-string/jumbo v1, "Software"

    #@83d
    const/16 v2, 0x131

    #@83f
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@842
    const/16 v1, 0x12

    #@844
    aput-object v0, v8, v1

    #@846
    .line 973
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@848
    const-string/jumbo v1, "DateTime"

    #@84b
    const/16 v2, 0x132

    #@84d
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@850
    const/16 v1, 0x13

    #@852
    aput-object v0, v8, v1

    #@854
    .line 974
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@856
    const-string/jumbo v1, "Artist"

    #@859
    const/16 v2, 0x13b

    #@85b
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@85e
    const/16 v1, 0x14

    #@860
    aput-object v0, v8, v1

    #@862
    .line 975
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@864
    const-string/jumbo v1, "WhitePoint"

    #@867
    const/16 v2, 0x13e

    #@869
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@86c
    const/16 v1, 0x15

    #@86e
    aput-object v0, v8, v1

    #@870
    .line 976
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@872
    const-string/jumbo v1, "PrimaryChromaticities"

    #@875
    const/16 v2, 0x13f

    #@877
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@87a
    const/16 v1, 0x16

    #@87c
    aput-object v0, v8, v1

    #@87e
    .line 977
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@880
    const-string/jumbo v1, "JPEGInterchangeFormat"

    #@883
    const/16 v2, 0x201

    #@885
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@888
    const/16 v1, 0x17

    #@88a
    aput-object v0, v8, v1

    #@88c
    .line 978
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@88e
    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    #@891
    const/16 v2, 0x202

    #@893
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@896
    const/16 v1, 0x18

    #@898
    aput-object v0, v8, v1

    #@89a
    .line 979
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@89c
    const-string/jumbo v1, "YCbCrCoefficients"

    #@89f
    const/16 v2, 0x211

    #@8a1
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@8a4
    const/16 v1, 0x19

    #@8a6
    aput-object v0, v8, v1

    #@8a8
    .line 980
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@8aa
    const-string/jumbo v1, "YCbCrSubSampling"

    #@8ad
    const/16 v2, 0x212

    #@8af
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@8b2
    const/16 v1, 0x1a

    #@8b4
    aput-object v0, v8, v1

    #@8b6
    .line 981
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@8b8
    const-string/jumbo v1, "YCbCrPositioning"

    #@8bb
    const/16 v2, 0x213

    #@8bd
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@8c0
    const/16 v1, 0x1b

    #@8c2
    aput-object v0, v8, v1

    #@8c4
    .line 982
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@8c6
    const-string/jumbo v1, "ReferenceBlackWhite"

    #@8c9
    const/16 v2, 0x214

    #@8cb
    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@8ce
    const/16 v1, 0x1c

    #@8d0
    aput-object v0, v8, v1

    #@8d2
    .line 983
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@8d4
    const-string/jumbo v1, "Copyright"

    #@8d7
    const v2, 0x8298

    #@8da
    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@8dd
    const/16 v1, 0x1d

    #@8df
    aput-object v0, v8, v1

    #@8e1
    .line 984
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@8e3
    const-string/jumbo v1, "ExifIFDPointer"

    #@8e6
    const v2, 0x8769

    #@8e9
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@8ec
    const/16 v1, 0x1e

    #@8ee
    aput-object v0, v8, v1

    #@8f0
    .line 985
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@8f2
    const-string/jumbo v1, "GPSInfoIFDPointer"

    #@8f5
    const v2, 0x8825

    #@8f8
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@8fb
    const/16 v1, 0x1f

    #@8fd
    aput-object v0, v8, v1

    #@8ff
    .line 953
    sput-object v8, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@901
    .line 998
    new-array v0, v11, [[Landroid/media/ExifInterface$ExifTag;

    #@903
    .line 999
    sget-object v1, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@905
    const/4 v2, 0x0

    #@906
    aput-object v1, v0, v2

    #@908
    sget-object v1, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@90a
    const/4 v2, 0x1

    #@90b
    aput-object v1, v0, v2

    #@90d
    sget-object v1, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@90f
    aput-object v1, v0, v10

    #@911
    sget-object v1, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@913
    aput-object v1, v0, v3

    #@915
    .line 1000
    sget-object v1, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@917
    aput-object v1, v0, v4

    #@919
    .line 998
    sput-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@91b
    .line 1003
    new-array v0, v3, [Landroid/media/ExifInterface$ExifTag;

    #@91d
    .line 1004
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@91f
    const-string/jumbo v2, "ExifIFDPointer"

    #@922
    const v8, 0x8769

    #@925
    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@928
    const/4 v2, 0x0

    #@929
    aput-object v1, v0, v2

    #@92b
    .line 1005
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@92d
    const-string/jumbo v2, "GPSInfoIFDPointer"

    #@930
    const v8, 0x8825

    #@933
    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@936
    const/4 v2, 0x1

    #@937
    aput-object v1, v0, v2

    #@939
    .line 1006
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    #@93b
    const-string/jumbo v2, "InteroperabilityIFDPointer"

    #@93e
    const v8, 0xa005

    #@941
    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@944
    aput-object v1, v0, v10

    #@946
    .line 1003
    sput-object v0, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@948
    .line 1010
    const/4 v0, 0x1

    #@949
    .line 1009
    filled-new-array {v0, v10, v3}, [I

    #@94c
    move-result-object v0

    #@94d
    sput-object v0, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    #@94f
    .line 1014
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@951
    const-string/jumbo v1, "JPEGInterchangeFormat"

    #@954
    const/16 v2, 0x201

    #@956
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@959
    .line 1013
    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    #@95b
    .line 1016
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    #@95d
    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    #@960
    const/16 v2, 0x202

    #@962
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    #@965
    .line 1015
    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    #@967
    .line 1019
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@969
    array-length v0, v0

    #@96a
    new-array v0, v0, [Ljava/util/HashMap;

    #@96c
    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    #@96e
    .line 1021
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@970
    array-length v0, v0

    #@971
    new-array v0, v0, [Ljava/util/HashMap;

    #@973
    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    #@975
    .line 1022
    new-instance v0, Ljava/util/HashSet;

    #@977
    new-array v1, v11, [Ljava/lang/String;

    #@979
    .line 1023
    const-string/jumbo v2, "FNumber"

    #@97c
    const/4 v5, 0x0

    #@97d
    aput-object v2, v1, v5

    #@97f
    const-string/jumbo v2, "DigitalZoomRatio"

    #@982
    const/4 v5, 0x1

    #@983
    aput-object v2, v1, v5

    #@985
    const-string/jumbo v2, "ExposureTime"

    #@988
    aput-object v2, v1, v10

    #@98a
    const-string/jumbo v2, "SubjectDistance"

    #@98d
    aput-object v2, v1, v3

    #@98f
    .line 1024
    const-string/jumbo v2, "GPSTimeStamp"

    #@992
    aput-object v2, v1, v4

    #@994
    .line 1022
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@997
    move-result-object v1

    #@998
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@99b
    sput-object v0, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    #@99d
    .line 1031
    const-string/jumbo v0, "US-ASCII"

    #@9a0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@9a3
    move-result-object v0

    #@9a4
    sput-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    #@9a6
    .line 1033
    const-string/jumbo v0, "Exif\u0000\u0000"

    #@9a9
    sget-object v1, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    #@9ab
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9ae
    move-result-object v0

    #@9af
    sput-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    #@9b1
    .line 1058
    const-string/jumbo v0, "media_jni"

    #@9b4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@9b7
    .line 1059
    invoke-static {}, Landroid/media/ExifInterface;->nativeInitRaw()V

    #@9ba
    .line 1060
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@9bc
    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    #@9bf
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@9c2
    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    #@9c4
    .line 1061
    sget-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    #@9c6
    const-string/jumbo v1, "UTC"

    #@9c9
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@9cc
    move-result-object v1

    #@9cd
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@9d0
    .line 1064
    const/4 v6, 0x0

    #@9d1
    .local v6, "hint":I
    :goto_0
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@9d3
    array-length v0, v0

    #@9d4
    if-ge v6, v0, :cond_1

    #@9d6
    .line 1065
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    #@9d8
    new-instance v1, Ljava/util/HashMap;

    #@9da
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@9dd
    aput-object v1, v0, v6

    #@9df
    .line 1066
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    #@9e1
    new-instance v1, Ljava/util/HashMap;

    #@9e3
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@9e6
    aput-object v1, v0, v6

    #@9e8
    .line 1067
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@9ea
    aget-object v1, v0, v6

    #@9ec
    const/4 v0, 0x0

    #@9ed
    array-length v2, v1

    #@9ee
    :goto_1
    if-ge v0, v2, :cond_0

    #@9f0
    aget-object v7, v1, v0

    #@9f2
    .line 1068
    .local v7, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    #@9f4
    aget-object v3, v3, v6

    #@9f6
    iget v4, v7, Landroid/media/ExifInterface$ExifTag;->number:I

    #@9f8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9fb
    move-result-object v4

    #@9fc
    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9ff
    .line 1069
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    #@a01
    aget-object v3, v3, v6

    #@a03
    iget-object v4, v7, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@a05
    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a08
    .line 1067
    add-int/lit8 v0, v0, 0x1

    #@a0a
    goto :goto_1

    #@a0b
    .line 1064
    .end local v7    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@a0d
    goto :goto_0

    #@a0e
    .line 1089
    :cond_1
    const-string/jumbo v0, ".*[1-9].*"

    #@a11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a14
    move-result-object v0

    #@a15
    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    #@a17
    .line 1092
    const-string/jumbo v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    #@a1a
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a1d
    move-result-object v0

    #@a1e
    .line 1091
    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    #@a20
    .line 67
    return-void

    #@a21
    .line 373
    nop

    #@a22
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    #@a28
    .line 406
    :array_1
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
    .end array-data

    #@a46
    .line 409
    :array_2
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

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1079
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@6
    array-length v3, v3

    #@7
    new-array v3, v3, [Ljava/util/HashMap;

    #@9
    iput-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@b
    .line 1080
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@d
    iput-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@f
    .line 1124
    if-nez p1, :cond_0

    #@11
    .line 1125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v4, "fileDescriptor cannot be null"

    #@16
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 1127
    :cond_0
    iput-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    #@1c
    .line 1128
    iput-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@1e
    .line 1129
    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 1130
    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@26
    .line 1135
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object p1

    #@2a
    .line 1142
    :goto_0
    const/4 v3, 0x0

    #@2b
    iput-boolean v3, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    #@2d
    .line 1143
    const/4 v1, 0x0

    #@2e
    .line 1145
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    #@30
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .line 1146
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_2
    invoke-direct {p0, v2}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@36
    .line 1148
    .end local v1    # "in":Ljava/io/FileInputStream;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@39
    .line 1123
    return-void

    #@3a
    .line 1136
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    #@3b
    .line 1137
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@3e
    move-result-object v3

    #@3f
    throw v3

    #@40
    .line 1140
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    iput-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@42
    goto :goto_0

    #@43
    .line 1147
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    #@44
    .line 1148
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@47
    .line 1147
    throw v3

    #@48
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    #@49
    move-object v1, v2

    #@4a
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1079
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@6
    array-length v0, v0

    #@7
    new-array v0, v0, [Ljava/util/HashMap;

    #@9
    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@b
    .line 1080
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@d
    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@f
    .line 1158
    if-nez p1, :cond_0

    #@11
    .line 1159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "inputStream cannot be null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 1161
    :cond_0
    iput-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@1c
    .line 1162
    instance-of v0, p1, Landroid/content/res/AssetManager$AssetInputStream;

    #@1e
    if-eqz v0, :cond_1

    #@20
    move-object v0, p1

    #@21
    .line 1163
    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    #@23
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    #@25
    .line 1164
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@27
    .line 1173
    :goto_0
    const/4 v0, 0x1

    #@28
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    #@2a
    .line 1174
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    #@2d
    .line 1157
    return-void

    #@2e
    .line 1165
    :cond_1
    instance-of v0, p1, Ljava/io/FileInputStream;

    #@30
    if-eqz v0, :cond_2

    #@32
    move-object v0, p1

    #@33
    .line 1166
    check-cast v0, Ljava/io/FileInputStream;

    #@35
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@38
    move-result-object v0

    #@39
    invoke-static {v0}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    #@3c
    move-result v0

    #@3d
    .line 1165
    if-eqz v0, :cond_2

    #@3f
    .line 1167
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    #@41
    move-object v0, p1

    #@42
    .line 1168
    check-cast v0, Ljava/io/FileInputStream;

    #@44
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@4a
    goto :goto_0

    #@4b
    .line 1170
    :cond_2
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    #@4d
    .line 1171
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@4f
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1079
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@6
    array-length v2, v2

    #@7
    new-array v2, v2, [Ljava/util/HashMap;

    #@9
    iput-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@b
    .line 1080
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@d
    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@f
    .line 1098
    if-nez p1, :cond_0

    #@11
    .line 1099
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "filename cannot be null"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 1101
    :cond_0
    const/4 v0, 0x0

    #@1b
    .line 1102
    .local v0, "in":Ljava/io/FileInputStream;
    iput-object v3, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    #@1d
    .line 1103
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@1f
    .line 1104
    const/4 v2, 0x0

    #@20
    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    #@22
    .line 1106
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    #@24
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@27
    .line 1107
    .end local v0    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v2}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 1108
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@34
    move-result-object v2

    #@35
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@37
    .line 1112
    :goto_0
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 1114
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    .line 1097
    return-void

    #@3e
    .line 1110
    :cond_1
    const/4 v2, 0x0

    #@3f
    :try_start_2
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 1113
    :catchall_0
    move-exception v2

    #@43
    move-object v0, v1

    #@44
    .line 1114
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@47
    .line 1113
    throw v2

    #@48
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    #@49
    goto :goto_1
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 2141
    const-string/jumbo v1, "DateTimeOriginal"

    #@6
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 2142
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    .line 2143
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@e
    aget-object v1, v1, v4

    #@10
    const-string/jumbo v2, "DateTime"

    #@13
    .line 2144
    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    #@16
    move-result-object v3

    #@17
    .line 2143
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 2148
    :cond_0
    const-string/jumbo v1, "ImageWidth"

    #@1d
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    if-nez v1, :cond_1

    #@23
    .line 2149
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@25
    aget-object v1, v1, v4

    #@27
    const-string/jumbo v2, "ImageWidth"

    #@2a
    .line 2150
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@2c
    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@2f
    move-result-object v3

    #@30
    .line 2149
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 2152
    :cond_1
    const-string/jumbo v1, "ImageLength"

    #@36
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    if-nez v1, :cond_2

    #@3c
    .line 2153
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@3e
    aget-object v1, v1, v4

    #@40
    const-string/jumbo v2, "ImageLength"

    #@43
    .line 2154
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@45
    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@48
    move-result-object v3

    #@49
    .line 2153
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    .line 2156
    :cond_2
    const-string/jumbo v1, "Orientation"

    #@4f
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    if-nez v1, :cond_3

    #@55
    .line 2157
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@57
    aget-object v1, v1, v4

    #@59
    const-string/jumbo v2, "Orientation"

    #@5c
    .line 2158
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@5e
    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@61
    move-result-object v3

    #@62
    .line 2157
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 2160
    :cond_3
    const-string/jumbo v1, "LightSource"

    #@68
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    if-nez v1, :cond_4

    #@6e
    .line 2161
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@70
    const/4 v2, 0x1

    #@71
    aget-object v1, v1, v2

    #@73
    const-string/jumbo v2, "LightSource"

    #@76
    .line 2162
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@78
    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@7b
    move-result-object v3

    #@7c
    .line 2161
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    .line 2139
    :cond_4
    return-void
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 18
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1797
    :try_start_0
    const-string/jumbo v9, ","

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v8

    #@9
    .line 1800
    .local v8, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    #@a
    aget-object v9, v8, v9

    #@c
    const-string/jumbo v14, "/"

    #@f
    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    .line 1801
    .local v5, "pair":[Ljava/lang/String;
    const/4 v9, 0x0

    #@14
    aget-object v9, v5, v9

    #@16
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@19
    move-result-object v9

    #@1a
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@1d
    move-result-wide v14

    #@1e
    .line 1802
    const/4 v9, 0x1

    #@1f
    aget-object v9, v5, v9

    #@21
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@24
    move-result-object v9

    #@25
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@28
    move-result-wide v16

    #@29
    .line 1801
    div-double v2, v14, v16

    #@2b
    .line 1804
    .local v2, "degrees":D
    const/4 v9, 0x1

    #@2c
    aget-object v9, v8, v9

    #@2e
    const-string/jumbo v14, "/"

    #@31
    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 1805
    const/4 v9, 0x0

    #@36
    aget-object v9, v5, v9

    #@38
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3b
    move-result-object v9

    #@3c
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@3f
    move-result-wide v14

    #@40
    .line 1806
    const/4 v9, 0x1

    #@41
    aget-object v9, v5, v9

    #@43
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@46
    move-result-object v9

    #@47
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@4a
    move-result-wide v16

    #@4b
    .line 1805
    div-double v6, v14, v16

    #@4d
    .line 1808
    .local v6, "minutes":D
    const/4 v9, 0x2

    #@4e
    aget-object v9, v8, v9

    #@50
    const-string/jumbo v14, "/"

    #@53
    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    .line 1809
    const/4 v9, 0x0

    #@58
    aget-object v9, v5, v9

    #@5a
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5d
    move-result-object v9

    #@5e
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@61
    move-result-wide v14

    #@62
    .line 1810
    const/4 v9, 0x1

    #@63
    aget-object v9, v5, v9

    #@65
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@68
    move-result-object v9

    #@69
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@6c
    move-result-wide v16

    #@6d
    .line 1809
    div-double v12, v14, v16

    #@6f
    .line 1812
    .local v12, "seconds":D
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    #@71
    div-double v14, v6, v14

    #@73
    add-double/2addr v14, v2

    #@74
    const-wide v16, 0x40ac200000000000L    # 3600.0

    #@79
    div-double v16, v12, v16

    #@7b
    add-double v10, v14, v16

    #@7d
    .line 1813
    .local v10, "result":D
    const-string/jumbo v9, "S"

    #@80
    move-object/from16 v0, p1

    #@82
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v9

    #@86
    if-nez v9, :cond_0

    #@88
    const-string/jumbo v9, "W"

    #@8b
    move-object/from16 v0, p1

    #@8d
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    move-result v9

    #@91
    if-eqz v9, :cond_1

    #@93
    .line 1814
    :cond_0
    neg-double v14, v10

    #@94
    double-to-float v9, v14

    #@95
    return v9

    #@96
    .line 1816
    :cond_1
    double-to-float v9, v10

    #@97
    return v9

    #@98
    .line 1817
    .end local v2    # "degrees":D
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "minutes":D
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "result":D
    .end local v12    # "seconds":D
    :catch_0
    move-exception v4

    #@99
    .line 1819
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@9b
    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9e
    throw v9
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1186
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 1187
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@9
    aget-object v2, v2, v0

    #@b
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 1188
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@11
    .line 1189
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    #@13
    .end local v1    # "value":Ljava/lang/Object;
    return-object v1

    #@14
    .line 1186
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1192
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method private static getIfdHintFromTagNumber(I)I
    .locals 2
    .param p0, "tagNumber"    # I

    #@0
    .prologue
    .line 2299
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 2300
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@8
    aget-object v1, v1, v0

    #@a
    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    #@c
    if-ne v1, p0, :cond_0

    #@e
    .line 2301
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    #@10
    aget v1, v1, v0

    #@12
    return v1

    #@13
    .line 2299
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2304
    :cond_1
    const/4 v1, -0x1

    #@17
    return v1
.end method

.method private getJpegAttributes(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1829
    new-instance v2, Ljava/io/DataInputStream;

    #@2
    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 1832
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    #@8
    move-result v5

    #@9
    .local v5, "marker":B
    const/4 v6, -0x1

    #@a
    if-eq v5, v6, :cond_0

    #@c
    .line 1833
    new-instance v6, Ljava/io/IOException;

    #@e
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, "Invalid marker: "

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    and-int/lit16 v8, v5, 0xff

    #@1c
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v7

    #@28
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v6

    #@2c
    .line 1835
    :cond_0
    const/4 v1, 0x1

    #@2d
    .line 1836
    .local v1, "bytesRead":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    #@30
    move-result v6

    #@31
    const/16 v7, -0x28

    #@33
    if-eq v6, v7, :cond_1

    #@35
    .line 1837
    new-instance v6, Ljava/io/IOException;

    #@37
    new-instance v7, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v8, "Invalid marker: "

    #@3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    and-int/lit16 v8, v5, 0xff

    #@45
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@54
    throw v6

    #@55
    .line 1839
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@57
    .line 1841
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    #@5a
    move-result v5

    #@5b
    .line 1842
    const/4 v6, -0x1

    #@5c
    if-eq v5, v6, :cond_2

    #@5e
    .line 1843
    new-instance v6, Ljava/io/IOException;

    #@60
    new-instance v7, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v8, "Invalid marker:"

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    and-int/lit16 v8, v5, 0xff

    #@6e
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@71
    move-result-object v8

    #@72
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v7

    #@76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v7

    #@7a
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v6

    #@7e
    .line 1845
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@80
    .line 1846
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    #@83
    move-result v5

    #@84
    .line 1850
    add-int/lit8 v1, v1, 0x1

    #@86
    .line 1854
    const/16 v6, -0x27

    #@88
    if-eq v5, v6, :cond_3

    #@8a
    const/16 v6, -0x26

    #@8c
    if-ne v5, v6, :cond_4

    #@8e
    .line 1824
    :cond_3
    return-void

    #@8f
    .line 1857
    :cond_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@92
    move-result v6

    #@93
    add-int/lit8 v4, v6, -0x2

    #@95
    .line 1858
    .local v4, "length":I
    add-int/lit8 v1, v1, 0x2

    #@97
    .line 1863
    if-gez v4, :cond_5

    #@99
    .line 1864
    new-instance v6, Ljava/io/IOException;

    #@9b
    const-string/jumbo v7, "Invalid length"

    #@9e
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v6

    #@a2
    .line 1866
    :cond_5
    sparse-switch v5, :sswitch_data_0

    #@a5
    .line 1942
    :cond_6
    :goto_1
    if-gez v4, :cond_c

    #@a7
    .line 1943
    new-instance v6, Ljava/io/IOException;

    #@a9
    const-string/jumbo v7, "Invalid length"

    #@ac
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@af
    throw v6

    #@b0
    .line 1871
    :sswitch_0
    const/4 v6, 0x6

    #@b1
    if-lt v4, v6, :cond_6

    #@b3
    .line 1875
    const/4 v6, 0x6

    #@b4
    new-array v3, v6, [B

    #@b6
    .line 1876
    .local v3, "identifier":[B
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    #@b9
    move-result v6

    #@ba
    const/4 v7, 0x6

    #@bb
    if-eq v6, v7, :cond_7

    #@bd
    .line 1877
    new-instance v6, Ljava/io/IOException;

    #@bf
    const-string/jumbo v7, "Invalid exif"

    #@c2
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v6

    #@c6
    .line 1879
    :cond_7
    add-int/lit8 v1, v1, 0x6

    #@c8
    .line 1880
    add-int/lit8 v4, v4, -0x6

    #@ca
    .line 1881
    sget-object v6, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    #@cc
    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    #@cf
    move-result v6

    #@d0
    if-eqz v6, :cond_6

    #@d2
    .line 1885
    if-gtz v4, :cond_8

    #@d4
    .line 1886
    new-instance v6, Ljava/io/IOException;

    #@d6
    const-string/jumbo v7, "Invalid exif"

    #@d9
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@dc
    throw v6

    #@dd
    .line 1891
    :cond_8
    new-array v0, v4, [B

    #@df
    .line 1892
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    #@e2
    move-result v6

    #@e3
    if-eq v6, v4, :cond_9

    #@e5
    .line 1893
    new-instance v6, Ljava/io/IOException;

    #@e7
    const-string/jumbo v7, "Invalid exif"

    #@ea
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ed
    throw v6

    #@ee
    .line 1895
    :cond_9
    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    #@f1
    .line 1896
    add-int/2addr v1, v4

    #@f2
    .line 1897
    const/4 v4, 0x0

    #@f3
    .line 1898
    goto :goto_1

    #@f4
    .line 1902
    .end local v0    # "bytes":[B
    .end local v3    # "identifier":[B
    :sswitch_1
    new-array v0, v4, [B

    #@f6
    .line 1903
    .restart local v0    # "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    #@f9
    move-result v6

    #@fa
    if-eq v6, v4, :cond_a

    #@fc
    .line 1904
    new-instance v6, Ljava/io/IOException;

    #@fe
    const-string/jumbo v7, "Invalid exif"

    #@101
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@104
    throw v6

    #@105
    .line 1906
    :cond_a
    const/4 v4, 0x0

    #@106
    .line 1907
    const-string/jumbo v6, "UserComment"

    #@109
    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@10c
    move-result-object v6

    #@10d
    if-nez v6, :cond_6

    #@10f
    .line 1908
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@111
    const/4 v7, 0x1

    #@112
    aget-object v6, v6, v7

    #@114
    const-string/jumbo v7, "UserComment"

    #@117
    .line 1909
    new-instance v8, Ljava/lang/String;

    #@119
    sget-object v9, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    #@11b
    invoke-direct {v8, v0, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@11e
    .line 1908
    invoke-static {v8}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    #@121
    move-result-object v8

    #@122
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@125
    goto :goto_1

    #@126
    .line 1927
    .end local v0    # "bytes":[B
    :sswitch_2
    const/4 v6, 0x1

    #@127
    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->skipBytes(I)I

    #@12a
    move-result v6

    #@12b
    const/4 v7, 0x1

    #@12c
    if-eq v6, v7, :cond_b

    #@12e
    .line 1928
    new-instance v6, Ljava/io/IOException;

    #@130
    const-string/jumbo v7, "Invalid SOFx"

    #@133
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@136
    throw v6

    #@137
    .line 1930
    :cond_b
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@139
    const/4 v7, 0x0

    #@13a
    aget-object v6, v6, v7

    #@13c
    const-string/jumbo v7, "ImageLength"

    #@13f
    .line 1931
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@142
    move-result v8

    #@143
    int-to-long v8, v8

    #@144
    iget-object v10, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@146
    .line 1930
    invoke-static {v8, v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@149
    move-result-object v8

    #@14a
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14d
    .line 1932
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@14f
    const/4 v7, 0x0

    #@150
    aget-object v6, v6, v7

    #@152
    const-string/jumbo v7, "ImageWidth"

    #@155
    .line 1933
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@158
    move-result v8

    #@159
    int-to-long v8, v8

    #@15a
    iget-object v10, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@15c
    .line 1932
    invoke-static {v8, v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@15f
    move-result-object v8

    #@160
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@163
    .line 1934
    add-int/lit8 v4, v4, -0x5

    #@165
    .line 1935
    goto/16 :goto_1

    #@167
    .line 1945
    :cond_c
    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    #@16a
    move-result v6

    #@16b
    if-eq v6, v4, :cond_d

    #@16d
    .line 1946
    new-instance v6, Ljava/io/IOException;

    #@16f
    const-string/jumbo v7, "Invalid JPEG segment"

    #@172
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@175
    throw v6

    #@176
    .line 1948
    :cond_d
    add-int/2addr v1, v4

    #@177
    goto/16 :goto_0

    #@179
    .line 1866
    nop

    #@17a
    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_2
        -0x3f -> :sswitch_2
        -0x3e -> :sswitch_2
        -0x3d -> :sswitch_2
        -0x3b -> :sswitch_2
        -0x3a -> :sswitch_2
        -0x39 -> :sswitch_2
        -0x37 -> :sswitch_2
        -0x36 -> :sswitch_2
        -0x35 -> :sswitch_2
        -0x33 -> :sswitch_2
        -0x32 -> :sswitch_2
        -0x31 -> :sswitch_2
        -0x1f -> :sswitch_0
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 20
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2490
    const-string/jumbo v15, ","

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@8
    move-result v15

    #@9
    if-eqz v15, :cond_9

    #@b
    .line 2491
    const-string/jumbo v15, ","

    #@e
    move-object/from16 v0, p0

    #@10
    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    .line 2492
    .local v6, "entryValues":[Ljava/lang/String;
    const/4 v15, 0x0

    #@15
    aget-object v15, v6, v15

    #@17
    invoke-static {v15}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    #@1a
    move-result-object v2

    #@1b
    .line 2493
    .local v2, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1d
    check-cast v15, Ljava/lang/Integer;

    #@1f
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result v15

    #@23
    const/16 v16, 0x2

    #@25
    move/from16 v0, v16

    #@27
    if-ne v15, v0, :cond_0

    #@29
    .line 2494
    return-object v2

    #@2a
    .line 2496
    :cond_0
    const/4 v9, 0x1

    #@2b
    .local v9, "i":I
    :goto_0
    array-length v15, v6

    #@2c
    if-ge v9, v15, :cond_8

    #@2e
    .line 2497
    aget-object v15, v6, v9

    #@30
    invoke-static {v15}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    #@33
    move-result-object v8

    #@34
    .line 2498
    .local v8, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    #@35
    .local v7, "first":I
    const/4 v14, -0x1

    #@36
    .line 2499
    .local v14, "second":I
    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@38
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3a
    move-object/from16 v16, v0

    #@3c
    move-object/from16 v0, v16

    #@3e
    if-eq v15, v0, :cond_1

    #@40
    .line 2500
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@42
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@44
    move-object/from16 v16, v0

    #@46
    move-object/from16 v0, v16

    #@48
    if-ne v15, v0, :cond_2

    #@4a
    .line 2501
    :cond_1
    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@4c
    check-cast v15, Ljava/lang/Integer;

    #@4e
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@51
    move-result v7

    #@52
    .line 2503
    :cond_2
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@54
    check-cast v15, Ljava/lang/Integer;

    #@56
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@59
    move-result v15

    #@5a
    const/16 v16, -0x1

    #@5c
    move/from16 v0, v16

    #@5e
    if-eq v15, v0, :cond_4

    #@60
    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@62
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@64
    move-object/from16 v16, v0

    #@66
    move-object/from16 v0, v16

    #@68
    if-eq v15, v0, :cond_3

    #@6a
    .line 2504
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@6c
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@6e
    move-object/from16 v16, v0

    #@70
    move-object/from16 v0, v16

    #@72
    if-ne v15, v0, :cond_4

    #@74
    .line 2505
    :cond_3
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@76
    check-cast v15, Ljava/lang/Integer;

    #@78
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@7b
    move-result v14

    #@7c
    .line 2507
    :cond_4
    const/4 v15, -0x1

    #@7d
    if-ne v7, v15, :cond_5

    #@7f
    const/4 v15, -0x1

    #@80
    if-ne v14, v15, :cond_5

    #@82
    .line 2508
    new-instance v15, Landroid/util/Pair;

    #@84
    const/16 v16, 0x2

    #@86
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@89
    move-result-object v16

    #@8a
    const/16 v17, -0x1

    #@8c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f
    move-result-object v17

    #@90
    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@93
    return-object v15

    #@94
    .line 2510
    :cond_5
    const/4 v15, -0x1

    #@95
    if-ne v7, v15, :cond_7

    #@97
    .line 2511
    new-instance v2, Landroid/util/Pair;

    #@99
    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9c
    move-result-object v15

    #@9d
    const/16 v16, -0x1

    #@9f
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a2
    move-result-object v16

    #@a3
    move-object/from16 v0, v16

    #@a5
    invoke-direct {v2, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@a8
    .line 2496
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    :goto_1
    add-int/lit8 v9, v9, 0x1

    #@aa
    goto :goto_0

    #@ab
    .line 2514
    :cond_7
    const/4 v15, -0x1

    #@ac
    if-ne v14, v15, :cond_6

    #@ae
    .line 2515
    new-instance v2, Landroid/util/Pair;

    #@b0
    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3
    move-result-object v15

    #@b4
    const/16 v16, -0x1

    #@b6
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b9
    move-result-object v16

    #@ba
    move-object/from16 v0, v16

    #@bc
    invoke-direct {v2, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@bf
    .line 2516
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1

    #@c0
    .line 2519
    .end local v7    # "first":I
    .end local v8    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "second":I
    :cond_8
    return-object v2

    #@c1
    .line 2522
    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "entryValues":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_9
    const-string/jumbo v15, "/"

    #@c4
    move-object/from16 v0, p0

    #@c6
    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@c9
    move-result v15

    #@ca
    if-eqz v15, :cond_f

    #@cc
    .line 2523
    const-string/jumbo v15, "/"

    #@cf
    move-object/from16 v0, p0

    #@d1
    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@d4
    move-result-object v11

    #@d5
    .line 2524
    .local v11, "rationalNumber":[Ljava/lang/String;
    array-length v15, v11

    #@d6
    const/16 v16, 0x2

    #@d8
    move/from16 v0, v16

    #@da
    if-ne v15, v0, :cond_e

    #@dc
    .line 2526
    const/4 v15, 0x0

    #@dd
    :try_start_0
    aget-object v15, v11, v15

    #@df
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@e2
    move-result-wide v12

    #@e3
    .line 2527
    .local v12, "numerator":J
    const/4 v15, 0x1

    #@e4
    aget-object v15, v11, v15

    #@e6
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@e9
    move-result-wide v4

    #@ea
    .line 2528
    .local v4, "denominator":J
    const-wide/16 v16, 0x0

    #@ec
    cmp-long v15, v12, v16

    #@ee
    if-ltz v15, :cond_a

    #@f0
    const-wide/16 v16, 0x0

    #@f2
    cmp-long v15, v4, v16

    #@f4
    if-gez v15, :cond_b

    #@f6
    .line 2529
    :cond_a
    new-instance v15, Landroid/util/Pair;

    #@f8
    const/16 v16, 0xa

    #@fa
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fd
    move-result-object v16

    #@fe
    const/16 v17, -0x1

    #@100
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@103
    move-result-object v17

    #@104
    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@107
    return-object v15

    #@108
    .line 2531
    :cond_b
    const-wide/32 v16, 0x7fffffff

    #@10b
    cmp-long v15, v12, v16

    #@10d
    if-gtz v15, :cond_c

    #@10f
    const-wide/32 v16, 0x7fffffff

    #@112
    cmp-long v15, v4, v16

    #@114
    if-lez v15, :cond_d

    #@116
    .line 2532
    :cond_c
    new-instance v15, Landroid/util/Pair;

    #@118
    const/16 v16, 0x5

    #@11a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11d
    move-result-object v16

    #@11e
    const/16 v17, -0x1

    #@120
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@123
    move-result-object v17

    #@124
    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@127
    return-object v15

    #@128
    .line 2534
    :cond_d
    new-instance v15, Landroid/util/Pair;

    #@12a
    const/16 v16, 0xa

    #@12c
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12f
    move-result-object v16

    #@130
    const/16 v17, 0x5

    #@132
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@135
    move-result-object v17

    #@136
    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@139
    return-object v15

    #@13a
    .line 2535
    .end local v4    # "denominator":J
    .end local v12    # "numerator":J
    :catch_0
    move-exception v3

    #@13b
    .line 2539
    :cond_e
    new-instance v15, Landroid/util/Pair;

    #@13d
    const/16 v16, 0x2

    #@13f
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@142
    move-result-object v16

    #@143
    const/16 v17, -0x1

    #@145
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@148
    move-result-object v17

    #@149
    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@14c
    return-object v15

    #@14d
    .line 2542
    .end local v11    # "rationalNumber":[Ljava/lang/String;
    :cond_f
    :try_start_1
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@150
    move-result-wide v16

    #@151
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@154
    move-result-object v10

    #@155
    .line 2543
    .local v10, "longValue":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@158
    move-result-wide v16

    #@159
    const-wide/16 v18, 0x0

    #@15b
    cmp-long v15, v16, v18

    #@15d
    if-ltz v15, :cond_10

    #@15f
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@162
    move-result-wide v16

    #@163
    const-wide/32 v18, 0xffff

    #@166
    cmp-long v15, v16, v18

    #@168
    if-gtz v15, :cond_10

    #@16a
    .line 2544
    new-instance v15, Landroid/util/Pair;

    #@16c
    const/16 v16, 0x3

    #@16e
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@171
    move-result-object v16

    #@172
    const/16 v17, 0x4

    #@174
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@177
    move-result-object v17

    #@178
    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@17b
    return-object v15

    #@17c
    .line 2546
    :cond_10
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@17f
    move-result-wide v16

    #@180
    const-wide/16 v18, 0x0

    #@182
    cmp-long v15, v16, v18

    #@184
    if-gez v15, :cond_11

    #@186
    .line 2547
    new-instance v15, Landroid/util/Pair;

    #@188
    const/16 v16, 0x9

    #@18a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18d
    move-result-object v16

    #@18e
    const/16 v17, -0x1

    #@190
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@193
    move-result-object v17

    #@194
    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@197
    return-object v15

    #@198
    .line 2549
    :cond_11
    new-instance v15, Landroid/util/Pair;

    #@19a
    const/16 v16, 0x4

    #@19c
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19f
    move-result-object v16

    #@1a0
    const/16 v17, -0x1

    #@1a2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a5
    move-result-object v17

    #@1a6
    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a9
    return-object v15

    #@1aa
    .line 2550
    .end local v10    # "longValue":Ljava/lang/Long;
    :catch_1
    move-exception v3

    #@1ab
    .line 2554
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@1ae
    .line 2555
    new-instance v15, Landroid/util/Pair;

    #@1b0
    const/16 v16, 0xc

    #@1b2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b5
    move-result-object v16

    #@1b6
    const/16 v17, -0x1

    #@1b8
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bb
    move-result-object v17

    #@1bc
    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@1bf
    return-object v15

    #@1c0
    .line 2556
    :catch_2
    move-exception v3

    #@1c1
    .line 2559
    new-instance v15, Landroid/util/Pair;

    #@1c3
    const/16 v16, 0x2

    #@1c5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c8
    move-result-object v16

    #@1c9
    const/16 v17, -0x1

    #@1cb
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ce
    move-result-object v17

    #@1cf
    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1d2
    return-object v15
.end method

.method private handleRawResult(Ljava/util/HashMap;)Z
    .locals 6
    .param p1, "map"    # Ljava/util/HashMap;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1505
    if-nez p1, :cond_0

    #@4
    .line 1506
    return v3

    #@5
    .line 1510
    :cond_0
    iput-boolean v5, p0, Landroid/media/ExifInterface;->mIsRaw:Z

    #@7
    .line 1512
    const-string/jumbo v4, "HasThumbnail"

    #@a
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/lang/String;

    #@10
    .line 1513
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@12
    const-string/jumbo v3, "true"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v3

    #@19
    :cond_1
    iput-boolean v3, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@1b
    .line 1514
    const-string/jumbo v3, "ThumbnailOffset"

    #@1e
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    #@24
    .line 1515
    .restart local v2    # "value":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@26
    .line 1516
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@29
    move-result v3

    #@2a
    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    #@2c
    .line 1518
    :cond_2
    const-string/jumbo v3, "ThumbnailLength"

    #@2f
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    #@35
    .line 1519
    .restart local v2    # "value":Ljava/lang/String;
    if-eqz v2, :cond_3

    #@37
    .line 1520
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3a
    move-result v3

    #@3b
    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    #@3d
    .line 1522
    :cond_3
    const-string/jumbo v3, "ThumbnailData"

    #@40
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v3

    #@44
    check-cast v3, [B

    #@46
    iput-object v3, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    #@48
    .line 1524
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@4b
    move-result-object v3

    #@4c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v1

    #@50
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_4

    #@56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    check-cast v0, Ljava/util/Map$Entry;

    #@5c
    .line 1525
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    check-cast v3, Ljava/lang/String;

    #@62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@65
    move-result-object v4

    #@66
    check-cast v4, Ljava/lang/String;

    #@68
    invoke-virtual {p0, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@6b
    goto :goto_0

    #@6c
    .line 1528
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_4
    return v5
.end method

.method private static isJpegInputStream(Ljava/io/BufferedInputStream;)Z
    .locals 4
    .param p0, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 1494
    invoke-virtual {p0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    #@4
    .line 1495
    new-array v1, v3, [B

    #@6
    .line 1496
    .local v1, "signatureBytes":[B
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    #@9
    move-result v2

    #@a
    if-eq v2, v3, :cond_0

    #@c
    .line 1497
    new-instance v2, Ljava/io/EOFException;

    #@e
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@11
    throw v2

    #@12
    .line 1499
    :cond_0
    sget-object v2, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    #@14
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@17
    move-result v0

    #@18
    .line 1500
    .local v0, "isJpeg":Z
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    #@1b
    .line 1501
    return v0
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1533
    const-wide/16 v2, 0x0

    #@2
    :try_start_0
    sget v1, Landroid/system/OsConstants;->SEEK_CUR:I

    #@4
    invoke-static {p0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1534
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 1535
    :catch_0
    move-exception v0

    #@a
    .line 1536
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1451
    const/4 v5, 0x0

    #@1
    .local v5, "i":I
    :goto_0
    :try_start_0
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@3
    array-length v7, v7

    #@4
    if-ge v5, v7, :cond_0

    #@6
    .line 1452
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@8
    new-instance v8, Ljava/util/HashMap;

    #@a
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@d
    aput-object v8, v7, v5

    #@f
    .line 1451
    add-int/lit8 v5, v5, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1456
    :cond_0
    iget-object v7, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    #@14
    if-eqz v7, :cond_1

    #@16
    .line 1457
    iget-object v7, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    #@18
    invoke-virtual {v7}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    #@1b
    move-result-wide v2

    #@1c
    .line 1458
    .local v2, "asset":J
    invoke-static {v2, v3}, Landroid/media/ExifInterface;->nativeGetRawAttributesFromAsset(J)Ljava/util/HashMap;

    #@1f
    move-result-object v7

    #@20
    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->handleRawResult(Ljava/util/HashMap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_4

    #@26
    .line 1485
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    #@29
    .line 1459
    return-void

    #@2a
    .line 1461
    .end local v2    # "asset":J
    :cond_1
    :try_start_1
    iget-object v7, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 1463
    iget-object v7, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@30
    .line 1462
    invoke-static {v7}, Landroid/media/ExifInterface;->nativeGetRawAttributesFromFileDescriptor(Ljava/io/FileDescriptor;)Ljava/util/HashMap;

    #@33
    move-result-object v7

    #@34
    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->handleRawResult(Ljava/util/HashMap;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result v7

    #@38
    if-eqz v7, :cond_4

    #@3a
    .line 1485
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    #@3d
    .line 1464
    return-void

    #@3e
    .line 1467
    :cond_2
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    #@40
    const/4 v7, 0x3

    #@41
    invoke-direct {v6, p1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    .line 1468
    .end local p1    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    :try_start_3
    move-object v0, v6

    #@45
    check-cast v0, Ljava/io/BufferedInputStream;

    #@47
    move-object v7, v0

    #@48
    invoke-static {v7}, Landroid/media/ExifInterface;->isJpegInputStream(Ljava/io/BufferedInputStream;)Z

    #@4b
    move-result v7

    #@4c
    if-nez v7, :cond_3

    #@4e
    .line 1469
    invoke-static {v6}, Landroid/media/ExifInterface;->nativeGetRawAttributesFromInputStream(Ljava/io/InputStream;)Ljava/util/HashMap;

    #@51
    move-result-object v7

    #@52
    .line 1468
    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->handleRawResult(Ljava/util/HashMap;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@55
    move-result v7

    #@56
    if-eqz v7, :cond_5

    #@58
    .line 1485
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    #@5b
    .line 1470
    return-void

    #@5c
    :cond_3
    move-object p1, v6

    #@5d
    .line 1475
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_4
    :goto_1
    :try_start_4
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getJpegAttributes(Ljava/io/InputStream;)V

    #@60
    .line 1476
    const/4 v7, 0x1

    #@61
    iput-boolean v7, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@63
    .line 1485
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    #@66
    .line 1448
    :goto_2
    return-void

    #@67
    .line 1477
    :catch_0
    move-exception v4

    #@68
    .line 1480
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    const/4 v7, 0x0

    #@69
    :try_start_5
    iput-boolean v7, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    #@6b
    .line 1481
    const-string/jumbo v7, "ExifInterface"

    #@6e
    const-string/jumbo v8, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    #@71
    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@74
    .line 1485
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    #@77
    goto :goto_2

    #@78
    .line 1484
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@79
    .line 1485
    :goto_4
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    #@7c
    .line 1484
    throw v7

    #@7d
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    #@7e
    move-object p1, v6

    #@7f
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    goto :goto_4

    #@80
    .line 1477
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    #@81
    .restart local v4    # "e":Ljava/io/IOException;
    move-object p1, v6

    #@82
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    goto :goto_3

    #@83
    .end local v4    # "e":Ljava/io/IOException;
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_5
    move-object p1, v6

    #@84
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static native nativeGetRawAttributesFromAsset(J)Ljava/util/HashMap;
.end method

.method private static native nativeGetRawAttributesFromFileDescriptor(Ljava/io/FileDescriptor;)Ljava/util/HashMap;
.end method

.method private static native nativeGetRawAttributesFromInputStream(Ljava/io/InputStream;)Ljava/util/HashMap;
.end method

.method private static native nativeGetThumbnailFromAsset(JII)[B
.end method

.method private static native nativeInitRaw()V
.end method

.method private printAttributes()V
    .locals 7

    #@0
    .prologue
    .line 1542
    const/4 v2, 0x0

    #@1
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@3
    array-length v4, v4

    #@4
    if-ge v2, v4, :cond_1

    #@6
    .line 1543
    const-string/jumbo v4, "ExifInterface"

    #@9
    new-instance v5, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v6, "The size of tag group["

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    const-string/jumbo v6, "]: "

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@22
    aget-object v6, v6, v2

    #@24
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@27
    move-result v6

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 1544
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@35
    aget-object v4, v4, v2

    #@37
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@3a
    move-result-object v4

    #@3b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v1

    #@3f
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_0

    #@45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Ljava/util/Map$Entry;

    #@4b
    .line 1545
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4e
    move-result-object v3

    #@4f
    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    #@51
    .line 1546
    .local v3, "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    const-string/jumbo v4, "ExifInterface"

    #@54
    new-instance v5, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v6, "tagName: "

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    const-string/jumbo v6, ", tagType: "

    #@6b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v3}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    .line 1547
    const-string/jumbo v6, ", tagValue: \'"

    #@7a
    .line 1546
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    .line 1547
    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@80
    invoke-virtual {v3, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    .line 1546
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    .line 1547
    const-string/jumbo v6, "\'"

    #@8b
    .line 1546
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    goto :goto_1

    #@97
    .line 1542
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@99
    goto/16 :goto_0

    #@9b
    .line 1541
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private readExifSegment([BI)V
    .locals 14
    .param p1, "exifBytes"    # [B
    .param p2, "exifOffsetFromBeginning"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2054
    new-instance v1, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;

    #@2
    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;-><init>([B)V

    #@5
    .line 2057
    .local v1, "dataInputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    #@8
    move-result v0

    #@9
    .line 2058
    .local v0, "byteOrder":S
    sparse-switch v0, :sswitch_data_0

    #@c
    .line 2072
    new-instance v11, Ljava/io/IOException;

    #@e
    new-instance v12, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v13, "Invalid byte order: "

    #@16
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v12

    #@1a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1d
    move-result-object v13

    #@1e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v12

    #@22
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v12

    #@26
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@29
    throw v11

    #@2a
    .line 2063
    :sswitch_0
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2c
    iput-object v11, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@2e
    .line 2076
    :goto_0
    iget-object v11, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@30
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    #@33
    .line 2078
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    #@36
    move-result v9

    #@37
    .line 2079
    .local v9, "startCode":I
    const/16 v11, 0x2a

    #@39
    if-eq v9, v11, :cond_0

    #@3b
    .line 2080
    new-instance v11, Ljava/io/IOException;

    #@3d
    new-instance v12, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v13, "Invalid exif start: "

    #@45
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v12

    #@49
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4c
    move-result-object v13

    #@4d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v12

    #@51
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v12

    #@55
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@58
    throw v11

    #@59
    .line 2069
    .end local v9    # "startCode":I
    :sswitch_1
    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@5b
    iput-object v11, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@5d
    goto :goto_0

    #@5e
    .line 2084
    .restart local v9    # "startCode":I
    :cond_0
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    #@61
    move-result-wide v4

    #@62
    .line 2085
    .local v4, "firstIfdOffset":J
    const-wide/16 v12, 0x8

    #@64
    cmp-long v11, v4, v12

    #@66
    if-ltz v11, :cond_1

    #@68
    array-length v11, p1

    #@69
    int-to-long v12, v11

    #@6a
    cmp-long v11, v4, v12

    #@6c
    if-ltz v11, :cond_2

    #@6e
    .line 2086
    :cond_1
    new-instance v11, Ljava/io/IOException;

    #@70
    new-instance v12, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v13, "Invalid first Ifd offset: "

    #@78
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v12

    #@7c
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v12

    #@80
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v12

    #@84
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@87
    throw v11

    #@88
    .line 2088
    :cond_2
    const-wide/16 v12, 0x8

    #@8a
    sub-long/2addr v4, v12

    #@8b
    .line 2089
    const-wide/16 v12, 0x0

    #@8d
    cmp-long v11, v4, v12

    #@8f
    if-lez v11, :cond_3

    #@91
    .line 2090
    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->skip(J)J

    #@94
    move-result-wide v12

    #@95
    cmp-long v11, v12, v4

    #@97
    if-eqz v11, :cond_3

    #@99
    .line 2091
    new-instance v11, Ljava/io/IOException;

    #@9b
    new-instance v12, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v13, "Couldn\'t jump to first Ifd: "

    #@a3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v12

    #@a7
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v12

    #@ab
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v12

    #@af
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v11

    #@b3
    .line 2096
    :cond_3
    const/4 v11, 0x0

    #@b4
    invoke-direct {p0, v1, v11}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    #@b7
    .line 2099
    sget-object v11, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    #@b9
    iget-object v11, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@bb
    invoke-virtual {p0, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@be
    move-result-object v8

    #@bf
    .line 2101
    .local v8, "jpegInterchangeFormatString":Ljava/lang/String;
    sget-object v11, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    #@c1
    iget-object v11, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@c3
    invoke-virtual {p0, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@c6
    move-result-object v7

    #@c7
    .line 2102
    .local v7, "jpegInterchangeFormatLengthString":Ljava/lang/String;
    if-eqz v8, :cond_4

    #@c9
    if-eqz v7, :cond_4

    #@cb
    .line 2104
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@ce
    move-result v3

    #@cf
    .line 2105
    .local v3, "jpegInterchangeFormat":I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d2
    move-result v6

    #@d3
    .line 2108
    .local v6, "jpegInterchangeFormatLength":I
    add-int v11, v3, v6

    #@d5
    .line 2109
    array-length v12, p1

    #@d6
    .line 2108
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    #@d9
    move-result v11

    #@da
    sub-int v6, v11, v3

    #@dc
    .line 2110
    if-lez v3, :cond_4

    #@de
    if-lez v6, :cond_4

    #@e0
    .line 2111
    const/4 v11, 0x1

    #@e1
    iput-boolean v11, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@e3
    .line 2112
    add-int v11, p2, v3

    #@e5
    iput v11, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    #@e7
    .line 2113
    iput v6, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    #@e9
    .line 2115
    iget-object v11, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@eb
    if-nez v11, :cond_4

    #@ed
    iget-object v11, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    #@ef
    if-nez v11, :cond_4

    #@f1
    .line 2116
    iget-object v11, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@f3
    if-nez v11, :cond_4

    #@f5
    .line 2118
    new-array v10, v6, [B

    #@f7
    .line 2119
    .local v10, "thumbnailBytes":[B
    int-to-long v12, v3

    #@f8
    invoke-virtual {v1, v12, v13}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    #@fb
    .line 2120
    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFully([B)V

    #@fe
    .line 2121
    iput-object v10, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@100
    .line 2051
    .end local v3    # "jpegInterchangeFormat":I
    .end local v6    # "jpegInterchangeFormatLength":I
    .end local v10    # "thumbnailBytes":[B
    :cond_4
    :goto_1
    return-void

    #@101
    .line 2133
    :catch_0
    move-exception v2

    #@102
    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    #@103
    .line 2058
    nop

    #@104
    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_0
        0x4d4d -> :sswitch_1
    .end sparse-switch
.end method

.method private readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V
    .locals 24
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    .param p2, "hint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2169
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    #@3
    move-result-wide v20

    #@4
    const-wide/16 v22, 0x2

    #@6
    add-long v20, v20, v22

    #@8
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    #@b
    move-result-wide v22

    #@c
    cmp-long v19, v20, v22

    #@e
    if-lez v19, :cond_0

    #@10
    .line 2171
    return-void

    #@11
    .line 2174
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    #@14
    move-result v14

    #@15
    .line 2175
    .local v14, "numberOfDirectoryEntry":S
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    #@18
    move-result-wide v20

    #@19
    mul-int/lit8 v19, v14, 0xc

    #@1b
    move/from16 v0, v19

    #@1d
    int-to-long v0, v0

    #@1e
    move-wide/from16 v22, v0

    #@20
    add-long v20, v20, v22

    #@22
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    #@25
    move-result-wide v22

    #@26
    cmp-long v19, v20, v22

    #@28
    if-lez v19, :cond_1

    #@2a
    .line 2177
    return-void

    #@2b
    .line 2184
    :cond_1
    const/4 v7, 0x0

    #@2c
    :goto_0
    if-ge v7, v14, :cond_a

    #@2e
    .line 2185
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    #@31
    move-result v18

    #@32
    .line 2186
    .local v18, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    #@35
    move-result v6

    #@36
    .line 2187
    .local v6, "dataFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    #@39
    move-result v9

    #@3a
    .line 2188
    .local v9, "numberOfComponents":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    #@3d
    move-result-wide v20

    #@3e
    const-wide/16 v22, 0x4

    #@40
    add-long v10, v20, v22

    #@42
    .line 2191
    .local v10, "nextEntryOffset":J
    sget-object v19, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    #@44
    aget-object v19, v19, p2

    #@46
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v20

    #@4a
    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v15

    #@4e
    check-cast v15, Landroid/media/ExifInterface$ExifTag;

    #@50
    .line 2199
    .local v15, "tag":Landroid/media/ExifInterface$ExifTag;
    if-eqz v15, :cond_2

    #@52
    if-gtz v6, :cond_4

    #@54
    .line 2202
    :cond_2
    if-nez v15, :cond_6

    #@56
    .line 2203
    const-string/jumbo v19, "ExifInterface"

    #@59
    new-instance v20, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v21, "Skip the tag entry since tag number is not defined: "

    #@61
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v20

    #@65
    move-object/from16 v0, v20

    #@67
    move/from16 v1, v18

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v20

    #@6d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v20

    #@71
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 2207
    :goto_1
    move-object/from16 v0, p1

    #@76
    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    #@79
    .line 2184
    :cond_3
    :goto_2
    add-int/lit8 v19, v7, 0x1

    #@7b
    move/from16 v0, v19

    #@7d
    int-to-short v7, v0

    #@7e
    .local v7, "i":S
    goto :goto_0

    #@7f
    .line 2200
    .end local v7    # "i":S
    :cond_4
    sget-object v19, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    #@81
    move-object/from16 v0, v19

    #@83
    array-length v0, v0

    #@84
    move/from16 v19, v0

    #@86
    move/from16 v0, v19

    #@88
    if-ge v6, v0, :cond_2

    #@8a
    .line 2213
    sget-object v19, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    #@8c
    aget v19, v19, v6

    #@8e
    mul-int v4, v9, v19

    #@90
    .line 2214
    .local v4, "byteCount":I
    const/16 v19, 0x4

    #@92
    move/from16 v0, v19

    #@94
    if-le v4, v0, :cond_5

    #@96
    .line 2215
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    #@99
    move-result-wide v16

    #@9a
    .line 2219
    .local v16, "offset":J
    int-to-long v0, v4

    #@9b
    move-wide/from16 v20, v0

    #@9d
    add-long v20, v20, v16

    #@9f
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    #@a2
    move-result-wide v22

    #@a3
    cmp-long v19, v20, v22

    #@a5
    if-gtz v19, :cond_7

    #@a7
    .line 2220
    move-object/from16 v0, p1

    #@a9
    move-wide/from16 v1, v16

    #@ab
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    #@ae
    .line 2230
    .end local v16    # "offset":J
    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/media/ExifInterface;->getIfdHintFromTagNumber(I)I

    #@b1
    move-result v8

    #@b2
    .line 2235
    .local v8, "innerIfdHint":I
    if-ltz v8, :cond_9

    #@b4
    .line 2236
    const-wide/16 v16, -0x1

    #@b6
    .line 2238
    .restart local v16    # "offset":J
    packed-switch v6, :pswitch_data_0

    #@b9
    .line 2263
    :goto_3
    :pswitch_0
    const-wide/16 v20, 0x0

    #@bb
    cmp-long v19, v16, v20

    #@bd
    if-lez v19, :cond_8

    #@bf
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    #@c2
    move-result-wide v20

    #@c3
    cmp-long v19, v16, v20

    #@c5
    if-gez v19, :cond_8

    #@c7
    .line 2264
    move-object/from16 v0, p1

    #@c9
    move-wide/from16 v1, v16

    #@cb
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    #@ce
    .line 2265
    move-object/from16 v0, p0

    #@d0
    move-object/from16 v1, p1

    #@d2
    invoke-direct {v0, v1, v8}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    #@d5
    .line 2270
    :goto_4
    move-object/from16 v0, p1

    #@d7
    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    #@da
    goto :goto_2

    #@db
    .line 2205
    .end local v4    # "byteCount":I
    .end local v8    # "innerIfdHint":I
    .end local v16    # "offset":J
    :cond_6
    const-string/jumbo v19, "ExifInterface"

    #@de
    new-instance v20, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v21, "Skip the tag entry since data format is invalid: "

    #@e6
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v20

    #@ea
    move-object/from16 v0, v20

    #@ec
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v20

    #@f0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v20

    #@f4
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f7
    goto/16 :goto_1

    #@f9
    .line 2223
    .restart local v4    # "byteCount":I
    .restart local v16    # "offset":J
    :cond_7
    const-string/jumbo v19, "ExifInterface"

    #@fc
    new-instance v20, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v21, "Skip the tag entry since data offset is invalid: "

    #@104
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v20

    #@108
    move-object/from16 v0, v20

    #@10a
    move-wide/from16 v1, v16

    #@10c
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v20

    #@110
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v20

    #@114
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@117
    .line 2224
    move-object/from16 v0, p1

    #@119
    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    #@11c
    goto/16 :goto_2

    #@11e
    .line 2240
    .restart local v8    # "innerIfdHint":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    #@121
    move-result v19

    #@122
    move/from16 v0, v19

    #@124
    int-to-long v0, v0

    #@125
    move-wide/from16 v16, v0

    #@127
    .line 2241
    goto :goto_3

    #@128
    .line 2244
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    #@12b
    move-result v19

    #@12c
    move/from16 v0, v19

    #@12e
    int-to-long v0, v0

    #@12f
    move-wide/from16 v16, v0

    #@131
    .line 2245
    goto :goto_3

    #@132
    .line 2248
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    #@135
    move-result-wide v16

    #@136
    goto :goto_3

    #@137
    .line 2252
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    #@13a
    move-result v19

    #@13b
    move/from16 v0, v19

    #@13d
    int-to-long v0, v0

    #@13e
    move-wide/from16 v16, v0

    #@140
    .line 2253
    goto/16 :goto_3

    #@142
    .line 2267
    :cond_8
    const-string/jumbo v19, "ExifInterface"

    #@145
    new-instance v20, Ljava/lang/StringBuilder;

    #@147
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    const-string/jumbo v21, "Skip jump into the IFD since its offset is invalid: "

    #@14d
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v20

    #@151
    move-object/from16 v0, v20

    #@153
    move-wide/from16 v1, v16

    #@155
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@158
    move-result-object v20

    #@159
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v20

    #@15d
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@160
    goto/16 :goto_4

    #@162
    .line 2274
    .end local v16    # "offset":J
    :cond_9
    sget-object v19, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    #@164
    aget v19, v19, v6

    #@166
    mul-int v19, v19, v9

    #@168
    move/from16 v0, v19

    #@16a
    new-array v5, v0, [B

    #@16c
    .line 2275
    .local v5, "bytes":[B
    move-object/from16 v0, p1

    #@16e
    invoke-virtual {v0, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFully([B)V

    #@171
    .line 2276
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@175
    move-object/from16 v19, v0

    #@177
    aget-object v19, v19, p2

    #@179
    .line 2277
    iget-object v0, v15, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@17b
    move-object/from16 v20, v0

    #@17d
    new-instance v21, Landroid/media/ExifInterface$ExifAttribute;

    #@17f
    const/16 v22, 0x0

    #@181
    move-object/from16 v0, v21

    #@183
    move-object/from16 v1, v22

    #@185
    invoke-direct {v0, v6, v9, v5, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[BLandroid/media/ExifInterface$ExifAttribute;)V

    #@188
    .line 2276
    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18b
    .line 2278
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    #@18e
    move-result-wide v20

    #@18f
    cmp-long v19, v20, v10

    #@191
    if-eqz v19, :cond_3

    #@193
    .line 2279
    move-object/from16 v0, p1

    #@195
    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    #@198
    goto/16 :goto_2

    #@19a
    .line 2283
    .end local v4    # "byteCount":I
    .end local v5    # "bytes":[B
    .end local v6    # "dataFormat":I
    .end local v8    # "innerIfdHint":I
    .end local v9    # "numberOfComponents":I
    .end local v10    # "nextEntryOffset":J
    .end local v15    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    #@19d
    move-result-wide v20

    #@19e
    const-wide/16 v22, 0x4

    #@1a0
    add-long v20, v20, v22

    #@1a2
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    #@1a5
    move-result-wide v22

    #@1a6
    cmp-long v19, v20, v22

    #@1a8
    if-gtz v19, :cond_b

    #@1aa
    .line 2284
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    #@1ad
    move-result-wide v12

    #@1ae
    .line 2290
    .local v12, "nextIfdOffset":J
    const-wide/16 v20, 0x8

    #@1b0
    cmp-long v19, v12, v20

    #@1b2
    if-lez v19, :cond_b

    #@1b4
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    #@1b7
    move-result-wide v20

    #@1b8
    cmp-long v19, v12, v20

    #@1ba
    if-gez v19, :cond_b

    #@1bc
    .line 2291
    move-object/from16 v0, p1

    #@1be
    invoke-virtual {v0, v12, v13}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    #@1c1
    .line 2292
    const/16 v19, 0x4

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    move-object/from16 v1, p1

    #@1c7
    move/from16 v2, v19

    #@1c9
    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    #@1cc
    .line 2168
    .end local v12    # "nextIfdOffset":J
    :cond_b
    return-void

    #@1cd
    .line 2238
    nop

    #@1ce
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1438
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 1439
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 1438
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 1437
    :cond_0
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1960
    new-instance v1, Ljava/io/DataInputStream;

    #@2
    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 1962
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v2, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;

    #@7
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    invoke-direct {v2, p2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    #@c
    .line 1963
    .local v2, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    #@f
    move-result v7

    #@10
    const/4 v8, -0x1

    #@11
    if-eq v7, v8, :cond_0

    #@13
    .line 1964
    new-instance v7, Ljava/io/IOException;

    #@15
    const-string/jumbo v8, "Invalid marker"

    #@18
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v7

    #@1c
    .line 1966
    :cond_0
    const/4 v7, -0x1

    #@1d
    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@20
    .line 1967
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    #@23
    move-result v7

    #@24
    const/16 v8, -0x28

    #@26
    if-eq v7, v8, :cond_1

    #@28
    .line 1968
    new-instance v7, Ljava/io/IOException;

    #@2a
    const-string/jumbo v8, "Invalid marker"

    #@2d
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v7

    #@31
    .line 1970
    :cond_1
    const/16 v7, -0x28

    #@33
    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@36
    .line 1973
    const/4 v7, -0x1

    #@37
    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@3a
    .line 1974
    const/16 v7, -0x1f

    #@3c
    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@3f
    .line 1975
    const/4 v7, 0x6

    #@40
    invoke-direct {p0, v2, v7}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;I)I

    #@43
    .line 1977
    const/16 v7, 0x1000

    #@45
    new-array v0, v7, [B

    #@47
    .line 1980
    .local v0, "bytes":[B
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    #@4a
    move-result v5

    #@4b
    .line 1981
    .local v5, "marker":B
    const/4 v7, -0x1

    #@4c
    if-eq v5, v7, :cond_3

    #@4e
    .line 1982
    new-instance v7, Ljava/io/IOException;

    #@50
    const-string/jumbo v8, "Invalid marker"

    #@53
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@56
    throw v7

    #@57
    .line 1984
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    #@5a
    move-result v5

    #@5b
    .line 1985
    sparse-switch v5, :sswitch_data_0

    #@5e
    .line 2030
    const/4 v7, -0x1

    #@5f
    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@62
    .line 2031
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@65
    .line 2032
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@68
    move-result v4

    #@69
    .line 2033
    .local v4, "length":I
    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    #@6c
    .line 2034
    add-int/lit8 v4, v4, -0x2

    #@6e
    .line 2035
    if-gez v4, :cond_8

    #@70
    .line 2036
    new-instance v7, Ljava/io/IOException;

    #@72
    const-string/jumbo v8, "Invalid length"

    #@75
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v7

    #@79
    .line 1987
    .end local v4    # "length":I
    :sswitch_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@7c
    move-result v7

    #@7d
    add-int/lit8 v4, v7, -0x2

    #@7f
    .line 1988
    .restart local v4    # "length":I
    if-gez v4, :cond_4

    #@81
    .line 1989
    new-instance v7, Ljava/io/IOException;

    #@83
    const-string/jumbo v8, "Invalid length"

    #@86
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@89
    throw v7

    #@8a
    .line 1991
    :cond_4
    const/4 v7, 0x6

    #@8b
    new-array v3, v7, [B

    #@8d
    .line 1992
    .local v3, "identifier":[B
    const/4 v7, 0x6

    #@8e
    if-lt v4, v7, :cond_6

    #@90
    .line 1993
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->read([B)I

    #@93
    move-result v7

    #@94
    const/4 v8, 0x6

    #@95
    if-eq v7, v8, :cond_5

    #@97
    .line 1994
    new-instance v7, Ljava/io/IOException;

    #@99
    const-string/jumbo v8, "Invalid exif"

    #@9c
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v7

    #@a0
    .line 1996
    :cond_5
    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    #@a2
    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([B[B)Z

    #@a5
    move-result v7

    #@a6
    if-eqz v7, :cond_6

    #@a8
    .line 1998
    add-int/lit8 v7, v4, -0x6

    #@aa
    int-to-long v8, v7

    #@ab
    invoke-virtual {v1, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    #@ae
    move-result-wide v8

    #@af
    add-int/lit8 v7, v4, -0x6

    #@b1
    int-to-long v10, v7

    #@b2
    cmp-long v7, v8, v10

    #@b4
    if-eqz v7, :cond_2

    #@b6
    .line 1999
    new-instance v7, Ljava/io/IOException;

    #@b8
    const-string/jumbo v8, "Invalid length"

    #@bb
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@be
    throw v7

    #@bf
    .line 2005
    :cond_6
    const/4 v7, -0x1

    #@c0
    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@c3
    .line 2006
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@c6
    .line 2007
    add-int/lit8 v7, v4, 0x2

    #@c8
    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    #@cb
    .line 2008
    const/4 v7, 0x6

    #@cc
    if-lt v4, v7, :cond_7

    #@ce
    .line 2009
    add-int/lit8 v4, v4, -0x6

    #@d0
    .line 2010
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    #@d3
    .line 2013
    :cond_7
    :goto_0
    if-lez v4, :cond_2

    #@d5
    .line 2014
    array-length v7, v0

    #@d6
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    #@d9
    move-result v7

    #@da
    const/4 v8, 0x0

    #@db
    .line 2013
    invoke-virtual {v1, v0, v8, v7}, Ljava/io/DataInputStream;->read([BII)I

    #@de
    move-result v6

    #@df
    .local v6, "read":I
    if-ltz v6, :cond_2

    #@e1
    .line 2015
    const/4 v7, 0x0

    #@e2
    invoke-virtual {v2, v0, v7, v6}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    #@e5
    .line 2016
    sub-int/2addr v4, v6

    #@e6
    goto :goto_0

    #@e7
    .line 2022
    .end local v3    # "identifier":[B
    .end local v4    # "length":I
    .end local v6    # "read":I
    :sswitch_1
    const/4 v7, -0x1

    #@e8
    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@eb
    .line 2023
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@ee
    .line 2025
    invoke-static {v1, v2}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    #@f1
    .line 2026
    return-void

    #@f2
    .line 2039
    .restart local v4    # "length":I
    :cond_8
    :goto_1
    if-lez v4, :cond_2

    #@f4
    .line 2040
    array-length v7, v0

    #@f5
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    #@f8
    move-result v7

    #@f9
    const/4 v8, 0x0

    #@fa
    .line 2039
    invoke-virtual {v1, v0, v8, v7}, Ljava/io/DataInputStream;->read([BII)I

    #@fd
    move-result v6

    #@fe
    .restart local v6    # "read":I
    if-ltz v6, :cond_2

    #@100
    .line 2041
    const/4 v7, 0x0

    #@101
    invoke-virtual {v2, v0, v7, v6}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    #@104
    .line 2042
    sub-int/2addr v4, v6

    #@105
    goto :goto_1

    #@106
    .line 1985
    :sswitch_data_0
    .sparse-switch
        -0x27 -> :sswitch_1
        -0x26 -> :sswitch_1
        -0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/ExifInterface$ExifAttribute;

    #@0
    .prologue
    .line 1422
    const/4 v1, 0x0

    #@1
    .line 1423
    .local v1, "updated":Z
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 1424
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@9
    aget-object v2, v2, v0

    #@b
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1425
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@13
    aget-object v2, v2, v0

    #@15
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 1426
    const/4 v1, 0x1

    #@19
    .line 1423
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1429
    :cond_1
    return v1
.end method

.method private writeExifSegment(Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;I)I
    .locals 26
    .param p1, "dataOutputStream"    # Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    .param p2, "exifOffsetFromBeginning"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2311
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@2
    move-object/from16 v0, v21

    #@4
    array-length v0, v0

    #@5
    move/from16 v21, v0

    #@7
    move/from16 v0, v21

    #@9
    new-array v12, v0, [I

    #@b
    .line 2312
    .local v12, "ifdOffsets":[I
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@d
    move-object/from16 v0, v21

    #@f
    array-length v0, v0

    #@10
    move/from16 v21, v0

    #@12
    move/from16 v0, v21

    #@14
    new-array v11, v0, [I

    #@16
    .line 2315
    .local v11, "ifdDataSizes":[I
    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@18
    const/16 v21, 0x0

    #@1a
    move-object/from16 v0, v22

    #@1c
    array-length v0, v0

    #@1d
    move/from16 v23, v0

    #@1f
    :goto_0
    move/from16 v0, v21

    #@21
    move/from16 v1, v23

    #@23
    if-ge v0, v1, :cond_0

    #@25
    aget-object v17, v22, v21

    #@27
    .line 2316
    .local v17, "tag":Landroid/media/ExifInterface$ExifTag;
    move-object/from16 v0, v17

    #@29
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@2b
    move-object/from16 v24, v0

    #@2d
    move-object/from16 v0, p0

    #@2f
    move-object/from16 v1, v24

    #@31
    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    #@34
    .line 2315
    add-int/lit8 v21, v21, 0x1

    #@36
    goto :goto_0

    #@37
    .line 2319
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_0
    sget-object v21, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    #@39
    move-object/from16 v0, v21

    #@3b
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@3d
    move-object/from16 v21, v0

    #@3f
    move-object/from16 v0, p0

    #@41
    move-object/from16 v1, v21

    #@43
    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    #@46
    .line 2320
    sget-object v21, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    #@48
    move-object/from16 v0, v21

    #@4a
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@4c
    move-object/from16 v21, v0

    #@4e
    move-object/from16 v0, p0

    #@50
    move-object/from16 v1, v21

    #@52
    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    #@55
    .line 2323
    const/4 v9, 0x0

    #@56
    .local v9, "hint":I
    :goto_1
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@58
    move-object/from16 v0, v21

    #@5a
    array-length v0, v0

    #@5b
    move/from16 v21, v0

    #@5d
    move/from16 v0, v21

    #@5f
    if-ge v9, v0, :cond_3

    #@61
    .line 2324
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@65
    move-object/from16 v21, v0

    #@67
    aget-object v21, v21, v9

    #@69
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@6c
    move-result-object v21

    #@6d
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    #@70
    move-result-object v22

    #@71
    const/16 v21, 0x0

    #@73
    move-object/from16 v0, v22

    #@75
    array-length v0, v0

    #@76
    move/from16 v23, v0

    #@78
    :goto_2
    move/from16 v0, v21

    #@7a
    move/from16 v1, v23

    #@7c
    if-ge v0, v1, :cond_2

    #@7e
    aget-object v13, v22, v21

    #@80
    .local v13, "obj":Ljava/lang/Object;
    move-object v6, v13

    #@81
    .line 2325
    check-cast v6, Ljava/util/Map$Entry;

    #@83
    .line 2326
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@86
    move-result-object v24

    #@87
    if-nez v24, :cond_1

    #@89
    .line 2327
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@8d
    move-object/from16 v24, v0

    #@8f
    aget-object v24, v24, v9

    #@91
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@94
    move-result-object v25

    #@95
    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    .line 2324
    :cond_1
    add-int/lit8 v21, v21, 0x1

    #@9a
    goto :goto_2

    #@9b
    .line 2323
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "obj":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 2334
    :cond_3
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@a2
    move-object/from16 v21, v0

    #@a4
    const/16 v22, 0x3

    #@a6
    aget-object v21, v21, v22

    #@a8
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    #@ab
    move-result v21

    #@ac
    if-nez v21, :cond_4

    #@ae
    .line 2335
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@b2
    move-object/from16 v21, v0

    #@b4
    const/16 v22, 0x1

    #@b6
    aget-object v21, v21, v22

    #@b8
    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@ba
    const/16 v23, 0x2

    #@bc
    aget-object v22, v22, v23

    #@be
    move-object/from16 v0, v22

    #@c0
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@c2
    move-object/from16 v22, v0

    #@c4
    .line 2336
    const-wide/16 v24, 0x0

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@ca
    move-object/from16 v23, v0

    #@cc
    move-wide/from16 v0, v24

    #@ce
    move-object/from16 v2, v23

    #@d0
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@d3
    move-result-object v23

    #@d4
    .line 2335
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    .line 2338
    :cond_4
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@db
    move-object/from16 v21, v0

    #@dd
    const/16 v22, 0x1

    #@df
    aget-object v21, v21, v22

    #@e1
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    #@e4
    move-result v21

    #@e5
    if-nez v21, :cond_5

    #@e7
    .line 2339
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@eb
    move-object/from16 v21, v0

    #@ed
    const/16 v22, 0x0

    #@ef
    aget-object v21, v21, v22

    #@f1
    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@f3
    const/16 v23, 0x0

    #@f5
    aget-object v22, v22, v23

    #@f7
    move-object/from16 v0, v22

    #@f9
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@fb
    move-object/from16 v22, v0

    #@fd
    .line 2340
    const-wide/16 v24, 0x0

    #@ff
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@103
    move-object/from16 v23, v0

    #@105
    move-wide/from16 v0, v24

    #@107
    move-object/from16 v2, v23

    #@109
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@10c
    move-result-object v23

    #@10d
    .line 2339
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@110
    .line 2342
    :cond_5
    move-object/from16 v0, p0

    #@112
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@114
    move-object/from16 v21, v0

    #@116
    const/16 v22, 0x2

    #@118
    aget-object v21, v21, v22

    #@11a
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    #@11d
    move-result v21

    #@11e
    if-nez v21, :cond_6

    #@120
    .line 2343
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@124
    move-object/from16 v21, v0

    #@126
    const/16 v22, 0x0

    #@128
    aget-object v21, v21, v22

    #@12a
    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@12c
    const/16 v23, 0x1

    #@12e
    aget-object v22, v22, v23

    #@130
    move-object/from16 v0, v22

    #@132
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@134
    move-object/from16 v22, v0

    #@136
    .line 2344
    const-wide/16 v24, 0x0

    #@138
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@13c
    move-object/from16 v23, v0

    #@13e
    move-wide/from16 v0, v24

    #@140
    move-object/from16 v2, v23

    #@142
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@145
    move-result-object v23

    #@146
    .line 2343
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@149
    .line 2346
    :cond_6
    move-object/from16 v0, p0

    #@14b
    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@14d
    move/from16 v21, v0

    #@14f
    if-eqz v21, :cond_7

    #@151
    .line 2347
    move-object/from16 v0, p0

    #@153
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@155
    move-object/from16 v21, v0

    #@157
    const/16 v22, 0x0

    #@159
    aget-object v21, v21, v22

    #@15b
    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    #@15d
    move-object/from16 v0, v22

    #@15f
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@161
    move-object/from16 v22, v0

    #@163
    .line 2348
    const-wide/16 v24, 0x0

    #@165
    move-object/from16 v0, p0

    #@167
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@169
    move-object/from16 v23, v0

    #@16b
    move-wide/from16 v0, v24

    #@16d
    move-object/from16 v2, v23

    #@16f
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@172
    move-result-object v23

    #@173
    .line 2347
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@176
    .line 2349
    move-object/from16 v0, p0

    #@178
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@17a
    move-object/from16 v21, v0

    #@17c
    const/16 v22, 0x0

    #@17e
    aget-object v21, v21, v22

    #@180
    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    #@182
    move-object/from16 v0, v22

    #@184
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@186
    move-object/from16 v22, v0

    #@188
    .line 2350
    move-object/from16 v0, p0

    #@18a
    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    #@18c
    move/from16 v23, v0

    #@18e
    move/from16 v0, v23

    #@190
    int-to-long v0, v0

    #@191
    move-wide/from16 v24, v0

    #@193
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@197
    move-object/from16 v23, v0

    #@199
    move-wide/from16 v0, v24

    #@19b
    move-object/from16 v2, v23

    #@19d
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@1a0
    move-result-object v23

    #@1a1
    .line 2349
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a4
    .line 2355
    :cond_7
    const/4 v10, 0x0

    #@1a5
    .local v10, "i":I
    :goto_3
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@1a7
    move-object/from16 v0, v21

    #@1a9
    array-length v0, v0

    #@1aa
    move/from16 v21, v0

    #@1ac
    move/from16 v0, v21

    #@1ae
    if-ge v10, v0, :cond_a

    #@1b0
    .line 2356
    const/16 v16, 0x0

    #@1b2
    .line 2357
    .local v16, "sum":I
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@1b6
    move-object/from16 v21, v0

    #@1b8
    aget-object v21, v21, v10

    #@1ba
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@1bd
    move-result-object v21

    #@1be
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c1
    move-result-object v7

    #@1c2
    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1c5
    move-result v21

    #@1c6
    if-eqz v21, :cond_9

    #@1c8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1cb
    move-result-object v6

    #@1cc
    check-cast v6, Ljava/util/Map$Entry;

    #@1ce
    .line 2358
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d1
    move-result-object v8

    #@1d2
    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    #@1d4
    .line 2359
    .local v8, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v8}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    #@1d7
    move-result v15

    #@1d8
    .line 2360
    .local v15, "size":I
    const/16 v21, 0x4

    #@1da
    move/from16 v0, v21

    #@1dc
    if-le v15, v0, :cond_8

    #@1de
    .line 2361
    add-int v16, v16, v15

    #@1e0
    goto :goto_4

    #@1e1
    .line 2364
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "size":I
    :cond_9
    aget v21, v11, v10

    #@1e3
    add-int v21, v21, v16

    #@1e5
    aput v21, v11, v10

    #@1e7
    .line 2355
    add-int/lit8 v10, v10, 0x1

    #@1e9
    goto :goto_3

    #@1ea
    .line 2368
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "sum":I
    :cond_a
    const/16 v14, 0x8

    #@1ec
    .line 2369
    .local v14, "position":I
    const/4 v9, 0x0

    #@1ed
    :goto_5
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@1ef
    move-object/from16 v0, v21

    #@1f1
    array-length v0, v0

    #@1f2
    move/from16 v21, v0

    #@1f4
    move/from16 v0, v21

    #@1f6
    if-ge v9, v0, :cond_c

    #@1f8
    .line 2370
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@1fc
    move-object/from16 v21, v0

    #@1fe
    aget-object v21, v21, v9

    #@200
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    #@203
    move-result v21

    #@204
    if-nez v21, :cond_b

    #@206
    .line 2371
    aput v14, v12, v9

    #@208
    .line 2372
    move-object/from16 v0, p0

    #@20a
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@20c
    move-object/from16 v21, v0

    #@20e
    aget-object v21, v21, v9

    #@210
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    #@213
    move-result v21

    #@214
    mul-int/lit8 v21, v21, 0xc

    #@216
    add-int/lit8 v21, v21, 0x2

    #@218
    add-int/lit8 v21, v21, 0x4

    #@21a
    aget v22, v11, v9

    #@21c
    add-int v21, v21, v22

    #@21e
    add-int v14, v14, v21

    #@220
    .line 2369
    :cond_b
    add-int/lit8 v9, v9, 0x1

    #@222
    goto :goto_5

    #@223
    .line 2375
    :cond_c
    move-object/from16 v0, p0

    #@225
    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@227
    move/from16 v21, v0

    #@229
    if-eqz v21, :cond_d

    #@22b
    .line 2376
    move/from16 v19, v14

    #@22d
    .line 2377
    .local v19, "thumbnailOffset":I
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@231
    move-object/from16 v21, v0

    #@233
    const/16 v22, 0x0

    #@235
    aget-object v21, v21, v22

    #@237
    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    #@239
    move-object/from16 v0, v22

    #@23b
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@23d
    move-object/from16 v22, v0

    #@23f
    .line 2378
    move/from16 v0, v19

    #@241
    int-to-long v0, v0

    #@242
    move-wide/from16 v24, v0

    #@244
    move-object/from16 v0, p0

    #@246
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@248
    move-object/from16 v23, v0

    #@24a
    move-wide/from16 v0, v24

    #@24c
    move-object/from16 v2, v23

    #@24e
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@251
    move-result-object v23

    #@252
    .line 2377
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@255
    .line 2379
    add-int v21, p2, v19

    #@257
    move/from16 v0, v21

    #@259
    move-object/from16 v1, p0

    #@25b
    iput v0, v1, Landroid/media/ExifInterface;->mThumbnailOffset:I

    #@25d
    .line 2380
    move-object/from16 v0, p0

    #@25f
    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    #@261
    move/from16 v21, v0

    #@263
    add-int v14, v14, v21

    #@265
    .line 2384
    .end local v19    # "thumbnailOffset":I
    :cond_d
    add-int/lit8 v20, v14, 0x8

    #@267
    .line 2394
    .local v20, "totalSize":I
    move-object/from16 v0, p0

    #@269
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@26b
    move-object/from16 v21, v0

    #@26d
    const/16 v22, 0x1

    #@26f
    aget-object v21, v21, v22

    #@271
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    #@274
    move-result v21

    #@275
    if-nez v21, :cond_e

    #@277
    .line 2395
    move-object/from16 v0, p0

    #@279
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@27b
    move-object/from16 v21, v0

    #@27d
    const/16 v22, 0x0

    #@27f
    aget-object v21, v21, v22

    #@281
    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@283
    const/16 v23, 0x0

    #@285
    aget-object v22, v22, v23

    #@287
    move-object/from16 v0, v22

    #@289
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@28b
    move-object/from16 v22, v0

    #@28d
    .line 2396
    const/16 v23, 0x1

    #@28f
    aget v23, v12, v23

    #@291
    move/from16 v0, v23

    #@293
    int-to-long v0, v0

    #@294
    move-wide/from16 v24, v0

    #@296
    move-object/from16 v0, p0

    #@298
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@29a
    move-object/from16 v23, v0

    #@29c
    move-wide/from16 v0, v24

    #@29e
    move-object/from16 v2, v23

    #@2a0
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@2a3
    move-result-object v23

    #@2a4
    .line 2395
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a7
    .line 2398
    :cond_e
    move-object/from16 v0, p0

    #@2a9
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@2ab
    move-object/from16 v21, v0

    #@2ad
    const/16 v22, 0x2

    #@2af
    aget-object v21, v21, v22

    #@2b1
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    #@2b4
    move-result v21

    #@2b5
    if-nez v21, :cond_f

    #@2b7
    .line 2399
    move-object/from16 v0, p0

    #@2b9
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@2bb
    move-object/from16 v21, v0

    #@2bd
    const/16 v22, 0x0

    #@2bf
    aget-object v21, v21, v22

    #@2c1
    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@2c3
    const/16 v23, 0x1

    #@2c5
    aget-object v22, v22, v23

    #@2c7
    move-object/from16 v0, v22

    #@2c9
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@2cb
    move-object/from16 v22, v0

    #@2cd
    .line 2400
    const/16 v23, 0x2

    #@2cf
    aget v23, v12, v23

    #@2d1
    move/from16 v0, v23

    #@2d3
    int-to-long v0, v0

    #@2d4
    move-wide/from16 v24, v0

    #@2d6
    move-object/from16 v0, p0

    #@2d8
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@2da
    move-object/from16 v23, v0

    #@2dc
    move-wide/from16 v0, v24

    #@2de
    move-object/from16 v2, v23

    #@2e0
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@2e3
    move-result-object v23

    #@2e4
    .line 2399
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e7
    .line 2402
    :cond_f
    move-object/from16 v0, p0

    #@2e9
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@2eb
    move-object/from16 v21, v0

    #@2ed
    const/16 v22, 0x3

    #@2ef
    aget-object v21, v21, v22

    #@2f1
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    #@2f4
    move-result v21

    #@2f5
    if-nez v21, :cond_10

    #@2f7
    .line 2403
    move-object/from16 v0, p0

    #@2f9
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@2fb
    move-object/from16 v21, v0

    #@2fd
    const/16 v22, 0x1

    #@2ff
    aget-object v21, v21, v22

    #@301
    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    #@303
    const/16 v23, 0x2

    #@305
    aget-object v22, v22, v23

    #@307
    move-object/from16 v0, v22

    #@309
    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@30b
    move-object/from16 v22, v0

    #@30d
    .line 2404
    const/16 v23, 0x3

    #@30f
    aget v23, v12, v23

    #@311
    move/from16 v0, v23

    #@313
    int-to-long v0, v0

    #@314
    move-wide/from16 v24, v0

    #@316
    move-object/from16 v0, p0

    #@318
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@31a
    move-object/from16 v23, v0

    #@31c
    .line 2403
    move-wide/from16 v0, v24

    #@31e
    move-object/from16 v2, v23

    #@320
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@323
    move-result-object v23

    #@324
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@327
    .line 2408
    :cond_10
    move-object/from16 v0, p1

    #@329
    move/from16 v1, v20

    #@32b
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    #@32e
    .line 2409
    sget-object v21, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    #@330
    move-object/from16 v0, p1

    #@332
    move-object/from16 v1, v21

    #@334
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    #@337
    .line 2410
    move-object/from16 v0, p0

    #@339
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@33b
    move-object/from16 v21, v0

    #@33d
    sget-object v22, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@33f
    move-object/from16 v0, v21

    #@341
    move-object/from16 v1, v22

    #@343
    if-ne v0, v1, :cond_12

    #@345
    .line 2411
    const/16 v21, 0x4d4d

    #@347
    .line 2410
    :goto_6
    move-object/from16 v0, p1

    #@349
    move/from16 v1, v21

    #@34b
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeShort(S)V

    #@34e
    .line 2412
    move-object/from16 v0, p0

    #@350
    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@352
    move-object/from16 v21, v0

    #@354
    move-object/from16 v0, p1

    #@356
    move-object/from16 v1, v21

    #@358
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    #@35b
    .line 2413
    const/16 v21, 0x2a

    #@35d
    move-object/from16 v0, p1

    #@35f
    move/from16 v1, v21

    #@361
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    #@364
    .line 2414
    const-wide/16 v22, 0x8

    #@366
    move-object/from16 v0, p1

    #@368
    move-wide/from16 v1, v22

    #@36a
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    #@36d
    .line 2417
    const/4 v9, 0x0

    #@36e
    :goto_7
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@370
    move-object/from16 v0, v21

    #@372
    array-length v0, v0

    #@373
    move/from16 v21, v0

    #@375
    move/from16 v0, v21

    #@377
    if-ge v9, v0, :cond_19

    #@379
    .line 2418
    move-object/from16 v0, p0

    #@37b
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@37d
    move-object/from16 v21, v0

    #@37f
    aget-object v21, v21, v9

    #@381
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    #@384
    move-result v21

    #@385
    if-nez v21, :cond_18

    #@387
    .line 2421
    move-object/from16 v0, p0

    #@389
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@38b
    move-object/from16 v21, v0

    #@38d
    aget-object v21, v21, v9

    #@38f
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    #@392
    move-result v21

    #@393
    move-object/from16 v0, p1

    #@395
    move/from16 v1, v21

    #@397
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    #@39a
    .line 2424
    aget v21, v12, v9

    #@39c
    add-int/lit8 v21, v21, 0x2

    #@39e
    move-object/from16 v0, p0

    #@3a0
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@3a2
    move-object/from16 v22, v0

    #@3a4
    aget-object v22, v22, v9

    #@3a6
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    #@3a9
    move-result v22

    #@3aa
    mul-int/lit8 v22, v22, 0xc

    #@3ac
    add-int v21, v21, v22

    #@3ae
    add-int/lit8 v5, v21, 0x4

    #@3b0
    .line 2425
    .local v5, "dataOffset":I
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@3b4
    move-object/from16 v21, v0

    #@3b6
    aget-object v21, v21, v9

    #@3b8
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@3bb
    move-result-object v21

    #@3bc
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3bf
    move-result-object v7

    #@3c0
    .restart local v7    # "entry$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@3c3
    move-result v21

    #@3c4
    if-eqz v21, :cond_14

    #@3c6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c9
    move-result-object v6

    #@3ca
    check-cast v6, Ljava/util/Map$Entry;

    #@3cc
    .line 2427
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    sget-object v21, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    #@3ce
    aget-object v21, v21, v9

    #@3d0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3d3
    move-result-object v22

    #@3d4
    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d7
    move-result-object v17

    #@3d8
    check-cast v17, Landroid/media/ExifInterface$ExifTag;

    #@3da
    .line 2428
    .restart local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    move-object/from16 v0, v17

    #@3dc
    iget v0, v0, Landroid/media/ExifInterface$ExifTag;->number:I

    #@3de
    move/from16 v18, v0

    #@3e0
    .line 2429
    .local v18, "tagNumber":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3e3
    move-result-object v4

    #@3e4
    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    #@3e6
    .line 2430
    .local v4, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    #@3e9
    move-result v15

    #@3ea
    .line 2432
    .restart local v15    # "size":I
    move-object/from16 v0, p1

    #@3ec
    move/from16 v1, v18

    #@3ee
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    #@3f1
    .line 2433
    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->format:I

    #@3f3
    move/from16 v21, v0

    #@3f5
    move-object/from16 v0, p1

    #@3f7
    move/from16 v1, v21

    #@3f9
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    #@3fc
    .line 2434
    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@3fe
    move/from16 v21, v0

    #@400
    move-object/from16 v0, p1

    #@402
    move/from16 v1, v21

    #@404
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeInt(I)V

    #@407
    .line 2435
    const/16 v21, 0x4

    #@409
    move/from16 v0, v21

    #@40b
    if-le v15, v0, :cond_13

    #@40d
    .line 2436
    int-to-long v0, v5

    #@40e
    move-wide/from16 v22, v0

    #@410
    move-object/from16 v0, p1

    #@412
    move-wide/from16 v1, v22

    #@414
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    #@417
    .line 2437
    add-int/2addr v5, v15

    #@418
    goto :goto_8

    #@419
    .line 2411
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "dataOffset":I
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    .end local v15    # "size":I
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_12
    const/16 v21, 0x4949

    #@41b
    goto/16 :goto_6

    #@41d
    .line 2439
    .restart local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v5    # "dataOffset":I
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    .restart local v7    # "entry$iterator":Ljava/util/Iterator;
    .restart local v15    # "size":I
    .restart local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v18    # "tagNumber":I
    :cond_13
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@41f
    move-object/from16 v21, v0

    #@421
    move-object/from16 v0, p1

    #@423
    move-object/from16 v1, v21

    #@425
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    #@428
    .line 2441
    const/16 v21, 0x4

    #@42a
    move/from16 v0, v21

    #@42c
    if-ge v15, v0, :cond_11

    #@42e
    .line 2442
    move v10, v15

    #@42f
    :goto_9
    const/16 v21, 0x4

    #@431
    move/from16 v0, v21

    #@433
    if-ge v10, v0, :cond_11

    #@435
    .line 2443
    const/16 v21, 0x0

    #@437
    move-object/from16 v0, p1

    #@439
    move/from16 v1, v21

    #@43b
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    #@43e
    .line 2442
    add-int/lit8 v10, v10, 0x1

    #@440
    goto :goto_9

    #@441
    .line 2452
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "size":I
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_14
    if-nez v9, :cond_15

    #@443
    move-object/from16 v0, p0

    #@445
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@447
    move-object/from16 v21, v0

    #@449
    const/16 v22, 0x4

    #@44b
    aget-object v21, v21, v22

    #@44d
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    #@450
    move-result v21

    #@451
    if-eqz v21, :cond_17

    #@453
    .line 2455
    :cond_15
    const-wide/16 v22, 0x0

    #@455
    move-object/from16 v0, p1

    #@457
    move-wide/from16 v1, v22

    #@459
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    #@45c
    .line 2459
    :goto_a
    move-object/from16 v0, p0

    #@45e
    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@460
    move-object/from16 v21, v0

    #@462
    aget-object v21, v21, v9

    #@464
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@467
    move-result-object v21

    #@468
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@46b
    move-result-object v7

    #@46c
    :cond_16
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@46f
    move-result v21

    #@470
    if-eqz v21, :cond_18

    #@472
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@475
    move-result-object v6

    #@476
    check-cast v6, Ljava/util/Map$Entry;

    #@478
    .line 2460
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@47b
    move-result-object v4

    #@47c
    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    #@47e
    .line 2462
    .restart local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@480
    move-object/from16 v21, v0

    #@482
    move-object/from16 v0, v21

    #@484
    array-length v0, v0

    #@485
    move/from16 v21, v0

    #@487
    const/16 v22, 0x4

    #@489
    move/from16 v0, v21

    #@48b
    move/from16 v1, v22

    #@48d
    if-le v0, v1, :cond_16

    #@48f
    .line 2463
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@491
    move-object/from16 v21, v0

    #@493
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@495
    move-object/from16 v22, v0

    #@497
    move-object/from16 v0, v22

    #@499
    array-length v0, v0

    #@49a
    move/from16 v22, v0

    #@49c
    const/16 v23, 0x0

    #@49e
    move-object/from16 v0, p1

    #@4a0
    move-object/from16 v1, v21

    #@4a2
    move/from16 v2, v23

    #@4a4
    move/from16 v3, v22

    #@4a6
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    #@4a9
    goto :goto_b

    #@4aa
    .line 2453
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    :cond_17
    const/16 v21, 0x4

    #@4ac
    aget v21, v12, v21

    #@4ae
    move/from16 v0, v21

    #@4b0
    int-to-long v0, v0

    #@4b1
    move-wide/from16 v22, v0

    #@4b3
    move-object/from16 v0, p1

    #@4b5
    move-wide/from16 v1, v22

    #@4b7
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    #@4ba
    goto :goto_a

    #@4bb
    .line 2417
    .end local v5    # "dataOffset":I
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    :cond_18
    add-int/lit8 v9, v9, 0x1

    #@4bd
    goto/16 :goto_7

    #@4bf
    .line 2470
    :cond_19
    move-object/from16 v0, p0

    #@4c1
    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@4c3
    move/from16 v21, v0

    #@4c5
    if-eqz v21, :cond_1a

    #@4c7
    .line 2471
    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    #@4ca
    move-result-object v21

    #@4cb
    move-object/from16 v0, p1

    #@4cd
    move-object/from16 v1, v21

    #@4cf
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    #@4d2
    .line 2475
    :cond_1a
    sget-object v21, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@4d4
    move-object/from16 v0, p1

    #@4d6
    move-object/from16 v1, v21

    #@4d8
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    #@4db
    .line 2477
    return v20
.end method


# virtual methods
.method public getAltitude(D)D
    .locals 9
    .param p1, "defaultValue"    # D

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    .line 1723
    const-string/jumbo v5, "GPSAltitude"

    #@5
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    #@7
    invoke-virtual {p0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    #@a
    move-result-wide v0

    #@b
    .line 1724
    .local v0, "altitude":D
    const-string/jumbo v5, "GPSAltitudeRef"

    #@e
    invoke-virtual {p0, v5, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    #@11
    move-result v2

    #@12
    .line 1726
    .local v2, "ref":I
    const-wide/16 v6, 0x0

    #@14
    cmpl-double v5, v0, v6

    #@16
    if-ltz v5, :cond_1

    #@18
    if-ltz v2, :cond_1

    #@1a
    .line 1727
    if-ne v2, v4, :cond_0

    #@1c
    :goto_0
    int-to-double v4, v3

    #@1d
    mul-double/2addr v4, v0

    #@1e
    return-wide v4

    #@1f
    :cond_0
    move v3, v4

    #@20
    goto :goto_0

    #@21
    .line 1729
    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    .line 1202
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    #@8
    move-result-object v1

    #@9
    .line 1203
    .local v1, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_4

    #@b
    .line 1204
    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    #@d
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_0

    #@13
    .line 1205
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@15
    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    return-object v3

    #@1a
    .line 1207
    :cond_0
    const-string/jumbo v3, "GPSTimeStamp"

    #@1d
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 1209
    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    #@25
    const/4 v4, 0x5

    #@26
    if-eq v3, v4, :cond_1

    #@28
    .line 1210
    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    #@2a
    const/16 v4, 0xa

    #@2c
    if-eq v3, v4, :cond_1

    #@2e
    .line 1211
    return-object v6

    #@2f
    .line 1213
    :cond_1
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@31
    invoke-static {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, [Landroid/media/ExifInterface$Rational;

    #@37
    .line 1214
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    #@38
    if-eq v3, v5, :cond_2

    #@3a
    .line 1215
    return-object v6

    #@3b
    .line 1217
    :cond_2
    const-string/jumbo v3, "%02d:%02d:%02d"

    #@3e
    new-array v4, v5, [Ljava/lang/Object;

    #@40
    .line 1218
    aget-object v5, v0, v8

    #@42
    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    #@44
    long-to-float v5, v6

    #@45
    aget-object v6, v0, v8

    #@47
    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    #@49
    long-to-float v6, v6

    #@4a
    div-float/2addr v5, v6

    #@4b
    float-to-int v5, v5

    #@4c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v5

    #@50
    aput-object v5, v4, v8

    #@52
    .line 1219
    aget-object v5, v0, v9

    #@54
    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    #@56
    long-to-float v5, v6

    #@57
    aget-object v6, v0, v9

    #@59
    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    #@5b
    long-to-float v6, v6

    #@5c
    div-float/2addr v5, v6

    #@5d
    float-to-int v5, v5

    #@5e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v5

    #@62
    aput-object v5, v4, v9

    #@64
    .line 1220
    aget-object v5, v0, v10

    #@66
    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    #@68
    long-to-float v5, v6

    #@69
    aget-object v6, v0, v10

    #@6b
    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    #@6d
    long-to-float v6, v6

    #@6e
    div-float/2addr v5, v6

    #@6f
    float-to-int v5, v5

    #@70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v5

    #@74
    aput-object v5, v4, v10

    #@76
    .line 1217
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    return-object v3

    #@7b
    .line 1223
    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@7d
    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    #@80
    move-result-wide v4

    #@81
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    move-result-object v3

    #@85
    return-object v3

    #@86
    .line 1224
    :catch_0
    move-exception v2

    #@87
    .line 1225
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v6

    #@88
    .line 1228
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    return-object v6
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    #@0
    .prologue
    .line 1261
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    #@3
    move-result-object v1

    #@4
    .line 1262
    .local v1, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_0

    #@6
    .line 1263
    return-wide p2

    #@7
    .line 1267
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@9
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-wide v2

    #@d
    return-wide v2

    #@e
    .line 1268
    :catch_0
    move-exception v0

    #@f
    .line 1269
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 1240
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    #@3
    move-result-object v1

    #@4
    .line 1241
    .local v1, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_0

    #@6
    .line 1242
    return p2

    #@7
    .line 1246
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@9
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v2

    #@d
    return v2

    #@e
    .line 1247
    :catch_0
    move-exception v0

    #@f
    .line 1248
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getDateTime()J
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, -0x1

    #@2
    .line 1739
    const-string/jumbo v10, "DateTime"

    #@5
    invoke-virtual {p0, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 1740
    .local v0, "dateTimeString":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    .line 1741
    sget-object v10, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    #@d
    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@10
    move-result-object v10

    #@11
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    #@14
    move-result v10

    #@15
    if-eqz v10, :cond_0

    #@17
    .line 1743
    new-instance v6, Ljava/text/ParsePosition;

    #@19
    const/4 v10, 0x0

    #@1a
    invoke-direct {v6, v10}, Ljava/text/ParsePosition;-><init>(I)V

    #@1d
    .line 1747
    .local v6, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v10, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    #@1f
    invoke-virtual {v10, v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@22
    move-result-object v1

    #@23
    .line 1748
    .local v1, "datetime":Ljava/util/Date;
    if-nez v1, :cond_1

    #@25
    return-wide v12

    #@26
    .line 1741
    .end local v1    # "datetime":Ljava/util/Date;
    .end local v6    # "pos":Ljava/text/ParsePosition;
    :cond_0
    return-wide v12

    #@27
    .line 1749
    .restart local v1    # "datetime":Ljava/util/Date;
    .restart local v6    # "pos":Ljava/text/ParsePosition;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@2a
    move-result-wide v4

    #@2b
    .line 1751
    .local v4, "msecs":J
    const-string/jumbo v10, "SubSecTime"

    #@2e
    invoke-virtual {p0, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    move-result-object v7

    #@32
    .line 1752
    .local v7, "subSecs":Ljava/lang/String;
    if-eqz v7, :cond_3

    #@34
    .line 1754
    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@3b
    move-result-wide v8

    #@3c
    .line 1755
    .local v8, "sub":J
    :goto_0
    const-wide/16 v10, 0x3e8

    #@3e
    cmp-long v10, v8, v10

    #@40
    if-lez v10, :cond_2

    #@42
    .line 1756
    const-wide/16 v10, 0xa

    #@44
    div-long/2addr v8, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@45
    goto :goto_0

    #@46
    .line 1758
    :cond_2
    add-long/2addr v4, v8

    #@47
    .line 1763
    .end local v8    # "sub":J
    :cond_3
    :goto_1
    return-wide v4

    #@48
    .line 1764
    .end local v1    # "datetime":Ljava/util/Date;
    .end local v4    # "msecs":J
    .end local v7    # "subSecs":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@49
    .line 1765
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return-wide v12

    #@4a
    .line 1759
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "datetime":Ljava/util/Date;
    .restart local v4    # "msecs":J
    .restart local v7    # "subSecs":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@4b
    .local v3, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method public getGpsDateTime()J
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    .line 1775
    const-string/jumbo v6, "GPSDateStamp"

    #@5
    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 1776
    .local v0, "date":Ljava/lang/String;
    const-string/jumbo v6, "GPSTimeStamp"

    #@c
    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    .line 1777
    .local v5, "time":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@12
    if-nez v5, :cond_1

    #@14
    .line 1780
    :cond_0
    return-wide v8

    #@15
    .line 1778
    :cond_1
    sget-object v6, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    #@17
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_2

    #@21
    .line 1779
    sget-object v6, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    #@23
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_0

    #@2d
    .line 1783
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    const/16 v7, 0x20

    #@38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 1785
    .local v1, "dateTimeString":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    #@46
    const/4 v6, 0x0

    #@47
    invoke-direct {v4, v6}, Ljava/text/ParsePosition;-><init>(I)V

    #@4a
    .line 1787
    .local v4, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    #@4c
    invoke-virtual {v6, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@4f
    move-result-object v2

    #@50
    .line 1788
    .local v2, "datetime":Ljava/util/Date;
    if-nez v2, :cond_3

    #@52
    return-wide v8

    #@53
    .line 1789
    :cond_3
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result-wide v6

    #@57
    return-wide v6

    #@58
    .line 1790
    .end local v2    # "datetime":Ljava/util/Date;
    :catch_0
    move-exception v3

    #@59
    .line 1791
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-wide v8
.end method

.method public getLatLong([F)Z
    .locals 9
    .param p1, "output"    # [F

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1698
    const-string/jumbo v5, "GPSLatitude"

    #@5
    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 1699
    .local v2, "latValue":Ljava/lang/String;
    const-string/jumbo v5, "GPSLatitudeRef"

    #@c
    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 1700
    .local v1, "latRef":Ljava/lang/String;
    const-string/jumbo v5, "GPSLongitude"

    #@13
    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 1701
    .local v4, "lngValue":Ljava/lang/String;
    const-string/jumbo v5, "GPSLongitudeRef"

    #@1a
    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 1703
    .local v3, "lngRef":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@20
    if-eqz v1, :cond_0

    #@22
    if-eqz v4, :cond_0

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 1705
    :try_start_0
    invoke-static {v2, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    #@29
    move-result v5

    #@2a
    const/4 v6, 0x0

    #@2b
    aput v5, p1, v6

    #@2d
    .line 1706
    invoke-static {v4, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    #@30
    move-result v5

    #@31
    const/4 v6, 0x1

    #@32
    aput v5, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 1707
    return v8

    #@35
    .line 1708
    :catch_0
    move-exception v0

    #@36
    .line 1713
    :cond_0
    return v7
.end method

.method public getThumbnail()[B
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1633
    iget-boolean v5, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 1634
    return-object v10

    #@6
    .line 1636
    :cond_0
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 1637
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    #@c
    return-object v5

    #@d
    .line 1641
    :cond_1
    const/4 v3, 0x0

    #@e
    .line 1643
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    #@10
    if-eqz v5, :cond_2

    #@12
    .line 1645
    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    #@14
    invoke-virtual {v5}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    #@17
    move-result-wide v6

    #@18
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    #@1a
    iget v8, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    #@1c
    .line 1644
    invoke-static {v6, v7, v5, v8}, Landroid/media/ExifInterface;->nativeGetThumbnailFromAsset(JII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v5

    #@20
    .line 1668
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23
    .line 1644
    return-object v5

    #@24
    .line 1646
    :cond_2
    :try_start_1
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@26
    if-eqz v5, :cond_4

    #@28
    .line 1647
    new-instance v4, Ljava/io/FileInputStream;

    #@2a
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@2c
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@2f
    .local v4, "in":Ljava/io/FileInputStream;
    move-object v3, v4

    #@30
    .line 1653
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    if-nez v3, :cond_5

    #@32
    .line 1655
    new-instance v5, Ljava/io/FileNotFoundException;

    #@34
    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    #@37
    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 1665
    :catch_0
    move-exception v1

    #@39
    .line 1668
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3c
    .line 1670
    return-object v10

    #@3d
    .line 1648
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_4
    :try_start_2
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@3f
    if-eqz v5, :cond_3

    #@41
    .line 1649
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@43
    invoke-static {v5}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@46
    move-result-object v2

    #@47
    .line 1650
    .local v2, "fileDescriptor":Ljava/io/FileDescriptor;
    const-wide/16 v6, 0x0

    #@49
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    #@4b
    invoke-static {v2, v6, v7, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@4e
    .line 1651
    new-instance v4, Ljava/io/FileInputStream;

    #@50
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@53
    .restart local v4    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    #@54
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    goto :goto_0

    #@55
    .line 1657
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v3    # "in":Ljava/io/FileInputStream;
    :cond_5
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    #@57
    int-to-long v6, v5

    #@58
    invoke-virtual {v3, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    #@5b
    move-result-wide v6

    #@5c
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    #@5e
    int-to-long v8, v5

    #@5f
    cmp-long v5, v6, v8

    #@61
    if-eqz v5, :cond_6

    #@63
    .line 1658
    new-instance v5, Ljava/io/IOException;

    #@65
    const-string/jumbo v6, "Corrupted image"

    #@68
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6c
    .line 1667
    :catchall_0
    move-exception v5

    #@6d
    .line 1668
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@70
    .line 1667
    throw v5

    #@71
    .line 1660
    :cond_6
    :try_start_3
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    #@73
    new-array v0, v5, [B

    #@75
    .line 1661
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    #@78
    move-result v5

    #@79
    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    #@7b
    if-eq v5, v6, :cond_7

    #@7d
    .line 1662
    new-instance v5, Ljava/io/IOException;

    #@7f
    const-string/jumbo v6, "Corrupted image"

    #@82
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@85
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@86
    .line 1668
    :cond_7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@89
    .line 1664
    return-object v0
.end method

.method public getThumbnailRange()[J
    .locals 4

    #@0
    .prologue
    .line 1681
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1682
    const/4 v1, 0x0

    #@5
    return-object v1

    #@6
    .line 1685
    :cond_0
    const/4 v1, 0x2

    #@7
    new-array v0, v1, [J

    #@9
    .line 1686
    .local v0, "range":[J
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    #@b
    int-to-long v2, v1

    #@c
    const/4 v1, 0x0

    #@d
    aput-wide v2, v0, v1

    #@f
    .line 1687
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    #@11
    int-to-long v2, v1

    #@12
    const/4 v1, 0x1

    #@13
    aput-wide v2, v0, v1

    #@15
    .line 1689
    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    #@0
    .prologue
    .line 1624
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@2
    return v0
.end method

.method public saveAttributes()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1559
    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    #@3
    if-eqz v8, :cond_0

    #@5
    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsRaw:Z

    #@7
    if-eqz v8, :cond_1

    #@9
    .line 1560
    :cond_0
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@b
    .line 1561
    const-string/jumbo v9, "ExifInterface only supports saving attributes on JPEG formats."

    #@e
    .line 1560
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@11
    throw v8

    #@12
    .line 1563
    :cond_1
    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    #@14
    if-nez v8, :cond_2

    #@16
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@18
    if-nez v8, :cond_3

    #@1a
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@1c
    if-nez v8, :cond_3

    #@1e
    .line 1564
    :cond_2
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@20
    .line 1565
    const-string/jumbo v9, "ExifInterface does not support saving attributes for the current input."

    #@23
    .line 1564
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@26
    throw v8

    #@27
    .line 1569
    :cond_3
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    #@2a
    move-result-object v8

    #@2b
    iput-object v8, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    #@2d
    .line 1571
    const/4 v1, 0x0

    #@2e
    .line 1572
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    #@2f
    .line 1573
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    #@30
    .line 1576
    .local v6, "tempFile":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@32
    if-eqz v8, :cond_4

    #@34
    .line 1577
    new-instance v7, Ljava/io/File;

    #@36
    new-instance v8, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    iget-object v9, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@3d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    const-string/jumbo v9, ".tmp"

    #@44
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v8

    #@48
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 1578
    .end local v6    # "tempFile":Ljava/io/File;
    .local v7, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/File;

    #@51
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@53
    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@56
    .line 1579
    .local v3, "originalFile":Ljava/io/File;
    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@59
    move-result v8

    #@5a
    if-nez v8, :cond_8

    #@5c
    .line 1580
    new-instance v8, Ljava/io/IOException;

    #@5e
    new-instance v9, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v10, "Could\'nt rename to "

    #@66
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v9

    #@6a
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@6d
    move-result-object v10

    #@6e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@79
    throw v8
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@7a
    .line 1589
    .end local v3    # "originalFile":Ljava/io/File;
    :catch_0
    move-exception v0

    #@7b
    .local v0, "e":Landroid/system/ErrnoException;
    move-object v6, v7

    #@7c
    .line 1590
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "tempFile":Ljava/io/File;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@7f
    move-result-object v8

    #@80
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@81
    .line 1591
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v8

    #@82
    .line 1592
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@85
    .line 1593
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@88
    .line 1591
    throw v8

    #@89
    .line 1582
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    :cond_4
    :try_start_3
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@8b
    if-eqz v8, :cond_5

    #@8d
    .line 1583
    const-string/jumbo v8, "temp"

    #@90
    const-string/jumbo v9, "jpg"

    #@93
    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@96
    move-result-object v6

    #@97
    .line 1584
    .local v6, "tempFile":Ljava/io/File;
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@99
    const-wide/16 v10, 0x0

    #@9b
    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    #@9d
    invoke-static {v8, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@a0
    .line 1585
    new-instance v2, Ljava/io/FileInputStream;

    #@a2
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@a4
    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a7
    .line 1586
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    #@a9
    .end local v1    # "in":Ljava/io/FileInputStream;
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@ac
    .line 1587
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-static {v2, v5}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    #@af
    .end local v4    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    #@b0
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    #@b1
    .line 1592
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "tempFile":Ljava/io/File;
    :cond_5
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b4
    .line 1593
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b7
    .line 1596
    const/4 v1, 0x0

    #@b8
    .line 1597
    .restart local v1    # "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    #@b9
    .line 1600
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    #@bb
    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@be
    .line 1601
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :try_start_7
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@c0
    if-eqz v8, :cond_7

    #@c2
    .line 1602
    new-instance v5, Ljava/io/FileOutputStream;

    #@c4
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@c6
    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@c9
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    #@ca
    .line 1607
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_6
    :goto_3
    invoke-direct {p0, v2, v4}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@cd
    .line 1611
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d0
    .line 1612
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d3
    .line 1613
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    #@d6
    .line 1617
    iput-object v12, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    #@d8
    .line 1558
    return-void

    #@d9
    .line 1603
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_7
    :try_start_8
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@db
    if-eqz v8, :cond_6

    #@dd
    .line 1604
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@df
    const-wide/16 v10, 0x0

    #@e1
    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    #@e3
    invoke-static {v8, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@e6
    .line 1605
    new-instance v5, Ljava/io/FileOutputStream;

    #@e8
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    #@ea
    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@ed
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    #@ee
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    #@ef
    .line 1608
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    #@f0
    .line 1609
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Landroid/system/ErrnoException;
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@f3
    move-result-object v8

    #@f4
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@f5
    .line 1610
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_1
    move-exception v8

    #@f6
    .line 1611
    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f9
    .line 1612
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@fc
    .line 1613
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    #@ff
    .line 1610
    throw v8

    #@100
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    #@101
    move-object v1, v2

    #@102
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto :goto_5

    #@103
    .line 1608
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    #@104
    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v1, v2

    #@105
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    #@106
    .line 1591
    .end local v0    # "e":Landroid/system/ErrnoException;
    .local v1, "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "tempFile":Ljava/io/File;
    :catchall_3
    move-exception v8

    #@107
    move-object v6, v7

    #@108
    .end local v7    # "tempFile":Ljava/io/File;
    .restart local v6    # "tempFile":Ljava/io/File;
    goto/16 :goto_1

    #@10a
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v8

    #@10b
    move-object v1, v2

    #@10c
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    #@10e
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v8

    #@10f
    move-object v4, v5

    #@110
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    #@111
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    #@113
    .line 1589
    .end local v6    # "tempFile":Ljava/io/File;
    .local v1, "in":Ljava/io/FileInputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    #@114
    .restart local v0    # "e":Landroid/system/ErrnoException;
    goto/16 :goto_0

    #@116
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    :catch_4
    move-exception v0

    #@117
    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v1, v2

    #@118
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto/16 :goto_0

    #@11a
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    #@11b
    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v4, v5

    #@11c
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    #@11d
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_0

    #@11f
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v6    # "tempFile":Ljava/io/File;
    .local v1, "in":Ljava/io/FileInputStream;
    .restart local v3    # "originalFile":Ljava/io/File;
    .local v4, "out":Ljava/io/FileOutputStream;
    .restart local v7    # "tempFile":Ljava/io/File;
    :cond_8
    move-object v6, v7

    #@120
    .end local v7    # "tempFile":Ljava/io/File;
    .restart local v6    # "tempFile":Ljava/io/File;
    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1281
    if-eqz p2, :cond_1

    #@2
    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 1282
    const-string/jumbo v3, "GPSTimeStamp"

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_4

    #@17
    .line 1283
    sget-object v3, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    #@19
    move-object/from16 v0, p2

    #@1b
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1e
    move-result-object v19

    #@1f
    .line 1284
    .local v19, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_0

    #@25
    .line 1285
    const-string/jumbo v3, "ExifInterface"

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "Invalid value for "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    move-object/from16 v0, p1

    #@36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    const-string/jumbo v5, " : "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 1286
    return-void

    #@4f
    .line 1288
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const/4 v4, 0x1

    #@55
    move-object/from16 v0, v19

    #@57
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5e
    move-result v4

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    const-string/jumbo v4, "/1,"

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    const/4 v4, 0x2

    #@6b
    move-object/from16 v0, v19

    #@6d
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@74
    move-result v4

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    const-string/jumbo v4, "/1,"

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    .line 1289
    const/4 v4, 0x3

    #@81
    move-object/from16 v0, v19

    #@83
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8a
    move-result v4

    #@8b
    .line 1288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    .line 1289
    const-string/jumbo v4, "/1"

    #@92
    .line 1288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object p2

    #@9a
    .line 1301
    .end local v19    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    const/4 v15, 0x0

    #@9b
    .local v15, "i":I
    :goto_1
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    #@9d
    array-length v3, v3

    #@9e
    if-ge v15, v3, :cond_14

    #@a0
    .line 1302
    const/4 v3, 0x4

    #@a1
    if-ne v15, v3, :cond_2

    #@a3
    move-object/from16 v0, p0

    #@a5
    iget-boolean v3, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@a7
    if-eqz v3, :cond_3

    #@a9
    .line 1305
    :cond_2
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    #@ab
    aget-object v3, v3, v15

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    move-result-object v21

    #@b3
    .line 1306
    .local v21, "obj":Ljava/lang/Object;
    if-eqz v21, :cond_3

    #@b5
    .line 1307
    if-nez p2, :cond_5

    #@b7
    .line 1308
    move-object/from16 v0, p0

    #@b9
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@bb
    aget-object v3, v3, v15

    #@bd
    move-object/from16 v0, p1

    #@bf
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c2
    .line 1301
    .end local v21    # "obj":Ljava/lang/Object;
    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    #@c4
    goto :goto_1

    #@c5
    .line 1292
    .end local v15    # "i":I
    :cond_4
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@c8
    move-result-wide v10

    #@c9
    .line 1293
    .local v10, "doubleValue":D
    new-instance v3, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-wide v4, 0x40c3880000000000L    # 10000.0

    #@d3
    mul-double/2addr v4, v10

    #@d4
    double-to-long v4, v4

    #@d5
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v3

    #@d9
    const-string/jumbo v4, "/10000"

    #@dc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v3

    #@e0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@e3
    move-result-object p2

    #@e4
    goto :goto_0

    #@e5
    .line 1294
    .end local v10    # "doubleValue":D
    :catch_0
    move-exception v12

    #@e6
    .line 1295
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "ExifInterface"

    #@e9
    new-instance v4, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    const-string/jumbo v5, "Invalid value for "

    #@f1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v4

    #@f5
    move-object/from16 v0, p1

    #@f7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v4

    #@fb
    const-string/jumbo v5, " : "

    #@fe
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v4

    #@102
    move-object/from16 v0, p2

    #@104
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v4

    #@108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v4

    #@10c
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    .line 1296
    return-void

    #@110
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "i":I
    .restart local v21    # "obj":Ljava/lang/Object;
    :cond_5
    move-object/from16 v13, v21

    #@112
    .line 1311
    check-cast v13, Landroid/media/ExifInterface$ExifTag;

    #@114
    .line 1312
    .local v13, "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    #@117
    move-result-object v14

    #@118
    .line 1314
    .local v14, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    #@11a
    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@11c
    check-cast v3, Ljava/lang/Integer;

    #@11e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@121
    move-result v3

    #@122
    if-eq v4, v3, :cond_6

    #@124
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    #@126
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@128
    check-cast v3, Ljava/lang/Integer;

    #@12a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@12d
    move-result v3

    #@12e
    if-ne v4, v3, :cond_7

    #@130
    .line 1315
    :cond_6
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    #@132
    .line 1332
    .local v2, "dataFormat":I
    :goto_3
    packed-switch v2, :pswitch_data_0

    #@135
    .line 1407
    :pswitch_0
    const-string/jumbo v3, "ExifInterface"

    #@138
    new-instance v4, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    const-string/jumbo v5, "Data format isn\'t one of expected formats: "

    #@140
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v4

    #@144
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@147
    move-result-object v4

    #@148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v4

    #@14c
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14f
    goto/16 :goto_2

    #@151
    .line 1316
    .end local v2    # "dataFormat":I
    :cond_7
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    #@153
    const/4 v4, -0x1

    #@154
    if-eq v3, v4, :cond_9

    #@156
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    #@158
    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@15a
    check-cast v3, Ljava/lang/Integer;

    #@15c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@15f
    move-result v3

    #@160
    if-eq v4, v3, :cond_8

    #@162
    .line 1317
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    #@164
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@166
    check-cast v3, Ljava/lang/Integer;

    #@168
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@16b
    move-result v3

    #@16c
    if-ne v4, v3, :cond_9

    #@16e
    .line 1318
    :cond_8
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    #@170
    .restart local v2    # "dataFormat":I
    goto :goto_3

    #@171
    .line 1319
    .end local v2    # "dataFormat":I
    :cond_9
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    #@173
    const/4 v4, 0x1

    #@174
    if-eq v3, v4, :cond_a

    #@176
    .line 1320
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    #@178
    const/4 v4, 0x7

    #@179
    if-ne v3, v4, :cond_b

    #@17b
    .line 1322
    :cond_a
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    #@17d
    .restart local v2    # "dataFormat":I
    goto :goto_3

    #@17e
    .line 1321
    .end local v2    # "dataFormat":I
    :cond_b
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    #@180
    const/4 v4, 0x2

    #@181
    if-eq v3, v4, :cond_a

    #@183
    .line 1324
    const-string/jumbo v4, "ExifInterface"

    #@186
    new-instance v3, Ljava/lang/StringBuilder;

    #@188
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    const-string/jumbo v5, "Given tag ("

    #@18e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v3

    #@192
    move-object/from16 v0, p1

    #@194
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v3

    #@198
    const-string/jumbo v5, ") value didn\'t match with one of expected "

    #@19b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v3

    #@19f
    .line 1325
    const-string/jumbo v5, "formats: "

    #@1a2
    .line 1324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v3

    #@1a6
    .line 1325
    sget-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    #@1a8
    iget v6, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    #@1aa
    aget-object v5, v5, v6

    #@1ac
    .line 1324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v5

    #@1b0
    .line 1326
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    #@1b2
    const/4 v6, -0x1

    #@1b3
    if-ne v3, v6, :cond_c

    #@1b5
    const-string/jumbo v3, ""

    #@1b8
    .line 1324
    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v3

    #@1bc
    .line 1327
    const-string/jumbo v5, " (guess: "

    #@1bf
    .line 1324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v5

    #@1c3
    .line 1328
    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    #@1c5
    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1c7
    check-cast v3, Ljava/lang/Integer;

    #@1c9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1cc
    move-result v3

    #@1cd
    aget-object v3, v6, v3

    #@1cf
    .line 1324
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v5

    #@1d3
    .line 1328
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1d5
    check-cast v3, Ljava/lang/Integer;

    #@1d7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1da
    move-result v3

    #@1db
    const/4 v6, -0x1

    #@1dc
    if-ne v3, v6, :cond_d

    #@1de
    const-string/jumbo v3, ""

    #@1e1
    .line 1324
    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v3

    #@1e5
    .line 1329
    const-string/jumbo v5, ")"

    #@1e8
    .line 1324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v3

    #@1ec
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ef
    move-result-object v3

    #@1f0
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f3
    goto/16 :goto_2

    #@1f5
    .line 1326
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1fa
    const-string/jumbo v6, ", "

    #@1fd
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v3

    #@201
    .line 1327
    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    #@203
    iget v7, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    #@205
    aget-object v6, v6, v7

    #@207
    .line 1326
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v3

    #@20b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v3

    #@20f
    goto :goto_4

    #@210
    .line 1328
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    #@212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@215
    const-string/jumbo v6, ", "

    #@218
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v6

    #@21c
    .line 1329
    sget-object v7, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    #@21e
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@220
    check-cast v3, Ljava/lang/Integer;

    #@222
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@225
    move-result v3

    #@226
    aget-object v3, v7, v3

    #@228
    .line 1328
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v3

    #@22c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22f
    move-result-object v3

    #@230
    goto :goto_5

    #@231
    .line 1334
    .restart local v2    # "dataFormat":I
    :pswitch_1
    move-object/from16 v0, p0

    #@233
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@235
    aget-object v3, v3, v15

    #@237
    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    #@23a
    move-result-object v4

    #@23b
    move-object/from16 v0, p1

    #@23d
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@240
    goto/16 :goto_2

    #@242
    .line 1339
    :pswitch_2
    move-object/from16 v0, p0

    #@244
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@246
    aget-object v3, v3, v15

    #@248
    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    #@24b
    move-result-object v4

    #@24c
    move-object/from16 v0, p1

    #@24e
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@251
    goto/16 :goto_2

    #@253
    .line 1343
    :pswitch_3
    const-string/jumbo v3, ","

    #@256
    move-object/from16 v0, p2

    #@258
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@25b
    move-result-object v23

    #@25c
    .line 1344
    .local v23, "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    #@25e
    array-length v3, v0

    #@25f
    new-array v0, v3, [I

    #@261
    move-object/from16 v16, v0

    #@263
    .line 1345
    .local v16, "intArray":[I
    const/16 v17, 0x0

    #@265
    .local v17, "j":I
    :goto_6
    move-object/from16 v0, v23

    #@267
    array-length v3, v0

    #@268
    move/from16 v0, v17

    #@26a
    if-ge v0, v3, :cond_e

    #@26c
    .line 1346
    aget-object v3, v23, v17

    #@26e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@271
    move-result v3

    #@272
    aput v3, v16, v17

    #@274
    .line 1345
    add-int/lit8 v17, v17, 0x1

    #@276
    goto :goto_6

    #@277
    .line 1348
    :cond_e
    move-object/from16 v0, p0

    #@279
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@27b
    aget-object v3, v3, v15

    #@27d
    .line 1349
    move-object/from16 v0, p0

    #@27f
    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@281
    move-object/from16 v0, v16

    #@283
    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@286
    move-result-object v4

    #@287
    .line 1348
    move-object/from16 v0, p1

    #@289
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28c
    goto/16 :goto_2

    #@28e
    .line 1353
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, ","

    #@291
    move-object/from16 v0, p2

    #@293
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@296
    move-result-object v23

    #@297
    .line 1354
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    #@299
    array-length v3, v0

    #@29a
    new-array v0, v3, [I

    #@29c
    move-object/from16 v16, v0

    #@29e
    .line 1355
    .restart local v16    # "intArray":[I
    const/16 v17, 0x0

    #@2a0
    .restart local v17    # "j":I
    :goto_7
    move-object/from16 v0, v23

    #@2a2
    array-length v3, v0

    #@2a3
    move/from16 v0, v17

    #@2a5
    if-ge v0, v3, :cond_f

    #@2a7
    .line 1356
    aget-object v3, v23, v17

    #@2a9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2ac
    move-result v3

    #@2ad
    aput v3, v16, v17

    #@2af
    .line 1355
    add-int/lit8 v17, v17, 0x1

    #@2b1
    goto :goto_7

    #@2b2
    .line 1358
    :cond_f
    move-object/from16 v0, p0

    #@2b4
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@2b6
    aget-object v3, v3, v15

    #@2b8
    .line 1359
    move-object/from16 v0, p0

    #@2ba
    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@2bc
    move-object/from16 v0, v16

    #@2be
    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@2c1
    move-result-object v4

    #@2c2
    .line 1358
    move-object/from16 v0, p1

    #@2c4
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c7
    goto/16 :goto_2

    #@2c9
    .line 1363
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v3, ","

    #@2cc
    move-object/from16 v0, p2

    #@2ce
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2d1
    move-result-object v23

    #@2d2
    .line 1364
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    #@2d4
    array-length v3, v0

    #@2d5
    new-array v0, v3, [J

    #@2d7
    move-object/from16 v18, v0

    #@2d9
    .line 1365
    .local v18, "longArray":[J
    const/16 v17, 0x0

    #@2db
    .restart local v17    # "j":I
    :goto_8
    move-object/from16 v0, v23

    #@2dd
    array-length v3, v0

    #@2de
    move/from16 v0, v17

    #@2e0
    if-ge v0, v3, :cond_10

    #@2e2
    .line 1366
    aget-object v3, v23, v17

    #@2e4
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@2e7
    move-result-wide v4

    #@2e8
    aput-wide v4, v18, v17

    #@2ea
    .line 1365
    add-int/lit8 v17, v17, 0x1

    #@2ec
    goto :goto_8

    #@2ed
    .line 1368
    :cond_10
    move-object/from16 v0, p0

    #@2ef
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@2f1
    aget-object v3, v3, v15

    #@2f3
    .line 1369
    move-object/from16 v0, p0

    #@2f5
    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@2f7
    move-object/from16 v0, v18

    #@2f9
    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@2fc
    move-result-object v4

    #@2fd
    .line 1368
    move-object/from16 v0, p1

    #@2ff
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@302
    goto/16 :goto_2

    #@304
    .line 1373
    .end local v17    # "j":I
    .end local v18    # "longArray":[J
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v3, ","

    #@307
    move-object/from16 v0, p2

    #@309
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@30c
    move-result-object v23

    #@30d
    .line 1374
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    #@30f
    array-length v3, v0

    #@310
    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    #@312
    move-object/from16 v22, v0

    #@314
    .line 1375
    .local v22, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/16 v17, 0x0

    #@316
    .restart local v17    # "j":I
    :goto_9
    move-object/from16 v0, v23

    #@318
    array-length v3, v0

    #@319
    move/from16 v0, v17

    #@31b
    if-ge v0, v3, :cond_11

    #@31d
    .line 1376
    aget-object v3, v23, v17

    #@31f
    const-string/jumbo v4, "/"

    #@322
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@325
    move-result-object v20

    #@326
    .line 1377
    .local v20, "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/media/ExifInterface$Rational;

    #@328
    const/4 v4, 0x0

    #@329
    aget-object v4, v20, v4

    #@32b
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@32e
    move-result-wide v4

    #@32f
    .line 1378
    const/4 v6, 0x1

    #@330
    aget-object v6, v20, v6

    #@332
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@335
    move-result-wide v6

    #@336
    .line 1377
    const/4 v8, 0x0

    #@337
    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    #@33a
    aput-object v3, v22, v17

    #@33c
    .line 1375
    add-int/lit8 v17, v17, 0x1

    #@33e
    goto :goto_9

    #@33f
    .line 1380
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    #@341
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@343
    aget-object v3, v3, v15

    #@345
    .line 1381
    move-object/from16 v0, p0

    #@347
    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@349
    move-object/from16 v0, v22

    #@34b
    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@34e
    move-result-object v4

    #@34f
    .line 1380
    move-object/from16 v0, p1

    #@351
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@354
    goto/16 :goto_2

    #@356
    .line 1385
    .end local v17    # "j":I
    .end local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v3, ","

    #@359
    move-object/from16 v0, p2

    #@35b
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@35e
    move-result-object v23

    #@35f
    .line 1386
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    #@361
    array-length v3, v0

    #@362
    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    #@364
    move-object/from16 v22, v0

    #@366
    .line 1387
    .restart local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/16 v17, 0x0

    #@368
    .restart local v17    # "j":I
    :goto_a
    move-object/from16 v0, v23

    #@36a
    array-length v3, v0

    #@36b
    move/from16 v0, v17

    #@36d
    if-ge v0, v3, :cond_12

    #@36f
    .line 1388
    aget-object v3, v23, v17

    #@371
    const-string/jumbo v4, "/"

    #@374
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@377
    move-result-object v20

    #@378
    .line 1389
    .restart local v20    # "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/media/ExifInterface$Rational;

    #@37a
    const/4 v4, 0x0

    #@37b
    aget-object v4, v20, v4

    #@37d
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@380
    move-result-wide v4

    #@381
    .line 1390
    const/4 v6, 0x1

    #@382
    aget-object v6, v20, v6

    #@384
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@387
    move-result-wide v6

    #@388
    .line 1389
    const/4 v8, 0x0

    #@389
    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    #@38c
    aput-object v3, v22, v17

    #@38e
    .line 1387
    add-int/lit8 v17, v17, 0x1

    #@390
    goto :goto_a

    #@391
    .line 1392
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    #@393
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@395
    aget-object v3, v3, v15

    #@397
    .line 1393
    move-object/from16 v0, p0

    #@399
    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@39b
    move-object/from16 v0, v22

    #@39d
    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@3a0
    move-result-object v4

    #@3a1
    .line 1392
    move-object/from16 v0, p1

    #@3a3
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a6
    goto/16 :goto_2

    #@3a8
    .line 1397
    .end local v17    # "j":I
    .end local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v3, ","

    #@3ab
    move-object/from16 v0, p2

    #@3ad
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3b0
    move-result-object v23

    #@3b1
    .line 1398
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    #@3b3
    array-length v3, v0

    #@3b4
    new-array v9, v3, [D

    #@3b6
    .line 1399
    .local v9, "doubleArray":[D
    const/16 v17, 0x0

    #@3b8
    .restart local v17    # "j":I
    :goto_b
    move-object/from16 v0, v23

    #@3ba
    array-length v3, v0

    #@3bb
    move/from16 v0, v17

    #@3bd
    if-ge v0, v3, :cond_13

    #@3bf
    .line 1400
    aget-object v3, v23, v17

    #@3c1
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@3c4
    move-result-wide v4

    #@3c5
    aput-wide v4, v9, v17

    #@3c7
    .line 1399
    add-int/lit8 v17, v17, 0x1

    #@3c9
    goto :goto_b

    #@3ca
    .line 1402
    :cond_13
    move-object/from16 v0, p0

    #@3cc
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    #@3ce
    aget-object v3, v3, v15

    #@3d0
    .line 1403
    move-object/from16 v0, p0

    #@3d2
    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    #@3d4
    invoke-static {v9, v4}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@3d7
    move-result-object v4

    #@3d8
    .line 1402
    move-object/from16 v0, p1

    #@3da
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3dd
    goto/16 :goto_2

    #@3df
    .line 1279
    .end local v2    # "dataFormat":I
    .end local v9    # "doubleArray":[D
    .end local v13    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .end local v14    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v17    # "j":I
    .end local v21    # "obj":Ljava/lang/Object;
    .end local v23    # "values":[Ljava/lang/String;
    :cond_14
    return-void

    #@3e0
    .line 1332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
