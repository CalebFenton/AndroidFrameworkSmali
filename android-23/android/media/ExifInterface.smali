.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_SUBSECTIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 116
    const-string/jumbo v0, "jhead_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@8
    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    #@b
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@e
    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    #@10
    .line 118
    sget-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    #@12
    const-string/jumbo v1, "UTC"

    #@15
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@1c
    .line 129
    new-instance v0, Ljava/lang/Object;

    #@1e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@21
    sput-object v0, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    #@23
    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 135
    if-nez p1, :cond_0

    #@5
    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "filename cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 138
    :cond_0
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@10
    .line 139
    invoke-direct {p0}, Landroid/media/ExifInterface;->loadAttributes()V

    #@13
    .line 134
    return-void
.end method

.method private native appendThumbnailNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native commitChangesNative(Ljava/lang/String;)V
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 18
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    #@0
    .prologue
    .line 422
    :try_start_0
    const-string/jumbo v14, ","

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v9

    #@9
    .line 425
    .local v9, "parts":[Ljava/lang/String;
    const/4 v14, 0x0

    #@a
    aget-object v14, v9, v14

    #@c
    const-string/jumbo v15, "/"

    #@f
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v8

    #@13
    .line 426
    .local v8, "pair":[Ljava/lang/String;
    const/4 v14, 0x0

    #@14
    aget-object v14, v8, v14

    #@16
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@19
    move-result-object v14

    #@1a
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@1d
    move-result-wide v14

    #@1e
    .line 427
    const/16 v16, 0x1

    #@20
    aget-object v16, v8, v16

    #@22
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@25
    move-result-object v16

    #@26
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@29
    move-result-wide v16

    #@2a
    .line 426
    div-double v2, v14, v16

    #@2c
    .line 429
    .local v2, "degrees":D
    const/4 v14, 0x1

    #@2d
    aget-object v14, v9, v14

    #@2f
    const-string/jumbo v15, "/"

    #@32
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@35
    move-result-object v8

    #@36
    .line 430
    const/4 v14, 0x0

    #@37
    aget-object v14, v8, v14

    #@39
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3c
    move-result-object v14

    #@3d
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@40
    move-result-wide v14

    #@41
    .line 431
    const/16 v16, 0x1

    #@43
    aget-object v16, v8, v16

    #@45
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@48
    move-result-object v16

    #@49
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@4c
    move-result-wide v16

    #@4d
    .line 430
    div-double v6, v14, v16

    #@4f
    .line 433
    .local v6, "minutes":D
    const/4 v14, 0x2

    #@50
    aget-object v14, v9, v14

    #@52
    const-string/jumbo v15, "/"

    #@55
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    .line 434
    const/4 v14, 0x0

    #@5a
    aget-object v14, v8, v14

    #@5c
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5f
    move-result-object v14

    #@60
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@63
    move-result-wide v14

    #@64
    .line 435
    const/16 v16, 0x1

    #@66
    aget-object v16, v8, v16

    #@68
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6b
    move-result-object v16

    #@6c
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@6f
    move-result-wide v16

    #@70
    .line 434
    div-double v12, v14, v16

    #@72
    .line 437
    .local v12, "seconds":D
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    #@74
    div-double v14, v6, v14

    #@76
    add-double/2addr v14, v2

    #@77
    const-wide v16, 0x40ac200000000000L    # 3600.0

    #@7c
    div-double v16, v12, v16

    #@7e
    add-double v10, v14, v16

    #@80
    .line 438
    .local v10, "result":D
    const-string/jumbo v14, "S"

    #@83
    move-object/from16 v0, p1

    #@85
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v14

    #@89
    if-nez v14, :cond_0

    #@8b
    const-string/jumbo v14, "W"

    #@8e
    move-object/from16 v0, p1

    #@90
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    move-result v14

    #@94
    if-eqz v14, :cond_1

    #@96
    .line 439
    :cond_0
    neg-double v14, v10

    #@97
    double-to-float v14, v14

    #@98
    return v14

    #@99
    .line 441
    :cond_1
    double-to-float v14, v10

    #@9a
    return v14

    #@9b
    .line 445
    .end local v2    # "degrees":D
    .end local v6    # "minutes":D
    .end local v8    # "pair":[Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v10    # "result":D
    .end local v12    # "seconds":D
    :catch_0
    move-exception v4

    #@9c
    .line 447
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@9e
    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a1
    throw v14

    #@a2
    .line 442
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v5

    #@a3
    .line 444
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@a5
    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a8
    throw v14
.end method

.method private native getAttributesNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getThumbnailNative(Ljava/lang/String;)[B
.end method

.method private native getThumbnailRangeNative(Ljava/lang/String;)[J
.end method

.method private loadAttributes()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v11, 0x20

    #@2
    .line 218
    new-instance v9, Ljava/util/HashMap;

    #@4
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@7
    iput-object v9, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@9
    .line 221
    sget-object v10, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    #@b
    monitor-enter v10

    #@c
    .line 222
    :try_start_0
    iget-object v9, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@e
    invoke-direct {p0, v9}, Landroid/media/ExifInterface;->getAttributesNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v2

    #@12
    .local v2, "attrStr":Ljava/lang/String;
    monitor-exit v10

    #@13
    .line 226
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v8

    #@17
    .line 227
    .local v8, "ptr":I
    const/4 v9, 0x0

    #@18
    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v4

    #@20
    .line 229
    .local v4, "count":I
    add-int/lit8 v8, v8, 0x1

    #@22
    .line 231
    const/4 v6, 0x0

    #@23
    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    #@25
    .line 233
    const/16 v9, 0x3d

    #@27
    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->indexOf(II)I

    #@2a
    move-result v5

    #@2b
    .line 234
    .local v5, "equalPos":I
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 235
    .local v1, "attrName":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    #@31
    .line 238
    invoke-virtual {v2, v11, v8}, Ljava/lang/String;->indexOf(II)I

    #@34
    move-result v7

    #@35
    .line 239
    .local v7, "lenPos":I
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3c
    move-result v0

    #@3d
    .line 240
    .local v0, "attrLen":I
    add-int/lit8 v8, v7, 0x1

    #@3f
    .line 243
    add-int v9, v8, v0

    #@41
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    .line 244
    .local v3, "attrValue":Ljava/lang/String;
    add-int/2addr v8, v0

    #@46
    .line 246
    const-string/jumbo v9, "hasThumbnail"

    #@49
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v9

    #@4d
    if-eqz v9, :cond_0

    #@4f
    .line 247
    const-string/jumbo v9, "true"

    #@52
    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@55
    move-result v9

    #@56
    iput-boolean v9, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@58
    .line 231
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 221
    .end local v0    # "attrLen":I
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v2    # "attrStr":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v5    # "equalPos":I
    .end local v6    # "i":I
    .end local v7    # "lenPos":I
    .end local v8    # "ptr":I
    :catchall_0
    move-exception v9

    #@5c
    monitor-exit v10

    #@5d
    throw v9

    #@5e
    .line 249
    .restart local v0    # "attrLen":I
    .restart local v1    # "attrName":Ljava/lang/String;
    .restart local v2    # "attrStr":Ljava/lang/String;
    .restart local v3    # "attrValue":Ljava/lang/String;
    .restart local v4    # "count":I
    .restart local v5    # "equalPos":I
    .restart local v6    # "i":I
    .restart local v7    # "lenPos":I
    .restart local v8    # "ptr":I
    :cond_0
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@60
    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    goto :goto_1

    #@64
    .line 213
    .end local v0    # "attrLen":I
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    .end local v5    # "equalPos":I
    .end local v7    # "lenPos":I
    :cond_1
    return-void
.end method

.method private native saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 353
    const-string/jumbo v5, "GPSAltitude"

    #@5
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    #@7
    invoke-virtual {p0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    #@a
    move-result-wide v0

    #@b
    .line 354
    .local v0, "altitude":D
    const-string/jumbo v5, "GPSAltitudeRef"

    #@e
    invoke-virtual {p0, v5, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    #@11
    move-result v2

    #@12
    .line 356
    .local v2, "ref":I
    const-wide/16 v6, 0x0

    #@14
    cmpl-double v5, v0, v6

    #@16
    if-ltz v5, :cond_1

    #@18
    if-ltz v2, :cond_1

    #@1a
    .line 357
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
    .line 359
    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    #@0
    .prologue
    .line 179
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    check-cast v6, Ljava/lang/String;

    #@8
    .line 180
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_0

    #@a
    return-wide p2

    #@b
    .line 182
    :cond_0
    :try_start_0
    const-string/jumbo v7, "/"

    #@e
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@11
    move-result v3

    #@12
    .line 183
    .local v3, "index":I
    const/4 v7, -0x1

    #@13
    if-ne v3, v7, :cond_1

    #@15
    return-wide p2

    #@16
    .line 184
    :cond_1
    add-int/lit8 v7, v3, 0x1

    #@18
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@1f
    move-result-wide v0

    #@20
    .line 185
    .local v0, "denom":D
    const-wide/16 v8, 0x0

    #@22
    cmpl-double v7, v0, v8

    #@24
    if-nez v7, :cond_2

    #@26
    return-wide p2

    #@27
    .line 186
    :cond_2
    const/4 v7, 0x0

    #@28
    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v7

    #@2c
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result-wide v4

    #@30
    .line 187
    .local v4, "num":D
    div-double v8, v4, v0

    #@32
    return-wide v8

    #@33
    .line 188
    .end local v0    # "denom":D
    .end local v3    # "index":I
    .end local v4    # "num":D
    :catch_0
    move-exception v2

    #@34
    .line 189
    .local v2, "ex":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 161
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/String;

    #@8
    .line 162
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    #@a
    return p2

    #@b
    .line 164
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v2

    #@13
    return v2

    #@14
    .line 165
    :catch_0
    move-exception v0

    #@15
    .line 166
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getDateTime()J
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, -0x1

    #@2
    .line 369
    iget-object v10, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@4
    const-string/jumbo v11, "DateTime"

    #@7
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    .line 370
    .local v0, "dateTimeString":Ljava/lang/String;
    if-nez v0, :cond_0

    #@f
    return-wide v12

    #@10
    .line 372
    :cond_0
    new-instance v6, Ljava/text/ParsePosition;

    #@12
    const/4 v10, 0x0

    #@13
    invoke-direct {v6, v10}, Ljava/text/ParsePosition;-><init>(I)V

    #@16
    .line 376
    .local v6, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v10, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    #@18
    invoke-virtual {v10, v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@1b
    move-result-object v1

    #@1c
    .line 377
    .local v1, "datetime":Ljava/util/Date;
    if-nez v1, :cond_1

    #@1e
    return-wide v12

    #@1f
    .line 378
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@22
    move-result-wide v4

    #@23
    .line 380
    .local v4, "msecs":J
    iget-object v10, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@25
    const-string/jumbo v11, "SubSecTime"

    #@28
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v7

    #@2c
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 381
    .local v7, "subSecs":Ljava/lang/String;
    if-eqz v7, :cond_3

    #@30
    .line 383
    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@33
    move-result-object v10

    #@34
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@37
    move-result-wide v8

    #@38
    .line 384
    .local v8, "sub":J
    :goto_0
    const-wide/16 v10, 0x3e8

    #@3a
    cmp-long v10, v8, v10

    #@3c
    if-lez v10, :cond_2

    #@3e
    .line 385
    const-wide/16 v10, 0xa

    #@40
    div-long/2addr v8, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@41
    goto :goto_0

    #@42
    .line 387
    :cond_2
    add-long/2addr v4, v8

    #@43
    .line 391
    .end local v8    # "sub":J
    :cond_3
    :goto_1
    return-wide v4

    #@44
    .line 392
    .end local v1    # "datetime":Ljava/util/Date;
    .end local v4    # "msecs":J
    .end local v7    # "subSecs":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@45
    .line 393
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    return-wide v12

    #@46
    .line 388
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "datetime":Ljava/util/Date;
    .restart local v4    # "msecs":J
    .restart local v7    # "subSecs":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@47
    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method public getGpsDateTime()J
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    .line 403
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@4
    const-string/jumbo v7, "GPSDateStamp"

    #@7
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    .line 404
    .local v0, "date":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@f
    const-string/jumbo v7, "GPSTimeStamp"

    #@12
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    check-cast v5, Ljava/lang/String;

    #@18
    .line 405
    .local v5, "time":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@1a
    if-nez v5, :cond_1

    #@1c
    :cond_0
    return-wide v8

    #@1d
    .line 407
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    const/16 v7, 0x20

    #@28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 409
    .local v1, "dateTimeString":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    #@36
    const/4 v6, 0x0

    #@37
    invoke-direct {v4, v6}, Ljava/text/ParsePosition;-><init>(I)V

    #@3a
    .line 411
    .local v4, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    #@3c
    invoke-virtual {v6, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@3f
    move-result-object v2

    #@40
    .line 412
    .local v2, "datetime":Ljava/util/Date;
    if-nez v2, :cond_2

    #@42
    return-wide v8

    #@43
    .line 413
    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    move-result-wide v6

    #@47
    return-wide v6

    #@48
    .line 414
    .end local v2    # "datetime":Ljava/util/Date;
    :catch_0
    move-exception v3

    #@49
    .line 415
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
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
    .line 328
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@4
    const-string/jumbo v6, "GPSLatitude"

    #@7
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/lang/String;

    #@d
    .line 329
    .local v2, "latValue":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@f
    const-string/jumbo v6, "GPSLatitudeRef"

    #@12
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/String;

    #@18
    .line 330
    .local v1, "latRef":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@1a
    const-string/jumbo v6, "GPSLongitude"

    #@1d
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Ljava/lang/String;

    #@23
    .line 331
    .local v4, "lngValue":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@25
    const-string/jumbo v6, "GPSLongitudeRef"

    #@28
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Ljava/lang/String;

    #@2e
    .line 333
    .local v3, "lngRef":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@30
    if-eqz v1, :cond_0

    #@32
    if-eqz v4, :cond_0

    #@34
    if-eqz v3, :cond_0

    #@36
    .line 335
    :try_start_0
    invoke-static {v2, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    #@39
    move-result v5

    #@3a
    const/4 v6, 0x0

    #@3b
    aput v5, p1, v6

    #@3d
    .line 336
    invoke-static {v4, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    #@40
    move-result v5

    #@41
    const/4 v6, 0x1

    #@42
    aput v5, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 337
    return v8

    #@45
    .line 338
    :catch_0
    move-exception v0

    #@46
    .line 343
    :cond_0
    return v7
.end method

.method public getThumbnail()[B
    .locals 2

    #@0
    .prologue
    .line 303
    sget-object v1, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 304
    :try_start_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@5
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getThumbnailNative(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 303
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public getThumbnailRange()[J
    .locals 2

    #@0
    .prologue
    .line 317
    sget-object v1, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 318
    :try_start_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@5
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getThumbnailRangeNative(Ljava/lang/String;)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 317
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public hasThumbnail()Z
    .locals 1

    #@0
    .prologue
    .line 294
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    #@2
    return v0
.end method

.method public saveAttributes()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 267
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@7
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    #@a
    move-result v5

    #@b
    .line 268
    .local v5, "size":I
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@d
    const-string/jumbo v8, "hasThumbnail"

    #@10
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v7

    #@14
    if-eqz v7, :cond_0

    #@16
    .line 269
    add-int/lit8 v5, v5, -0x1

    #@18
    .line 271
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    const-string/jumbo v8, " "

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 272
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@24
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@27
    move-result-object v7

    #@28
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v1

    #@2c
    .local v1, "iter$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_2

    #@32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Ljava/util/Map$Entry;

    #@38
    .line 273
    .local v0, "iter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Ljava/lang/String;

    #@3e
    .line 274
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v7, "hasThumbnail"

    #@41
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v7

    #@45
    if-nez v7, :cond_1

    #@47
    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, Ljava/lang/String;

    #@4d
    .line 279
    .local v6, "val":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    const-string/jumbo v8, "="

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 280
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@5a
    move-result v7

    #@5b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    const-string/jumbo v8, " "

    #@62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 281
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    goto :goto_0

    #@69
    .line 283
    .end local v0    # "iter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    .line 284
    .local v3, "s":Ljava/lang/String;
    sget-object v8, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    #@6f
    monitor-enter v8

    #@70
    .line 285
    :try_start_0
    iget-object v7, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@72
    invoke-direct {p0, v7, v3}, Landroid/media/ExifInterface;->saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V

    #@75
    .line 286
    iget-object v7, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    #@77
    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->commitChangesNative(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    monitor-exit v8

    #@7b
    .line 261
    return-void

    #@7c
    .line 284
    :catchall_0
    move-exception v7

    #@7d
    monitor-exit v8

    #@7e
    throw v7
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 199
    return-void
.end method
