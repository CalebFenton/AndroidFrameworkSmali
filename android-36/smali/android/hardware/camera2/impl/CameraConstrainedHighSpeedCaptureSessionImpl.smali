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
.field private final blacklist TAG:Ljava/lang/String;

.field private final greylist-max-o mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final blacklist mInitialized:Landroid/os/ConditionVariable;

.field private final greylist-max-o mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mInitialized:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method constructor greylist-max-o <init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;ZLandroid/hardware/camera2/CameraCharacteristics;)V
    .registers 18
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "stateExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "deviceImpl"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p5, "deviceStateExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "configureSuccess"    # Z
    .param p7, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 74
    invoke-direct {p0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;-><init>()V

    .line 60
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mInitialized:Landroid/os/ConditionVariable;

    .line 61
    const-string v0, "CameraConstrainedHighSpeedCaptureSessionImpl"

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->TAG:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p7

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 76
    new-instance v1, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl$WrapperCallback;

    invoke-direct {v1, p0, p2}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl$WrapperCallback;-><init>(Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    move-object v5, v1

    .line 77
    .local v5, "wrapperCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    const/4 v4, 0x0

    move v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 79
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mInitialized:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 80
    return-void
.end method

.method private greylist-max-o isConstrainedHighSpeedRequestList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)Z"
        }
    .end annotation

    .line 197
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const-string v0, "High speed request list"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    .line 199
    .local v1, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 200
    const/4 v0, 0x0

    return v0

    .line 202
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_1d
    goto :goto_9

    .line 203
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist abortCaptures()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->abortCaptures()V

    .line 306
    return-void
.end method

.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Constrained high speed session doesn\'t support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 243
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->isConstrainedHighSpeedRequestList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 248
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    return v0

    .line 244
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only request lists created by createHighSpeedRequestList() can be submitted to a constrained high speed capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 254
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->isConstrainedHighSpeedRequestList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 259
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v0

    return v0

    .line 255
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only request lists created by createHighSpeedRequestList() can be submitted to a constrained high speed capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Constrained high speed session doesn\'t support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    .line 342
    return-void
.end method

