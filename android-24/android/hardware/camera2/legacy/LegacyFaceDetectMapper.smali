.class public Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
.super Ljava/lang/Object;
.source "LegacyFaceDetectMapper.java"


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private mFaceDetectEnabled:Z

.field private mFaceDetectReporting:Z

.field private mFaceDetectScenePriority:Z

.field private final mFaceDetectSupported:Z

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mFacesPrev:[Landroid/hardware/Camera$Face;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "LegacyFaceDetectMapper"

    #@3
    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    #@5
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    #@6
    .line 55
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    #@8
    .line 57
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    #@a
    .line 60
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    #@11
    .line 72
    const-string/jumbo v0, "camera must not be null"

    #@14
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/hardware/Camera;

    #@1a
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    #@1c
    .line 73
    const-string/jumbo v0, "characteristics must not be null"

    #@1f
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 77
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@24
    .line 76
    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, [I

    #@2a
    .line 78
    const/4 v1, 0x1

    #@2b
    .line 75
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@2e
    move-result v0

    #@2f
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    #@31
    .line 80
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    #@33
    if-nez v0, :cond_0

    #@35
    .line 81
    return-void

    #@36
    .line 84
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    #@38
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;

    #@3a
    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V

    #@3d
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    #@40
    .line 71
    return-void
.end method


# virtual methods
.method public mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 17
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    #@0
    .prologue
    .line 208
    const-string/jumbo v13, "result must not be null"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 209
    const-string/jumbo v13, "legacyRequest must not be null"

    #@b
    move-object/from16 v0, p2

    #@d
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 214
    move-object/from16 v0, p0

    #@12
    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    #@14
    monitor-enter v14

    #@15
    .line 215
    :try_start_0
    move-object/from16 v0, p0

    #@17
    iget-boolean v13, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    #@19
    if-eqz v13, :cond_0

    #@1b
    .line 216
    const/4 v6, 0x1

    #@1c
    .line 218
    .local v6, "fdMode":I
    :goto_0
    move-object/from16 v0, p0

    #@1e
    iget-boolean v13, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    #@20
    if-eqz v13, :cond_1

    #@22
    .line 219
    move-object/from16 v0, p0

    #@24
    iget-object v5, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    #@26
    .line 224
    :goto_1
    move-object/from16 v0, p0

    #@28
    iget-boolean v7, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    #@2a
    .line 226
    .local v7, "fdScenePriority":Z
    move-object/from16 v0, p0

    #@2c
    iget-object v10, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFacesPrev:[Landroid/hardware/Camera$Face;

    #@2e
    .line 227
    .local v10, "previousFaces":[Landroid/hardware/Camera$Face;
    move-object/from16 v0, p0

    #@30
    iput-object v5, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFacesPrev:[Landroid/hardware/Camera$Face;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v14

    #@33
    .line 230
    move-object/from16 v0, p2

    #@35
    iget-object v2, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@37
    .line 231
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p2

    #@39
    iget-object v11, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    #@3b
    .line 232
    .local v11, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p2

    #@3d
    iget-object v9, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    #@3f
    .line 233
    .local v9, "previewSize":Landroid/util/Size;
    move-object/from16 v0, p2

    #@41
    iget-object v8, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@43
    .line 235
    .local v8, "params":Landroid/hardware/Camera$Parameters;
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@45
    invoke-virtual {v2, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Landroid/graphics/Rect;

    #@4b
    .line 237
    .local v1, "activeArray":Landroid/graphics/Rect;
    sget-object v13, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4d
    invoke-virtual {v11, v13}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@50
    move-result-object v13

    #@51
    check-cast v13, Landroid/graphics/Rect;

    #@53
    .line 236
    invoke-static {v1, v13, v9, v8}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    #@56
    move-result-object v12

    #@57
    .line 239
    .local v12, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    new-instance v3, Ljava/util/ArrayList;

    #@59
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5c
    .line 240
    .local v3, "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    if-eqz v5, :cond_3

    #@5e
    .line 241
    const/4 v13, 0x0

    #@5f
    array-length v14, v5

    #@60
    :goto_2
    if-ge v13, v14, :cond_3

    #@62
    aget-object v4, v5, v13

    #@64
    .line 242
    .local v4, "face":Landroid/hardware/Camera$Face;
    if-eqz v4, :cond_2

    #@66
    .line 244
    invoke-static {v4, v1, v12}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertFaceFromLegacy(Landroid/hardware/Camera$Face;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/params/Face;

    #@69
    move-result-object v15

    #@6a
    .line 243
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6d
    .line 241
    :goto_3
    add-int/lit8 v13, v13, 0x1

    #@6f
    goto :goto_2

    #@70
    .line 216
    .end local v1    # "activeArray":Landroid/graphics/Rect;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    .end local v4    # "face":Landroid/hardware/Camera$Face;
    .end local v6    # "fdMode":I
    .end local v7    # "fdScenePriority":Z
    .end local v8    # "params":Landroid/hardware/Camera$Parameters;
    .end local v9    # "previewSize":Landroid/util/Size;
    .end local v10    # "previousFaces":[Landroid/hardware/Camera$Face;
    .end local v11    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v12    # "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    :cond_0
    const/4 v6, 0x0

    #@71
    .restart local v6    # "fdMode":I
    goto :goto_0

    #@72
    .line 221
    :cond_1
    const/4 v5, 0x0

    #@73
    .local v5, "faces":[Landroid/hardware/Camera$Face;
    goto :goto_1

    #@74
    .line 214
    .end local v5    # "faces":[Landroid/hardware/Camera$Face;
    .end local v6    # "fdMode":I
    :catchall_0
    move-exception v13

    #@75
    monitor-exit v14

    #@76
    throw v13

    #@77
    .line 246
    .restart local v1    # "activeArray":Landroid/graphics/Rect;
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v3    # "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    .restart local v4    # "face":Landroid/hardware/Camera$Face;
    .restart local v6    # "fdMode":I
    .restart local v7    # "fdScenePriority":Z
    .restart local v8    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v9    # "previewSize":Landroid/util/Size;
    .restart local v10    # "previousFaces":[Landroid/hardware/Camera$Face;
    .restart local v11    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v12    # "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    :cond_2
    sget-object v15, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    #@79
    const-string/jumbo v16, "mapResultFaces - read NULL face from camera1 device"

    #@7c
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    goto :goto_3

    #@80
    .line 255
    .end local v4    # "face":Landroid/hardware/Camera$Face;
    :cond_3
    sget-object v14, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    #@82
    const/4 v13, 0x0

    #@83
    new-array v13, v13, [Landroid/hardware/camera2/params/Face;

    #@85
    invoke-interface {v3, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@88
    move-result-object v13

    #@89
    check-cast v13, [Landroid/hardware/camera2/params/Face;

    #@8b
    move-object/from16 v0, p1

    #@8d
    invoke-virtual {v0, v14, v13}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@90
    .line 256
    sget-object v13, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@95
    move-result-object v14

    #@96
    move-object/from16 v0, p1

    #@98
    invoke-virtual {v0, v13, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@9b
    .line 259
    if-eqz v7, :cond_4

    #@9d
    .line 260
    sget-object v13, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@9f
    const/4 v14, 0x1

    #@a0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v14

    #@a4
    move-object/from16 v0, p1

    #@a6
    invoke-virtual {v0, v13, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@a9
    .line 207
    :cond_4
    return-void
.end method

.method public processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 123
    const-string/jumbo v3, "captureRequest must not be null"

    #@5
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 128
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@a
    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v6

    #@e
    .line 128
    invoke-static {p1, v3, v6}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/Integer;

    #@14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v1

    #@18
    .line 131
    .local v1, "fdMode":I
    if-eqz v1, :cond_0

    #@1a
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    #@1c
    if-eqz v3, :cond_2

    #@1e
    .line 141
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@20
    .line 142
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v6

    #@24
    .line 141
    invoke-static {p1, v3, v6}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Ljava/lang/Integer;

    #@2a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@2d
    move-result v2

    #@2e
    .line 143
    .local v2, "sceneMode":I
    if-ne v2, v4, :cond_1

    #@30
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    #@32
    if-eqz v3, :cond_3

    #@34
    .line 150
    :cond_1
    packed-switch v1, :pswitch_data_0

    #@37
    .line 160
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    #@39
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v5, "processFaceDetectMode - ignoring unknown statistics.faceDetectMode = "

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 162
    return-void

    #@51
    .line 132
    .end local v2    # "sceneMode":I
    :cond_2
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    #@53
    .line 133
    const-string/jumbo v4, "processFaceDetectMode - Ignoring statistics.faceDetectMode; face detection is not available"

    #@56
    .line 132
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 135
    return-void

    #@5a
    .line 144
    .restart local v2    # "sceneMode":I
    :cond_3
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    #@5c
    const-string/jumbo v4, "processFaceDetectMode - ignoring control.sceneMode == FACE_PRIORITY; face detection is not available"

    #@5f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 146
    return-void

    #@63
    .line 155
    :pswitch_0
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    #@65
    .line 156
    const-string/jumbo v6, "processFaceDetectMode - statistics.faceDetectMode == FULL unsupported, downgrading to SIMPLE"

    #@68
    .line 155
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 165
    :pswitch_1
    if-nez v1, :cond_5

    #@6d
    .line 166
    if-ne v2, v4, :cond_6

    #@6f
    const/4 v0, 0x1

    #@70
    .line 167
    .local v0, "enableFaceDetect":Z
    :goto_0
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    #@72
    monitor-enter v6

    #@73
    .line 169
    :try_start_0
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    #@75
    if-eq v0, v3, :cond_4

    #@77
    .line 170
    if-eqz v0, :cond_7

    #@79
    .line 171
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    #@7b
    invoke-virtual {v3}, Landroid/hardware/Camera;->startFaceDetection()V

    #@7e
    .line 186
    :goto_1
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    #@80
    .line 187
    if-ne v2, v4, :cond_8

    #@82
    move v3, v4

    #@83
    :goto_2
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    #@85
    .line 188
    if-eqz v1, :cond_9

    #@87
    move v3, v4

    #@88
    :goto_3
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8a
    :cond_4
    monitor-exit v6

    #@8b
    .line 122
    return-void

    #@8c
    .line 165
    .end local v0    # "enableFaceDetect":Z
    :cond_5
    const/4 v0, 0x1

    #@8d
    .restart local v0    # "enableFaceDetect":Z
    goto :goto_0

    #@8e
    .line 166
    .end local v0    # "enableFaceDetect":Z
    :cond_6
    const/4 v0, 0x0

    #@8f
    .restart local v0    # "enableFaceDetect":Z
    goto :goto_0

    #@90
    .line 177
    :cond_7
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    #@92
    invoke-virtual {v3}, Landroid/hardware/Camera;->stopFaceDetection()V

    #@95
    .line 183
    const/4 v3, 0x0

    #@96
    iput-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@98
    goto :goto_1

    #@99
    .line 167
    :catchall_0
    move-exception v3

    #@9a
    monitor-exit v6

    #@9b
    throw v3

    #@9c
    :cond_8
    move v3, v5

    #@9d
    .line 187
    goto :goto_2

    #@9e
    :cond_9
    move v3, v5

    #@9f
    .line 188
    goto :goto_3

    #@a0
    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
