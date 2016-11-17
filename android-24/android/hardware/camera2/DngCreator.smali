.class public final Landroid/hardware/camera2/DngCreator;
.super Ljava/lang/Object;
.source "DngCreator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final BYTES_PER_RGB_PIX:I = 0x3

.field private static final DEFAULT_PIXEL_STRIDE:I = 0x2

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final GPS_LAT_REF_NORTH:Ljava/lang/String; = "N"

.field private static final GPS_LAT_REF_SOUTH:Ljava/lang/String; = "S"

.field private static final GPS_LONG_REF_EAST:Ljava/lang/String; = "E"

.field private static final GPS_LONG_REF_WEST:Ljava/lang/String; = "W"

.field public static final MAX_THUMBNAIL_DIMENSION:I = 0x100

.field private static final TAG:Ljava/lang/String; = "DngCreator"

.field private static final TAG_ORIENTATION_UNKNOWN:I = 0x9

.field private static final TIFF_DATETIME_FORMAT:Ljava/lang/String; = "yyyy:MM:dd HH:mm:ss"

.field private static final sDateTimeStampFormat:Ljava/text/DateFormat;

.field private static final sExifGPSDateStamp:Ljava/text/DateFormat;


# instance fields
.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 452
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "yyyy:MM:dd"

    #@5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    #@a
    .line 454
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@c
    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    #@f
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@12
    .line 453
    sput-object v0, Landroid/hardware/camera2/DngCreator;->sDateTimeStampFormat:Ljava/text/DateFormat;

    #@14
    .line 459
    sget-object v0, Landroid/hardware/camera2/DngCreator;->sDateTimeStampFormat:Ljava/text/DateFormat;

    #@16
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@1d
    .line 460
    sget-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    #@1f
    const-string/jumbo v1, "UTC"

    #@22
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@29
    .line 656
    invoke-static {}, Landroid/hardware/camera2/DngCreator;->nativeClassInit()V

    #@2c
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .locals 12
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "metadata"    # Landroid/hardware/camera2/CaptureResult;

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 456
    const-string/jumbo v8, "UTC"

    #@6
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@9
    move-result-object v8

    #@a
    .line 455
    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@d
    move-result-object v8

    #@e
    iput-object v8, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    #@10
    .line 88
    if-eqz p1, :cond_0

    #@12
    if-nez p2, :cond_1

    #@14
    .line 89
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v9, "Null argument to DngCreator constructor"

    #@19
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v8

    #@1d
    .line 93
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@20
    move-result-wide v4

    #@21
    .line 96
    .local v4, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@24
    move-result-wide v8

    #@25
    sub-long v0, v4, v8

    #@27
    .line 99
    .local v0, "bootTimeMillis":J
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    #@29
    invoke-virtual {p2, v8}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, Ljava/lang/Long;

    #@2f
    .line 100
    .local v7, "timestamp":Ljava/lang/Long;
    move-wide v2, v4

    #@30
    .line 101
    .local v2, "captureTime":J
    if-eqz v7, :cond_2

    #@32
    .line 102
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@35
    move-result-wide v8

    #@36
    const-wide/32 v10, 0xf4240

    #@39
    div-long/2addr v8, v10

    #@3a
    add-long v2, v8, v0

    #@3c
    .line 106
    :cond_2
    sget-object v8, Landroid/hardware/camera2/DngCreator;->sDateTimeStampFormat:Ljava/text/DateFormat;

    #@3e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    .line 108
    .local v6, "formattedCaptureTime":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@49
    move-result-object v8

    #@4a
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@4d
    move-result-object v9

    #@4e
    invoke-direct {p0, v8, v9, v6}, Landroid/hardware/camera2/DngCreator;->nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V

    #@51
    .line 87
    return-void
.end method