.method public blacklist closeWithoutDraining()V
    .registers 3

    .line 335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Constrained high speed session doesn\'t support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .registers 28
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 85
    move-object/from16 v0, p1

    if-eqz v0, :cond_1b3

    .line 88
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 90
    .local v1, "ck":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<Landroid/hardware/camera2/params/StreamConfigurationMap;>;"
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 91
    .local v2, "sensorPixelMode":Ljava/lang/Integer;
    const/4 v3, 0x1

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_19

    .line 93
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 95
    :cond_19
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v4

    .line 96
    .local v4, "outputSurfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    .line 98
    .local v5, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v6, p0

    iget-object v7, v6, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 99
    .local v7, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {v4, v5, v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 103
    nop

    .line 104
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    .line 103
    invoke-virtual {v7, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v8

    .line 105
    .local v8, "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "High speed fps ranges: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CameraConstrainedHighSpeedCaptureSessionImpl"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const v9, 0x7fffffff

    .line 107
    .local v9, "previewFps":I
    array-length v11, v8

    const/4 v12, 0x0

    :goto_66
    if-ge v12, v11, :cond_7a

    aget-object v13, v8, v12

    .line 108
    .local v13, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 109
    .local v14, "rangeMin":I
    if-le v9, v14, :cond_77

    .line 110
    move v9, v14

    .line 107
    .end local v13    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v14    # "rangeMin":I
    :cond_77
    add-int/lit8 v12, v12, 0x1

    goto :goto_66

    .line 115
    :cond_7a
    const/16 v11, 0x3c

    if-eq v9, v11, :cond_89

    const/16 v11, 0x1e

    if-eq v9, v11, :cond_89

    .line 116
    const-string v11, "previewFps is neither 60 nor 30."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v9, 0x1e

    .line 119
    :cond_89
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "previewFps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    div-int/2addr v11, v9

    .line 123
    .local v11, "requestListSize":I
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v12, v13, :cond_c1

    .line 124
    const/4 v11, 0x1

    .line 127
    :cond_c1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Request list size is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v10, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v12, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    move-object v15, v12

    .line 135
    .local v15, "requestMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v14, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 137
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    invoke-direct/range {v14 .. v19}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 139
    .local v14, "singleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v14, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 142
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 143
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Surface;

    .line 144
    .local v13, "firstSurface":Landroid/view/Surface;
    const/16 v16, 0x0

    .line 145
    .local v16, "secondSurface":Landroid/view/Surface;
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v17, 0x3

    if-ne v0, v3, :cond_122

    invoke-static {v13}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 146
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 147
    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 146
    invoke-virtual {v14, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_12d

    .line 145
    :cond_122
    move/from16 v18, v3

    .line 150
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 151
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 150
    invoke-virtual {v14, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 153
    :goto_12d
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v3

    move-object/from16 v19, v0

    .end local v0    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .local v19, "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    const/4 v0, 0x2

    if-ne v3, v0, :cond_188

    .line 160
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    move-object/from16 v21, v0

    .line 161
    .end local v15    # "requestMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v21, "requestMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v20, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    invoke-direct/range {v20 .. v25}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    move-object/from16 v0, v20

    .line 164
    .end local v19    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .restart local v0    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 165
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 166
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 165
    invoke-virtual {v0, v3, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v0, v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 168
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 169
    .end local v16    # "secondSurface":Landroid/view/Surface;
    .local v3, "secondSurface":Landroid/view/Surface;
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 170
    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    .line 173
    move-object v15, v13

    .line 174
    .local v15, "recordingSurface":Landroid/view/Surface;
    invoke-static {v15}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v16

    if-nez v16, :cond_180

    .line 175
    move-object v15, v3

    .line 177
    :cond_180
    invoke-virtual {v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 178
    .end local v15    # "recordingSurface":Landroid/view/Surface;
    move-object/from16 v16, v3

    move-object/from16 v15, v21

    goto :goto_18d

    .line 180
    .end local v0    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v3    # "secondSurface":Landroid/view/Surface;
    .end local v21    # "requestMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v15, "requestMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v16    # "secondSurface":Landroid/view/Surface;
    .restart local v19    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_188
    invoke-virtual {v14, v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    move-object/from16 v0, v19

    .line 184
    .end local v19    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .restart local v0    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_18d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18e
    if-ge v3, v11, :cond_1ac

    .line 185
    if-nez v3, :cond_19e

    if-eqz v0, :cond_19e

    .line 187
    move-object/from16 v17, v0

    .end local v0    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .local v17, "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a7

    .line 185
    .end local v17    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .restart local v0    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_19e
    move-object/from16 v17, v0

    .line 189
    .end local v0    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .restart local v17    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-virtual {v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_1a7
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    goto :goto_18e

    .end local v17    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .restart local v0    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_1ac
    move-object/from16 v17, v0

    .line 193
    .end local v0    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v3    # "i":I
    .restart local v17    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 86
    .end local v1    # "ck":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<Landroid/hardware/camera2/params/StreamConfigurationMap;>;"
    .end local v2    # "sensorPixelMode":Ljava/lang/Integer;
    .end local v4    # "outputSurfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local v5    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v7    # "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v8    # "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v9    # "previewFps":I
    .end local v10    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v11    # "requestListSize":I
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    .end local v13    # "firstSurface":Landroid/view/Surface;
    .end local v14    # "singleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v15    # "requestMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "secondSurface":Landroid/view/Surface;
    .end local v17    # "doubleTargetRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_1b3
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input capture request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist finalizeOutputConfigurations(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 369
    .local p1, "deferredOutputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->finalizeOutputConfigurations(Ljava/util/List;)V

    .line 370
    return-void
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .registers 2

    .line 358
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputSurface()Landroid/view/Surface;
    .registers 2

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o isAborting()Z
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isAborting()Z

    move-result v0

    return v0
.end method

.method public whitelist isReprocessable()Z
    .registers 2

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o prepare(ILandroid/view/Surface;)V
    .registers 4
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->prepare(ILandroid/view/Surface;)V

    .line 219
    return-void
.end method

.method public whitelist prepare(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->prepare(Landroid/view/Surface;)V

    .line 214
    return-void
.end method

.method public greylist-max-o replaceSessionClose()V
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->replaceSessionClose()V

    .line 354
    return-void
.end method

.method public whitelist setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 279
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->isConstrainedHighSpeedRequestList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 284
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    return v0

    .line 280
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only request lists created by createHighSpeedRequestList() can be submitted to a constrained high speed capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 290
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->isConstrainedHighSpeedRequestList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 295
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v0

    return v0

    .line 291
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only request lists created by createHighSpeedRequestList() can be submitted to a constrained high speed capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Constrained high speed session doesn\'t support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Constrained high speed session doesn\'t support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopRepeating()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->stopRepeating()V

    .line 301
    return-void
.end method

.method public whitelist supportsOfflineProcessing(Landroid/view/Surface;)Z
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Constrained high speed session doesn\'t support offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            ")",
            "Landroid/hardware/camera2/CameraOfflineSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 323
    .local p1, "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Constrained high speed session doesn\'t support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o tearDown(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->tearDown(Landroid/view/Surface;)V

    .line 224
    return-void
.end method

.method public whitelist updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 4
    .param p1, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Constrained high speed session doesn\'t support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
