.class public Landroid/hardware/camera2/legacy/LegacyResultMapper;
.super Ljava/lang/Object;
.source "LegacyResultMapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LegacyResultMapper"


# instance fields
.field private mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 47
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    #@6
    .line 48
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@8
    .line 43
    return-void
.end method

.method private static convertLegacyAfMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 452
    if-nez p0, :cond_0

    #@3
    .line 453
    const-string/jumbo v0, "LegacyResultMapper"

    #@6
    const-string/jumbo v1, "convertLegacyAfMode - no AF mode, default to OFF"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 454
    return v3

    #@d
    .line 457
    :cond_0
    const-string/jumbo v0, "auto"

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 459
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 457
    :cond_1
    const-string/jumbo v0, "continuous-picture"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 461
    const/4 v0, 0x4

    #@22
    return v0

    #@23
    .line 457
    :cond_2
    const-string/jumbo v0, "continuous-video"

    #@26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 463
    const/4 v0, 0x3

    #@2d
    return v0

    #@2e
    .line 457
    :cond_3
    const-string/jumbo v0, "edof"

    #@31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 465
    const/4 v0, 0x5

    #@38
    return v0

    #@39
    .line 457
    :cond_4
    const-string/jumbo v0, "macro"

    #@3c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_5

    #@42
    .line 467
    const/4 v0, 0x2

    #@43
    return v0

    #@44
    .line 457
    :cond_5
    const-string/jumbo v0, "fixed"

    #@47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_6

    #@4d
    .line 469
    return v3

    #@4e
    .line 457
    :cond_6
    const-string/jumbo v0, "infinity"

    #@51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_7

    #@57
    .line 471
    return v3

    #@58
    .line 473
    :cond_7
    const-string/jumbo v0, "LegacyResultMapper"

    #@5b
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v2, "convertLegacyAfMode - unknown mode "

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    const-string/jumbo v2, " , ignoring"

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 474
    return v3
.end method

.method private static convertLegacyAwbMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 479
    if-nez p0, :cond_0

    #@3
    .line 481
    return v3

    #@4
    .line 484
    :cond_0
    const-string/jumbo v0, "auto"

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 486
    return v3

    #@e
    .line 484
    :cond_1
    const-string/jumbo v0, "incandescent"

    #@11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 488
    const/4 v0, 0x2

    #@18
    return v0

    #@19
    .line 484
    :cond_2
    const-string/jumbo v0, "fluorescent"

    #@1c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 490
    const/4 v0, 0x3

    #@23
    return v0

    #@24
    .line 484
    :cond_3
    const-string/jumbo v0, "warm-fluorescent"

    #@27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_4

    #@2d
    .line 492
    const/4 v0, 0x4

    #@2e
    return v0

    #@2f
    .line 484
    :cond_4
    const-string/jumbo v0, "daylight"

    #@32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_5

    #@38
    .line 494
    const/4 v0, 0x5

    #@39
    return v0

    #@3a
    .line 484
    :cond_5
    const-string/jumbo v0, "cloudy-daylight"

    #@3d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_6

    #@43
    .line 496
    const/4 v0, 0x6

    #@44
    return v0

    #@45
    .line 484
    :cond_6
    const-string/jumbo v0, "twilight"

    #@48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_7

    #@4e
    .line 498
    const/4 v0, 0x7

    #@4f
    return v0

    #@50
    .line 484
    :cond_7
    const-string/jumbo v0, "shade"

    #@53
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_8

    #@59
    .line 500
    const/16 v0, 0x8

    #@5b
    return v0

    #@5c
    .line 502
    :cond_8
    const-string/jumbo v0, "LegacyResultMapper"

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v2, "convertAwbMode - unrecognized WB mode "

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 503
    return v3
.end method

