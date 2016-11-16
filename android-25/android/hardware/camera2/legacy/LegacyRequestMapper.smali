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
    .line 459
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
    .line 612
    packed-switch p0, :pswitch_data_0

    #@3
    .line 626
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 614
    :pswitch_0
    const-string/jumbo v0, "off"

    #@8
    return-object v0

    #@9
    .line 617
    :pswitch_1
    const-string/jumbo v0, "50hz"

    #@c
    return-object v0

    #@d
    .line 620
    :pswitch_2
    const-string/jumbo v0, "60hz"

    #@10
    return-object v0

    #@11
    .line 623
    :pswitch_3
    const-string/jumbo v0, "auto"

    #@14
    return-object v0

    #@15
    .line 612
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
    .line 632
    .local p0, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [I

    #@3
    .line 633
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
    .line 634
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
    .line 635
    return-object v0
.end method

.method private static convertAwbModeToLegacy(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    #@0
    .prologue
    .line 639
    packed-switch p0, :pswitch_data_0

    #@3
    .line 657
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
    .line 658
    const-string/jumbo v0, "auto"

    #@20
    return-object v0

    #@21
    .line 641
    :pswitch_0
    const-string/jumbo v0, "auto"

    #@24
    return-object v0

    #@25
    .line 643
    :pswitch_1
    const-string/jumbo v0, "incandescent"

    #@28
    return-object v0

    #@29
    .line 645
    :pswitch_2
    const-string/jumbo v0, "fluorescent"

    #@2c
    return-object v0

    #@2d
    .line 647
    :pswitch_3
    const-string/jumbo v0, "warm-fluorescent"

    #@30
    return-object v0

    #@31
    .line 649
    :pswitch_4
    const-string/jumbo v0, "daylight"

    #@34
    return-object v0

    #@35
    .line 651
    :pswitch_5
    const-string/jumbo v0, "cloudy-daylight"

    #@38
    return-object v0

    #@39
    .line 653
    :pswitch_6
    const-string/jumbo v0, "twilight"

    #@3c
    return-object v0

    #@3d
    .line 655
    :pswitch_7
    const-string/jumbo v0, "shade"

    #@40
    return-object v0

    #@41
    .line 639
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
    .line 487
    if-eqz p2, :cond_0

    #@5
    if-gtz p3, :cond_2

    #@7
    .line 488
    :cond_0
    if-lez p3, :cond_1

    #@9
    .line 489
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
    .line 491
    :cond_1
    return-object v6

    #@15
    .line 496
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    #@17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 497
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
    .line 498
    .local v5, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    #@23
    move-result v9

    #@24
    if-eqz v9, :cond_3

    #@26
    .line 499
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 497
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 503
    .end local v5    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@2f
    move-result v6

    #@30
    if-nez v6, :cond_5

    #@32
    .line 504
    const-string/jumbo v6, "LegacyRequestMapper"

    #@35
    const-string/jumbo v8, "Only received metering rectangles with weight 0."

    #@38
    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 505
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
    .line 510
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@49
    move-result v6

    #@4a
    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    #@4d
    move-result v0

    #@4e
    .line 511
    .local v0, "countMeteringAreas":I
    new-instance v2, Ljava/util/ArrayList;

    #@50
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@53
    .line 513
    .local v2, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v1, 0x0

    #@54
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    #@56
    .line 514
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Landroid/hardware/camera2/params/MeteringRectangle;

    #@5c
    .line 517
    .restart local v5    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-static {p0, v5, p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertMeteringRectangleToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;

    #@5f
    move-result-object v3

    #@60
    .line 518
    .local v3, "meteringData":Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    iget-object v6, v3, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->meteringArea:Landroid/hardware/Camera$Area;

    #@62
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@65
    .line 513
    add-int/lit8 v1, v1, 0x1

    #@67
    goto :goto_1

    #@68
    .line 521
    .end local v3    # "meteringData":Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    .end local v5    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@6b
    move-result v6

    #@6c
    if-ge p3, v6, :cond_7

    #@6e
    .line 522
    const-string/jumbo v6, "LegacyRequestMapper"

    #@71
    .line 523
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
    .line 524
    const-string/jumbo v8, " regions, ignoring all beyond the first "

    #@84
    .line 523
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
    .line 522
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 532
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
    const/16 v53, 0x2

    #@6d
    move/from16 v0, v53

    #@6f
    if-eq v6, v0, :cond_1

    #@71
    .line 94
    const-string/jumbo v53, "LegacyRequestMapper"

    #@74
    new-instance v54, Ljava/lang/StringBuilder;

    #@76
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v55, "convertRequestToMetadata - Ignoring unsupported colorCorrection.aberrationMode = "

    #@7c
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v54

    #@80
    move-object/from16 v0, v54

    #@82
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v54

    #@86
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v54

    #@8a
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 105
    :cond_1
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@8f
    move-object/from16 v0, v45

    #@91
    move-object/from16 v1, v53

    #@93
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@96
    move-result-object v13

    #@97
    check-cast v13, Ljava/lang/Integer;

    #@99
    .line 106
    .local v13, "antiBandingMode":Ljava/lang/Integer;
    if-eqz v13, :cond_19

    #@9b
    .line 107
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@9e
    move-result v53

    #@9f
    invoke-static/range {v53 .. v53}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;

    #@a2
    move-result-object v31

    #@a3
    .line 118
    .local v31, "legacyMode":Ljava/lang/String;
    :goto_0
    if-eqz v31, :cond_2

    #@a5
    .line 119
    move-object/from16 v0, v40

    #@a7
    move-object/from16 v1, v31

    #@a9
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    #@ac
    .line 130
    :cond_2
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@ae
    move-object/from16 v0, v45

    #@b0
    move-object/from16 v1, v53

    #@b2
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@b5
    move-result-object v10

    #@b6
    check-cast v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    #@b8
    .line 131
    .local v10, "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@ba
    move-object/from16 v0, v45

    #@bc
    move-object/from16 v1, v53

    #@be
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@c1
    move-result-object v53

    #@c2
    if-eqz v53, :cond_3

    #@c4
    .line 132
    const-string/jumbo v53, "LegacyRequestMapper"

    #@c7
    const-string/jumbo v54, "convertRequestMetadata - control.awbRegions setting is not supported, ignoring value"

    #@ca
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@cd
    .line 135
    :cond_3
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    #@d0
    move-result v35

    #@d1
    .line 138
    .local v35, "maxNumMeteringAreas":I
    const-string/jumbo v53, "AE"

    #@d4
    .line 136
    move-object/from16 v0, v52

    #@d6
    move/from16 v1, v35

    #@d8
    move-object/from16 v2, v53

    #@da
    invoke-static {v7, v0, v10, v1, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    #@dd
    move-result-object v36

    #@de
    .line 141
    .local v36, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-lez v35, :cond_4

    #@e0
    .line 142
    move-object/from16 v0, v40

    #@e2
    move-object/from16 v1, v36

    #@e4
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    #@e7
    .line 148
    :cond_4
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@e9
    move-object/from16 v0, v45

    #@eb
    move-object/from16 v1, v53

    #@ed
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@f0
    move-result-object v12

    #@f1
    check-cast v12, [Landroid/hardware/camera2/params/MeteringRectangle;

    #@f3
    .line 149
    .local v12, "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    #@f6
    move-result v34

    #@f7
    .line 152
    .local v34, "maxNumFocusAreas":I
    const-string/jumbo v53, "AF"

    #@fa
    .line 150
    move-object/from16 v0, v52

    #@fc
    move/from16 v1, v34

    #@fe
    move-object/from16 v2, v53

    #@100
    invoke-static {v7, v0, v12, v1, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    #@103
    move-result-object v22

    #@104
    .line 155
    .local v22, "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-lez v34, :cond_5

    #@106
    .line 156
    move-object/from16 v0, v40

    #@108
    move-object/from16 v1, v22

    #@10a
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    #@10d
    .line 162
    :cond_5
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@10f
    move-object/from16 v0, v45

    #@111
    move-object/from16 v1, v53

    #@113
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@116
    move-result-object v8

    #@117
    check-cast v8, Landroid/util/Range;

    #@119
    .line 163
    .local v8, "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_8

    #@11b
    .line 164
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeFpsRangeToLegacy(Landroid/util/Range;)[I

    #@11e
    move-result-object v30

    #@11f
    .line 166
    .local v30, "legacyFps":[I
    const/16 v44, 0x0

    #@121
    .line 167
    .local v44, "rangeToApply":[I
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    #@124
    move-result-object v53

    #@125
    invoke-interface/range {v53 .. v53}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@128
    move-result-object v43

    #@129
    .local v43, "range$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    #@12c
    move-result v53

    #@12d
    if-eqz v53, :cond_7

    #@12f
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@132
    move-result-object v42

    #@133
    check-cast v42, [I

    #@135
    .line 169
    .local v42, "range":[I
    const/16 v53, 0x0

    #@137
    aget v53, v42, v53

    #@139
    move/from16 v0, v53

    #@13b
    int-to-double v0, v0

    #@13c
    move-wide/from16 v54, v0

    #@13e
    const-wide v56, 0x408f400000000000L    # 1000.0

    #@143
    div-double v54, v54, v56

    #@145
    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->floor(D)D

    #@148
    move-result-wide v54

    #@149
    move-wide/from16 v0, v54

    #@14b
    double-to-int v0, v0

    #@14c
    move/from16 v53, v0

    #@14e
    move/from16 v0, v53

    #@150
    mul-int/lit16 v0, v0, 0x3e8

    #@152
    move/from16 v27, v0

    #@154
    .line 170
    .local v27, "intRangeLow":I
    const/16 v53, 0x1

    #@156
    aget v53, v42, v53

    #@158
    move/from16 v0, v53

    #@15a
    int-to-double v0, v0

    #@15b
    move-wide/from16 v54, v0

    #@15d
    const-wide v56, 0x408f400000000000L    # 1000.0

    #@162
    div-double v54, v54, v56

    #@164
    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->ceil(D)D

    #@167
    move-result-wide v54

    #@168
    move-wide/from16 v0, v54

    #@16a
    double-to-int v0, v0

    #@16b
    move/from16 v53, v0

    #@16d
    move/from16 v0, v53

    #@16f
    mul-int/lit16 v0, v0, 0x3e8

    #@171
    move/from16 v26, v0

    #@173
    .line 171
    .local v26, "intRangeHigh":I
    const/16 v53, 0x0

    #@175
    aget v53, v30, v53

    #@177
    move/from16 v0, v53

    #@179
    move/from16 v1, v27

    #@17b
    if-ne v0, v1, :cond_6

    #@17d
    const/16 v53, 0x1

    #@17f
    aget v53, v30, v53

    #@181
    move/from16 v0, v53

    #@183
    move/from16 v1, v26

    #@185
    if-ne v0, v1, :cond_6

    #@187
    .line 172
    move-object/from16 v44, v42

    #@189
    .line 176
    .end local v26    # "intRangeHigh":I
    .end local v27    # "intRangeLow":I
    .end local v42    # "range":[I
    .end local v44    # "rangeToApply":[I
    :cond_7
    if-eqz v44, :cond_1a

    #@18b
    .line 177
    const/16 v53, 0x0

    #@18d
    aget v53, v44, v53

    #@18f
    .line 178
    const/16 v54, 0x1

    #@191
    aget v54, v44, v54

    #@193
    .line 177
    move-object/from16 v0, v40

    #@195
    move/from16 v1, v53

    #@197
    move/from16 v2, v54

    #@199
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    #@19c
    .line 191
    .end local v30    # "legacyFps":[I
    .end local v43    # "range$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    sget-object v53, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@19e
    move-object/from16 v0, v17

    #@1a0
    move-object/from16 v1, v53

    #@1a2
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@1a5
    move-result-object v19

    #@1a6
    check-cast v19, Landroid/util/Range;

    #@1a8
    .line 193
    .local v19, "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1aa
    .line 194
    const/16 v54, 0x0

    #@1ac
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1af
    move-result-object v54

    #@1b0
    .line 192
    move-object/from16 v0, v45

    #@1b2
    move-object/from16 v1, v53

    #@1b4
    move-object/from16 v2, v54

    #@1b6
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b9
    move-result-object v53

    #@1ba
    check-cast v53, Ljava/lang/Integer;

    #@1bc
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@1bf
    move-result v18

    #@1c0
    .line 196
    .local v18, "compensation":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c3
    move-result-object v53

    #@1c4
    move-object/from16 v0, v19

    #@1c6
    move-object/from16 v1, v53

    #@1c8
    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@1cb
    move-result v53

    #@1cc
    if-nez v53, :cond_9

    #@1ce
    .line 197
    const-string/jumbo v53, "LegacyRequestMapper"

    #@1d1
    .line 198
    const-string/jumbo v54, "convertRequestMetadata - control.aeExposureCompensation is out of range, ignoring value"

    #@1d4
    .line 197
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d7
    .line 200
    const/16 v18, 0x0

    #@1d9
    .line 203
    :cond_9
    move-object/from16 v0, v40

    #@1db
    move/from16 v1, v18

    #@1dd
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    #@1e0
    .line 208
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1e2
    const/16 v54, 0x0

    #@1e4
    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e7
    move-result-object v54

    #@1e8
    .line 209
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    #@1eb
    move-result v55

    #@1ec
    .line 210
    const/16 v56, 0x0

    #@1ee
    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1f1
    move-result-object v56

    #@1f2
    .line 208
    move-object/from16 v0, v45

    #@1f4
    move-object/from16 v1, v53

    #@1f6
    move-object/from16 v2, v54

    #@1f8
    move/from16 v3, v55

    #@1fa
    move-object/from16 v4, v56

    #@1fc
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    #@1ff
    move-result-object v9

    #@200
    check-cast v9, Ljava/lang/Boolean;

    #@202
    .line 212
    .local v9, "aeLock":Ljava/lang/Boolean;
    if-eqz v9, :cond_a

    #@204
    .line 213
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    #@207
    move-result v53

    #@208
    move-object/from16 v0, v40

    #@20a
    move/from16 v1, v53

    #@20c
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    #@20f
    .line 224
    :cond_a
    move-object/from16 v0, v45

    #@211
    move-object/from16 v1, v40

    #@213
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    #@216
    .line 228
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@218
    .line 229
    const/16 v54, 0x0

    #@21a
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21d
    move-result-object v54

    #@21e
    .line 228
    move-object/from16 v0, v45

    #@220
    move-object/from16 v1, v53

    #@222
    move-object/from16 v2, v54

    #@224
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@227
    move-result-object v53

    #@228
    check-cast v53, Ljava/lang/Integer;

    #@22a
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@22d
    move-result v11

    #@22e
    .line 231
    .local v11, "afMode":I
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    #@231
    move-result-object v53

    #@232
    .line 230
    move-object/from16 v0, v53

    #@234
    invoke-static {v11, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;

    #@237
    move-result-object v24

    #@238
    .line 233
    .local v24, "focusMode":Ljava/lang/String;
    if-eqz v24, :cond_b

    #@23a
    .line 234
    move-object/from16 v0, v40

    #@23c
    move-object/from16 v1, v24

    #@23e
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    #@241
    .line 245
    :cond_b
    sget-object v54, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@243
    .line 246
    const/16 v53, 0x1

    #@245
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@248
    move-result-object v55

    #@249
    .line 247
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    #@24c
    move-result-object v53

    #@24d
    if-eqz v53, :cond_1b

    #@24f
    const/16 v53, 0x1

    #@251
    .line 248
    :goto_2
    const/16 v56, 0x1

    #@253
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@256
    move-result-object v56

    #@257
    .line 245
    move-object/from16 v0, v45

    #@259
    move-object/from16 v1, v54

    #@25b
    move-object/from16 v2, v55

    #@25d
    move/from16 v3, v53

    #@25f
    move-object/from16 v4, v56

    #@261
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    #@264
    move-result-object v15

    #@265
    check-cast v15, Ljava/lang/Integer;

    #@267
    .line 250
    .local v15, "awbMode":Ljava/lang/Integer;
    const/16 v51, 0x0

    #@269
    .line 251
    .local v51, "whiteBalanceMode":Ljava/lang/String;
    if-eqz v15, :cond_c

    #@26b
    .line 252
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@26e
    move-result v53

    #@26f
    invoke-static/range {v53 .. v53}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAwbModeToLegacy(I)Ljava/lang/String;

    #@272
    move-result-object v51

    #@273
    .line 253
    .local v51, "whiteBalanceMode":Ljava/lang/String;
    move-object/from16 v0, v40

    #@275
    move-object/from16 v1, v51

    #@277
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    #@27a
    .line 264
    .end local v51    # "whiteBalanceMode":Ljava/lang/String;
    :cond_c
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@27c
    const/16 v54, 0x0

    #@27e
    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@281
    move-result-object v54

    #@282
    .line 265
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    #@285
    move-result v55

    #@286
    .line 266
    const/16 v56, 0x0

    #@288
    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@28b
    move-result-object v56

    #@28c
    .line 264
    move-object/from16 v0, v45

    #@28e
    move-object/from16 v1, v53

    #@290
    move-object/from16 v2, v54

    #@292
    move/from16 v3, v55

    #@294
    move-object/from16 v4, v56

    #@296
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    #@299
    move-result-object v14

    #@29a
    check-cast v14, Ljava/lang/Boolean;

    #@29c
    .line 268
    .local v14, "awbLock":Ljava/lang/Boolean;
    if-eqz v14, :cond_d

    #@29e
    .line 269
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    #@2a1
    move-result v53

    #@2a2
    move-object/from16 v0, v40

    #@2a4
    move/from16 v1, v53

    #@2a6
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    #@2a9
    .line 278
    :cond_d
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2ab
    .line 279
    const/16 v54, 0x1

    #@2ad
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b0
    move-result-object v54

    #@2b1
    .line 277
    move-object/from16 v0, v45

    #@2b3
    move-object/from16 v1, v53

    #@2b5
    move-object/from16 v2, v54

    #@2b7
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ba
    move-result-object v53

    #@2bb
    check-cast v53, Ljava/lang/Integer;

    #@2bd
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@2c0
    move-result v16

    #@2c1
    .line 281
    .local v16, "captureIntent":I
    invoke-static/range {v16 .. v16}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    #@2c4
    move-result v16

    #@2c5
    .line 284
    const/16 v53, 0x3

    #@2c7
    move/from16 v0, v16

    #@2c9
    move/from16 v1, v53

    #@2cb
    if-eq v0, v1, :cond_1c

    #@2cd
    .line 285
    const/16 v53, 0x4

    #@2cf
    move/from16 v0, v16

    #@2d1
    move/from16 v1, v53

    #@2d3
    if-ne v0, v1, :cond_1d

    #@2d5
    const/16 v53, 0x1

    #@2d7
    .line 283
    :goto_3
    move-object/from16 v0, v40

    #@2d9
    move/from16 v1, v53

    #@2db
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    #@2de
    .line 290
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2e0
    .line 291
    const/16 v54, 0x0

    #@2e2
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e5
    move-result-object v54

    #@2e6
    .line 292
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    #@2e9
    move-result v55

    #@2ea
    .line 293
    const/16 v56, 0x0

    #@2ec
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2ef
    move-result-object v56

    #@2f0
    .line 290
    move-object/from16 v0, v45

    #@2f2
    move-object/from16 v1, v53

    #@2f4
    move-object/from16 v2, v54

    #@2f6
    move/from16 v3, v55

    #@2f8
    move-object/from16 v4, v56

    #@2fa
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    #@2fd
    move-result-object v49

    #@2fe
    check-cast v49, Ljava/lang/Integer;

    #@300
    .line 295
    .local v49, "stabMode":Ljava/lang/Integer;
    if-eqz v49, :cond_e

    #@302
    .line 296
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    #@305
    move-result v53

    #@306
    const/16 v54, 0x1

    #@308
    move/from16 v0, v53

    #@30a
    move/from16 v1, v54

    #@30c
    if-ne v0, v1, :cond_1e

    #@30e
    const/16 v53, 0x1

    #@310
    :goto_4
    move-object/from16 v0, v40

    #@312
    move/from16 v1, v53

    #@314
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    #@317
    .line 303
    :cond_e
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    #@31a
    move-result-object v53

    #@31b
    .line 304
    const-string/jumbo v54, "infinity"

    #@31e
    .line 303
    invoke-static/range {v53 .. v54}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@321
    move-result v25

    #@322
    .line 305
    .local v25, "infinityFocusSupported":Z
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@324
    .line 306
    const/16 v54, 0x0

    #@326
    invoke-static/range {v54 .. v54}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@329
    move-result-object v54

    #@32a
    const/16 v55, 0x0

    #@32c
    invoke-static/range {v55 .. v55}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@32f
    move-result-object v55

    #@330
    .line 305
    move-object/from16 v0, v45

    #@332
    move-object/from16 v1, v53

    #@334
    move-object/from16 v2, v54

    #@336
    move/from16 v3, v25

    #@338
    move-object/from16 v4, v55

    #@33a
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    #@33d
    move-result-object v23

    #@33e
    check-cast v23, Ljava/lang/Float;

    #@340
    .line 308
    .local v23, "focusDistance":Ljava/lang/Float;
    if-eqz v23, :cond_f

    #@342
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    #@345
    move-result v53

    #@346
    const/16 v54, 0x0

    #@348
    cmpl-float v53, v53, v54

    #@34a
    if-eqz v53, :cond_10

    #@34c
    .line 309
    :cond_f
    const-string/jumbo v53, "LegacyRequestMapper"

    #@34f
    .line 310
    new-instance v54, Ljava/lang/StringBuilder;

    #@351
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@354
    const-string/jumbo v55, "convertRequestToMetadata - Ignoring android.lens.focusDistance "

    #@357
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35a
    move-result-object v54

    #@35b
    move-object/from16 v0, v54

    #@35d
    move/from16 v1, v25

    #@35f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@362
    move-result-object v54

    #@363
    .line 311
    const-string/jumbo v55, ", only 0.0f is supported"

    #@366
    .line 310
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@369
    move-result-object v54

    #@36a
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36d
    move-result-object v54

    #@36e
    .line 309
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@371
    .line 319
    :cond_10
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    #@374
    move-result-object v53

    #@375
    if-eqz v53, :cond_11

    #@377
    .line 320
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@379
    .line 321
    const/16 v54, 0x1

    #@37b
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37e
    move-result-object v54

    #@37f
    .line 320
    move-object/from16 v0, v45

    #@381
    move-object/from16 v1, v53

    #@383
    move-object/from16 v2, v54

    #@385
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@388
    move-result-object v53

    #@389
    check-cast v53, Ljava/lang/Integer;

    #@38b
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@38e
    move-result v20

    #@38f
    .line 323
    .local v20, "controlMode":I
    packed-switch v20, :pswitch_data_0

    #@392
    .line 342
    const-string/jumbo v53, "LegacyRequestMapper"

    #@395
    new-instance v54, Ljava/lang/StringBuilder;

    #@397
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@39a
    const-string/jumbo v55, "Control mode "

    #@39d
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a0
    move-result-object v54

    #@3a1
    move-object/from16 v0, v54

    #@3a3
    move/from16 v1, v20

    #@3a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a8
    move-result-object v54

    #@3a9
    .line 343
    const-string/jumbo v55, " is unsupported, defaulting to AUTO"

    #@3ac
    .line 342
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3af
    move-result-object v54

    #@3b0
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b3
    move-result-object v54

    #@3b4
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b7
    .line 344
    const-string/jumbo v38, "auto"

    #@3ba
    .line 347
    .local v38, "modeToSet":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v40

    #@3bc
    move-object/from16 v1, v38

    #@3be
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    #@3c1
    .line 353
    .end local v20    # "controlMode":I
    .end local v38    # "modeToSet":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    #@3c4
    move-result-object v53

    #@3c5
    if-eqz v53, :cond_12

    #@3c7
    .line 354
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@3c9
    .line 355
    const/16 v54, 0x0

    #@3cb
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3ce
    move-result-object v54

    #@3cf
    .line 354
    move-object/from16 v0, v45

    #@3d1
    move-object/from16 v1, v53

    #@3d3
    move-object/from16 v2, v54

    #@3d5
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d8
    move-result-object v53

    #@3d9
    check-cast v53, Ljava/lang/Integer;

    #@3db
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@3de
    move-result v21

    #@3df
    .line 356
    .local v21, "effectMode":I
    invoke-static/range {v21 .. v21}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeToLegacy(I)Ljava/lang/String;

    #@3e2
    move-result-object v29

    #@3e3
    .line 357
    .local v29, "legacyEffectMode":Ljava/lang/String;
    if-eqz v29, :cond_20

    #@3e5
    .line 358
    move-object/from16 v0, v40

    #@3e7
    move-object/from16 v1, v29

    #@3e9
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    #@3ec
    .line 372
    .end local v21    # "effectMode":I
    .end local v29    # "legacyEffectMode":Ljava/lang/String;
    :cond_12
    :goto_6
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@3ee
    .line 373
    const/16 v54, 0x0

    #@3f0
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f3
    move-result-object v54

    #@3f4
    .line 372
    move-object/from16 v0, v45

    #@3f6
    move-object/from16 v1, v53

    #@3f8
    move-object/from16 v2, v54

    #@3fa
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@3fd
    move-result-object v53

    #@3fe
    check-cast v53, Ljava/lang/Integer;

    #@400
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@403
    move-result v50

    #@404
    .line 374
    .local v50, "testPatternMode":I
    if-eqz v50, :cond_13

    #@406
    .line 375
    const-string/jumbo v53, "LegacyRequestMapper"

    #@409
    new-instance v54, Ljava/lang/StringBuilder;

    #@40b
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@40e
    const-string/jumbo v55, "convertRequestToMetadata - ignoring sensor.testPatternMode "

    #@411
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@414
    move-result-object v54

    #@415
    move-object/from16 v0, v54

    #@417
    move/from16 v1, v50

    #@419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41c
    move-result-object v54

    #@41d
    .line 376
    const-string/jumbo v55, "; only OFF is supported"

    #@420
    .line 375
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@423
    move-result-object v54

    #@424
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@427
    move-result-object v54

    #@428
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42b
    .line 386
    :cond_13
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@42d
    move-object/from16 v0, v45

    #@42f
    move-object/from16 v1, v53

    #@431
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@434
    move-result-object v33

    #@435
    check-cast v33, Landroid/location/Location;

    #@437
    .line 387
    .local v33, "location":Landroid/location/Location;
    if-eqz v33, :cond_22

    #@439
    .line 388
    invoke-static/range {v33 .. v33}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->checkForCompleteGpsData(Landroid/location/Location;)Z

    #@43c
    move-result v53

    #@43d
    if-eqz v53, :cond_21

    #@43f
    .line 389
    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getAltitude()D

    #@442
    move-result-wide v54

    #@443
    move-object/from16 v0, v40

    #@445
    move-wide/from16 v1, v54

    #@447
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    #@44a
    .line 390
    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getLatitude()D

    #@44d
    move-result-wide v54

    #@44e
    move-object/from16 v0, v40

    #@450
    move-wide/from16 v1, v54

    #@452
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    #@455
    .line 391
    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getLongitude()D

    #@458
    move-result-wide v54

    #@459
    move-object/from16 v0, v40

    #@45b
    move-wide/from16 v1, v54

    #@45d
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    #@460
    .line 392
    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    #@463
    move-result-object v53

    #@464
    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@467
    move-result-object v53

    #@468
    move-object/from16 v0, v40

    #@46a
    move-object/from16 v1, v53

    #@46c
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    #@46f
    .line 393
    invoke-virtual/range {v33 .. v33}, Landroid/location/Location;->getTime()J

    #@472
    move-result-wide v54

    #@473
    move-object/from16 v0, v40

    #@475
    move-wide/from16 v1, v54

    #@477
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    #@47a
    .line 404
    :goto_7
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@47c
    move-object/from16 v0, v45

    #@47e
    move-object/from16 v1, v53

    #@480
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@483
    move-result-object v39

    #@484
    check-cast v39, Ljava/lang/Integer;

    #@486
    .line 405
    .local v39, "orientation":Ljava/lang/Integer;
    sget-object v54, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@488
    .line 406
    if-nez v39, :cond_23

    #@48a
    const/16 v53, 0x0

    #@48c
    :goto_8
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48f
    move-result-object v53

    #@490
    .line 405
    move-object/from16 v0, v45

    #@492
    move-object/from16 v1, v54

    #@494
    move-object/from16 v2, v53

    #@496
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@499
    move-result-object v53

    #@49a
    check-cast v53, Ljava/lang/Integer;

    #@49c
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@49f
    move-result v53

    #@4a0
    move-object/from16 v0, v40

    #@4a2
    move/from16 v1, v53

    #@4a4
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    #@4a7
    .line 411
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4a9
    .line 412
    const/16 v54, 0x55

    #@4ab
    invoke-static/range {v54 .. v54}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@4ae
    move-result-object v54

    #@4af
    .line 411
    move-object/from16 v0, v45

    #@4b1
    move-object/from16 v1, v53

    #@4b3
    move-object/from16 v2, v54

    #@4b5
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b8
    move-result-object v53

    #@4b9
    check-cast v53, Ljava/lang/Byte;

    #@4bb
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Byte;->byteValue()B

    #@4be
    move-result v53

    #@4bf
    move/from16 v0, v53

    #@4c1
    and-int/lit16 v0, v0, 0xff

    #@4c3
    move/from16 v53, v0

    #@4c5
    move-object/from16 v0, v40

    #@4c7
    move/from16 v1, v53

    #@4c9
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    #@4cc
    .line 418
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4ce
    const/16 v54, 0x55

    #@4d0
    invoke-static/range {v54 .. v54}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@4d3
    move-result-object v54

    #@4d4
    .line 417
    move-object/from16 v0, v45

    #@4d6
    move-object/from16 v1, v53

    #@4d8
    move-object/from16 v2, v54

    #@4da
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@4dd
    move-result-object v53

    #@4de
    check-cast v53, Ljava/lang/Byte;

    #@4e0
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Byte;->byteValue()B

    #@4e3
    move-result v53

    #@4e4
    move/from16 v0, v53

    #@4e6
    and-int/lit16 v0, v0, 0xff

    #@4e8
    move/from16 v53, v0

    #@4ea
    move-object/from16 v0, v40

    #@4ec
    move/from16 v1, v53

    #@4ee
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    #@4f1
    .line 423
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    #@4f4
    move-result-object v48

    #@4f5
    .line 425
    .local v48, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v48, :cond_17

    #@4f7
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    #@4fa
    move-result v53

    #@4fb
    if-lez v53, :cond_17

    #@4fd
    .line 426
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4ff
    move-object/from16 v0, v45

    #@501
    move-object/from16 v1, v53

    #@503
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@506
    move-result-object v46

    #@507
    check-cast v46, Landroid/util/Size;

    #@509
    .line 427
    .local v46, "s":Landroid/util/Size;
    if-nez v46, :cond_24

    #@50b
    :cond_14
    const/16 v28, 0x0

    #@50d
    .line 429
    .local v28, "invalidSize":Z
    :goto_9
    if-eqz v28, :cond_15

    #@50f
    .line 430
    const-string/jumbo v53, "LegacyRequestMapper"

    #@512
    new-instance v54, Ljava/lang/StringBuilder;

    #@514
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@517
    const-string/jumbo v55, "Invalid JPEG thumbnail size set "

    #@51a
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51d
    move-result-object v54

    #@51e
    move-object/from16 v0, v54

    #@520
    move-object/from16 v1, v46

    #@522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@525
    move-result-object v54

    #@526
    const-string/jumbo v55, ", skipping thumbnail..."

    #@529
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52c
    move-result-object v54

    #@52d
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@530
    move-result-object v54

    #@531
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@534
    .line 432
    :cond_15
    if-eqz v46, :cond_16

    #@536
    if-eqz v28, :cond_25

    #@538
    .line 434
    :cond_16
    const/16 v53, 0x0

    #@53a
    const/16 v54, 0x0

    #@53c
    move-object/from16 v0, v40

    #@53e
    move/from16 v1, v53

    #@540
    move/from16 v2, v54

    #@542
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    #@545
    .line 447
    .end local v28    # "invalidSize":Z
    .end local v46    # "s":Landroid/util/Size;
    :cond_17
    :goto_a
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@547
    .line 448
    const/16 v54, 0x1

    #@549
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54c
    move-result-object v54

    #@54d
    .line 446
    move-object/from16 v0, v45

    #@54f
    move-object/from16 v1, v53

    #@551
    move-object/from16 v2, v54

    #@553
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@556
    move-result-object v53

    #@557
    check-cast v53, Ljava/lang/Integer;

    #@559
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@55c
    move-result v37

    #@55d
    .line 450
    .local v37, "mode":I
    const/16 v53, 0x1

    #@55f
    move/from16 v0, v37

    #@561
    move/from16 v1, v53

    #@563
    if-eq v0, v1, :cond_18

    #@565
    .line 451
    const/16 v53, 0x2

    #@567
    move/from16 v0, v37

    #@569
    move/from16 v1, v53

    #@56b
    if-eq v0, v1, :cond_18

    #@56d
    .line 452
    const-string/jumbo v53, "LegacyRequestMapper"

    #@570
    new-instance v54, Ljava/lang/StringBuilder;

    #@572
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@575
    const-string/jumbo v55, "convertRequestToMetadata - Ignoring unsupported noiseReduction.mode = "

    #@578
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57b
    move-result-object v54

    #@57c
    move-object/from16 v0, v54

    #@57e
    move/from16 v1, v37

    #@580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@583
    move-result-object v54

    #@584
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@587
    move-result-object v54

    #@588
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58b
    .line 58
    :cond_18
    return-void

    #@58c
    .line 109
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

    #@58f
    move-result-object v53

    #@590
    .line 110
    const/16 v54, 0x4

    #@592
    move/from16 v0, v54

    #@594
    new-array v0, v0, [Ljava/lang/String;

    #@596
    move-object/from16 v54, v0

    #@598
    .line 111
    const-string/jumbo v55, "auto"

    #@59b
    const/16 v56, 0x0

    #@59d
    aput-object v55, v54, v56

    #@59f
    .line 112
    const-string/jumbo v55, "off"

    #@5a2
    const/16 v56, 0x1

    #@5a4
    aput-object v55, v54, v56

    #@5a6
    .line 113
    const-string/jumbo v55, "50hz"

    #@5a9
    const/16 v56, 0x2

    #@5ab
    aput-object v55, v54, v56

    #@5ad
    .line 114
    const-string/jumbo v55, "60hz"

    #@5b0
    const/16 v56, 0x3

    #@5b2
    aput-object v55, v54, v56

    #@5b4
    .line 109
    invoke-static/range {v53 .. v54}, Landroid/hardware/camera2/utils/ListUtils;->listSelectFirstFrom(Ljava/util/List;[Ljava/lang/Object;)Ljava/lang/Object;

    #@5b7
    move-result-object v31

    #@5b8
    check-cast v31, Ljava/lang/String;

    #@5ba
    .restart local v31    # "legacyMode":Ljava/lang/String;
    goto/16 :goto_0

    #@5bc
    .line 180
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

    #@5bf
    new-instance v54, Ljava/lang/StringBuilder;

    #@5c1
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@5c4
    const-string/jumbo v55, "Unsupported FPS range set ["

    #@5c7
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ca
    move-result-object v54

    #@5cb
    const/16 v55, 0x0

    #@5cd
    aget v55, v30, v55

    #@5cf
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d2
    move-result-object v54

    #@5d3
    const-string/jumbo v55, ","

    #@5d6
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d9
    move-result-object v54

    #@5da
    const/16 v55, 0x1

    #@5dc
    aget v55, v30, v55

    #@5de
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e1
    move-result-object v54

    #@5e2
    const-string/jumbo v55, "]"

    #@5e5
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e8
    move-result-object v54

    #@5e9
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ec
    move-result-object v54

    #@5ed
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5f0
    goto/16 :goto_1

    #@5f2
    .line 247
    .end local v30    # "legacyFps":[I
    .end local v43    # "range$iterator":Ljava/util/Iterator;
    .restart local v9    # "aeLock":Ljava/lang/Boolean;
    .restart local v11    # "afMode":I
    .restart local v18    # "compensation":I
    .restart local v19    # "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v24    # "focusMode":Ljava/lang/String;
    :cond_1b
    const/16 v53, 0x0

    #@5f4
    goto/16 :goto_2

    #@5f6
    .line 284
    .restart local v14    # "awbLock":Ljava/lang/Boolean;
    .restart local v15    # "awbMode":Ljava/lang/Integer;
    .restart local v16    # "captureIntent":I
    :cond_1c
    const/16 v53, 0x1

    #@5f8
    goto/16 :goto_3

    #@5fa
    .line 285
    :cond_1d
    const/16 v53, 0x0

    #@5fc
    goto/16 :goto_3

    #@5fe
    .line 296
    .restart local v49    # "stabMode":Ljava/lang/Integer;
    :cond_1e
    const/16 v53, 0x0

    #@600
    goto/16 :goto_4

    #@602
    .line 325
    .restart local v20    # "controlMode":I
    .restart local v23    # "focusDistance":Ljava/lang/Float;
    .restart local v25    # "infinityFocusSupported":Z
    :pswitch_0
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@604
    .line 326
    const/16 v54, 0x0

    #@606
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@609
    move-result-object v54

    #@60a
    .line 325
    move-object/from16 v0, v45

    #@60c
    move-object/from16 v1, v53

    #@60e
    move-object/from16 v2, v54

    #@610
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@613
    move-result-object v53

    #@614
    check-cast v53, Ljava/lang/Integer;

    #@616
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    #@619
    move-result v47

    #@61a
    .line 327
    .local v47, "sceneMode":I
    invoke-static/range {v47 .. v47}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeToLegacy(I)Ljava/lang/String;

    #@61d
    move-result-object v32

    #@61e
    .line 329
    .local v32, "legacySceneMode":Ljava/lang/String;
    if-eqz v32, :cond_1f

    #@620
    .line 330
    move-object/from16 v38, v32

    #@622
    .restart local v38    # "modeToSet":Ljava/lang/String;
    goto/16 :goto_5

    #@624
    .line 332
    .end local v38    # "modeToSet":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v38, "auto"

    #@627
    .line 333
    .restart local v38    # "modeToSet":Ljava/lang/String;
    const-string/jumbo v53, "LegacyRequestMapper"

    #@62a
    new-instance v54, Ljava/lang/StringBuilder;

    #@62c
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@62f
    const-string/jumbo v55, "Skipping unknown requested scene mode: "

    #@632
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@635
    move-result-object v54

    #@636
    move-object/from16 v0, v54

    #@638
    move/from16 v1, v47

    #@63a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63d
    move-result-object v54

    #@63e
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@641
    move-result-object v54

    #@642
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@645
    goto/16 :goto_5

    #@647
    .line 338
    .end local v32    # "legacySceneMode":Ljava/lang/String;
    .end local v38    # "modeToSet":Ljava/lang/String;
    .end local v47    # "sceneMode":I
    :pswitch_1
    const-string/jumbo v38, "auto"

    #@64a
    .restart local v38    # "modeToSet":Ljava/lang/String;
    goto/16 :goto_5

    #@64c
    .line 360
    .end local v20    # "controlMode":I
    .end local v38    # "modeToSet":Ljava/lang/String;
    .restart local v21    # "effectMode":I
    .restart local v29    # "legacyEffectMode":Ljava/lang/String;
    :cond_20
    const-string/jumbo v53, "none"

    #@64f
    move-object/from16 v0, v40

    #@651
    move-object/from16 v1, v53

    #@653
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    #@656
    .line 361
    const-string/jumbo v53, "LegacyRequestMapper"

    #@659
    new-instance v54, Ljava/lang/StringBuilder;

    #@65b
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@65e
    const-string/jumbo v55, "Skipping unknown requested effect mode: "

    #@661
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@664
    move-result-object v54

    #@665
    move-object/from16 v0, v54

    #@667
    move/from16 v1, v21

    #@669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66c
    move-result-object v54

    #@66d
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@670
    move-result-object v54

    #@671
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@674
    goto/16 :goto_6

    #@676
    .line 395
    .end local v21    # "effectMode":I
    .end local v29    # "legacyEffectMode":Ljava/lang/String;
    .restart local v33    # "location":Landroid/location/Location;
    .restart local v50    # "testPatternMode":I
    :cond_21
    const-string/jumbo v53, "LegacyRequestMapper"

    #@679
    new-instance v54, Ljava/lang/StringBuilder;

    #@67b
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@67e
    const-string/jumbo v55, "Incomplete GPS parameters provided in location "

    #@681
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@684
    move-result-object v54

    #@685
    move-object/from16 v0, v54

    #@687
    move-object/from16 v1, v33

    #@689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68c
    move-result-object v54

    #@68d
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@690
    move-result-object v54

    #@691
    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@694
    goto/16 :goto_7

    #@696
    .line 398
    :cond_22
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    #@699
    goto/16 :goto_7

    #@69b
    .line 406
    .restart local v39    # "orientation":Ljava/lang/Integer;
    :cond_23
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    #@69e
    move-result v53

    #@69f
    goto/16 :goto_8

    #@6a1
    .line 428
    .restart local v46    # "s":Landroid/util/Size;
    .restart local v48    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_24
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getWidth()I

    #@6a4
    move-result v53

    #@6a5
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getHeight()I

    #@6a8
    move-result v54

    #@6a9
    .line 427
    move-object/from16 v0, v48

    #@6ab
    move/from16 v1, v53

    #@6ad
    move/from16 v2, v54

    #@6af
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->containsSize(Ljava/util/List;II)Z

    #@6b2
    move-result v53

    #@6b3
    if-nez v53, :cond_14

    #@6b5
    const/16 v28, 0x1

    #@6b7
    goto/16 :goto_9

    #@6b9
    .line 436
    .restart local v28    # "invalidSize":Z
    :cond_25
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getWidth()I

    #@6bc
    move-result v53

    #@6bd
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getHeight()I

    #@6c0
    move-result v54

    #@6c1
    move-object/from16 v0, v40

    #@6c3
    move/from16 v1, v53

    #@6c5
    move/from16 v2, v54

    #@6c7
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    #@6ca
    goto/16 :goto_a

    #@6cc
    .line 323
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
    .line 463
    packed-switch p0, :pswitch_data_0

    #@3
    .line 476
    :goto_0
    const/4 p0, 0x1

    #@4
    .line 477
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
    .line 478
    const-string/jumbo v2, "; default to PREVIEW"

    #@1a
    .line 477
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
    .line 481
    :pswitch_0
    return p0

    #@26
    .line 472
    :pswitch_1
    const/4 p0, 0x1

    #@27
    .line 473
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
    .line 474
    const-string/jumbo v2, "; default to PREVIEW"

    #@3d
    .line 473
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
    .line 463
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
    .line 676
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p4, "allowedValue":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 678
    .local v0, "val":Ljava/lang/Object;, "TT;"
    if-nez p3, :cond_1

    #@6
    .line 679
    invoke-static {v0, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 680
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
    .line 682
    :cond_0
    const/4 v1, 0x0

    #@2f
    return-object v1

    #@30
    .line 685
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
    .line 536
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
    .line 537
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
    .line 539
    .local v0, "aeMode":I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    #@26
    move-result-object v3

    #@27
    .line 541
    .local v3, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@28
    .line 544
    .local v2, "flashModeSetting":Ljava/lang/String;
    const-string/jumbo v4, "off"

    #@2b
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 545
    const-string/jumbo v2, "off"

    #@34
    .line 553
    .end local v2    # "flashModeSetting":Ljava/lang/String;
    :cond_0
    if-ne v0, v6, :cond_6

    #@36
    .line 554
    if-ne v1, v7, :cond_4

    #@38
    .line 555
    const-string/jumbo v4, "torch"

    #@3b
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_3

    #@41
    .line 556
    const-string/jumbo v2, "torch"

    #@44
    .line 596
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    #@46
    .line 597
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    #@49
    .line 535
    :cond_2
    return-void

    #@4a
    .line 558
    :cond_3
    const-string/jumbo v4, "LegacyRequestMapper"

    #@4d
    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == TORCH;camera does not support it"

    #@50
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    goto :goto_0

    #@54
    .line 561
    :cond_4
    if-ne v1, v6, :cond_1

    #@56
    .line 562
    const-string/jumbo v4, "on"

    #@59
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@5c
    move-result v4

    #@5d
    if-eqz v4, :cond_5

    #@5f
    .line 563
    const-string/jumbo v2, "on"

    #@62
    .local v2, "flashModeSetting":Ljava/lang/String;
    goto :goto_0

    #@63
    .line 565
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
    .line 571
    :cond_6
    const/4 v4, 0x3

    #@6e
    if-ne v0, v4, :cond_8

    #@70
    .line 572
    const-string/jumbo v4, "on"

    #@73
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_7

    #@79
    .line 573
    const-string/jumbo v2, "on"

    #@7c
    .restart local v2    # "flashModeSetting":Ljava/lang/String;
    goto :goto_0

    #@7d
    .line 575
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
    .line 578
    :cond_8
    if-ne v0, v7, :cond_a

    #@89
    .line 579
    const-string/jumbo v4, "auto"

    #@8c
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_9

    #@92
    .line 580
    const-string/jumbo v2, "auto"

    #@95
    .restart local v2    # "flashModeSetting":Ljava/lang/String;
    goto :goto_0

    #@96
    .line 582
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
    .line 585
    :cond_a
    const/4 v4, 0x4

    #@a1
    if-ne v0, v4, :cond_1

    #@a3
    .line 586
    const-string/jumbo v4, "red-eye"

    #@a6
    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    #@a9
    move-result v4

    #@aa
    if-eqz v4, :cond_b

    #@ac
    .line 587
    const-string/jumbo v2, "red-eye"

    #@af
    .restart local v2    # "flashModeSetting":Ljava/lang/String;
    goto :goto_0

    #@b0
    .line 589
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
