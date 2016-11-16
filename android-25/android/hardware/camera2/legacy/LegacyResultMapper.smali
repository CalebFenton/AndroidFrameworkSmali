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
    .line 454
    if-nez p0, :cond_0

    #@3
    .line 455
    const-string/jumbo v0, "LegacyResultMapper"

    #@6
    const-string/jumbo v1, "convertLegacyAfMode - no AF mode, default to OFF"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 456
    return v3

    #@d
    .line 459
    :cond_0
    const-string/jumbo v0, "auto"

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 461
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 459
    :cond_1
    const-string/jumbo v0, "continuous-picture"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 463
    const/4 v0, 0x4

    #@22
    return v0

    #@23
    .line 459
    :cond_2
    const-string/jumbo v0, "continuous-video"

    #@26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 465
    const/4 v0, 0x3

    #@2d
    return v0

    #@2e
    .line 459
    :cond_3
    const-string/jumbo v0, "edof"

    #@31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 467
    const/4 v0, 0x5

    #@38
    return v0

    #@39
    .line 459
    :cond_4
    const-string/jumbo v0, "macro"

    #@3c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_5

    #@42
    .line 469
    const/4 v0, 0x2

    #@43
    return v0

    #@44
    .line 459
    :cond_5
    const-string/jumbo v0, "fixed"

    #@47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_6

    #@4d
    .line 471
    return v3

    #@4e
    .line 459
    :cond_6
    const-string/jumbo v0, "infinity"

    #@51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_7

    #@57
    .line 473
    return v3

    #@58
    .line 475
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
    .line 476
    return v3
.end method

.method private static convertLegacyAwbMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 481
    if-nez p0, :cond_0

    #@3
    .line 483
    return v3

    #@4
    .line 486
    :cond_0
    const-string/jumbo v0, "auto"

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 488
    return v3

    #@e
    .line 486
    :cond_1
    const-string/jumbo v0, "incandescent"

    #@11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 490
    const/4 v0, 0x2

    #@18
    return v0

    #@19
    .line 486
    :cond_2
    const-string/jumbo v0, "fluorescent"

    #@1c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 492
    const/4 v0, 0x3

    #@23
    return v0

    #@24
    .line 486
    :cond_3
    const-string/jumbo v0, "warm-fluorescent"

    #@27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_4

    #@2d
    .line 494
    const/4 v0, 0x4

    #@2e
    return v0

    #@2f
    .line 486
    :cond_4
    const-string/jumbo v0, "daylight"

    #@32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_5

    #@38
    .line 496
    const/4 v0, 0x5

    #@39
    return v0

    #@3a
    .line 486
    :cond_5
    const-string/jumbo v0, "cloudy-daylight"

    #@3d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_6

    #@43
    .line 498
    const/4 v0, 0x6

    #@44
    return v0

    #@45
    .line 486
    :cond_6
    const-string/jumbo v0, "twilight"

    #@48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_7

    #@4e
    .line 500
    const/4 v0, 0x7

    #@4f
    return v0

    #@50
    .line 486
    :cond_7
    const-string/jumbo v0, "shade"

    #@53
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_8

    #@59
    .line 502
    const/16 v0, 0x8

    #@5b
    return v0

    #@5c
    .line 504
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
    .line 505
    return v3
.end method