.method private static convertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 18
    .param p0, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    #@0
    .prologue
    .line 110
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@4
    .line 111
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    #@8
    .line 112
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    #@c
    .line 113
    .local v12, "previewSize":Landroid/util/Size;
    move-object/from16 v0, p0

    #@e
    iget-object v6, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@10
    .line 115
    .local v6, "params":Landroid/hardware/Camera$Parameters;
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@12
    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@15
    .line 118
    .local v1, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@17
    .line 117
    invoke-virtual {v2, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Landroid/graphics/Rect;

    #@1d
    .line 120
    .local v4, "activeArraySize":Landroid/graphics/Rect;
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1f
    invoke-virtual {v3, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@22
    move-result-object v15

    #@23
    check-cast v15, Landroid/graphics/Rect;

    #@25
    .line 119
    invoke-static {v4, v15, v12, v6}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    #@28
    move-result-object v5

    #@29
    .line 128
    .local v5, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@2b
    const/16 v16, 0x1

    #@2d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v16

    #@31
    move-object/from16 v0, v16

    #@33
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@36
    .line 138
    invoke-static/range {v1 .. v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    #@39
    .line 143
    invoke-static {v1, v4, v5, v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    #@3c
    .line 148
    invoke-static {v1, v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@3f
    .line 155
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@41
    .line 156
    const/16 v16, 0x1

    #@43
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v16

    #@47
    .line 154
    move-object/from16 v0, v16

    #@49
    invoke-static {v3, v15, v0}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    move-result-object v15

    #@4d
    check-cast v15, Ljava/lang/Integer;

    #@4f
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@52
    move-result v7

    #@53
    .line 158
    .local v7, "captureIntent":I
    invoke-static {v7}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    #@56
    move-result v7

    #@57
    .line 160
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureResult$Key;

    #@59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v16

    #@5d
    move-object/from16 v0, v16

    #@5f
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@62
    .line 167
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@64
    .line 168
    const/16 v16, 0x1

    #@66
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v16

    #@6a
    .line 167
    move-object/from16 v0, v16

    #@6c
    invoke-static {v3, v15, v0}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object v15

    #@70
    check-cast v15, Ljava/lang/Integer;

    #@72
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@75
    move-result v8

    #@76
    .line 169
    .local v8, "controlMode":I
    const/4 v15, 0x2

    #@77
    if-ne v8, v15, :cond_1

    #@79
    .line 170
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@7b
    const/16 v16, 0x2

    #@7d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80
    move-result-object v16

    #@81
    move-object/from16 v0, v16

    #@83
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@86
    .line 180
    :goto_0
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    #@89
    move-result-object v10

    #@8a
    .line 181
    .local v10, "legacySceneMode":Ljava/lang/String;
    invoke-static {v10}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeFromLegacy(Ljava/lang/String;)I

    #@8d
    move-result v11

    #@8e
    .line 182
    .local v11, "mode":I
    const/4 v15, -0x1

    #@8f
    if-eq v11, v15, :cond_2

    #@91
    .line 183
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@93
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@96
    move-result-object v16

    #@97
    move-object/from16 v0, v16

    #@99
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@9c
    .line 197
    :goto_1
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    #@9f
    move-result-object v9

    #@a0
    .line 198
    .local v9, "legacyEffectMode":Ljava/lang/String;
    invoke-static {v9}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeFromLegacy(Ljava/lang/String;)I

    #@a3
    move-result v11

    #@a4
    .line 199
    const/4 v15, -0x1

    #@a5
    if-eq v11, v15, :cond_3

    #@a7
    .line 200
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@a9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ac
    move-result-object v16

    #@ad
    move-object/from16 v0, v16

    #@af
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@b2
    .line 211
    :goto_2
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    #@b5
    move-result v15

    #@b6
    if-eqz v15, :cond_4

    #@b8
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    #@bb
    move-result v15

    #@bc
    if-eqz v15, :cond_4

    #@be
    .line 212
    const/4 v14, 0x1

    #@bf
    .line 214
    .local v14, "stabMode":I
    :goto_3
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@c1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c4
    move-result-object v16

    #@c5
    move-object/from16 v0, v16

    #@c7
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@ca
    .line 229
    const-string/jumbo v15, "infinity"

    #@cd
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    #@d0
    move-result-object v16

    #@d1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v15

    #@d5
    if-eqz v15, :cond_0

    #@d7
    .line 230
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    #@d9
    const/16 v16, 0x0

    #@db
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@de
    move-result-object v16

    #@df
    move-object/from16 v0, v16

    #@e1
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@e4
    .line 235
    :cond_0
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    #@e6
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    #@e9
    move-result v16

    #@ea
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@ed
    move-result-object v16

    #@ee
    move-object/from16 v0, v16

    #@f0
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@f3
    .line 241
    sget-object v16, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    #@f5
    .line 242
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@f7
    invoke-virtual {v2, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@fa
    move-result-object v15

    #@fb
    check-cast v15, Ljava/lang/Byte;

    #@fd
    .line 241
    move-object/from16 v0, v16

    #@ff
    invoke-virtual {v1, v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@102
    .line 247
    invoke-static {v1, v5, v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    #@105
    .line 255
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@107
    const/16 v16, 0x0

    #@109
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10c
    move-result-object v16

    #@10d
    move-object/from16 v0, v16

    #@10f
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@112
    .line 262
    sget-object v16, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    #@114
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@116
    invoke-virtual {v3, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@119
    move-result-object v15

    #@11a
    check-cast v15, Landroid/location/Location;

    #@11c
    move-object/from16 v0, v16

    #@11e
    invoke-virtual {v1, v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@121
    .line 265
    sget-object v16, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    #@123
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@125
    invoke-virtual {v3, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@128
    move-result-object v15

    #@129
    check-cast v15, Ljava/lang/Integer;

    #@12b
    move-object/from16 v0, v16

    #@12d
    invoke-virtual {v1, v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@130
    .line 268
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    #@132
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    #@135
    move-result v16

    #@136
    move/from16 v0, v16

    #@138
    int-to-byte v0, v0

    #@139
    move/from16 v16, v0

    #@13b
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@13e
    move-result-object v16

    #@13f
    move-object/from16 v0, v16

    #@141
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@144
    .line 271
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    #@146
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailQuality()I

    #@149
    move-result v16

    #@14a
    move/from16 v0, v16

    #@14c
    int-to-byte v0, v0

    #@14d
    move/from16 v16, v0

    #@14f
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@152
    move-result-object v16

    #@153
    move-object/from16 v0, v16

    #@155
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@158
    .line 274
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    #@15b
    move-result-object v13

    #@15c
    .line 275
    .local v13, "s":Landroid/hardware/Camera$Size;
    if-eqz v13, :cond_5

    #@15e
    .line 276
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    #@160
    invoke-static {v13}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    #@163
    move-result-object v16

    #@164
    move-object/from16 v0, v16

    #@166
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@169
    .line 285
    :goto_4
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@16b
    const/16 v16, 0x1

    #@16d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@170
    move-result-object v16

    #@171
    move-object/from16 v0, v16

    #@173
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@176
    .line 287
    return-object v1

    #@177
    .line 172
    .end local v9    # "legacyEffectMode":Ljava/lang/String;
    .end local v10    # "legacySceneMode":Ljava/lang/String;
    .end local v11    # "mode":I
    .end local v13    # "s":Landroid/hardware/Camera$Size;
    .end local v14    # "stabMode":I
    :cond_1
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@179
    const/16 v16, 0x1

    #@17b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17e
    move-result-object v16

    #@17f
    move-object/from16 v0, v16

    #@181
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@184
    goto/16 :goto_0

    #@186
    .line 187
    .restart local v10    # "legacySceneMode":Ljava/lang/String;
    .restart local v11    # "mode":I
    :cond_2
    const-string/jumbo v15, "LegacyResultMapper"

    #@189
    new-instance v16, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    const-string/jumbo v17, "Unknown scene mode "

    #@191
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v16

    #@195
    move-object/from16 v0, v16

    #@197
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v16

    #@19b
    .line 188
    const-string/jumbo v17, " returned by camera HAL, setting to disabled."

    #@19e
    .line 187
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v16

    #@1a2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v16

    #@1a6
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a9
    .line 189
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1ab
    const/16 v16, 0x0

    #@1ad
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b0
    move-result-object v16

    #@1b1
    move-object/from16 v0, v16

    #@1b3
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@1b6
    goto/16 :goto_1

    #@1b8
    .line 202
    .restart local v9    # "legacyEffectMode":Ljava/lang/String;
    :cond_3
    const-string/jumbo v15, "LegacyResultMapper"

    #@1bb
    new-instance v16, Ljava/lang/StringBuilder;

    #@1bd
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1c0
    const-string/jumbo v17, "Unknown effect mode "

    #@1c3
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v16

    #@1c7
    move-object/from16 v0, v16

    #@1c9
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v16

    #@1cd
    .line 203
    const-string/jumbo v17, " returned by camera HAL, setting to off."

    #@1d0
    .line 202
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v16

    #@1d4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v16

    #@1d8
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1db
    .line 204
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1dd
    const/16 v16, 0x0

    #@1df
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e2
    move-result-object v16

    #@1e3
    move-object/from16 v0, v16

    #@1e5
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@1e8
    goto/16 :goto_2

    #@1ea
    .line 213
    :cond_4
    const/4 v14, 0x0

    #@1eb
    .restart local v14    # "stabMode":I
    goto/16 :goto_3

    #@1ed
    .line 278
    .restart local v13    # "s":Landroid/hardware/Camera$Size;
    :cond_5
    const-string/jumbo v15, "LegacyResultMapper"

    #@1f0
    const-string/jumbo v16, "Null thumbnail size received from parameters."

    #@1f3
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f6
    goto/16 :goto_4
.end method

.method private static getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 5
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p3, "regionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/hardware/camera2/params/MeteringRectangle;"
        }
    .end annotation

    #@0
    .prologue
    .line 384
    .local p2, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 385
    .local v2, "meteringRectList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    if-eqz p2, :cond_0

    #@7
    .line 386
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "area$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/hardware/Camera$Area;

    #@17
    .line 388
    .local v0, "area":Landroid/hardware/Camera$Area;
    invoke-static {p0, p1, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    #@1a
    move-result-object v3

    #@1b
    .line 391
    .local v3, "rect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->toMetering()Landroid/hardware/camera2/params/MeteringRectangle;

    #@1e
    move-result-object v4

    #@1f
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 401
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    .end local v1    # "area$iterator":Ljava/util/Iterator;
    .end local v3    # "rect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    :cond_0
    const/4 v4, 0x0

    #@24
    new-array v4, v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    #@26
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    #@2c
    return-object v4
.end method

.method private static mapAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "activeArray"    # Landroid/graphics/Rect;
    .param p4, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p5, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 296
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 295
    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingModeOrDefault(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 297
    .local v0, "antiBandingMode":I
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@11
    .line 302
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    #@13
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    #@16
    move-result v5

    #@17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@1e
    .line 307
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_2

    #@24
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getAutoExposureLock()Z

    #@27
    move-result v1

    #@28
    .line 308
    :goto_0
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    #@2a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@31
    .line 315
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@33
    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Ljava/lang/Boolean;

    #@39
    .line 316
    .local v3, "requestLock":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    #@3b
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@3e
    move-result v4

    #@3f
    if-eq v4, v1, :cond_0

    #@41
    .line 317
    const-string/jumbo v4, "LegacyResultMapper"

    #@44
    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v6, "mapAe - android.control.aeLock was requested to "

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    .line 319
    const-string/jumbo v6, " but resulted in "

    #@57
    .line 318
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    .line 317
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 324
    :cond_0
    invoke-static {p0, p1, p5}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/Camera$Parameters;)V

    #@69
    .line 334
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    #@6c
    move-result v4

    #@6d
    if-lez v4, :cond_1

    #@6f
    .line 341
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    #@72
    move-result-object v4

    #@73
    const-string/jumbo v5, "AE"

    #@76
    .line 340
    invoke-static {p3, p4, v4, v5}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;

    #@79
    move-result-object v2

    #@7a
    .line 343
    .local v2, "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    #@7c
    invoke-virtual {p0, v4, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@7f
    .line 292
    .end local v2    # "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_1
    return-void

    #@80
    .line 307
    .end local v3    # "requestLock":Ljava/lang/Boolean;
    :cond_2
    const/4 v1, 0x0

    #@81
    .local v1, "lock":Z
    goto :goto_0
.end method

.method private static mapAeAndFlashMode(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 408
    const/4 v1, 0x0

    #@2
    .line 411
    .local v1, "flashMode":I
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@4
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@7
    move-result-object v4

    #@8
    check-cast v4, Ljava/lang/Boolean;

    #@a
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 412
    const/4 v3, 0x0

    #@11
    .line 413
    :goto_0
    const/4 v0, 0x1

    #@12
    .line 415
    .local v0, "aeMode":I
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 417
    .local v2, "flashModeSetting":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@18
    .line 418
    const-string/jumbo v4, "off"

    #@1b
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 444
    :cond_0
    :goto_1
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    #@23
    invoke-virtual {p0, v4, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@26
    .line 446
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@2f
    .line 448
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@38
    .line 406
    return-void

    #@39
    .line 412
    .end local v0    # "aeMode":I
    .end local v2    # "flashModeSetting":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    #@3a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v3

    #@3e
    .local v3, "flashState":Ljava/lang/Integer;
    goto :goto_0

    #@3f
    .line 418
    .end local v3    # "flashState":Ljava/lang/Integer;
    .restart local v0    # "aeMode":I
    .restart local v2    # "flashModeSetting":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "auto"

    #@42
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_3

    #@48
    .line 422
    const/4 v0, 0x2

    #@49
    .line 423
    goto :goto_1

    #@4a
    .line 418
    :cond_3
    const-string/jumbo v4, "on"

    #@4d
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_4

    #@53
    .line 426
    const/4 v1, 0x1

    #@54
    .line 427
    const/4 v0, 0x3

    #@55
    .line 428
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v3

    #@59
    .restart local v3    # "flashState":Ljava/lang/Integer;
    goto :goto_1

    #@5a
    .line 418
    .end local v3    # "flashState":Ljava/lang/Integer;
    :cond_4
    const-string/jumbo v4, "red-eye"

    #@5d
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_5

    #@63
    .line 431
    const/4 v0, 0x4

    #@64
    .line 432
    goto :goto_1

    #@65
    .line 418
    :cond_5
    const-string/jumbo v4, "torch"

    #@68
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_6

    #@6e
    .line 434
    const/4 v1, 0x2

    #@6f
    .line 435
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v3

    #@73
    .restart local v3    # "flashState":Ljava/lang/Integer;
    goto :goto_1

    #@74
    .line 438
    .end local v3    # "flashState":Ljava/lang/Integer;
    :cond_6
    const-string/jumbo v4, "LegacyResultMapper"

    #@77
    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v6, "mapAeAndFlashMode - Ignoring unknown flash mode "

    #@7f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    .line 438
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    goto :goto_1
.end method

.method private static mapAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p3, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 351
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@2
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertLegacyAfMode(Ljava/lang/String;)I

    #@9
    move-result v2

    #@a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@11
    .line 354
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    #@14
    move-result v1

    #@15
    if-lez v1, :cond_0

    #@17
    .line 361
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "AF"

    #@1e
    .line 360
    invoke-static {p1, p2, v1, v2}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;

    #@21
    move-result-object v0

    #@22
    .line 363
    .local v0, "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    #@24
    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@27
    .line 349
    .end local v0    # "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_0
    return-void
.end method

.method private static mapAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 371
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getAutoWhiteBalanceLock()Z

    #@9
    move-result v1

    #@a
    .line 372
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    #@c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@13
    .line 377
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertLegacyAwbMode(Ljava/lang/String;)I

    #@1a
    move-result v0

    #@1b
    .line 378
    .local v0, "awbMode":I
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@24
    .line 367
    return-void

    #@25
    .line 371
    .end local v0    # "awbMode":I
    :cond_0
    const/4 v1, 0x0

    #@26
    .local v1, "lock":Z
    goto :goto_0
.end method

.method private static mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 515
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    #@2
    iget-object v1, p1, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->reportedCrop:Landroid/graphics/Rect;

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@7
    .line 510
    return-void
.end method


# virtual methods
.method public cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;J)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 4
    .param p1, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;
    .param p2, "timestamp"    # J

    #@0
    .prologue
    .line 70
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p1, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@6
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    #@8
    iget-object v3, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@a
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 71
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@12
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@14
    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@17
    .line 72
    .local v1, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v0, 0x1

    #@18
    .line 88
    .local v0, "cached":Z
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    #@1a
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@21
    .line 100
    return-object v1

    #@22
    .line 74
    .end local v0    # "cached":Z
    .end local v1    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@25
    move-result-object v1

    #@26
    .line 75
    .restart local v1    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v0, 0x0

    #@27
    .line 79
    .restart local v0    # "cached":Z
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    #@29
    .line 80
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@2b
    invoke-direct {v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@2e
    iput-object v2, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@30
    goto :goto_0
.end method