.method private static colorToRgb(II[B)V
    .locals 2
    .param p0, "color"    # I
    .param p1, "outOffset"    # I
    .param p2, "rgbOut"    # [B

    #@0
    .prologue
    .line 520
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v0

    #@4
    int-to-byte v0, v0

    #@5
    aput-byte v0, p2, p1

    #@7
    .line 521
    add-int/lit8 v0, p1, 0x1

    #@9
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@c
    move-result v1

    #@d
    int-to-byte v1, v1

    #@e
    aput-byte v1, p2, v0

    #@10
    .line 522
    add-int/lit8 v0, p1, 0x2

    #@12
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@15
    move-result v1

    #@16
    int-to-byte v1, v1

    #@17
    aput-byte v1, p2, v0

    #@19
    .line 519
    return-void
.end method

.method private static convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 12
    .param p0, "argbBitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 590
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@4
    move-result v3

    #@5
    .line 591
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@8
    move-result v10

    #@9
    .line 592
    .local v10, "height":I
    mul-int/lit8 v0, v3, 0x3

    #@b
    mul-int/2addr v0, v10

    #@c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v8

    #@10
    .line 594
    .local v8, "buf":Ljava/nio/ByteBuffer;
    new-array v1, v3, [I

    #@12
    .line 595
    .local v1, "pixelRow":[I
    mul-int/lit8 v0, v3, 0x3

    #@14
    new-array v9, v0, [B

    #@16
    .line 596
    .local v9, "finalRow":[B
    const/4 v5, 0x0

    #@17
    .local v5, "i":I
    :goto_0
    if-ge v5, v10, :cond_1

    #@19
    .line 598
    const/4 v7, 0x1

    #@1a
    move-object v0, p0

    #@1b
    move v4, v2

    #@1c
    move v6, v3

    #@1d
    .line 597
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    #@20
    .line 599
    const/4 v11, 0x0

    #@21
    .local v11, "j":I
    :goto_1
    if-ge v11, v3, :cond_0

    #@23
    .line 600
    aget v0, v1, v11

    #@25
    mul-int/lit8 v4, v11, 0x3

    #@27
    invoke-static {v0, v4, v9}, Landroid/hardware/camera2/DngCreator;->colorToRgb(II[B)V

    #@2a
    .line 599
    add-int/lit8 v11, v11, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 602
    :cond_0
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@30
    .line 596
    add-int/lit8 v5, v5, 0x1

    #@32
    goto :goto_0

    #@33
    .line 605
    .end local v11    # "j":I
    :cond_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@36
    .line 606
    return-object v8
.end method

.method private static convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 28
    .param p0, "yuvImage"    # Landroid/media/Image;

    #@0
    .prologue
    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    #@3
    move-result v19

    #@4
    .line 532
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    #@7
    move-result v6

    #@8
    .line 533
    .local v6, "height":I
    mul-int/lit8 v26, v19, 0x3

    #@a
    mul-int v26, v26, v6

    #@c
    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v2

    #@10
    .line 535
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    #@13
    move-result-object v26

    #@14
    const/16 v27, 0x0

    #@16
    aget-object v23, v26, v27

    #@18
    .line 536
    .local v23, "yPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    #@1b
    move-result-object v26

    #@1c
    const/16 v27, 0x1

    #@1e
    aget-object v12, v26, v27

    #@20
    .line 537
    .local v12, "uPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    #@23
    move-result-object v26

    #@24
    const/16 v27, 0x2

    #@26
    aget-object v17, v26, v27

    #@28
    .line 539
    .local v17, "vPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {v23 .. v23}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    #@2b
    move-result-object v20

    #@2c
    .line 540
    .local v20, "yBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    #@2f
    move-result-object v9

    #@30
    .line 541
    .local v9, "uBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    #@33
    move-result-object v14

    #@34
    .line 543
    .local v14, "vBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@37
    .line 544
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@3a
    .line 545
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@3d
    .line 547
    invoke-virtual/range {v23 .. v23}, Landroid/media/Image$Plane;->getRowStride()I

    #@40
    move-result v24

    #@41
    .line 548
    .local v24, "yRowStride":I
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getRowStride()I

    #@44
    move-result v18

    #@45
    .line 549
    .local v18, "vRowStride":I
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    #@48
    move-result v13

    #@49
    .line 551
    .local v13, "uRowStride":I
    invoke-virtual/range {v23 .. v23}, Landroid/media/Image$Plane;->getPixelStride()I

    #@4c
    move-result v22

    #@4d
    .line 552
    .local v22, "yPixStride":I
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getPixelStride()I

    #@50
    move-result v16

    #@51
    .line 553
    .local v16, "vPixStride":I
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getPixelStride()I

    #@54
    move-result v11

    #@55
    .line 555
    .local v11, "uPixStride":I
    const/16 v26, 0x3

    #@57
    move/from16 v0, v26

    #@59
    new-array v0, v0, [B

    #@5b
    move-object/from16 v25, v0

    #@5d
    .local v25, "yuvPixel":[B
    fill-array-data v25, :array_0

    #@60
    .line 556
    add-int/lit8 v26, v19, -0x1

    #@62
    mul-int v26, v26, v22

    #@64
    add-int/lit8 v26, v26, 0x1

    #@66
    move/from16 v0, v26

    #@68
    new-array v0, v0, [B

    #@6a
    move-object/from16 v21, v0

    #@6c
    .line 557
    .local v21, "yFullRow":[B
    div-int/lit8 v26, v19, 0x2

    #@6e
    add-int/lit8 v26, v26, -0x1

    #@70
    mul-int v26, v26, v11

    #@72
    add-int/lit8 v26, v26, 0x1

    #@74
    move/from16 v0, v26

    #@76
    new-array v10, v0, [B

    #@78
    .line 558
    .local v10, "uFullRow":[B
    div-int/lit8 v26, v19, 0x2

    #@7a
    add-int/lit8 v26, v26, -0x1

    #@7c
    mul-int v26, v26, v16

    #@7e
    add-int/lit8 v26, v26, 0x1

    #@80
    move/from16 v0, v26

    #@82
    new-array v15, v0, [B

    #@84
    .line 559
    .local v15, "vFullRow":[B
    mul-int/lit8 v26, v19, 0x3

    #@86
    move/from16 v0, v26

    #@88
    new-array v3, v0, [B

    #@8a
    .line 560
    .local v3, "finalRow":[B
    const/4 v7, 0x0

    #@8b
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    #@8d
    .line 561
    div-int/lit8 v4, v7, 0x2

    #@8f
    .line 562
    .local v4, "halfH":I
    mul-int v26, v24, v7

    #@91
    move-object/from16 v0, v20

    #@93
    move/from16 v1, v26

    #@95
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@98
    .line 563
    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@9b
    .line 564
    mul-int v26, v13, v4

    #@9d
    move/from16 v0, v26

    #@9f
    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@a2
    .line 565
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@a5
    .line 566
    mul-int v26, v18, v4

    #@a7
    move/from16 v0, v26

    #@a9
    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@ac
    .line 567
    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@af
    .line 568
    const/4 v8, 0x0

    #@b0
    .local v8, "j":I
    :goto_1
    move/from16 v0, v19

    #@b2
    if-ge v8, v0, :cond_0

    #@b4
    .line 569
    div-int/lit8 v5, v8, 0x2

    #@b6
    .line 570
    .local v5, "halfW":I
    mul-int v26, v22, v8

    #@b8
    aget-byte v26, v21, v26

    #@ba
    const/16 v27, 0x0

    #@bc
    aput-byte v26, v25, v27

    #@be
    .line 571
    mul-int v26, v11, v5

    #@c0
    aget-byte v26, v10, v26

    #@c2
    const/16 v27, 0x1

    #@c4
    aput-byte v26, v25, v27

    #@c6
    .line 572
    mul-int v26, v16, v5

    #@c8
    aget-byte v26, v15, v26

    #@ca
    const/16 v27, 0x2

    #@cc
    aput-byte v26, v25, v27

    #@ce
    .line 573
    mul-int/lit8 v26, v8, 0x3

    #@d0
    move-object/from16 v0, v25

    #@d2
    move/from16 v1, v26

    #@d4
    invoke-static {v0, v1, v3}, Landroid/hardware/camera2/DngCreator;->yuvToRgb([BI[B)V

    #@d7
    .line 568
    add-int/lit8 v8, v8, 0x1

    #@d9
    goto :goto_1

    #@da
    .line 575
    .end local v5    # "halfW":I
    :cond_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@dd
    .line 560
    add-int/lit8 v7, v7, 0x1

    #@df
    goto :goto_0

    #@e0
    .line 578
    .end local v4    # "halfH":I
    .end local v8    # "j":I
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@e3
    .line 579
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@e6
    .line 580
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@e9
    .line 581
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@ec
    .line 582
    return-object v2

    #@ed
    .line 555
    nop

    #@ee
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeDestroy()V
.end method

.method private synchronized native declared-synchronized nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized nativeSetDescription(Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V
.end method

.method private synchronized native declared-synchronized nativeSetOrientation(I)V
.end method

.method private synchronized native declared-synchronized nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V
.end method

.method private synchronized native declared-synchronized nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static toExifLatLong(D)[I
    .locals 10
    .param p0, "value"    # D

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 614
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@4
    move-result-wide p0

    #@5
    .line 615
    double-to-int v0, p0

    #@6
    .line 616
    .local v0, "degrees":I
    int-to-double v4, v0

    #@7
    sub-double v4, p0, v4

    #@9
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    #@b
    mul-double p0, v4, v6

    #@d
    .line 617
    double-to-int v1, p0

    #@e
    .line 618
    .local v1, "minutes":I
    int-to-double v4, v1

    #@f
    sub-double v4, p0, v4

    #@11
    const-wide v6, 0x40b7700000000000L    # 6000.0

    #@16
    mul-double p0, v4, v6

    #@18
    .line 619
    double-to-int v2, p0

    #@19
    .line 620
    .local v2, "seconds":I
    const/4 v3, 0x6

    #@1a
    new-array v3, v3, [I

    #@1c
    const/4 v4, 0x0

    #@1d
    aput v0, v3, v4

    #@1f
    aput v8, v3, v8

    #@21
    const/4 v4, 0x2

    #@22
    aput v1, v3, v4

    #@24
    const/4 v4, 0x3

    #@25
    aput v8, v3, v4

    #@27
    const/4 v4, 0x4

    #@28
    aput v2, v3, v4

    #@2a
    const/16 v4, 0x64

    #@2c
    const/4 v5, 0x5

    #@2d
    aput v4, v3, v5

    #@2f
    return-object v3
.end method

.method private writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V
    .locals 19
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixels"    # Ljava/nio/ByteBuffer;
    .param p4, "dngOutput"    # Ljava/io/OutputStream;
    .param p5, "pixelStride"    # I
    .param p6, "rowStride"    # I
    .param p7, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 474
    if-lez p1, :cond_0

    #@2
    if-gtz p2, :cond_1

    #@4
    .line 475
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "Image with invalid width, height: ("

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    move/from16 v0, p1

    #@14
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, ","

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    move/from16 v0, p2

    #@21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 476
    const-string/jumbo v5, ") passed to write"

    #@28
    .line 475
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 478
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->capacity()I

    #@37
    move-result v3

    #@38
    int-to-long v14, v3

    #@39
    .line 479
    .local v14, "capacity":J
    move/from16 v0, p6

    #@3b
    int-to-long v4, v0

    #@3c
    move/from16 v0, p2

    #@3e
    int-to-long v6, v0

    #@3f
    mul-long/2addr v4, v6

    #@40
    add-long v16, v4, p7

    #@42
    .line 480
    .local v16, "totalSize":J
    cmp-long v3, v14, v16

    #@44
    if-gez v3, :cond_2

    #@46
    .line 481
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@48
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "Image size "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    .line 482
    const-string/jumbo v5, " is too small (must be larger than "

    #@5b
    .line 481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    move-wide/from16 v0, v16

    #@61
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    .line 482
    const-string/jumbo v5, ")"

    #@68
    .line 481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v3

    #@74
    .line 484
    :cond_2
    mul-int v2, p5, p1

    #@76
    .line 485
    .local v2, "minRowStride":I
    move/from16 v0, p6

    #@78
    if-le v2, v0, :cond_3

    #@7a
    .line 486
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7c
    new-instance v4, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v5, "Invalid image pixel stride, row byte width "

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    .line 487
    const-string/jumbo v5, " is too large, expecting "

    #@8f
    .line 486
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    move/from16 v0, p6

    #@95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v3

    #@a1
    .line 489
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@a4
    .line 491
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@a7
    move-result v12

    #@a8
    move-object/from16 v3, p0

    #@aa
    move-object/from16 v4, p4

    #@ac
    move/from16 v5, p1

    #@ae
    move/from16 v6, p2

    #@b0
    move-object/from16 v7, p3

    #@b2
    move/from16 v8, p6

    #@b4
    move/from16 v9, p5

    #@b6
    move-wide/from16 v10, p7

    #@b8
    .line 490
    invoke-direct/range {v3 .. v12}, Landroid/hardware/camera2/DngCreator;->nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V

    #@bb
    .line 492
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@be
    .line 473
    return-void
.end method

.method private static yuvToRgb([BI[B)V
    .locals 13
    .param p0, "yuvData"    # [B
    .param p1, "outOffset"    # I
    .param p2, "rgbOut"    # [B

    #@0
    .prologue
    const/high16 v12, 0x437f0000    # 255.0f

    #@2
    const/4 v11, 0x0

    #@3
    const/high16 v10, 0x43000000    # 128.0f

    #@5
    .line 499
    const/16 v0, 0xff

    #@7
    .line 501
    .local v0, "COLOR_MAX":I
    const/4 v7, 0x0

    #@8
    aget-byte v7, p0, v7

    #@a
    and-int/lit16 v7, v7, 0xff

    #@c
    int-to-float v6, v7

    #@d
    .line 502
    .local v6, "y":F
    const/4 v7, 0x1

    #@e
    aget-byte v7, p0, v7

    #@10
    and-int/lit16 v7, v7, 0xff

    #@12
    int-to-float v2, v7

    #@13
    .line 503
    .local v2, "cb":F
    const/4 v7, 0x2

    #@14
    aget-byte v7, p0, v7

    #@16
    and-int/lit16 v7, v7, 0xff

    #@18
    int-to-float v3, v7

    #@19
    .line 506
    .local v3, "cr":F
    sub-float v7, v3, v10

    #@1b
    const v8, 0x3fb374bc    # 1.402f

    #@1e
    mul-float/2addr v7, v8

    #@1f
    add-float v5, v6, v7

    #@21
    .line 507
    .local v5, "r":F
    sub-float v7, v2, v10

    #@23
    const v8, 0x3eb0331e    # 0.34414f

    #@26
    mul-float/2addr v7, v8

    #@27
    sub-float v7, v6, v7

    #@29
    sub-float v8, v3, v10

    #@2b
    const v9, 0x3f36d1e1    # 0.71414f

    #@2e
    mul-float/2addr v8, v9

    #@2f
    sub-float v4, v7, v8

    #@31
    .line 508
    .local v4, "g":F
    sub-float v7, v2, v10

    #@33
    const v8, 0x3fe2d0e5    # 1.772f

    #@36
    mul-float/2addr v7, v8

    #@37
    add-float v1, v6, v7

    #@39
    .line 511
    .local v1, "b":F
    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    #@3c
    move-result v7

    #@3d
    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    #@40
    move-result v7

    #@41
    float-to-int v7, v7

    #@42
    int-to-byte v7, v7

    #@43
    aput-byte v7, p2, p1

    #@45
    .line 512
    add-int/lit8 v7, p1, 0x1

    #@47
    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    #@4a
    move-result v8

    #@4b
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    #@4e
    move-result v8

    #@4f
    float-to-int v8, v8

    #@50
    int-to-byte v8, v8

    #@51
    aput-byte v8, p2, v7

    #@53
    .line 513
    add-int/lit8 v7, p1, 0x2

    #@55
    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    #@58
    move-result v8

    #@59
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    #@5c
    move-result v8

    #@5d
    float-to-int v8, v8

    #@5e
    int-to-byte v8, v8

    #@5f
    aput-byte v8, p2, v7

    #@61
    .line 498
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 428
    invoke-direct {p0}, Landroid/hardware/camera2/DngCreator;->nativeDestroy()V

    #@3
    .line 427
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 441
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 437
    return-void

    #@7
    .line 440
    :catchall_0
    move-exception v0

    #@8
    .line 441
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 440
    throw v0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/hardware/camera2/DngCreator;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 276
    if-nez p1, :cond_0

    #@2
    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Null description passed to setDescription."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 279
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetDescription(Ljava/lang/String;)V

    #@e
    .line 280
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 243
    if-nez p1, :cond_0

    #@2
    .line 244
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v9, "Null location passed to setLocation"

    #@7
    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 246
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    #@e
    move-result-wide v10

    #@f
    .line 247
    .local v10, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    #@12
    move-result-wide v12

    #@13
    .line 248
    .local v12, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    #@16
    move-result-wide v14

    #@17
    .line 250
    .local v14, "time":J
    invoke-static {v10, v11}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    #@1a
    move-result-object v3

    #@1b
    .line 251
    .local v3, "latTag":[I
    invoke-static {v12, v13}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    #@1e
    move-result-object v5

    #@1f
    .line 252
    .local v5, "longTag":[I
    const-wide/16 v16, 0x0

    #@21
    cmpl-double v2, v10, v16

    #@23
    if-ltz v2, :cond_1

    #@25
    const-string/jumbo v4, "N"

    #@28
    .line 253
    .local v4, "latRef":Ljava/lang/String;
    :goto_0
    const-wide/16 v16, 0x0

    #@2a
    cmpl-double v2, v12, v16

    #@2c
    if-ltz v2, :cond_2

    #@2e
    const-string/jumbo v6, "E"

    #@31
    .line 255
    .local v6, "longRef":Ljava/lang/String;
    :goto_1
    sget-object v2, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    #@33
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    .line 256
    .local v7, "dateTag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3d
    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    #@3f
    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@42
    .line 257
    const/4 v2, 0x6

    #@43
    new-array v8, v2, [I

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    #@49
    const/16 v9, 0xb

    #@4b
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    #@4e
    move-result v2

    #@4f
    const/4 v9, 0x0

    #@50
    aput v2, v8, v9

    #@52
    const/4 v2, 0x1

    #@53
    const/4 v9, 0x1

    #@54
    aput v2, v8, v9

    #@56
    .line 258
    move-object/from16 v0, p0

    #@58
    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    #@5a
    const/16 v9, 0xc

    #@5c
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    #@5f
    move-result v2

    #@60
    const/4 v9, 0x2

    #@61
    aput v2, v8, v9

    #@63
    const/4 v2, 0x1

    #@64
    const/4 v9, 0x3

    #@65
    aput v2, v8, v9

    #@67
    .line 259
    move-object/from16 v0, p0

    #@69
    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    #@6b
    const/16 v9, 0xd

    #@6d
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    #@70
    move-result v2

    #@71
    const/4 v9, 0x4

    #@72
    aput v2, v8, v9

    #@74
    const/4 v2, 0x1

    #@75
    const/4 v9, 0x5

    #@76
    aput v2, v8, v9

    #@78
    .local v8, "timeTag":[I
    move-object/from16 v2, p0

    #@7a
    .line 260
    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/DngCreator;->nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V

    #@7d
    .line 261
    return-object p0

    #@7e
    .line 252
    .end local v4    # "latRef":Ljava/lang/String;
    .end local v6    # "longRef":Ljava/lang/String;
    .end local v7    # "dateTag":Ljava/lang/String;
    .end local v8    # "timeTag":[I
    :cond_1
    const-string/jumbo v4, "S"

    #@81
    .restart local v4    # "latRef":Ljava/lang/String;
    goto :goto_0

    #@82
    .line 253
    :cond_2
    const-string/jumbo v6, "W"

    #@85
    .restart local v6    # "longRef":Ljava/lang/String;
    goto :goto_1
.end method

.method public setOrientation(I)Landroid/hardware/camera2/DngCreator;
    .locals 3
    .param p1, "orientation"    # I

    #@0
    .prologue
    .line 135
    if-ltz p1, :cond_0

    #@2
    .line 136
    const/16 v0, 0x8

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Orientation "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 138
    const-string/jumbo v2, " is not a valid EXIF orientation value"

    #@1b
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 142
    :cond_1
    if-nez p1, :cond_2

    #@29
    .line 143
    const/16 p1, 0x9

    #@2b
    .line 145
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetOrientation(I)V

    #@2e
    .line 146
    return-object p0
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)Landroid/hardware/camera2/DngCreator;
    .locals 7
    .param p1, "pixels"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/16 v6, 0x100

    #@2
    .line 165
    if-nez p1, :cond_0

    #@4
    .line 166
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v4, "Null argument to setThumbnail"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@10
    move-result v2

    #@11
    .line 170
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@14
    move-result v0

    #@15
    .line 172
    .local v0, "height":I
    if-gt v2, v6, :cond_1

    #@17
    if-le v0, v6, :cond_2

    #@19
    .line 173
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "Thumbnail dimensions width,height ("

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    .line 174
    const-string/jumbo v5, ","

    #@2e
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    .line 174
    const-string/jumbo v5, ") too large, dimensions must be smaller than "

    #@39
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v3

    #@49
    .line 178
    :cond_2
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    #@4c
    move-result-object v1

    #@4d
    .line 179
    .local v1, "rgbBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, v2, v0}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    #@50
    .line 181
    return-object p0
.end method

.method public setThumbnail(Landroid/media/Image;)Landroid/hardware/camera2/DngCreator;
    .locals 8
    .param p1, "pixels"    # Landroid/media/Image;

    #@0
    .prologue
    const/16 v7, 0x100

    #@2
    .line 201
    if-nez p1, :cond_0

    #@4
    .line 202
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v5, "Null argument to setThumbnail"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    #@10
    move-result v0

    #@11
    .line 206
    .local v0, "format":I
    const/16 v4, 0x23

    #@13
    if-eq v0, v4, :cond_1

    #@15
    .line 207
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "Unsupported Image format "

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v4

    #@2f
    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    #@32
    move-result v3

    #@33
    .line 211
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    #@36
    move-result v1

    #@37
    .line 213
    .local v1, "height":I
    if-gt v3, v7, :cond_2

    #@39
    if-le v1, v7, :cond_3

    #@3b
    .line 214
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "Thumbnail dimensions width,height ("

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    .line 215
    const-string/jumbo v6, ","

    #@50
    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    .line 215
    const-string/jumbo v6, ") too large, dimensions must be smaller than "

    #@5b
    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v4

    #@6b
    .line 219
    :cond_3
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    #@6e
    move-result-object v2

    #@6f
    .line 220
    .local v2, "rgbBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, v3, v1}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    #@72
    .line 222
    return-object p0
.end method

.method public writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    .locals 10
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "pixels"    # Ljava/nio/ByteBuffer;
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 369
    if-nez p1, :cond_0

    #@2
    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Null dngOutput passed to writeByteBuffer"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 371
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Null size passed to writeByteBuffer"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 373
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Null pixels passed to writeByteBuffer"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 375
    :cond_2
    const-wide/16 v0, 0x0

    #@23
    cmp-long v0, p4, v0

    #@25
    if-gez v0, :cond_3

    #@27
    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string/jumbo v1, "Negative offset passed to writeByteBuffer"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 379
    :cond_3
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    #@33
    move-result v2

    #@34
    .line 380
    .local v2, "width":I
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    #@37
    move-result v3

    #@38
    .line 383
    .local v3, "height":I
    mul-int/lit8 v7, v2, 0x2

    #@3a
    .line 382
    const/4 v6, 0x2

    #@3b
    move-object v1, p0

    #@3c
    move-object v4, p3

    #@3d
    move-object v5, p1

    #@3e
    move-wide v8, p4

    #@3f
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    #@42
    .line 368
    return-void
.end method

.method public writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V
    .locals 11
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "pixels"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 405
    if-nez p1, :cond_0

    #@3
    .line 406
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Null dngOutput to writeImage"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 407
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 408
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "Null pixels to writeImage"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 411
    :cond_1
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    #@1a
    move-result v0

    #@1b
    .line 412
    .local v0, "format":I
    const/16 v1, 0x20

    #@1d
    if-eq v0, v1, :cond_2

    #@1f
    .line 413
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Unsupported image format "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 416
    :cond_2
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    #@3c
    move-result-object v10

    #@3d
    .line 417
    .local v10, "planes":[Landroid/media/Image$Plane;
    if-eqz v10, :cond_3

    #@3f
    array-length v1, v10

    #@40
    if-gtz v1, :cond_4

    #@42
    .line 418
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@44
    const-string/jumbo v2, "Image with no planes passed to writeImage"

    #@47
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    .line 421
    :cond_4
    aget-object v1, v10, v5

    #@4d
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    #@50
    move-result-object v4

    #@51
    .line 422
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    #@54
    move-result v2

    #@55
    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    #@58
    move-result v3

    #@59
    .line 423
    aget-object v1, v10, v5

    #@5b
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    #@5e
    move-result v6

    #@5f
    aget-object v1, v10, v5

    #@61
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    #@64
    move-result v7

    #@65
    const-wide/16 v8, 0x0

    #@67
    move-object v1, p0

    #@68
    move-object v5, p1

    #@69
    .line 422
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    #@6c
    .line 404
    return-void
.end method

.method public writeInputStream(Ljava/io/OutputStream;Landroid/util/Size;Ljava/io/InputStream;J)V
    .locals 8
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "pixels"    # Ljava/io/InputStream;
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    if-nez p1, :cond_0

    #@2
    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Null dngOutput passed to writeInputStream"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 316
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Null size passed to writeInputStream"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 318
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Null pixels passed to writeInputStream"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 320
    :cond_2
    const-wide/16 v0, 0x0

    #@23
    cmp-long v0, p4, v0

    #@25
    if-gez v0, :cond_3

    #@27
    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string/jumbo v1, "Negative offset passed to writeInputStream"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 324
    :cond_3
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    #@33
    move-result v4

    #@34
    .line 325
    .local v4, "width":I
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    #@37
    move-result v5

    #@38
    .line 326
    .local v5, "height":I
    if-lez v4, :cond_4

    #@3a
    if-gtz v5, :cond_5

    #@3c
    .line 327
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "Size with invalid width, height: ("

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, ","

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 328
    const-string/jumbo v2, ") passed to writeInputStream"

    #@5c
    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v0

    #@68
    :cond_5
    move-object v1, p0

    #@69
    move-object v2, p1

    #@6a
    move-object v3, p3

    #@6b
    move-wide v6, p4

    #@6c
    .line 330
    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/DngCreator;->nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V

    #@6f
    .line 313
    return-void
.end method
