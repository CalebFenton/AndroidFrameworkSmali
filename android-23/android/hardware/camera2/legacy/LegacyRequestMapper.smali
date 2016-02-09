.class public Landroid/hardware/camera2/legacy/LegacyRequestMapper;
.super Ljava/lang/Object;
.source "LegacyRequestMapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_JPEG_QUALITY:B = 0x55t

.field private static final TAG:Ljava/lang/String; = "LegacyRequestMapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkForCompleteGpsData(Landroid/location/Location;)Z
    .locals 6
    .param p0, "location"    # Landroid/location/Location;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 457
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    #@c
    move-result-wide v2

    #@d
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-eqz v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    return v0
.end method

.method private static convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    #@0
    .prologue
    .line 610
    packed-switch p0, :pswitch_data_0

    #@3
    .line 624
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 612
    :pswitch_0
    const-string/jumbo v0, "off"

    #@8
    return-object v0

    #@9
    .line 615
    :pswitch_1
    const-string/jumbo v0, "50hz"

    #@c
    return-object v0

    #@d
    .line 618
    :pswitch_2
    const-string/jumbo v0, "60hz"

    #@10
    return-object v0

    #@11
    .line 621
    :pswitch_3
    const-string/jumbo v0, "auto"

    #@14
    return-object v0

    #@15
    .line 610
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static convertAeFpsRangeToLegacy(Landroid/util/Range;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 630
    .local p0, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [I

    #@3
    .line 631
    .local v0, "legacyFps":[I
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Ljava/lang/Integer;

    #@9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v1

    #@d
    mul-int/lit16 v1, v1, 0x3e8

    #@f
    const/4 v2, 0x0

    #@10
    aput v1, v0, v2

    #@12
    .line 632
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/Integer;

    #@18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v1

    #@1c
    mul-int/lit16 v1, v1, 0x3e8

    #@1e
    const/4 v2, 0x1

    #@1f
    aput v1, v0, v2

    #@21
    .line 633
    return-object v0
.end method

.method private static convertAwbModeToLegacy(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    #@0
    .prologue
    .line 637
    packed-switch p0, :pswitch_data_0

    #@3
    .line 655
    const-string/jumbo v0, "LegacyRequestMapper"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "convertAwbModeToLegacy - unrecognized control.awbMode"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 656
    const-string/jumbo v0, "auto"

    #@20
    return-object v0

    #@21
    .line 639
    :pswitch_0
    const-string/jumbo v0, "auto"

    #@24
    return-object v0

    #@25
    .line 641
    :pswitch_1
    const-string/jumbo v0, "incandescent"

    #@28
    return-object v0

    #@29
    .line 643
    :pswitch_2
    const-string/jumbo v0, "fluorescent"

    #@2c
    return-object v0

    #@2d
    .line 645
    :pswitch_3
    const-string/jumbo v0, "warm-fluorescent"

    #@30
    return-object v0

    #@31
    .line 647
    :pswitch_4
    const-string/jumbo v0, "daylight"

    #@34
    return-object v0

    #@35
    .line 649
    :pswitch_5
    const-string/jumbo v0, "cloudy-daylight"

    #@38
    return-object v0

    #@39
    .line 651
    :pswitch_6
    const-string/jumbo v0, "twilight"

    #@3c
    return-object v0

    #@3d
    .line 653
    :pswitch_7
    const-string/jumbo v0, "shade"

    #@40
    return-object v0

    #@41
    .line 637
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "meteringRegions"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p3, "maxNumMeteringAreas"    # I
    .param p4, "regionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 485
    if-eqz p2, :cond_0

    #@5
    if-gtz p3, :cond_2

    #@7
    .line 486
    :cond_0
    if-lez p3, :cond_1

    #@9
    .line 487
    new-array v6, v10, [Landroid/hardware/Camera$Area;

    #@b
    sget-object v8, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    #@d
    aput-object v8, v6, v7

    #@f
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@12
    move-result-object v6

    #@13
    return-object v6

    #@14
    .line 489
    :cond_1
    return-object v6

    #@15
    .line 494
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    #@17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 495
    .local v4, "meteringRectangleList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    array-length v8, p2

    #@1b
    move v6, v7

    #@1c
    :goto_0
    if-ge v6, v8, :cond_4

    #@1e
    aget-object v5, p2, v6

    #@20
    .line 496
    .local v5, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    #@23
    move-result v9

    #@24
    if-eqz v9, :cond_3

    #@26
    .line 497
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 495
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 501
    .end local v5    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@2f
    move-result v6

    #@30
    if-nez v6, :cond_5

    #@32
    .line 502
    const-string/jumbo v6, "LegacyRequestMapper"

    #@35
    const-string/jumbo v8, "Only received metering rectangles with weight 0."

    #@38
    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 503
    new-array v6, v10, [Landroid/hardware/Camera$Area;

    #@3d
    sget-object v8, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    #@3f
    aput-object v8, v6, v7

    #@41
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@44
    move-result-object v6

    #@45
    return-object v6

    #@46
    .line 508
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@49
    move-result v6

    #@4a
    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    #@4d
    move-result v0

    #@4e
    .line 509
    .local v0, "countMeteringAreas":I
    new-instance v2, Ljava/util/ArrayList;

    #@50
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@53
    .line 511
    .local v2, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v1, 0x0

    #@54
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    #@56
    .line 512
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Landroid/hardware/camera2/params/MeteringRectangle;

    #@5c
    .line 515
    .restart local v5    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-static {p0, v5, p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertMeteringRectangleToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;

    #@5f
    move-result-object v3

    #@60
    .line 516
    .local v3, "meteringData":Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    iget-object v6, v3, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->meteringArea:Landroid/hardware/Camera$Area;

    #@62
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@65
    .line 511
    add-int/lit8 v1, v1, 0x1

    #@67
    goto :goto_1

    #@68
    .line 519
    .end local v3    # "meteringData":Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    .end local v5    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@6b
    move-result v6

    #@6c
    if-ge p3, v6, :cond_7

    #@6e
    .line 520
    const-string/jumbo v6, "LegacyRequestMapper"

    #@71
    .line 521
    new-instance v7, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v8, "convertMeteringRegionsToLegacy - Too many requested "

    #@79
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v7

    #@81
    .line 522
    const-string/jumbo v8, " regions, ignoring all beyond the first "

    #@84
    .line 521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v7

    #@8c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    .line 520
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 530
    :cond_7
    return-object v2
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 58
    .param p0, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    #@0
    .prologue
    .line 59
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@4
    move-object/from16 v17, v0

    #@6
    .line 60
    .local v17, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    #@a
    move-object/from16 v45, v0

    #@c
    .line 61
    .local v45, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    #@10
    move-object/from16 v41, v0

    #@12
    .line 62
    .local v41, "previewSize":Landroid/util/Size;
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@16
    move-object/from16 v40, v0

    #@18
    .line 64
    .local v40, "params":Landroid/hardware/Camera$Parameters;
    sget-object v53, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1a
    move-object/from16 v0, v17

    #@1c
    move-object/from16 v1, v53

    #@1e
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@21
    move-result-object v7

    #@22
    check-cast v7, Landroid/graphics/Rect;

    #@24
    .line 72
    .local v7, "activeArray":Landroid/graphics/Rect;
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@26
    move-object/from16 v0, v45

    #@28
    move-object/from16 v1, v53

    #@2a
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@2d
    move-result-object v53

    #@2e
    check-cast v53, Landroid/graphics/Rect;

    #@30
    .line 71
    move-object/from16 v0, v53

    #@32
    move-object/from16 v1, v41

    #@34
    move-object/from16 v2, v40

    #@36
    invoke-static {v7, v0, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    #@39
    move-result-object v52

    #@3a
    .line 76
    .local v52, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    #@3d
    move-result v53

    #@3e
    if-eqz v53, :cond_0

    #@40
    .line 77
    move-object/from16 v0, v52

    #@42
    iget v0, v0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->zoomIndex:I

    #@44
    move/from16 v53, v0

    #@46
    move-object/from16 v0, v40

    #@48
    move/from16 v1, v53

    #@4a
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    #@4d
    .line 89
    :cond_0
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4f
    .line 90
    const/16 v54, 0x1

    #@51
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v54

    #@55
    .line 88
    move-object/from16 v0, v45

    #@57
    move-object/from16 v1, v53

    #@59
    move-object/from16 v2, v54

    #@5b
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    move-result-object v53

    #@5f
    check-cast v53, Ljava/lang/Integer;

    #@61
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@64
    move-result v6

    #@65
    .line 92
    .local v6, "aberrationMode":I
    const/16 v53, 0x1

    #@67
    move/from16 v0, v53

    #@69
    if-eq v6, v0, :cond_1

    #@6b
    .line 93
    const-string/jumbo v53, "LegacyRequestMapper"

    #@6e
    new-instance v54, Ljava/lang/StringBuilder;

    #@70
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v55, "convertRequestToMetadata - Ignoring unsupported colorCorrection.aberrationMode = "

    #@76
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v54

    #@7a
    move-object/from16 v0, v54

    #@7c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v54

    #@80
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v54

    #@84
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 104
    :cond_1
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@89
    move-object/from16 v0, v45

    #@8b
    move-object/from16 v1, v53

    #@8d
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@90
    move-result-object v13

    #@91
    check-cast v13, Ljava/lang/Integer;

    #@93
    .line 105
    .local v13, "antiBandingMode":Ljava/lang/Integer;
    if-eqz v13, :cond_19

    #@95
    .line 106
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@98
    move-result v53

    #@99
    invoke-static/range {v53 .. v53}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;

    #@9c
    move-result-object v31

    #@9d
    .line 117
    .local v31, "legacyMode":Ljava/lang/String;
    :goto_0
    if-eqz v31, :cond_2

    #@9f
    .line 118
    move-object/from16 v0, v40

    #@a1
    move-object/from16 v1, v31

    #@a3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    #@a6
    .line 129
    :cond_2
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@a8
    move-object/from16 v0, v45

    #@aa
    move-object/from16 v1, v53

    #@ac
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@af
    move-result-object v10

    #@b0
    check-cast v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    #@b2
    .line 130
    .local v10, "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@b4
    move-object/from16 v0, v45

    #@b6
    move-object/from16 v1, v53

    #@b8
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@bb
    move-result-object v53

    #@bc
    if-eqz v53, :cond_3

    #@be
    .line 131
    const-string/jumbo v53, "LegacyRequestMapper"

    #@c1
    const-string/jumbo v54, "convertRequestMetadata - control.awbRegions setting is not supported, ignoring value"

    #@c4
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    .line 134
    :cond_3
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    #@ca
    move-result v35

    #@cb
    .line 137
    .local v35, "maxNumMeteringAreas":I
    const-string/jumbo v53, "AE"

    #@ce
    .line 135
    move-object/from16 v0, v52

    #@d0
    move/from16 v1, v35

    #@d2
    move-object/from16 v2, v53

    #@d4
    invoke-static {v7, v0, v10, v1, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    #@d7
    move-result-object v36

    #@d8
    .line 140
    .local v36, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-lez v35, :cond_4

    #@da
    .line 141
    move-object/from16 v0, v40

    #@dc
    move-object/from16 v1, v36

    #@de
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    #@e1
    .line 147
    :cond_4
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@e3
    move-object/from16 v0, v45

    #@e5
    move-object/from16 v1, v53

    #@e7
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@ea
    move-result-object v12

    #@eb
    check-cast v12, [Landroid/hardware/camera2/params/MeteringRectangle;

    #@ed
    .line 148
    .local v12, "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    #@f0
    move-result v34

    #@f1
    .line 151
    .local v34, "maxNumFocusAreas":I
    const-string/jumbo v53, "AF"

    #@f4
    .line 149
    move-object/from16 v0, v52

    #@f6
    move/from16 v1, v34

    #@f8
    move-object/from16 v2, v53

    #@fa
    invoke-static {v7, v0, v12, v1, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    #@fd
    move-result-object v22

    #@fe
    .line 154
    .local v22, "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-lez v34, :cond_5

    #@100
    .line 155
    move-object/from16 v0, v40

    #@102
    move-object/from16 v1, v22

    #@104
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    #@107
    .line 161
    :cond_5
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@109
    move-object/from16 v0, v45

    #@10b
    move-object/from16 v1, v53

    #@10d
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@110
    move-result-object v8

    #@111
    check-cast v8, Landroid/util/Range;

    #@113
    .line 162
    .local v8, "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_8

    #@115
    .line 163
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeFpsRangeToLegacy(Landroid/util/Range;)[I

    #@118
    move-result-object v30

    #@119
    .line 165
    .local v30, "legacyFps":[I
    const/16 v44, 0x0

    #@11b
    .line 166
    .local v44, "rangeToApply":[I
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    #@11e
    move-result-object v53

    #@11f
    invoke-interface/range {v53 .. v53}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@122
    move-result-object v43

    #@123
    .local v43, "range$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    #@126
    move-result v53

    #@127
    if-eqz v53, :cond_7

    #@129
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12c
    move-result-object v42

    #@12d
    check-cast v42, [I

    #@12f
    .line 168
    .local v42, "range":[I
    const/16 v53, 0x0

    #@131
    aget v53, v42, v53

    #@133
    move/from16 v0, v53

    #@135
    int-to-double v0, v0

    #@136
    move-wide/from16 v54, v0

    #@138
    const-wide v56, 0x408f400000000000L    # 1000.0

    #@13d
    div-double v54, v54, v56

    #@13f
    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->floor(D)D

    #@142
    move-result-wide v54

    #@143
    move-wide/from16 v0, v54

    #@145
    double-to-int v0, v0

    #@146
    move/from16 v53, v0

    #@148
    move/from16 v0, v53

    #@14a
    mul-int/lit16 v0, v0, 0x3e8

    #@14c
    move/from16 v27, v0

    #@14e
    .line 169
    .local v27, "intRangeLow":I
    const/16 v53, 0x1

    #@150
    aget v53, v42, v53

    #@152
    move/from16 v0, v53

    #@154
    int-to-double v0, v0

    #@155
    move-wide/from16 v54, v0

    #@157
    const-wide v56, 0x408f400000000000L    # 1000.0

    #@15c
    div-double v54, v54, v56

    #@15e
    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->ceil(D)D

    #@161
    move-result-wide v54

    #@162
    move-wide/from16 v0, v54

    #@164
    double-to-int v0, v0

    #@165
    move/from16 v53, v0

    #@167
    move/from16 v0, v53

    #@169
    mul-int/lit16 v0, v0, 0x3e8

    #@16b
    move/from16 v26, v0

    #@16d
    .line 170
    .local v26, "intRangeHigh":I
    const/16 v53, 0x0

    #@16f
    aget v53, v30, v53

    #@171
    move/from16 v0, v53

    #@173
    move/from16 v1, v27

    #@175
    if-ne v0, v1, :cond_6

    #@177
    const/16 v53, 0x1

    #@179
    aget v53, v30, v53

    #@17b
    move/from16 v0, v53

    #@17d
    move/from16 v1, v26

    #@17f
    if-ne v0, v1, :cond_6

    #@181
    .line 171
    move-object/from16 v44, v42

    #@183
    .line 175
    .end local v26    # "intRangeHigh":I
    .end local v27    # "intRangeLow":I
    .end local v42    # "range":[I
    .end local v44    # "rangeToApply":[I
    :cond_7
    if-eqz v44, :cond_1a

    #@185
    .line 176
    const/16 v53, 0x0

    #@187
    aget v53, v44, v53

    #@189
    .line 177
    const/16 v54, 0x1

    #@18b
    aget v54, v44, v54

    #@18d
    .line 176
    move-object/from16 v0, v40

    #@18f
    move/from16 v1, v53

    #@191
    move/from16 v2, v54

    #@193
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    #@196
    .line 190
    .end local v30    # "legacyFps":[I
    .end local v43    # "range$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    sget-object v53, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@198
    move-object/from16 v0, v17

    #@19a
    move-object/from16 v1, v53

    #@19c
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@19f
    move-result-object v19

    #@1a0
    check-cast v19, Landroid/util/Range;

    #@1a2
    .line 192
    .local v19, "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1a4
    .line 193
    const/16 v54, 0x0

    #@1a6
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a9
    move-result-object v54

    #@1aa
    .line 191
    move-object/from16 v0, v45

    #@1ac
    move-object/from16 v1, v53

    #@1ae
    move-object/from16 v2, v54

    #@1b0
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b3
    move-result-object v53

    #@1b4
    check-cast v53, Ljava/lang/Integer;

    #@1b6
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@1b9
    move-result v18

    #@1ba
    .line 195
    .local v18, "compensation":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bd
    move-result-object v53

    #@1be
    move-object/from16 v0, v19

    #@1c0
    move-object/from16 v1, v53

    #@1c2
    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@1c5
    move-result v53

    #@1c6
    if-nez v53, :cond_9

    #@1c8
    .line 196
    const-string/jumbo v53, "LegacyRequestMapper"

    #@1cb
    .line 197
    const-string/jumbo v54, "convertRequestMetadata - control.aeExposureCompensation is out of range, ignoring value"

    #@1ce
    .line 196
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d1
    .line 199
    const/16 v18, 0x0

    #@1d3
    .line 202
    :cond_9
    move-object/from16 v0, v40

    #@1d5
    move/from16 v1, v18

    #@1d7
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    #@1da
    .line 207
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1dc
    const/16 v54, 0x0

    #@1de
    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e1
    move-result-object v54

    #@1e2
    .line 208
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    #@1e5
    move-result v55

    #@1e6
    .line 209
    const/16 v56, 0x0

    #@1e8
    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1eb
    move-result-object v56

    #@1ec
    .line 207
    move-object/from16 v0, v45

    #@1ee
    move-object/from16 v1, v53

    #@1f0
    move-object/from16 v2, v54

    #@1f2
    move/from16 v3, v55

    #@1f4
    move-object/from16 v4, v56

    #@1f6
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    #@1f9
    move-result-object v9

    #@1fa
    check-cast v9, Ljava/lang/Boolean;

    #@1fc
    .line 211
    .local v9, "aeLock":Ljava/lang/Boolean;
    if-eqz v9, :cond_a

    #@1fe
    .line 212
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    #@201
    move-result v53

    #@202
    move-object/from16 v0, v40

    #@204
    move/from16 v1, v53

    #@206
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    #@209
    .line 223
    :cond_a
    move-object/from16 v0, v45

    #@20b
    move-object/from16 v1, v40

    #@20d
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    #@210
    .line 227
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@212
    .line 228
    const/16 v54, 0x0

    #@214
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@217
    move-result-object v54

    #@218
    .line 227
    move-object/from16 v0, v45

    #@21a
    move-object/from16 v1, v53

    #@21c
    move-object/from16 v2, v54

    #@21e
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@221
    move-result-object v53

    #@222
    check-cast v53, Ljava/lang/Integer;

    #@224
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@227
    move-result v11

    #@228
    .line 230
    .local v11, "afMode":I
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    #@22b
    move-result-object v53

    #@22c
    .line 229
    move-object/from16 v0, v53

    #@22e
    invoke-static {v11, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;

    #@231
    move-result-object v24

    #@232
    .line 232
    .local v24, "focusMode":Ljava/lang/String;
    if-eqz v24, :cond_b

    #@234
    .line 233
    move-object/from16 v0, v40

    #@236
    move-object/from16 v1, v24

    #@238
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    #@23b
    .line 244
    :cond_b
    sget-object v54, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@23d
    .line 245
    const/16 v53, 0x1

    #@23f
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@242
    move-result-object v55

    #@243
    .line 246
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    #@246
    move-result-object v53

    #@247
    if-eqz v53, :cond_1b

    #@249
    const/16 v53, 0x1

    #@24b
    .line 247
    :goto_2
    const/16 v56, 0x1

    #@24d
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@250
    move-result-object v56

    #@251
    .line 244
    move-object/from16 v0, v45

    #@253
    move-object/from16 v1, v54

    #@255
    move-object/from16 v2, v55

    #@257
    move/from16 v3, v53

    #@259
    move-object/from16 v4, v56

    #@25b
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    #@25e
    move-result-object v15

    #@25f
    check-cast v15, Ljava/lang/Integer;

    #@261
    .line 249
    .local v15, "awbMode":Ljava/lang/Integer;
    const/16 v51, 0x0

    #@263
    .line 250
    .local v51, "whiteBalanceMode":Ljava/lang/String;
    if-eqz v15, :cond_c

    #@265
    .line 251
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@268
    move-result v53

    #@269
    invoke-static/range {v53 .. v53}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAwbModeToLegacy(I)Ljava/lang/String;

    #@26c
    move-result-object v51

    #@26d
    .line 252
    .local v51, "whiteBalanceMode":Ljava/lang/String;
    move-object/from16 v0, v40

    #@26f
    move-object/from16 v1, v51

    #@271
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    #@274
    .line 263
    .end local v51    # "whiteBalanceMode":Ljava/lang/String;
    :cond_c
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@276
    const/16 v54, 0x0

    #@278
    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@27b
    move-result-object v54

    #@27c
    .line 264
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    #@27f
    move-result v55

    #@280
    .line 265
    const/16 v56, 0x0

    #@282
    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@285
    move-result-object v56

    #@286
    .line 263
    move-object/from16 v0, v45

    #@288
    move-object/from16 v1, v53

    #@28a
    move-object/from16 v2, v54

    #@28c
    move/from16 v3, v55

    #@28e
    move-object/from16 v4, v56

    #@290
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    #@293
    move-result-object v14

    #@294
    check-cast v14, Ljava/lang/Boolean;

    #@296
    .line 267
    .local v14, "awbLock":Ljava/lang/Boolean;
    if-eqz v14, :cond_d

    #@298
    .line 268
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    #@29b
    move-result v53

    #@29c
    move-object/from16 v0, v40

    #@29e
    move/from16 v1, v53

    #@2a0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    #@2a3
    .line 277
    :cond_d
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2a5
    .line 278
    const/16 v54, 0x1

    #@2a7
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2aa
    move-result-object v54

    #@2ab
    .line 276
    move-object/from16 v0, v45

    #@2ad
    move-object/from16 v1, v53

    #@2af
    move-object/from16 v2, v54

    #@2b1
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b4
    move-result-object v53

    #@2b5
    check-cast v53, Ljava/lang/Integer;

    #@2b7
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@2ba
    move-result v16

    #@2bb
    .line 280
    .local v16, "captureIntent":I
    invoke-static/range {v16 .. v16}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    #@2be
    move-result v16

    #@2bf
    .line 283
    const/16 v53, 0x3

    #@2c1
    move/from16 v0, v16

    #@2c3
    move/from16 v1, v53

    #@2c5
    if-eq v0, v1, :cond_1c

    #@2c7
    .line 284
    const/16 v53, 0x4

    #@2c9
    move/from16 v0, v16

    #@2cb
    move/from16 v1, v53

    #@2cd
    if-ne v0, v1, :cond_1d

    #@2cf
    const/16 v53, 0x1

    #@2d1
    .line 282
    :goto_3
    move-object/from16 v0, v40

    #@2d3
    move/from16 v1, v53

    #@2d5
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    #@2d8
    .line 289
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2da
    .line 290
    const/16 v54, 0x0

    #@2dc
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2df
    move-result-object v54

    #@2e0
    .line 291
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    #@2e3
    move-result v55

    #@2e4
    .line 292
    const/16 v56, 0x0

    #@2e6
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e9
    move-result-object v56

    #@2ea
    .line 289
    move-object/from16 v0, v45

    #@2ec
    move-object/from16 v1, v53

    #@2ee
    move-object/from16 v2, v54

    #@2f0
    move/from16 v3, v55

    #@2f2
    move-object/from16 v4, v56

    #@2f4
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    #@2f7
    move-result-object v49

    #@2f8
    check-cast v49, Ljava/lang/Integer;

    #@2fa
    .line 294
    .local v49, "stabMode":Ljava/lang/Integer;
    if-eqz v49, :cond_e

    #@2fc
    .line 295
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    #@2ff
    move-result v53

    #@300
    const/16 v54, 0x1

    #@302
    move/from16 v0, v53

    #@304
    move/from16 v1, v54

    #@306
    if-ne v0, v1, :cond_1e

    #@308
    const/16 v53, 0x1

    #@30a
    :goto_4
    move-object/from16 v0, v40

    #@30c
    move/from16 v1, v53

    #@30e
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    #@311
    .line 302
    :cond_e
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    #@314
    move-result-object v53

    #@315
    .line 303
    const-string/jumbo v54, "infinity"

    #@318
    .line 302
    invoke-static/range {v53 .. v54}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@31b
    move-result v25

    #@31c
    .line 304
    .local v25, "infinityFocusSupported":Z
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@31e
    .line 305
    const/16 v54, 0x0

    #@320
    invoke-static/range {v54 .. v54}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@323
    move-result-object v54

    #@324
    const/16 v55, 0x0

    #@326
    invoke-static/range {v55 .. v55}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@329
    move-result-object v55

    #@32a
    .line 304
    move-object/from16 v0, v45

    #@32c
    move-object/from16 v1, v53

    #@32e
    move-object/from16 v2, v54

    #@330
    move/from16 v3, v25

    #@332
    move-object/from16 v4, v55

    #@334
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    #@337
    move-result-object v23

    #@338
    check-cast v23, Ljava/lang/Float;

    #@33a
    .line 307
    .local v23, "focusDistance":Ljava/lang/Float;
    if-eqz v23, :cond_f

    #@33c
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    #@33f
    move-result v53

    #@340
    const/16 v54, 0x0

    #@342
    cmpl-float v53, v53, v54

    #@344
    if-eqz v53, :cond_10

    #@346
    .line 308
    :cond_f
    const-string/jumbo v53, "LegacyRequestMapper"

    #@349
    .line 309
    new-instance v54, Ljava/lang/StringBuilder;

    #@34b
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@34e
    const-string/jumbo v55, "convertRequestToMetadata - Ignoring android.lens.focusDistance "

    #@351
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@354
    move-result-object v54

    #@355
    move-object/from16 v0, v54

    #@357
    move/from16 v1, v25

    #@359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35c
    move-result-object v54

    #@35d
    .line 310
    const-string/jumbo v55, ", only 0.0f is supported"

    #@360
    .line 309
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@363
    move-result-object v54

    #@364
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@367
    move-result-object v54

    #@368
    .line 308
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36b
    .line 318
    :cond_10
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    #@36e
    move-result-object v53

    #@36f
    if-eqz v53, :cond_11

    #@371
    .line 319
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@373
    .line 320
    const/16 v54, 0x1

    #@375
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@378
    move-result-object v54

    #@379
    .line 319
    move-object/from16 v0, v45

    #@37b
    move-object/from16 v1, v53

    #@37d
    move-object/from16 v2, v54

    #@37f
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@382
    move-result-object v53

    #@383
    check-cast v53, Ljava/lang/Integer;

    #@385
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@388
    move-result v20

    #@389
    .line 322
    .local v20, "controlMode":I
    packed-switch v20, :pswitch_data_0

    #@38c
    .line 341
    const-string/jumbo v53, "LegacyRequestMapper"

    #@38f
    new-instance v54, Ljava/lang/StringBuilder;

    #@391
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@394
    const-string/jumbo v55, "Control mode "

    #@397
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39a
    move-result-object v54

    #@39b
    move-object/from16 v0, v54

    #@39d
    move/from16 v1, v20

    #@39f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a2
    move-result-object v54

    #@3a3
    .line 342
    const-string/jumbo v55, " is unsupported, defaulting to AUTO"

    #@3a6
    .line 341
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a9
    move-result-object v54

    #@3aa
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ad
    move-result-object v54

    #@3ae
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b1
    .line 343
    const-string/jumbo v38, "auto"

    #@3b4
    .line 346
    .local v38, "modeToSet":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v40

    #@3b6
    move-object/from16 v1, v38

    #@3b8
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    #@3bb
    .line 352
    .end local v20    # "controlMode":I
    .end local v38    # "modeToSet":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    #@3be
    move-result-object v53

    #@3bf
    if-eqz v53, :cond_12

    #@3c1
    .line 353
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@3c3
    .line 354
    const/16 v54, 0x0

    #@3c5
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c8
    move-result-object v54

    #@3c9
    .line 353
    move-object/from16 v0, v45

    #@3cb
    move-object/from16 v1, v53

    #@3cd
    move-object/from16 v2, v54

    #@3cf
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d2
    move-result-object v53

    #@3d3
    check-cast v53, Ljava/lang/Integer;

    #@3d5
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@3d8
    move-result v21

    #@3d9
    .line 355
    .local v21, "effectMode":I
    invoke-static/range {v21 .. v21}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeToLegacy(I)Ljava/lang/String;

    #@3dc
    move-result-object v29

    #@3dd
    .line 356
    .local v29, "legacyEffectMode":Ljava/lang/String;
    if-eqz v29, :cond_20

    #@3df
    .line 357
    move-object/from16 v0, v40

    #@3e1
    move-object/from16 v1, v29

    #@3e3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    #@3e6
    .line 371
    .end local v21    # "effectMode":I
    .end local v29    # "legacyEffectMode":Ljava/lang/String;
    :cond_12
    :goto_6
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@3e8
    .line 372
    const/16 v54, 0x0

    #@3ea
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3ed
    move-result-object v54

    #@3ee
    .line 371
    move-object/from16 v0, v45

    #@3f0
    move-object/from16 v1, v53

    #@3f2
    move-object/from16 v2, v54

    #@3f4
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f7
    move-result-object v53

    #@3f8
    check-cast v53, Ljava/lang/Integer;

    #@3fa
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@3fd
    move-result v50

    #@3fe
    .line 373
    .local v50, "testPatternMode":I
    if-eqz v50, :cond_13

    #@400
    .line 374
    const-string/jumbo v53, "LegacyRequestMapper"

    #@403
    new-instance v54, Ljava/lang/StringBuilder;

    #@405
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@408
    const-string/jumbo v55, "convertRequestToMetadata - ignoring sensor.testPatternMode "

    #@40b
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40e
    move-result-object v54

    #@40f
    move-object/from16 v0, v54

    #@411
    move/from16 v1, v50

    #@413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@416
    move-result-object v54

    #@417
    .line 375
    const-string/jumbo v55, "; only OFF is supported"

    #@41a
    .line 374
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41d
    move-result-object v54

    #@41e
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@421
    move-result-object v54

    #@422
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@425
    .line 385
    :cond_13
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@427
    move-object/from16 v0, v45

    #@429
    move-object/from16 v1, v53

    #@42b
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@42e
    move-result-object v33

    #@42f
    check-cast v33, Landroid/location/Location;

    #@431
    .line 386
    .local v33, "location":Landroid/location/Location;
    if-eqz v33, :cond_22

    #@433
    .line 387
    invoke-static/range {v33 .. v33}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->checkForCompleteGpsData(Landroid/location/Location;)Z

    #@436
    move-result v53

    #@437
    if-eqz v53, :cond_21

    #@439
    .line 388
    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getAltitude()D

    #@43c
    move-result-wide v54

    #@43d
    move-object/from16 v0, v40

    #@43f
    move-wide/from16 v1, v54

    #@441
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    #@444
    .line 389
    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getLatitude()D

    #@447
    move-result-wide v54

    #@448
    move-object/from16 v0, v40

    #@44a
    move-wide/from16 v1, v54

    #@44c
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    #@44f
    .line 390
    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getLongitude()D

    #@452
    move-result-wide v54

    #@453
    move-object/from16 v0, v40

    #@455
    move-wide/from16 v1, v54

    #@457
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    #@45a
    .line 391
    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    #@45d
    move-result-object v53

    #@45e
    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@461
    move-result-object v53

    #@462
    move-object/from16 v0, v40

    #@464
    move-object/from16 v1, v53

    #@466
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    #@469
    .line 392
    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getTime()J

    #@46c
    move-result-wide v54

    #@46d
    move-object/from16 v0, v40

    #@46f
    move-wide/from16 v1, v54

    #@471
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    #@474
    .line 403
    :goto_7
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@476
    move-object/from16 v0, v45

    #@478
    move-object/from16 v1, v53

    #@47a
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@47d
    move-result-object v39

    #@47e
    check-cast v39, Ljava/lang/Integer;

    #@480
    .line 404
    .local v39, "orientation":Ljava/lang/Integer;
    sget-object v54, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@482
    .line 405
    if-nez v39, :cond_23

    #@484
    const/16 v53, 0x0

    #@486
    :goto_8
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@489
    move-result-object v53

    #@48a
    .line 404
    move-object/from16 v0, v45

    #@48c
    move-object/from16 v1, v54

    #@48e
    move-object/from16 v2, v53

    #@490
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@493
    move-result-object v53

    #@494
    check-cast v53, Ljava/lang/Integer;

    #@496
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@499
    move-result v53

    #@49a
    move-object/from16 v0, v40

    #@49c
    move/from16 v1, v53

    #@49e
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    #@4a1
    .line 410
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4a3
    .line 411
    const/16 v54, 0x55

    #@4a5
    invoke-static/range {v54 .. v54}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@4a8
    move-result-object v54

    #@4a9
    .line 410
    move-object/from16 v0, v45

    #@4ab
    move-object/from16 v1, v53

    #@4ad
    move-object/from16 v2, v54

    #@4af
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b2
    move-result-object v53

    #@4b3
    check-cast v53, Ljava/lang/Byte;

    #@4b5
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Byte;->byteValue()B

    #@4b8
    move-result v53

    #@4b9
    move/from16 v0, v53

    #@4bb
    and-int/lit16 v0, v0, 0xff

    #@4bd
    move/from16 v53, v0

    #@4bf
    move-object/from16 v0, v40

    #@4c1
    move/from16 v1, v53

    #@4c3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    #@4c6
    .line 417
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4c8
    const/16 v54, 0x55

    #@4ca
    invoke-static/range {v54 .. v54}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@4cd
    move-result-object v54

    #@4ce
    .line 416
    move-object/from16 v0, v45

    #@4d0
    move-object/from16 v1, v53

    #@4d2
    move-object/from16 v2, v54

    #@4d4
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d7
    move-result-object v53

    #@4d8
    check-cast v53, Ljava/lang/Byte;

    #@4da
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Byte;->byteValue()B

    #@4dd
    move-result v53

    #@4de
    move/from16 v0, v53

    #@4e0
    and-int/lit16 v0, v0, 0xff

    #@4e2
    move/from16 v53, v0

    #@4e4
    move-object/from16 v0, v40

    #@4e6
    move/from16 v1, v53

    #@4e8
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    #@4eb
    .line 422
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    #@4ee
    move-result-object v48

    #@4ef
    .line 424
    .local v48, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v48, :cond_17

    #@4f1
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    #@4f4
    move-result v53

    #@4f5
    if-lez v53, :cond_17

    #@4f7
    .line 425
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4f9
    move-object/from16 v0, v45

    #@4fb
    move-object/from16 v1, v53

    #@4fd
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@500
    move-result-object v46

    #@501
    check-cast v46, Landroid/util/Size;

    #@503
    .line 426
    .local v46, "s":Landroid/util/Size;
    if-nez v46, :cond_24

    #@505
    :cond_14
    const/16 v28, 0x0

    #@507
    .line 428
    .local v28, "invalidSize":Z
    :goto_9
    if-eqz v28, :cond_15

    #@509
    .line 429
    const-string/jumbo v53, "LegacyRequestMapper"

    #@50c
    new-instance v54, Ljava/lang/StringBuilder;

    #@50e
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@511
    const-string/jumbo v55, "Invalid JPEG thumbnail size set "

    #@514
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@517
    move-result-object v54

    #@518
    move-object/from16 v0, v54

    #@51a
    move-object/from16 v1, v46

    #@51c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51f
    move-result-object v54

    #@520
    const-string/jumbo v55, ", skipping thumbnail..."

    #@523
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@526
    move-result-object v54

    #@527
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52a
    move-result-object v54

    #@52b
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@52e
    .line 431
    :cond_15
    if-eqz v46, :cond_16

    #@530
    if-eqz v28, :cond_25

    #@532
    .line 433
    :cond_16
    const/16 v53, 0x0

    #@534
    const/16 v54, 0x0

    #@536
    move-object/from16 v0, v40

    #@538
    move/from16 v1, v53

    #@53a
    move/from16 v2, v54

    #@53c
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    #@53f
    .line 446
    .end local v28    # "invalidSize":Z
    .end local v46    # "s":Landroid/util/Size;
    :cond_17
    :goto_a
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@541
    .line 447
    const/16 v54, 0x1

    #@543
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@546
    move-result-object v54

    #@547
    .line 445
    move-object/from16 v0, v45

    #@549
    move-object/from16 v1, v53

    #@54b
    move-object/from16 v2, v54

    #@54d
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@550
    move-result-object v53

    #@551
    check-cast v53, Ljava/lang/Integer;

    #@553
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@556
    move-result v37

    #@557
    .line 449
    .local v37, "mode":I
    const/16 v53, 0x1

    #@559
    move/from16 v0, v37

    #@55b
    move/from16 v1, v53

    #@55d
    if-eq v0, v1, :cond_18

    #@55f
    .line 450
    const-string/jumbo v53, "LegacyRequestMapper"

    #@562
    new-instance v54, Ljava/lang/StringBuilder;

    #@564
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@567
    const-string/jumbo v55, "convertRequestToMetadata - Ignoring unsupported noiseReduction.mode = "

    #@56a
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56d
    move-result-object v54

    #@56e
    move-object/from16 v0, v54

    #@570
    move/from16 v1, v37

    #@572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@575
    move-result-object v54

    #@576
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@579
    move-result-object v54

    #@57a
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57d
    .line 58
    :cond_18
    return-void

    #@57e
    .line 108
    .end local v8    # "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v9    # "aeLock":Ljava/lang/Boolean;
    .end local v10    # "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v11    # "afMode":I
    .end local v12    # "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v14    # "awbLock":Ljava/lang/Boolean;
    .end local v15    # "awbMode":Ljava/lang/Integer;
    .end local v16    # "captureIntent":I
    .end local v18    # "compensation":I
    .end local v19    # "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v22    # "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v23    # "focusDistance":Ljava/lang/Float;
    .end local v24    # "focusMode":Ljava/lang/String;
    .end local v25    # "infinityFocusSupported":Z
    .end local v31    # "legacyMode":Ljava/lang/String;
    .end local v33    # "location":Landroid/location/Location;
    .end local v34    # "maxNumFocusAreas":I
    .end local v35    # "maxNumMeteringAreas":I
    .end local v36    # "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v37    # "mode":I
    .end local v39    # "orientation":Ljava/lang/Integer;
    .end local v48    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v49    # "stabMode":Ljava/lang/Integer;
    .end local v50    # "testPatternMode":I
    :cond_19
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    #@581
    move-result-object v53

    #@582
    .line 109
    const/16 v54, 0x4

    #@584
    move/from16 v0, v54

    #@586
    new-array v0, v0, [Ljava/lang/String;

    #@588
    move-object/from16 v54, v0

    #@58a
    .line 110
    const-string/jumbo v55, "auto"

    #@58d
    const/16 v56, 0x0

    #@58f
    aput-object v55, v54, v56

    #@591
    .line 111
    const-string/jumbo v55, "off"

    #@594
    const/16 v56, 0x1

    #@596
    aput-object v55, v54, v56

    #@598
    .line 112
    const-string/jumbo v55, "50hz"

    #@59b
    const/16 v56, 0x2

    #@59d
    aput-object v55, v54, v56

    #@59f
    .line 113
    const-string/jumbo v55, "60hz"

    #@5a2
    const/16 v56, 0x3

    #@5a4
    aput-object v55, v54, v56

    #@5a6
    .line 108
    invoke-static/range {v53 .. v54}, Landroid/hardware/camera2/utils/ListUtils;->listSelectFirstFrom(Ljava/util/List;[Ljava/lang/Object;)Ljava/lang/Object;

    #@5a9
    move-result-object v31

    #@5aa
    check-cast v31, Ljava/lang/String;

    #@5ac
    .restart local v31    # "legacyMode":Ljava/lang/String;
    goto/16 :goto_0

    #@5ae
    .line 179
    .restart local v8    # "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v10    # "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .restart local v12    # "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .restart local v22    # "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .restart local v30    # "legacyFps":[I
    .restart local v34    # "maxNumFocusAreas":I
    .restart local v35    # "maxNumMeteringAreas":I
    .restart local v36    # "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .restart local v43    # "range$iterator":Ljava/util/Iterator;
    :cond_1a
    const-string/jumbo v53, "LegacyRequestMapper"

    #@5b1
    new-instance v54, Ljava/lang/StringBuilder;

    #@5b3
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@5b6
    const-string/jumbo v55, "Unsupported FPS range set ["

    #@5b9
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5bc
    move-result-object v54

    #@5bd
    const/16 v55, 0x0

    #@5bf
    aget v55, v30, v55

    #@5c1
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c4
    move-result-object v54

    #@5c5
    const-string/jumbo v55, ","

    #@5c8
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cb
    move-result-object v54

    #@5cc
    const/16 v55, 0x1

    #@5ce
    aget v55, v30, v55

    #@5d0
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d3
    move-result-object v54

    #@5d4
    const-string/jumbo v55, "]"

    #@5d7
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5da
    move-result-object v54

    #@5db
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5de
    move-result-object v54

    #@5df
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e2
    goto/16 :goto_1

    #@5e4
    .line 246
    .end local v30    # "legacyFps":[I
    .end local v43    # "range$iterator":Ljava/util/Iterator;
    .restart local v9    # "aeLock":Ljava/lang/Boolean;
    .restart local v11    # "afMode":I
    .restart local v18    # "compensation":I
    .restart local v19    # "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v24    # "focusMode":Ljava/lang/String;
    :cond_1b
    const/16 v53, 0x0

    #@5e6
    goto/16 :goto_2

    #@5e8
    .line 283
    .restart local v14    # "awbLock":Ljava/lang/Boolean;
    .restart local v15    # "awbMode":Ljava/lang/Integer;
    .restart local v16    # "captureIntent":I
    :cond_1c
    const/16 v53, 0x1

    #@5ea
    goto/16 :goto_3

    #@5ec
    .line 284
    :cond_1d
    const/16 v53, 0x0

    #@5ee
    goto/16 :goto_3

    #@5f0
    .line 295
    .restart local v49    # "stabMode":Ljava/lang/Integer;
    :cond_1e
    const/16 v53, 0x0

    #@5f2
    goto/16 :goto_4

    #@5f4
    .line 324
    .restart local v20    # "controlMode":I
    .restart local v23    # "focusDistance":Ljava/lang/Float;
    .restart local v25    # "infinityFocusSupported":Z
    :pswitch_0
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@5f6
    .line 325
    const/16 v54, 0x0

    #@5f8
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5fb
    move-result-object v54

    #@5fc
    .line 324
    move-object/from16 v0, v45

    #@5fe
    move-object/from16 v1, v53

    #@600
    move-object/from16 v2, v54

    #@602
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@605
    move-result-object v53

    #@606
    check-cast v53, Ljava/lang/Integer;

    #@608
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@60b
    move-result v47

    #@60c
    .line 326
    .local v47, "sceneMode":I
    invoke-static/range {v47 .. v47}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeToLegacy(I)Ljava/lang/String;

    #@60f
    move-result-object v32

    #@610
    .line 328
    .local v32, "legacySceneMode":Ljava/lang/String;
    if-eqz v32, :cond_1f

    #@612
    .line 329
    move-object/from16 v38, v32

    #@614
    .restart local v38    # "modeToSet":Ljava/lang/String;
    goto/16 :goto_5

    #@616
    .line 331
    .end local v38    # "modeToSet":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v38, "auto"

    #@619
    .line 332
    .restart local v38    # "modeToSet":Ljava/lang/String;
    const-string/jumbo v53, "LegacyRequestMapper"

    #@61c
    new-instance v54, Ljava/lang/StringBuilder;

    #@61e
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@621
    const-string/jumbo v55, "Skipping unknown requested scene mode: "

    #@624
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@627
    move-result-object v54

    #@628
    move-object/from16 v0, v54

    #@62a
    move/from16 v1, v47

    #@62c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62f
    move-result-object v54

    #@630
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@633
    move-result-object v54

    #@634
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@637
    goto/16 :goto_5

    #@639
    .line 337
    .end local v32    # "legacySceneMode":Ljava/lang/String;
    .end local v38    # "modeToSet":Ljava/lang/String;
    .end local v47    # "sceneMode":I
    :pswitch_1
    const-string/jumbo v38, "auto"

    #@63c
    .restart local v38    # "modeToSet":Ljava/lang/String;
    goto/16 :goto_5

    #@63e
    .line 359
    .end local v20    # "controlMode":I
    .end local v38    # "modeToSet":Ljava/lang/String;
    .restart local v21    # "effectMode":I
    .restart local v29    # "legacyEffectMode":Ljava/lang/String;
    :cond_20
    const-string/jumbo v53, "none"

    #@641
    move-object/from16 v0, v40

    #@643
    move-object/from16 v1, v53

    #@645
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    #@648
    .line 360
    const-string/jumbo v53, "LegacyRequestMapper"

    #@64b
    new-instance v54, Ljava/lang/StringBuilder;

    #@64d
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@650
    const-string/jumbo v55, "Skipping unknown requested effect mode: "

    #@653
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@656
    move-result-object v54

    #@657
    move-object/from16 v0, v54

    #@659
    move/from16 v1, v21

    #@65b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65e
    move-result-object v54

    #@65f
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@662
    move-result-object v54

    #@663
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@666
    goto/16 :goto_6

    #@668
    .line 394
    .end local v21    # "effectMode":I
    .end local v29    # "legacyEffectMode":Ljava/lang/String;
    .restart local v33    # "location":Landroid/location/Location;
    .restart local v50    # "testPatternMode":I
    :cond_21
    const-string/jumbo v53, "LegacyRequestMapper"

    #@66b
    new-instance v54, Ljava/lang/StringBuilder;

    #@66d
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@670
    const-string/jumbo v55, "Incomplete GPS parameters provided in location "

    #@673
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@676
    move-result-object v54

    #@677
    move-object/from16 v0, v54

    #@679
    move-object/from16 v1, v33

    #@67b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67e
    move-result-object v54

    #@67f
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@682
    move-result-object v54

    #@683
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@686
    goto/16 :goto_7

    #@688
    .line 397
    :cond_22
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    #@68b
    goto/16 :goto_7

    #@68d
    .line 405
    .restart local v39    # "orientation":Ljava/lang/Integer;
    :cond_23
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    #@690
    move-result v53

    #@691
    goto/16 :goto_8

    #@693
    .line 427
    .restart local v46    # "s":Landroid/util/Size;
    .restart local v48    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_24
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getWidth()I

    #@696
    move-result v53

    #@697
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getHeight()I

    #@69a
    move-result v54

    #@69b
    .line 426
    move-object/from16 v0, v48

    #@69d
    move/from16 v1, v53

    #@69f
    move/from16 v2, v54

    #@6a1
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->containsSize(Ljava/util/List;II)Z

    #@6a4
    move-result v53

    #@6a5
    if-nez v53, :cond_14

    #@6a7
    const/16 v28, 0x1

    #@6a9
    .restart local v28    # "invalidSize":Z
    goto/16 :goto_9

    #@6ab
    .line 435
    :cond_25
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getWidth()I

    #@6ae
    move-result v53

    #@6af
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getHeight()I

    #@6b2
    move-result v54

    #@6b3
    move-object/from16 v0, v40

    #@6b5
    move/from16 v1, v53

    #@6b7
    move/from16 v2, v54

    #@6b9
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    #@6bc
    goto/16 :goto_a

    #@6be
    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static filterSupportedCaptureIntent(I)I
    .locals 3
    .param p0, "captureIntent"    # I

    #@0
    .prologue
    .line 461
    packed-switch p0, :pswitch_data_0

    #@3
    .line 474
    :goto_0
    const/4 p0, 0x1

    #@4
    .line 475
    const-string/jumbo v0, "LegacyRequestMapper"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Unknown control.captureIntent value "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 476
    const-string/jumbo v2, "; default to PREVIEW"

    #@1a
    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 479
    :pswitch_0
    return p0

    #@26
    .line 470
    :pswitch_1
    const/4 p0, 0x1

    #@27
    .line 471
    const-string/jumbo v0, "LegacyRequestMapper"

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "Unsupported control.captureIntent value "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 472
    const-string/jumbo v2, "; default to PREVIEW"

    #@3d
    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    goto :goto_0

    #@49
    .line 461
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "isSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;ZTT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 674
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p4, "allowedValue":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 676
    .local v0, "val":Ljava/lang/Object;, "TT;"
    if-nez p3, :cond_1

    #@6
    .line 677
    invoke-static {v0, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 678
    const-string/jumbo v1, "LegacyRequestMapper"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " is not supported; ignoring requested value "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 680
    :cond_0
    const/4 v1, 0x0

    #@2f
    return-object v1

    #@30
    .line 683
    :cond_1
    return-object v0
.end method

.method private static mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    .line 534
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4
    const/4 v5, 0x0

    #@5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v5

    #@9
    invoke-static {p0, v4, v5}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Ljava/lang/Integer;

    #@f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v1

    #@13
    .line 535
    .local v1, "flashMode":I
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v5

    #@19
    invoke-static {p0, v4, v5}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Ljava/lang/Integer;

    #@1f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result v0

    #@23
    .line 537
    .local v0, "aeMode":I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    #@26
    move-result-object v3

    #@27
    .line 539
    .local v3, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@28
    .line 542
    .local v2, "flashModeSetting":Ljava/lang/String;
    const-string/jumbo v4, "off"

    #@2b
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 543
    const-string/jumbo v2, "off"

    #@34
    .line 551
    .end local v2    # "flashModeSetting":Ljava/lang/String;
    :cond_0
    if-ne v0, v6, :cond_6

    #@36
    .line 552
    if-ne v1, v7, :cond_4

    #@38
    .line 553
    const-string/jumbo v4, "torch"

    #@3b
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_3

    #@41
    .line 554
    const-string/jumbo v2, "torch"

    #@44
    .line 594
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    #@46
    .line 595
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    #@49
    .line 533
    :cond_2
    return-void

    #@4a
    .line 556
    :cond_3
    const-string/jumbo v4, "LegacyRequestMapper"

    #@4d
    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == TORCH;camera does not support it"

    #@50
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    goto :goto_0

    #@54
    .line 559
    :cond_4
    if-ne v1, v6, :cond_1

    #@56
    .line 560
    const-string/jumbo v4, "on"

    #@59
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@5c
    move-result v4

    #@5d
    if-eqz v4, :cond_5

    #@5f
    .line 561
    const-string/jumbo v2, "on"

    #@62
    .local v2, "flashModeSetting":Ljava/lang/String;
    goto :goto_0

    #@63
    .line 563
    .end local v2    # "flashModeSetting":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "LegacyRequestMapper"

    #@66
    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == SINGLE;camera does not support it"

    #@69
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    goto :goto_0

    #@6d
    .line 569
    :cond_6
    const/4 v4, 0x3

    #@6e
    if-ne v0, v4, :cond_8

    #@70
    .line 570
    const-string/jumbo v4, "on"

    #@73
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_7

    #@79
    .line 571
    const-string/jumbo v2, "on"

    #@7c
    .restart local v2    # "flashModeSetting":Ljava/lang/String;
    goto :goto_0

    #@7d
    .line 573
    .end local v2    # "flashModeSetting":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "LegacyRequestMapper"

    #@80
    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_ALWAYS_FLASH;camera does not support it"

    #@83
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    goto :goto_0

    #@87
    .line 576
    :cond_8
    if-ne v0, v7, :cond_a

    #@89
    .line 577
    const-string/jumbo v4, "auto"

    #@8c
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_9

    #@92
    .line 578
    const-string/jumbo v2, "auto"

    #@95
    .restart local v2    # "flashModeSetting":Ljava/lang/String;
    goto :goto_0

    #@96
    .line 580
    .end local v2    # "flashModeSetting":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "LegacyRequestMapper"

    #@99
    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH;camera does not support it"

    #@9c
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    goto :goto_0

    #@a0
    .line 583
    :cond_a
    const/4 v4, 0x4

    #@a1
    if-ne v0, v4, :cond_1

    #@a3
    .line 584
    const-string/jumbo v4, "red-eye"

    #@a6
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@a9
    move-result v4

    #@aa
    if-eqz v4, :cond_b

    #@ac
    .line 585
    const-string/jumbo v2, "red-eye"

    #@af
    .restart local v2    # "flashModeSetting":Ljava/lang/String;
    goto :goto_0

    #@b0
    .line 587
    .end local v2    # "flashModeSetting":Ljava/lang/String;
    :cond_b
    const-string/jumbo v4, "LegacyRequestMapper"

    #@b3
    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH_REDEYE;camera does not support it"

    #@b6
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    goto :goto_0
.end method
