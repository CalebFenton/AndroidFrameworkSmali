.class public final Landroid/provider/MetadataReader;
.super Ljava/lang/Object;
.source "MetadataReader.java"


# static fields
.field private static final greylist-max-o DEFAULT_EXIF_TAGS:[Ljava/lang/String;

.field private static final greylist-max-o JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final greylist-max-o JPG_MIME_TYPE:Ljava/lang/String; = "image/jpg"

.field private static final greylist-max-o TYPE_DOUBLE:I = 0x1

.field private static final greylist-max-o TYPE_INT:I = 0x0

.field private static final greylist-max-o TYPE_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TYPE_STRING:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 18

    .line 41
    const-string v16, "Orientation"

    const-string v17, "ShutterSpeedValue"

    const-string v1, "FNumber"

    const-string v2, "Copyright"

    const-string v3, "DateTime"

    const-string v4, "ExposureTime"

    const-string v5, "FocalLength"

    const-string v6, "FNumber"

    const-string v7, "GPSLatitude"

    const-string v8, "GPSLatitudeRef"

    const-string v9, "GPSLongitude"

    const-string v10, "GPSLongitudeRef"

    const-string v11, "ImageLength"

    const-string v12, "ImageWidth"

    const-string v13, "ISOSpeedRatings"

    const-string v14, "Make"

    const-string v15, "Model"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/MetadataReader;->DEFAULT_EXIF_TAGS:[Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    .line 71
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Artist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "BitsPerSample"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "Compression"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "Copyright"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "DateTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "ImageDescription"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "ImageLength"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "ImageWidth"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "JPEGInterchangeFormat"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "JPEGInterchangeFormatLength"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "Make"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "Model"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "Orientation"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "PhotometricInterpretation"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "PlanarConfiguration"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PrimaryChromaticities"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ReferenceBlackWhite"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ResolutionUnit"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "RowsPerStrip"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SamplesPerPixel"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "Software"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "StripByteCounts"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "StripOffsets"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "TransferFunction"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "WhitePoint"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "XResolution"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "YCbCrCoefficients"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "YCbCrPositioning"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "YCbCrSubSampling"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "YResolution"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ApertureValue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "BrightnessValue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "CFAPattern"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ColorSpace"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ComponentsConfiguration"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "CompressedBitsPerPixel"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "Contrast"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "CustomRendered"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "DateTimeDigitized"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "DateTimeOriginal"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "DeviceSettingDescription"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "DigitalZoomRatio"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExifVersion"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExposureBiasValue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExposureIndex"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExposureMode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExposureProgram"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExposureTime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FNumber"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FileSource"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "Flash"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FlashEnergy"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FlashpixVersion"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FocalLength"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FocalLengthIn35mmFilm"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FocalPlaneResolutionUnit"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FocalPlaneXResolution"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FocalPlaneYResolution"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GainControl"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ISOSpeedRatings"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ImageUniqueID"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "LightSource"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "MakerNote"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "MaxApertureValue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "MeteringMode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "NewSubfileType"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "OECF"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "PixelXDimension"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "PixelYDimension"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "RelatedSoundFile"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "Saturation"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SceneCaptureType"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SceneType"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SensingMethod"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "Sharpness"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ShutterSpeedValue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SpatialFrequencyResponse"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SpectralSensitivity"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubfileType"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubSecTime"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubSecTimeDigitized"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubSecTimeOriginal"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubjectArea"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubjectDistance"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubjectDistanceRange"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubjectLocation"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "UserComment"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "WhiteBalance"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSAltitude"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSAltitudeRef"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSAreaInformation"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDOP"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDateStamp"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestBearing"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestBearingRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestDistance"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestDistanceRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestLatitude"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestLatitudeRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestLongitude"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestLongitudeRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDifferential"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSImgDirection"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSImgDirectionRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSLatitude"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSLatitudeRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSLongitude"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSLongitudeRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSMapDatum"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSMeasureMode"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSProcessingMethod"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSSatellites"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSSpeed"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSSpeedRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSStatus"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSTimeStamp"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSTrack"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "GPSTrackRef"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "GPSVersionID"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "InteroperabilityIndex"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "ThumbnailImageLength"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "ThumbnailImageWidth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "DNGVersion"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "DefaultCropSize"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "PreviewImageStart"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "PreviewImageLength"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "AspectFrame"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "SensorBottomBorder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "SensorLeftBorder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "SensorRightBorder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "SensorTopBorder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "ISO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o getExifData(Ljava/io/InputStream;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 12
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "tags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    if-nez p1, :cond_4

    .line 255
    sget-object p1, Landroid/provider/MetadataReader;->DEFAULT_EXIF_TAGS:[Ljava/lang/String;

    .line 258
    :cond_4
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 259
    .local v0, "exifInterface":Landroid/media/ExifInterface;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v1, "exif":Landroid/os/Bundle;
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_75

    aget-object v5, p1, v4

    .line 261
    .local v5, "tag":Ljava/lang/String;
    sget-object v6, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 262
    const/high16 v6, -0x80000000

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    .line 263
    .local v7, "data":I
    if-eq v7, v6, :cond_32

    .line 264
    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    .end local v7    # "data":I
    :cond_32
    goto :goto_72

    :cond_33
    sget-object v6, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 267
    const-wide/16 v6, 0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 268
    .local v8, "data":D
    cmpl-double v6, v8, v6

    if-eqz v6, :cond_71

    .line 269
    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_71

    .line 271
    .end local v8    # "data":D
    :cond_54
    sget-object v6, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 272
    invoke-virtual {v0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "data":Ljava/lang/String;
    if-eqz v6, :cond_72

    .line 274
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 271
    .end local v6    # "data":Ljava/lang/String;
    :cond_71
    :goto_71
    nop

    .line 260
    .end local v5    # "tag":Ljava/lang/String;
    :cond_72
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 278
    :cond_75
    return-object v1
.end method

.method public static greylist-max-o getMetadata(Landroid/os/Bundle;Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "tags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "metadataTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/provider/MetadataReader;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 233
    invoke-static {p1, p3}, Landroid/provider/MetadataReader;->getExifData(Ljava/io/InputStream;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 234
    .local v1, "exifData":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 235
    const-string v2, "android:documentExif"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 236
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v1    # "exifData":Landroid/os/Bundle;
    :cond_1d
    nop

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 239
    const-string v2, "android:documentMetadataTypes"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static greylist-max-o isSupportedMimeType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 215
    const-string/jumbo v0, "image/jpg"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "image/jpeg"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method
