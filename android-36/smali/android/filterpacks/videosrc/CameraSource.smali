.class public Landroid/filterpacks/videosrc/CameraSource;
.super Landroid/filterfw/core/Filter;
.source "CameraSource.java"


# static fields
.field private static final blacklist NEWFRAME_TIMEOUT:I = 0x64

.field private static final blacklist NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final blacklist TAG:Ljava/lang/String; = "CameraSource"

.field private static final blacklist mFrameShader:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

.field private static final blacklist mSourceCoords:[F


# instance fields
.field private blacklist mCamera:Landroid/hardware/Camera;

.field private blacklist mCameraFrame:Landroid/filterfw/core/GLFrame;

.field private blacklist mCameraId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "id"
    .end annotation
.end field

.field private blacklist mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private blacklist mCameraTransform:[F

.field private blacklist mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private blacklist mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private final blacklist mLogVerbose:Z

.field private blacklist mMappedCoords:[F

.field private blacklist mNewFrameAvailable:Z

.field private blacklist mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private blacklist mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private blacklist mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private blacklist mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field

.field private blacklist onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLogVerbose(Landroid/filterpacks/videosrc/CameraSource;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNewFrameAvailable(Landroid/filterpacks/videosrc/CameraSource;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    return-void

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    .line 51
    const/16 v0, 0x140

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    .line 55
    const/16 v0, 0xf0

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    .line 59
    const/16 v0, 0x1e

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    .line 339
    new-instance v0, Landroid/filterpacks/videosrc/CameraSource$1;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/CameraSource$1;-><init>(Landroid/filterpacks/videosrc/CameraSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 106
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    .line 107
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    .line 109
    const-string v0, "CameraSource"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 110
    return-void
.end method

.method private blacklist createFormats()V
    .registers 4

    .line 120
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 123
    return-void
.end method

.method private blacklist findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I
    .registers 13
    .param p1, "fps"    # I
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .line 317
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 319
    .local v2, "closestRange":[I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 320
    .local v4, "range":[I
    aget v6, v4, v1

    mul-int/lit16 v7, p1, 0x3e8

    if-ge v6, v7, :cond_35

    aget v6, v4, v5

    mul-int/lit16 v7, p1, 0x3e8

    if-le v6, v7, :cond_35

    aget v6, v4, v1

    aget v7, v2, v1

    if-le v6, v7, :cond_35

    aget v6, v4, v5

    aget v5, v2, v5

    if-ge v6, v5, :cond_35

    .line 326
    move-object v2, v4

    .line 328
    .end local v4    # "range":[I
    :cond_35
    goto :goto_f

    .line 329
    :cond_36
    iget-boolean v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v3, :cond_79

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".Closest frame rate range: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v1, v2, v1

    int-to-double v6, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, v2, v5

    int-to-double v3, v3

    div-double/2addr v3, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CameraSource"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_79
    return-object v2
.end method

.method private blacklist findClosestSize(IILandroid/hardware/Camera$Parameters;)[I
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 277
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 278
    .local v0, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, -0x1

    .line 279
    .local v1, "closestWidth":I
    const/4 v2, -0x1

    .line 280
    .local v2, "closestHeight":I
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    .line 281
    .local v4, "smallestWidth":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    .line 282
    .local v3, "smallestHeight":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 287
    .local v6, "size":Landroid/hardware/Camera$Size;
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    if-gt v7, p1, :cond_3b

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    if-gt v7, p2, :cond_3b

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    if-lt v7, v1, :cond_3b

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    if-lt v7, v2, :cond_3b

    .line 291
    iget v1, v6, Landroid/hardware/Camera$Size;->width:I

    .line 292
    iget v2, v6, Landroid/hardware/Camera$Size;->height:I

    .line 294
    :cond_3b
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    if-ge v7, v4, :cond_47

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    if-ge v7, v3, :cond_47

    .line 296
    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    .line 297
    iget v3, v6, Landroid/hardware/Camera$Size;->height:I

    .line 299
    .end local v6    # "size":Landroid/hardware/Camera$Size;
    :cond_47
    goto :goto_1b

    .line 300
    :cond_48
    const/4 v5, -0x1

    if-ne v1, v5, :cond_4d

    .line 302
    move v1, v4

    .line 303
    move v2, v3

    .line 306
    :cond_4d
    iget-boolean v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v5, :cond_8b

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested resolution: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "). Closest match: ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CameraSource"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_8b
    filled-new-array {v1, v2}, [I

    move-result-object v5

    .line 313
    .local v5, "closestSize":[I
    return-object v5
.end method


# virtual methods
.method public blacklist close(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 213
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "CameraSource"

    const-string v1, "Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_b
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 217
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 218
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 219
    return-void
.end method

.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 230
    const-string v0, "framerate"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 231
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 232
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0, v1}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 233
    .local v0, "closestRange":[I
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 235
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 237
    .end local v0    # "closestRange":[I
    :cond_25
    return-void
.end method

.method public declared-synchronized blacklist getCameraParameters()Landroid/hardware/Camera$Parameters;
    .registers 8

    monitor-enter p0

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "closeCamera":Z
    :try_start_2
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_25

    .line 242
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_13

    .line 243
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 244
    const/4 v0, 0x1

    .line 246
    .end local p0    # "this":Landroid/filterpacks/videosrc/CameraSource;
    :cond_13
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 248
    if-eqz v0, :cond_25

    .line 249
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 254
    :cond_25
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterpacks/videosrc/CameraSource;->findClosestSize(IILandroid/hardware/Camera$Parameters;)[I

    move-result-object v1

    .line 255
    .local v1, "closestSize":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    iput v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    .line 256
    const/4 v3, 0x1

    aget v4, v1, v3

    iput v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    .line 257
    iget-object v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v6, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 259
    iget v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    iget-object v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v4, v5}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v4

    .line 261
    .local v4, "closestRange":[I
    iget-object v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    aget v2, v4, v2

    aget v3, v4, v3

    invoke-virtual {v5, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 264
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_55
    .catchall {:try_start_2 .. :try_end_55} :catchall_57

    monitor-exit p0

    return-object v2

    .line 239
    .end local v0    # "closeCamera":Z
    .end local v1    # "closestSize":[I
    .end local v4    # "closestRange":[I
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public blacklist open(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 134
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "CameraSource"

    const-string v1, "Opening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_b
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 139
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 140
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 143
    invoke-direct {p0}, Landroid/filterpacks/videosrc/CameraSource;->createFormats()V

    .line 146
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v2, 0x68

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    .line 149
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 151
    :try_start_3f
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_46} :catch_57

    .line 155
    nop

    .line 158
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    .line 161
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 162
    return-void

    .line 152
    :catch_57
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind camera surface texture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 127
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "CameraSource"

    const-string v1, "Preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_b
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 130
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 22
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 166
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    const-string v2, "CameraSource"

    if-eqz v0, :cond_d

    const-string v0, "Processing new frame"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_d
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_3f

    .line 169
    const/4 v4, 0x0

    .line 170
    .local v4, "waitCount":I
    :goto_13
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    if-nez v0, :cond_34

    .line 171
    const/16 v0, 0xa

    if-eq v4, v0, :cond_2c

    .line 175
    const-wide/16 v5, 0x64

    :try_start_1d
    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    .line 178
    :cond_20
    :goto_20
    goto :goto_13

    .line 176
    :catch_21
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v5, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v5, :cond_20

    const-string v5, "Interrupted while waiting for new frame"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 172
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Timeout waiting for new frame"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_34
    iput-boolean v3, v1, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    .line 181
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_3f

    const-string v0, "Got new frame"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v4    # "waitCount":I
    :cond_3f
    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 186
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using frame extractor in thread: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_62
    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v4, v1, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 188
    iget-object v5, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    iget-object v7, v1, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    sget-object v9, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 191
    iget-object v11, v1, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    aget v12, v0, v3

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v3, 0x1

    aget v13, v0, v3

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v3, 0x4

    aget v14, v0, v3

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v3, 0x5

    aget v15, v0, v3

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v3, 0x8

    aget v16, v0, v3

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v3, 0x9

    aget v17, v0, v3

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v3, 0xc

    aget v18, v0, v3

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v3, 0xd

    aget v19, v0, v3

    invoke-virtual/range {v11 .. v19}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v3, v1, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v0, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 197
    .local v0, "output":Landroid/filterfw/core/Frame;
    iget-object v3, v1, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v4, v1, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v3, v4, v0}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 199
    iget-object v3, v1, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v3

    .line 200
    .local v3, "timestamp":J
    iget-boolean v5, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v5, :cond_e3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-double v6, v3

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_e3
    invoke-virtual {v0, v3, v4}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 203
    const-string/jumbo v5, "video"

    invoke-virtual {v1, v5, v0}, Landroid/filterpacks/videosrc/CameraSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 206
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 208
    iget-boolean v5, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v5, :cond_f8

    const-string v5, "Done processing new frame"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_f8
    return-void
.end method

.method public declared-synchronized blacklist setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    monitor-enter p0

    .line 269
    :try_start_1
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 270
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 271
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 272
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 274
    .end local p0    # "this":Landroid/filterpacks/videosrc/CameraSource;
    :cond_17
    monitor-exit p0

    return-void

    .line 268
    .end local p1    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 115
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/videosrc/CameraSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 117
    return-void
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 223
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 226
    :cond_9
    return-void
.end method
