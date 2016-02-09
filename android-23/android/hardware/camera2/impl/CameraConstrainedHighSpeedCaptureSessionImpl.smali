.class public Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;
.super Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;
.source "CameraConstrainedHighSpeedCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraCaptureSessionCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl$WrapperCallback;
    }
.end annotation


# instance fields
.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method constructor <init>(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;ZLandroid/hardware/camera2/CameraCharacteristics;)V
    .locals 10
    .param p1, "id"    # I
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "stateHandler"    # Landroid/os/Handler;
    .param p5, "deviceImpl"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p6, "deviceStateHandler"    # Landroid/os/Handler;
    .param p7, "configureSuccess"    # Z
    .param p8, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl;",
            "Landroid/os/Handler;",
            "Z",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;-><init>()V

    #@3
    .line 65
    move-object/from16 v0, p8

    #@5
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@7
    .line 66
    new-instance v5, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl$WrapperCallback;

    #@9
    invoke-direct {v5, p0, p3}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl$WrapperCallback;-><init>(Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    #@c
    .line 67
    .local v5, "wrapperCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    new-instance v1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@e
    const/4 v3, 0x0

    #@f
    move v2, p1

    #@10
    move-object v4, p2

    #@11
    move-object v6, p4

    #@12
    move-object v7, p5

    #@13
    move-object/from16 v8, p6

    #@15
    move/from16 v9, p7

    #@17
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V

    #@1a
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@1c
    .line 64
    return-void
.end method

.method private isConstrainedHighSpeedRequestList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const-string/jumbo v2, "High speed request list"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    #@6
    .line 153
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "request$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    #@16
    .line 154
    .local v0, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 155
    const/4 v2, 0x0

    #@1d
    return v2

    #@1e
    .line 158
    .end local v0    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_1
    const/4 v2, 0x1

    #@1f
    return v2
.end method


# virtual methods
.method public abortCaptures()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->abortCaptures()V

    #@5
    .line 218
    return-void
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Constrained high speed session doesn\'t support this method"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->isConstrainedHighSpeedRequestList(Ljava/util/List;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 188
    const-string/jumbo v1, "Only request lists created by createHighSpeedRequestList() can be submitted to a constrained high speed capture session"

    #@b
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 191
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@11
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    #@5
    .line 228
    return-void
.end method

.method public createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 16
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    if-nez p1, :cond_0

    #@2
    .line 75
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v15, "Input capture request must not be null"

    #@7
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v14

    #@b
    .line 77
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@e
    move-result-object v7

    #@f
    .line 78
    .local v7, "outputSurfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@11
    move-object/from16 v0, p1

    #@13
    invoke-virtual {v0, v14}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Landroid/util/Range;

    #@19
    .line 81
    .local v4, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    #@1b
    iget-object v14, v0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@1d
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1f
    invoke-virtual {v14, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    #@25
    .line 82
    .local v1, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {v7, v4, v1}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    #@28
    .line 87
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@2b
    move-result-object v14

    #@2c
    check-cast v14, Ljava/lang/Integer;

    #@2e
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@31
    move-result v14

    #@32
    div-int/lit8 v10, v14, 0x1e

    #@34
    .line 88
    .local v10, "requestListSize":I
    new-instance v9, Ljava/util/ArrayList;

    #@36
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@39
    .line 92
    .local v9, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v11, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@3b
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@3e
    move-result-object v14

    #@3f
    invoke-direct {v11, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@42
    .line 95
    .local v11, "requestMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v13, Landroid/hardware/camera2/CaptureRequest$Builder;

    #@44
    .line 96
    const/4 v14, 0x0

    #@45
    const/4 v15, -0x1

    #@46
    .line 95
    invoke-direct {v13, v11, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    #@49
    .line 99
    .local v13, "singleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v6

    #@4d
    .line 100
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v3

    #@51
    check-cast v3, Landroid/view/Surface;

    #@53
    .line 101
    .local v3, "firstSurface":Landroid/view/Surface;
    const/4 v12, 0x0

    #@54
    .line 102
    .local v12, "secondSurface":Landroid/view/Surface;
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    #@57
    move-result v14

    #@58
    const/4 v15, 0x1

    #@59
    if-ne v14, v15, :cond_2

    #@5b
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    #@5e
    move-result v14

    #@5f
    if-eqz v14, :cond_2

    #@61
    .line 103
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@63
    .line 104
    const/4 v15, 0x1

    #@64
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v15

    #@68
    .line 103
    invoke-virtual {v13, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@6b
    .line 110
    :goto_0
    const/4 v14, 0x1

    #@6c
    invoke-virtual {v13, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    #@6f
    .line 113
    const/4 v2, 0x0

    #@70
    .line 114
    .local v2, "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    #@73
    move-result v14

    #@74
    const/4 v15, 0x2

    #@75
    if-ne v14, v15, :cond_3

    #@77
    .line 117
    new-instance v11, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@79
    .end local v11    # "requestMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@7c
    move-result-object v14

    #@7d
    invoke-direct {v11, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@80
    .line 118
    .restart local v11    # "requestMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    #@82
    .line 119
    .end local v2    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    const/4 v14, 0x0

    #@83
    const/4 v15, -0x1

    #@84
    .line 118
    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    #@87
    .line 120
    .local v2, "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@89
    .line 121
    const/4 v15, 0x3

    #@8a
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v15

    #@8e
    .line 120
    invoke-virtual {v2, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@91
    .line 122
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    #@94
    .line 123
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@97
    move-result-object v12

    #@98
    .end local v12    # "secondSurface":Landroid/view/Surface;
    check-cast v12, Landroid/view/Surface;

    #@9a
    .line 124
    .local v12, "secondSurface":Landroid/view/Surface;
    invoke-virtual {v2, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    #@9d
    .line 125
    const/4 v14, 0x1

    #@9e
    invoke-virtual {v2, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    #@a1
    .line 128
    move-object v8, v3

    #@a2
    .line 129
    .local v8, "recordingSurface":Landroid/view/Surface;
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    #@a5
    move-result v14

    #@a6
    if-nez v14, :cond_1

    #@a8
    .line 130
    move-object v8, v12

    #@a9
    .line 132
    :cond_1
    invoke-virtual {v13, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    #@ac
    .line 139
    .end local v2    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v8    # "recordingSurface":Landroid/view/Surface;
    .end local v12    # "secondSurface":Landroid/view/Surface;
    :goto_1
    const/4 v5, 0x0

    #@ad
    .local v5, "i":I
    :goto_2
    if-ge v5, v10, :cond_5

    #@af
    .line 140
    if-nez v5, :cond_4

    #@b1
    if-eqz v2, :cond_4

    #@b3
    .line 142
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    #@b6
    move-result-object v14

    #@b7
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ba
    .line 139
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@bc
    goto :goto_2

    #@bd
    .line 107
    .end local v5    # "i":I
    .local v12, "secondSurface":Landroid/view/Surface;
    :cond_2
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@bf
    .line 108
    const/4 v15, 0x3

    #@c0
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c3
    move-result-object v15

    #@c4
    .line 107
    invoke-virtual {v13, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@c7
    goto :goto_0

    #@c8
    .line 135
    .local v2, "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_3
    invoke-virtual {v13, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    #@cb
    goto :goto_1

    #@cc
    .line 144
    .end local v2    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v12    # "secondSurface":Landroid/view/Surface;
    .restart local v5    # "i":I
    :cond_4
    invoke-virtual {v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    #@cf
    move-result-object v14

    #@d0
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d3
    goto :goto_3

    #@d4
    .line 148
    :cond_5
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@d7
    move-result-object v14

    #@d8
    return-object v14
.end method

.method public getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDevice()Landroid/hardware/camera2/CameraDevice;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 224
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isAborting()Z
    .locals 1

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isAborting()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    #@0
    .prologue
    .line 234
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->prepare(Landroid/view/Surface;)V

    #@5
    .line 167
    return-void
.end method

.method public replaceSessionClose()V
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->replaceSessionClose()V

    #@5
    .line 240
    return-void
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->isConstrainedHighSpeedRequestList(Ljava/util/List;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 206
    const-string/jumbo v1, "Only request lists created by createHighSpeedRequestList() can be submitted to a constrained high speed capture session"

    #@b
    .line 205
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 209
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@11
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Constrained high speed session doesn\'t support this method"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public stopRepeating()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->stopRepeating()V

    #@5
    .line 213
    return-void
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->tearDown(Landroid/view/Surface;)V

    #@5
    .line 172
    return-void
.end method