.method private static convertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 18
    .param p0, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    #@0
    .prologue
    .line 112
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@4
    .line 113
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    #@8
    .line 114
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    #@c
    .line 115
    .local v12, "previewSize":Landroid/util/Size;
    move-object/from16 v0, p0

    #@e
    iget-object v6, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@10
    .line 117
    .local v6, "params":Landroid/hardware/Camera$Parameters;
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@12
    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@15
    .line 120
    .local v1, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@17
    .line 119
    invoke-virtual {v2, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Landroid/graphics/Rect;

    #@1d
    .line 122
    .local v4, "activeArraySize":Landroid/graphics/Rect;
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1f
    invoke-virtual {v3, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@22
    move-result-object v15

    #@23
    check-cast v15, Landroid/graphics/Rect;

    #@25
    .line 121
    invoke-static {v4, v15, v12, v6}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    #@28
    move-result-object v5

    #@29
    .line 129
    .local v5, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    sget-object v16, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@2b
    .line 130
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2d
    invoke-virtual {v3, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@30
    move-result-object v15

    #@31
    check-cast v15, Ljava/lang/Integer;

    #@33
    .line 129
    move-object/from16 v0, v16

    #@35
    invoke-virtual {v1, v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@38
    .line 140
    invoke-static/range {v1 .. v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    #@3b
    .line 145
    invoke-static {v1, v4, v5, v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    #@3e
    .line 150
    invoke-static {v1, v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@41
    .line 157
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@43
    .line 158
    const/16 v16, 0x1

    #@45
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v16

    #@49
    .line 156
    move-object/from16 v0, v16

    #@4b
    invoke-static {v3, v15, v0}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v15

    #@4f
    check-cast v15, Ljava/lang/Integer;

    #@51
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@54
    move-result v7

    #@55
    .line 160
    .local v7, "captureIntent":I
    invoke-static {v7}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    #@58
    move-result v7

    #@59
    .line 162
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureResult$Key;

    #@5b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v16

    #@5f
    move-object/from16 v0, v16

    #@61
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@64
    .line 169
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@66
    .line 170
    const/16 v16, 0x1

    #@68
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b
    move-result-object v16

    #@6c
    .line 169
    move-object/from16 v0, v16

    #@6e
    invoke-static {v3, v15, v0}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v15

    #@72
    check-cast v15, Ljava/lang/Integer;

    #@74
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@77
    move-result v8

    #@78
    .line 171
    .local v8, "controlMode":I
    const/4 v15, 0x2

    #@79
    if-ne v8, v15, :cond_1

    #@7b
    .line 172
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@7d
    const/16 v16, 0x2

    #@7f
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@82
    move-result-object v16

    #@83
    move-object/from16 v0, v16

    #@85
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@88
    .line 182
    :goto_0
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    #@8b
    move-result-object v10

    #@8c
    .line 183
    .local v10, "legacySceneMode":Ljava/lang/String;
    invoke-static {v10}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeFromLegacy(Ljava/lang/String;)I

    #@8f
    move-result v11

    #@90
    .line 184
    .local v11, "mode":I
    const/4 v15, -0x1

    #@91
    if-eq v11, v15, :cond_2

    #@93
    .line 185
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@95
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@98
    move-result-object v16

    #@99
    move-object/from16 v0, v16

    #@9b
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@9e
    .line 199
    :goto_1
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    #@a1
    move-result-object v9

    #@a2
    .line 200
    .local v9, "legacyEffectMode":Ljava/lang/String;
    invoke-static {v9}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeFromLegacy(Ljava/lang/String;)I

    #@a5
    move-result v11

    #@a6
    .line 201
    const/4 v15, -0x1

    #@a7
    if-eq v11, v15, :cond_3

    #@a9
    .line 202
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@ab
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ae
    move-result-object v16

    #@af
    move-object/from16 v0, v16

    #@b1
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@b4
    .line 213
    :goto_2
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    #@b7
    move-result v15

    #@b8
    if-eqz v15, :cond_4

    #@ba
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    #@bd
    move-result v15

    #@be
    if-eqz v15, :cond_4

    #@c0
    .line 214
    const/4 v14, 0x1

    #@c1
    .line 216
    .local v14, "stabMode":I
    :goto_3
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@c3
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c6
    move-result-object v16

    #@c7
    move-object/from16 v0, v16

    #@c9
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@cc
    .line 231
    const-string/jumbo v15, "infinity"

    #@cf
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    #@d2
    move-result-object v16

    #@d3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result v15

    #@d7
    if-eqz v15, :cond_0

    #@d9
    .line 232
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    #@db
    const/16 v16, 0x0

    #@dd
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e0
    move-result-object v16

    #@e1
    move-object/from16 v0, v16

    #@e3
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@e6
    .line 237
    :cond_0
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    #@e8
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    #@eb
    move-result v16

    #@ec
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@ef
    move-result-object v16

    #@f0
    move-object/from16 v0, v16

    #@f2
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@f5
    .line 243
    sget-object v16, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    #@f7
    .line 244
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@f9
    invoke-virtual {v2, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@fc
    move-result-object v15

    #@fd
    check-cast v15, Ljava/lang/Byte;

    #@ff
    .line 243
    move-object/from16 v0, v16

    #@101
    invoke-virtual {v1, v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@104
    .line 249
    invoke-static {v1, v5, v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    #@107
    .line 257
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@109
    const/16 v16, 0x0

    #@10b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10e
    move-result-object v16

    #@10f
    move-object/from16 v0, v16

    #@111
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@114
    .line 264
    sget-object v16, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    #@116
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@118
    invoke-virtual {v3, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@11b
    move-result-object v15

    #@11c
    check-cast v15, Landroid/location/Location;

    #@11e
    move-object/from16 v0, v16

    #@120
    invoke-virtual {v1, v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@123
    .line 267
    sget-object v16, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    #@125
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@127
    invoke-virtual {v3, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@12a
    move-result-object v15

    #@12b
    check-cast v15, Ljava/lang/Integer;

    #@12d
    move-object/from16 v0, v16

    #@12f
    invoke-virtual {v1, v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@132
    .line 270
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    #@134
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    #@137
    move-result v16

    #@138
    move/from16 v0, v16

    #@13a
    int-to-byte v0, v0

    #@13b
    move/from16 v16, v0

    #@13d
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@140
    move-result-object v16

    #@141
    move-object/from16 v0, v16

    #@143
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@146
    .line 273
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    #@148
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailQuality()I

    #@14b
    move-result v16

    #@14c
    move/from16 v0, v16

    #@14e
    int-to-byte v0, v0

    #@14f
    move/from16 v16, v0

    #@151
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@154
    move-result-object v16

    #@155
    move-object/from16 v0, v16

    #@157
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@15a
    .line 276
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    #@15d
    move-result-object v13

    #@15e
    .line 277
    .local v13, "s":Landroid/hardware/Camera$Size;
    if-eqz v13, :cond_5

    #@160
    .line 278
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    #@162
    invoke-static {v13}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    #@165
    move-result-object v16

    #@166
    move-object/from16 v0, v16

    #@168
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@16b
    .line 287
    :goto_4
    sget-object v16, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@16d
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@16f
    invoke-virtual {v3, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@172
    move-result-object v15

    #@173
    check-cast v15, Ljava/lang/Integer;

    #@175
    move-object/from16 v0, v16

    #@177
    invoke-virtual {v1, v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@17a
    .line 289
    return-object v1

    #@17b
    .line 174
    .end local v9    # "legacyEffectMode":Ljava/lang/String;
    .end local v10    # "legacySceneMode":Ljava/lang/String;
    .end local v11    # "mode":I
    .end local v13    # "s":Landroid/hardware/Camera$Size;
    .end local v14    # "stabMode":I
    :cond_1
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@17d
    const/16 v16, 0x1

    #@17f
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@182
    move-result-object v16

    #@183
    move-object/from16 v0, v16

    #@185
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@188
    goto/16 :goto_0

    #@18a
    .line 189
    .restart local v10    # "legacySceneMode":Ljava/lang/String;
    .restart local v11    # "mode":I
    :cond_2
    const-string/jumbo v15, "LegacyResultMapper"

    #@18d
    new-instance v16, Ljava/lang/StringBuilder;

    #@18f
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@192
    const-string/jumbo v17, "Unknown scene mode "

    #@195
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v16

    #@199
    move-object/from16 v0, v16

    #@19b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v16

    #@19f
    .line 190
    const-string/jumbo v17, " returned by camera HAL, setting to disabled."

    #@1a2
    .line 189
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v16

    #@1a6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v16

    #@1aa
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ad
    .line 191
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1af
    const/16 v16, 0x0

    #@1b1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b4
    move-result-object v16

    #@1b5
    move-object/from16 v0, v16

    #@1b7
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@1ba
    goto/16 :goto_1

    #@1bc
    .line 204
    .restart local v9    # "legacyEffectMode":Ljava/lang/String;
    :cond_3
    const-string/jumbo v15, "LegacyResultMapper"

    #@1bf
    new-instance v16, Ljava/lang/StringBuilder;

    #@1c1
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1c4
    const-string/jumbo v17, "Unknown effect mode "

    #@1c7
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v16

    #@1cb
    move-object/from16 v0, v16

    #@1cd
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v16

    #@1d1
    .line 205
    const-string/jumbo v17, " returned by camera HAL, setting to off."

    #@1d4
    .line 204
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v16

    #@1d8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1db
    move-result-object v16

    #@1dc
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1df
    .line 206
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1e1
    const/16 v16, 0x0

    #@1e3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e6
    move-result-object v16

    #@1e7
    move-object/from16 v0, v16

    #@1e9
    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@1ec
    goto/16 :goto_2

    #@1ee
    .line 215
    :cond_4
    const/4 v14, 0x0

    #@1ef
    .restart local v14    # "stabMode":I
    goto/16 :goto_3

    #@1f1
    .line 280
    .restart local v13    # "s":Landroid/hardware/Camera$Size;
    :cond_5
    const-string/jumbo v15, "LegacyResultMapper"

    #@1f4
    const-string/jumbo v16, "Null thumbnail size received from parameters."

    #@1f7
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1fa
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
    .line 386
    .local p2, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 387
    .local v2, "meteringRectList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    if-eqz p2, :cond_0

    #@7
    .line 388
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
    .line 390
    .local v0, "area":Landroid/hardware/Camera$Area;
    invoke-static {p0, p1, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    #@1a
    move-result-object v3

    #@1b
    .line 393
    .local v3, "rect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->toMetering()Landroid/hardware/camera2/params/MeteringRectangle;

    #@1e
    move-result-object v4

    #@1f
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 403
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
    .line 298
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 297
    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingModeOrDefault(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 299
    .local v0, "antiBandingMode":I
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@11
    .line 304
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
    .line 309
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
    .line 310
    :goto_0
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    #@2a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@31
    .line 317
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@33
    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Ljava/lang/Boolean;

    #@39
    .line 318
    .local v3, "requestLock":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    #@3b
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@3e
    move-result v4

    #@3f
    if-eq v4, v1, :cond_0

    #@41
    .line 319
    const-string/jumbo v4, "LegacyResultMapper"

    #@44
    .line 320
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
    .line 321
    const-string/jumbo v6, " but resulted in "

    #@57
    .line 320
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
    .line 319
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 326
    :cond_0
    invoke-static {p0, p1, p5}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/Camera$Parameters;)V

    #@69
    .line 336
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    #@6c
    move-result v4

    #@6d
    if-lez v4, :cond_1

    #@6f
    .line 343
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    #@72
    move-result-object v4

    #@73
    const-string/jumbo v5, "AE"

    #@76
    .line 342
    invoke-static {p3, p4, v4, v5}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;

    #@79
    move-result-object v2

    #@7a
    .line 345
    .local v2, "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    #@7c
    invoke-virtual {p0, v4, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@7f
    .line 294
    .end local v2    # "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_1
    return-void

    #@80
    .line 309
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
    .line 410
    const/4 v1, 0x0

    #@2
    .line 413
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
    .line 414
    const/4 v3, 0x0

    #@11
    .line 415
    :goto_0
    const/4 v0, 0x1

    #@12
    .line 417
    .local v0, "aeMode":I
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 419
    .local v2, "flashModeSetting":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@18
    .line 420
    const-string/jumbo v4, "off"

    #@1b
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 446
    :cond_0
    :goto_1
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    #@23
    invoke-virtual {p0, v4, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@26
    .line 448
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@2f
    .line 450
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@38
    .line 408
    return-void

    #@39
    .line 414
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
    .line 420
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
    .line 424
    const/4 v0, 0x2

    #@49
    .line 425
    goto :goto_1

    #@4a
    .line 420
    :cond_3
    const-string/jumbo v4, "on"

    #@4d
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_4

    #@53
    .line 428
    const/4 v1, 0x1

    #@54
    .line 429
    const/4 v0, 0x3

    #@55
    .line 430
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v3

    #@59
    .restart local v3    # "flashState":Ljava/lang/Integer;
    goto :goto_1

    #@5a
    .line 420
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
    .line 433
    const/4 v0, 0x4

    #@64
    .line 434
    goto :goto_1

    #@65
    .line 420
    :cond_5
    const-string/jumbo v4, "torch"

    #@68
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_6

    #@6e
    .line 436
    const/4 v1, 0x2

    #@6f
    .line 437
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v3

    #@73
    .restart local v3    # "flashState":Ljava/lang/Integer;
    goto :goto_1

    #@74
    .line 440
    .end local v3    # "flashState":Ljava/lang/Integer;
    :cond_6
    const-string/jumbo v4, "LegacyResultMapper"

    #@77
    .line 441
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
    .line 440
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
    .line 353
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
    .line 356
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    #@14
    move-result v1

    #@15
    if-lez v1, :cond_0

    #@17
    .line 363
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "AF"

    #@1e
    .line 362
    invoke-static {p1, p2, v1, v2}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;

    #@21
    move-result-object v0

    #@22
    .line 365
    .local v0, "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    #@24
    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@27
    .line 351
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
    .line 372
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 373
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getAutoWhiteBalanceLock()Z

    #@9
    move-result v1

    #@a
    .line 374
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    #@c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@13
    .line 379
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertLegacyAwbMode(Ljava/lang/String;)I

    #@1a
    move-result v0

    #@1b
    .line 380
    .local v0, "awbMode":I
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@24
    .line 369
    return-void

    #@25
    .line 373
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
    .line 517
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    #@2
    iget-object v1, p1, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->reportedCrop:Landroid/graphics/Rect;

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@7
    .line 512
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
    .line 71
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
    .line 70
    if-eqz v2, :cond_0

    #@10
    .line 72
    iget-object v2, p1, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    #@12
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    #@14
    iget-object v3, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    #@16
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    .line 70
    if-eqz v2, :cond_0

    #@1c
    .line 73
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@1e
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@20
    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@23
    .line 74
    .local v1, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v0, 0x1

    #@24
    .line 90
    .local v0, "cached":Z
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    #@26
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@2d
    .line 102
    return-object v1

    #@2e
    .line 76
    .end local v0    # "cached":Z
    .end local v1    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@31
    move-result-object v1

    #@32
    .line 77
    .restart local v1    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v0, 0x0

    #@33
    .line 81
    .restart local v0    # "cached":Z
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    #@35
    .line 82
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@37
    invoke-direct {v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@3a
    iput-object v2, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@3c
    goto :goto_0
.end method
