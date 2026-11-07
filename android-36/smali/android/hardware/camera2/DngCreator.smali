.class public final Landroid/hardware/camera2/DngCreator;
.super Ljava/lang/Object;
.source "DngCreator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o BYTES_PER_RGB_PIX:I = 0x3

.field private static final greylist-max-o DEFAULT_PIXEL_STRIDE:I = 0x2

.field private static final greylist-max-o GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final greylist-max-o GPS_LAT_REF_NORTH:Ljava/lang/String; = "N"

.field private static final greylist-max-o GPS_LAT_REF_SOUTH:Ljava/lang/String; = "S"

.field private static final greylist-max-o GPS_LONG_REF_EAST:Ljava/lang/String; = "E"

.field private static final greylist-max-o GPS_LONG_REF_WEST:Ljava/lang/String; = "W"

.field public static final whitelist MAX_THUMBNAIL_DIMENSION:I = 0x100

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DngCreator"

.field private static final greylist-max-o TAG_ORIENTATION_UNKNOWN:I = 0x9

.field private static final greylist-max-o TIFF_DATETIME_FORMAT:Ljava/lang/String; = "yyyy:MM:dd HH:mm:ss"

.field private static final greylist-max-o sExifGPSDateStamp:Ljava/text/DateFormat;


# instance fields
.field private final greylist-max-o mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 475
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    .line 481
    sget-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 677
    invoke-static {}, Landroid/hardware/camera2/DngCreator;->nativeClassInit()V

    .line 678
    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .registers 15
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "metadata"    # Landroid/hardware/camera2/CaptureResult;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    nop

    .line 478
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 89
    if-eqz p1, :cond_91

    if-eqz p2, :cond_91

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    .line 98
    .local v2, "timeOffset":J
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 101
    .local v4, "timestampSource":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v2, v0, v5

    goto :goto_57

    .line 105
    :cond_30
    if-nez v4, :cond_39

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v2, v0, v5

    goto :goto_57

    .line 111
    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sensor timestamp source is unexpected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DngCreator"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v2, v0, v5

    .line 116
    :goto_57
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 117
    .local v5, "timestamp":Ljava/lang/Long;
    move-wide v6, v0

    .line 118
    .local v6, "captureTime":J
    if-eqz v5, :cond_6c

    .line 119
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    add-long v6, v8, v2

    .line 124
    :cond_6c
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy:MM:dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 126
    .local v8, "dateTimeStampFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 129
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, "formattedCaptureTime":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v10

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v11

    invoke-direct {p0, v10, v11, v9}, Landroid/hardware/camera2/DngCreator;->nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V

    .line 133
    return-void

    .line 90
    .end local v0    # "currentTime":J
    .end local v2    # "timeOffset":J
    .end local v4    # "timestampSource":I
    .end local v5    # "timestamp":Ljava/lang/Long;
    .end local v6    # "captureTime":J
    .end local v8    # "dateTimeStampFormat":Ljava/text/DateFormat;
    .end local v9    # "formattedCaptureTime":Ljava/lang/String;
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument to DngCreator constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o colorToRgb(II[B)V
    .registers 5
    .param p0, "color"    # I
    .param p1, "outOffset"    # I
    .param p2, "rgbOut"    # [B

    .line 541
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    .line 542
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 543
    add-int/lit8 v0, p1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 545
    return-void
.end method

.method private static greylist-max-o convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .registers 12
    .param p0, "argbBitmap"    # Landroid/graphics/Bitmap;

    .line 611
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 612
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 613
    .local v8, "height":I
    mul-int/lit8 v0, v3, 0x3

    mul-int/2addr v0, v8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 615
    .local v9, "buf":Ljava/nio/ByteBuffer;
    new-array v1, v3, [I

    .line 616
    .local v1, "pixelRow":[I
    mul-int/lit8 v0, v3, 0x3

    new-array v10, v0, [B

    .line 617
    .local v10, "finalRow":[B
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_17
    if-ge v5, v8, :cond_35

    .line 618
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p0

    .end local p0    # "argbBitmap":Landroid/graphics/Bitmap;
    .local v0, "argbBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 620
    const/4 p0, 0x0

    .local p0, "j":I
    :goto_22
    if-ge p0, v3, :cond_2e

    .line 621
    aget v2, v1, p0

    mul-int/lit8 v4, p0, 0x3

    invoke-static {v2, v4, v10}, Landroid/hardware/camera2/DngCreator;->colorToRgb(II[B)V

    .line 620
    add-int/lit8 p0, p0, 0x1

    goto :goto_22

    .line 623
    .end local p0    # "j":I
    :cond_2e
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 617
    add-int/lit8 v5, v5, 0x1

    move-object p0, v0

    goto :goto_17

    .line 626
    .end local v0    # "argbBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "i":I
    .local p0, "argbBitmap":Landroid/graphics/Bitmap;
    :cond_35
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 627
    return-object v9
.end method

.method private static greylist-max-o convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .registers 29
    .param p0, "yuvImage"    # Landroid/media/Image;

    .line 552
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 553
    .local v0, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 554
    .local v1, "height":I
    mul-int/lit8 v2, v0, 0x3

    mul-int/2addr v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 556
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 557
    .local v3, "yPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 558
    .local v5, "uPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    .line 560
    .local v7, "vPlane":Landroid/media/Image$Plane;
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 561
    .local v9, "yBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 562
    .local v10, "uBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 564
    .local v11, "vBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 565
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 566
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 568
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    .line 569
    .local v12, "yRowStride":I
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 570
    .local v13, "vRowStride":I
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    .line 572
    .local v14, "uRowStride":I
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    .line 573
    .local v15, "yPixStride":I
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    .line 574
    .local v16, "vPixStride":I
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v17

    .line 576
    .local v17, "uPixStride":I
    move/from16 v18, v4

    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_e0

    .line 577
    .local v4, "yuvPixel":[B
    add-int/lit8 v19, v0, -0x1

    mul-int v19, v19, v15

    move/from16 v20, v6

    add-int/lit8 v6, v19, 0x1

    new-array v6, v6, [B

    .line 578
    .local v6, "yFullRow":[B
    div-int/lit8 v19, v0, 0x2

    add-int/lit8 v19, v19, -0x1

    mul-int v19, v19, v17

    move/from16 v21, v8

    add-int/lit8 v8, v19, 0x1

    new-array v8, v8, [B

    .line 579
    .local v8, "uFullRow":[B
    div-int/lit8 v19, v0, 0x2

    add-int/lit8 v19, v19, -0x1

    mul-int v19, v19, v16

    move-object/from16 v22, v3

    .end local v3    # "yPlane":Landroid/media/Image$Plane;
    .local v22, "yPlane":Landroid/media/Image$Plane;
    add-int/lit8 v3, v19, 0x1

    new-array v3, v3, [B

    .line 580
    .local v3, "vFullRow":[B
    move-object/from16 v19, v5

    .end local v5    # "uPlane":Landroid/media/Image$Plane;
    .local v19, "uPlane":Landroid/media/Image$Plane;
    mul-int/lit8 v5, v0, 0x3

    new-array v5, v5, [B

    .line 581
    .local v5, "finalRow":[B
    const/16 v23, 0x0

    move-object/from16 v24, v7

    move/from16 v7, v23

    .local v7, "i":I
    .local v24, "vPlane":Landroid/media/Image$Plane;
    :goto_87
    if-ge v7, v1, :cond_d2

    .line 582
    div-int/lit8 v23, v7, 0x2

    .line 583
    .local v23, "halfH":I
    move/from16 v25, v1

    .end local v1    # "height":I
    .local v25, "height":I
    mul-int v1, v12, v7

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 584
    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 585
    mul-int v1, v14, v23

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 586
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 587
    mul-int v1, v13, v23

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 588
    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 589
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_a6
    if-ge v1, v0, :cond_c8

    .line 590
    div-int/lit8 v26, v1, 0x2

    .line 591
    .local v26, "halfW":I
    mul-int v27, v15, v1

    aget-byte v27, v6, v27

    aput-byte v27, v4, v18

    .line 592
    mul-int v27, v17, v26

    aget-byte v27, v8, v27

    aput-byte v27, v4, v20

    .line 593
    mul-int v27, v16, v26

    aget-byte v27, v3, v27

    aput-byte v27, v4, v21

    .line 594
    move/from16 v27, v0

    .end local v0    # "width":I
    .local v27, "width":I
    mul-int/lit8 v0, v1, 0x3

    invoke-static {v4, v0, v5}, Landroid/hardware/camera2/DngCreator;->yuvToRgb([BI[B)V

    .line 589
    .end local v26    # "halfW":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v27

    goto :goto_a6

    .end local v27    # "width":I
    .restart local v0    # "width":I
    :cond_c8
    move/from16 v27, v0

    .line 596
    .end local v0    # "width":I
    .end local v1    # "j":I
    .restart local v27    # "width":I
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 581
    .end local v23    # "halfH":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v25

    goto :goto_87

    .line 599
    .end local v7    # "i":I
    .end local v25    # "height":I
    .end local v27    # "width":I
    .restart local v0    # "width":I
    .local v1, "height":I
    :cond_d2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 600
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 601
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 602
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 603
    return-object v2

    nop

    :array_e0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private synchronized native greylist-max-o nativeDestroy()V
.end method

.method private synchronized native greylist-max-o nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V
.end method

.method private synchronized native greylist-max-o nativeSetDescription(Ljava/lang/String;)V
.end method

.method private synchronized native greylist-max-o nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V
.end method

.method private synchronized native greylist-max-o nativeSetOrientation(I)V
.end method

.method private synchronized native greylist-max-o nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V
.end method

.method private synchronized native greylist-max-o nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private synchronized native greylist-max-o nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static greylist-max-o toExifLatLong(D)[I
    .registers 9
    .param p0, "value"    # D

    .line 635
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 636
    double-to-int v0, p0

    .line 637
    .local v0, "degrees":I
    int-to-double v1, v0

    sub-double v1, p0, v1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double/2addr v1, v3

    .line 638
    .end local p0    # "value":D
    .local v1, "value":D
    move-wide p0, v1

    .end local v1    # "value":D
    .restart local p0    # "value":D
    double-to-int v2, p0

    .line 639
    .local v2, "minutes":I
    int-to-double v3, v2

    sub-double v3, p0, v3

    const-wide v5, 0x40b7700000000000L    # 6000.0

    mul-double p0, v3, v5

    .line 640
    double-to-int v4, p0

    .line 641
    .local v4, "seconds":I
    const/4 v3, 0x1

    const/16 v5, 0x64

    const/4 v1, 0x1

    filled-new-array/range {v0 .. v5}, [I

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V
    .registers 24
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

    .line 495
    move/from16 v3, p2

    move/from16 v5, p6

    if-lez p1, :cond_84

    if-lez v3, :cond_84

    .line 499
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v10, v0

    .line 500
    .local v10, "capacity":J
    int-to-long v0, v5

    int-to-long v6, v3

    mul-long/2addr v0, v6

    add-long v12, v0, p7

    .line 501
    .local v12, "totalSize":J
    cmp-long v0, v10, v12

    if-ltz v0, :cond_59

    .line 505
    mul-int v14, p5, p1

    .line 506
    .local v14, "minRowStride":I
    if-gt v14, v5, :cond_34

    .line 510
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 511
    nop

    .line 512
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    .line 511
    move-object v0, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v1, p4

    move/from16 v6, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroid/hardware/camera2/DngCreator;->nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 514
    return-void

    .line 507
    :cond_34
    move/from16 v2, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid image pixel stride, row byte width "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is too large, expecting "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    .end local v14    # "minRowStride":I
    :cond_59
    move/from16 v2, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image size "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is too small (must be larger than "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    .end local v10    # "capacity":J
    .end local v12    # "totalSize":J
    :cond_84
    move/from16 v2, p1

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image with invalid width, height: ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") passed to write"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o yuvToRgb([BI[B)V
    .registers 14
    .param p0, "yuvData"    # [B
    .param p1, "outOffset"    # I
    .param p2, "rgbOut"    # [B

    .line 520
    const/16 v0, 0xff

    .line 522
    .local v0, "COLOR_MAX":I
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    .line 523
    .local v1, "y":F
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    .line 524
    .local v2, "cb":F
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    .line 527
    .local v3, "cr":F
    const/high16 v4, 0x43000000    # 128.0f

    sub-float v5, v3, v4

    const v6, 0x3fb374bc    # 1.402f

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 528
    .local v5, "r":F
    const v6, 0x3eb0331e    # 0.34414f

    sub-float v7, v2, v4

    mul-float/2addr v7, v6

    sub-float v6, v1, v7

    const v7, 0x3f36d1e1    # 0.71414f

    sub-float v8, v3, v4

    mul-float/2addr v8, v7

    sub-float/2addr v6, v8

    .line 529
    .local v6, "g":F
    const v7, 0x3fe2d0e5    # 1.772f

    sub-float v4, v2, v4

    mul-float/2addr v4, v7

    add-float/2addr v4, v1

    .line 532
    .local v4, "b":F
    const/high16 v7, 0x437f0000    # 255.0f

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p2, p1

    .line 533
    add-int/lit8 v8, p1, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, p2, v8

    .line 534
    add-int/lit8 v8, p1, 0x2

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p2, v8

    .line 535
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 451
    invoke-direct {p0}, Landroid/hardware/camera2/DngCreator;->nativeDestroy()V

    .line 452
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 462
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 464
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 465
    nop

    .line 466
    return-void

    .line 464
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 465
    throw v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)Landroid/hardware/camera2/DngCreator;
    .registers 4
    .param p1, "description"    # Ljava/lang/String;

    .line 299
    if-eqz p1, :cond_6

    .line 302
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetDescription(Ljava/lang/String;)V

    .line 303
    return-object p0

    .line 300
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null description passed to setDescription."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;
    .registers 22
    .param p1, "location"    # Landroid/location/Location;

    .line 266
    move-object/from16 v0, p0

    if-eqz p1, :cond_60

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 270
    .local v7, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 271
    .local v9, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    .line 273
    .local v11, "time":J
    invoke-static {v7, v8}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    move-result-object v1

    .line 274
    .local v1, "latTag":[I
    invoke-static {v9, v10}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    move-result-object v3

    .line 275
    .local v3, "longTag":[I
    const-wide/16 v4, 0x0

    cmpl-double v2, v7, v4

    if-ltz v2, :cond_21

    const-string v2, "N"

    goto :goto_23

    :cond_21
    const-string v2, "S"

    .line 276
    .local v2, "latRef":Ljava/lang/String;
    :goto_23
    cmpl-double v4, v9, v4

    if-ltz v4, :cond_2a

    const-string v4, "E"

    goto :goto_2c

    :cond_2a
    const-string v4, "W"

    .line 278
    .local v4, "longRef":Ljava/lang/String;
    :goto_2c
    sget-object v5, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "dateTag":Ljava/lang/String;
    iget-object v6, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 280
    iget-object v6, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    iget-object v6, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 281
    const/16 v13, 0xc

    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v16

    iget-object v6, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 282
    const/16 v13, 0xd

    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x1

    const/4 v15, 0x1

    const/16 v17, 0x1

    filled-new-array/range {v14 .. v19}, [I

    move-result-object v6

    .line 283
    .local v6, "timeTag":[I
    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/DngCreator;->nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V

    .line 284
    return-object p0

    .line 267
    .end local v1    # "latTag":[I
    .end local v2    # "latRef":Ljava/lang/String;
    .end local v3    # "longTag":[I
    .end local v4    # "longRef":Ljava/lang/String;
    .end local v5    # "dateTag":Ljava/lang/String;
    .end local v6    # "timeTag":[I
    .end local v7    # "latitude":D
    .end local v9    # "longitude":D
    .end local v11    # "time":J
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null location passed to setLocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOrientation(I)Landroid/hardware/camera2/DngCreator;
    .registers 5
    .param p1, "orientation"    # I

    .line 158
    if-ltz p1, :cond_e

    const/16 v0, 0x8

    if-gt p1, v0, :cond_e

    .line 165
    if-nez p1, :cond_a

    .line 166
    const/16 p1, 0x9

    .line 168
    :cond_a
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetOrientation(I)V

    .line 169
    return-object p0

    .line 160
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid EXIF orientation value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setThumbnail(Landroid/graphics/Bitmap;)Landroid/hardware/camera2/DngCreator;
    .registers 8
    .param p1, "pixels"    # Landroid/graphics/Bitmap;

    .line 188
    if-eqz p1, :cond_45

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 193
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 195
    .local v1, "height":I
    const/16 v2, 0x100

    if-gt v0, v2, :cond_18

    if-gt v1, v2, :cond_18

    .line 201
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 202
    .local v2, "rgbBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, v0, v1}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    .line 204
    return-object p0

    .line 196
    .end local v2    # "rgbBuffer":Ljava/nio/ByteBuffer;
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thumbnail dimensions width,height ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") too large, dimensions must be smaller than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument to setThumbnail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setThumbnail(Landroid/media/Image;)Landroid/hardware/camera2/DngCreator;
    .registers 9
    .param p1, "pixels"    # Landroid/media/Image;

    .line 224
    if-eqz p1, :cond_66

    .line 228
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 229
    .local v0, "format":I
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4d

    .line 233
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 234
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    .line 236
    .local v2, "height":I
    const/16 v3, 0x100

    if-gt v1, v3, :cond_20

    if-gt v2, v3, :cond_20

    .line 242
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 243
    .local v3, "rgbBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v3, v1, v2}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    .line 245
    return-object p0

    .line 237
    .end local v3    # "rgbBuffer":Ljava/nio/ByteBuffer;
    :cond_20
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thumbnail dimensions width,height ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") too large, dimensions must be smaller than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    .end local v1    # "width":I
    .end local v2    # "height":I
    :cond_4d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Image format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v0    # "format":I
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument to setThumbnail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    .registers 16
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "pixels"    # Ljava/nio/ByteBuffer;
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    if-eqz p1, :cond_3d

    .line 394
    if-eqz p2, :cond_33

    .line 396
    if-eqz p3, :cond_29

    .line 398
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1f

    .line 402
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 403
    .local v2, "width":I
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 405
    .local v3, "height":I
    mul-int/lit8 v7, v2, 0x2

    const/4 v6, 0x2

    move-object v1, p0

    move-object v5, p1

    move-object v4, p3

    move-wide v8, p4

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/nio/ByteBuffer;
    .end local p4    # "offset":J
    .local v4, "pixels":Ljava/nio/ByteBuffer;
    .local v5, "dngOutput":Ljava/io/OutputStream;
    .local v8, "offset":J
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 407
    return-void

    .line 399
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "pixels":Ljava/nio/ByteBuffer;
    .end local v5    # "dngOutput":Ljava/io/OutputStream;
    .end local v8    # "offset":J
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local p3    # "pixels":Ljava/nio/ByteBuffer;
    .restart local p4    # "offset":J
    :cond_1f
    move-object v5, p1

    move-object v4, p3

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/nio/ByteBuffer;
    .restart local v4    # "pixels":Ljava/nio/ByteBuffer;
    .restart local v5    # "dngOutput":Ljava/io/OutputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Negative offset passed to writeByteBuffer"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    .end local v4    # "pixels":Ljava/nio/ByteBuffer;
    .end local v5    # "dngOutput":Ljava/io/OutputStream;
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local p3    # "pixels":Ljava/nio/ByteBuffer;
    :cond_29
    move-object v5, p1

    move-object v4, p3

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/nio/ByteBuffer;
    .restart local v4    # "pixels":Ljava/nio/ByteBuffer;
    .restart local v5    # "dngOutput":Ljava/io/OutputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Null pixels passed to writeByteBuffer"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    .end local v4    # "pixels":Ljava/nio/ByteBuffer;
    .end local v5    # "dngOutput":Ljava/io/OutputStream;
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local p3    # "pixels":Ljava/nio/ByteBuffer;
    :cond_33
    move-object v5, p1

    move-object v4, p3

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/nio/ByteBuffer;
    .restart local v4    # "pixels":Ljava/nio/ByteBuffer;
    .restart local v5    # "dngOutput":Ljava/io/OutputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Null size passed to writeByteBuffer"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 393
    .end local v4    # "pixels":Ljava/nio/ByteBuffer;
    .end local v5    # "dngOutput":Ljava/io/OutputStream;
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local p3    # "pixels":Ljava/nio/ByteBuffer;
    :cond_3d
    move-object v5, p1

    move-object v4, p3

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/nio/ByteBuffer;
    .restart local v4    # "pixels":Ljava/nio/ByteBuffer;
    .restart local v5    # "dngOutput":Ljava/io/OutputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Null dngOutput passed to writeByteBuffer"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V
    .registers 16
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "pixels"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    if-eqz p1, :cond_64

    .line 430
    if-eqz p2, :cond_5b

    .line 434
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 435
    .local v0, "format":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_41

    .line 439
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    .line 440
    .local v1, "planes":[Landroid/media/Image$Plane;
    if-eqz v1, :cond_38

    array-length v2, v1

    if-lez v2, :cond_38

    .line 444
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 445
    .local v7, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v6

    aget-object v3, v1, v2

    .line 446
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 445
    const-wide/16 v11, 0x0

    move-object v4, p0

    move-object v8, p1

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .local v8, "dngOutput":Ljava/io/OutputStream;
    invoke-direct/range {v4 .. v12}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 447
    return-void

    .line 440
    .end local v7    # "buf":Ljava/nio/ByteBuffer;
    .end local v8    # "dngOutput":Ljava/io/OutputStream;
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    :cond_38
    move-object v8, p1

    .line 441
    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local v8    # "dngOutput":Ljava/io/OutputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Image with no planes passed to writeImage"

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    .end local v1    # "planes":[Landroid/media/Image$Plane;
    .end local v8    # "dngOutput":Ljava/io/OutputStream;
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    :cond_41
    move-object v8, p1

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local v8    # "dngOutput":Ljava/io/OutputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported image format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 431
    .end local v0    # "format":I
    .end local v8    # "dngOutput":Ljava/io/OutputStream;
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    :cond_5b
    move-object v8, p1

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local v8    # "dngOutput":Ljava/io/OutputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null pixels to writeImage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    .end local v8    # "dngOutput":Ljava/io/OutputStream;
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    :cond_64
    move-object v8, p1

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local v8    # "dngOutput":Ljava/io/OutputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null dngOutput to writeImage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist writeInputStream(Ljava/io/OutputStream;Landroid/util/Size;Ljava/io/InputStream;J)V
    .registers 14
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "pixels"    # Ljava/io/InputStream;
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    if-eqz p1, :cond_6a

    .line 339
    if-eqz p2, :cond_60

    .line 341
    if-eqz p3, :cond_56

    .line 343
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_4c

    .line 347
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 348
    .local v4, "width":I
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 349
    .local v5, "height":I
    if-lez v4, :cond_20

    if-lez v5, :cond_20

    .line 353
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v6, p4

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/io/InputStream;
    .end local p4    # "offset":J
    .local v2, "dngOutput":Ljava/io/OutputStream;
    .local v3, "pixels":Ljava/io/InputStream;
    .local v6, "offset":J
    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/DngCreator;->nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V

    .line 354
    return-void

    .line 349
    .end local v2    # "dngOutput":Ljava/io/OutputStream;
    .end local v3    # "pixels":Ljava/io/InputStream;
    .end local v6    # "offset":J
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local p3    # "pixels":Ljava/io/InputStream;
    .restart local p4    # "offset":J
    :cond_20
    move-object v2, p1

    move-object v3, p3

    move-wide v6, p4

    .line 350
    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/io/InputStream;
    .end local p4    # "offset":J
    .restart local v2    # "dngOutput":Ljava/io/OutputStream;
    .restart local v3    # "pixels":Ljava/io/InputStream;
    .restart local v6    # "offset":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Size with invalid width, height: ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ","

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ") passed to writeInputStream"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    .end local v2    # "dngOutput":Ljava/io/OutputStream;
    .end local v3    # "pixels":Ljava/io/InputStream;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "offset":J
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local p3    # "pixels":Ljava/io/InputStream;
    .restart local p4    # "offset":J
    :cond_4c
    move-object v2, p1

    move-object v3, p3

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/io/InputStream;
    .restart local v2    # "dngOutput":Ljava/io/OutputStream;
    .restart local v3    # "pixels":Ljava/io/InputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Negative offset passed to writeInputStream"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    .end local v2    # "dngOutput":Ljava/io/OutputStream;
    .end local v3    # "pixels":Ljava/io/InputStream;
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local p3    # "pixels":Ljava/io/InputStream;
    :cond_56
    move-object v2, p1

    move-object v3, p3

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/io/InputStream;
    .restart local v2    # "dngOutput":Ljava/io/OutputStream;
    .restart local v3    # "pixels":Ljava/io/InputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Null pixels passed to writeInputStream"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 340
    .end local v2    # "dngOutput":Ljava/io/OutputStream;
    .end local v3    # "pixels":Ljava/io/InputStream;
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local p3    # "pixels":Ljava/io/InputStream;
    :cond_60
    move-object v2, p1

    move-object v3, p3

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/io/InputStream;
    .restart local v2    # "dngOutput":Ljava/io/OutputStream;
    .restart local v3    # "pixels":Ljava/io/InputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Null size passed to writeInputStream"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 338
    .end local v2    # "dngOutput":Ljava/io/OutputStream;
    .end local v3    # "pixels":Ljava/io/InputStream;
    .restart local p1    # "dngOutput":Ljava/io/OutputStream;
    .restart local p3    # "pixels":Ljava/io/InputStream;
    :cond_6a
    move-object v2, p1

    move-object v3, p3

    .end local p1    # "dngOutput":Ljava/io/OutputStream;
    .end local p3    # "pixels":Ljava/io/InputStream;
    .restart local v2    # "dngOutput":Ljava/io/OutputStream;
    .restart local v3    # "pixels":Ljava/io/InputStream;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Null dngOutput passed to writeInputStream"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
