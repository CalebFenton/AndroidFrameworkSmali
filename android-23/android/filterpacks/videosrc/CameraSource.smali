.class public Landroid/filterpacks/videosrc/CameraSource;
.super Landroid/filterfw/core/Filter;
.source "CameraSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosrc/CameraSource$1;
    }
.end annotation


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CameraSource"

.field private static final mFrameShader:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

.field private static final mSourceCoords:[F


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraFrame:Landroid/filterfw/core/GLFrame;

.field private mCameraId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "id"
    .end annotation
.end field

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mCameraTransform:[F

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private final mLogVerbose:Z

.field private mMappedCoords:[F

.field private mNewFrameAvailable:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field

.field private onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method static synthetic -get0(Landroid/filterpacks/videosrc/CameraSource;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/filterpacks/videosrc/CameraSource;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 80
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [F

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    #@9
    .line 42
    return-void

    #@a
    .line 80
    :array_0
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

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 105
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@5
    .line 48
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    #@8
    .line 52
    const/16 v0, 0x140

    #@a
    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    #@c
    .line 56
    const/16 v0, 0xf0

    #@e
    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    #@10
    .line 60
    const/16 v0, 0x1e

    #@12
    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    #@14
    .line 68
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    #@17
    .line 340
    new-instance v0, Landroid/filterpacks/videosrc/CameraSource$1;

    #@19
    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/CameraSource$1;-><init>(Landroid/filterpacks/videosrc/CameraSource;)V

    #@1c
    .line 339
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1e
    .line 106
    new-array v0, v1, [F

    #@20
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    #@22
    .line 107
    new-array v0, v1, [F

    #@24
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    #@26
    .line 109
    const-string/jumbo v0, "CameraSource"

    #@29
    const/4 v1, 0x2

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@2d
    move-result v0

    #@2e
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@30
    .line 104
    return-void
.end method

.method private createFormats()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 120
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    #@3
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    #@5
    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@b
    .line 119
    return-void
.end method

.method private findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I
    .locals 12
    .param p1, "fps"    # I
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const-wide v10, 0x408f400000000000L    # 1000.0

    #@5
    const/4 v8, 0x1

    #@6
    const/4 v7, 0x0

    #@7
    .line 317
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    #@a
    move-result-object v3

    #@b
    .line 318
    .local v3, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, [I

    #@11
    .line 319
    .local v0, "closestRange":[I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "range$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, [I

    #@21
    .line 320
    .local v1, "range":[I
    aget v4, v1, v7

    #@23
    mul-int/lit16 v5, p1, 0x3e8

    #@25
    if-ge v4, v5, :cond_0

    #@27
    .line 321
    aget v4, v1, v8

    #@29
    mul-int/lit16 v5, p1, 0x3e8

    #@2b
    if-le v4, v5, :cond_0

    #@2d
    .line 322
    aget v4, v1, v7

    #@2f
    .line 323
    aget v5, v0, v7

    #@31
    .line 322
    if-le v4, v5, :cond_0

    #@33
    .line 324
    aget v4, v1, v8

    #@35
    .line 325
    aget v5, v0, v8

    #@37
    .line 324
    if-ge v4, v5, :cond_0

    #@39
    .line 326
    move-object v0, v1

    #@3a
    goto :goto_0

    #@3b
    .line 329
    .end local v1    # "range":[I
    :cond_1
    iget-boolean v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@3d
    if-eqz v4, :cond_2

    #@3f
    const-string/jumbo v4, "CameraSource"

    #@42
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v6, "Requested fps: "

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    .line 330
    const-string/jumbo v6, ".Closest frame rate range: ["

    #@55
    .line 329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    .line 331
    aget v6, v0, v7

    #@5b
    int-to-double v6, v6

    #@5c
    div-double/2addr v6, v10

    #@5d
    .line 329
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    .line 332
    const-string/jumbo v6, ","

    #@64
    .line 329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    .line 333
    aget v6, v0, v8

    #@6a
    int-to-double v6, v6

    #@6b
    div-double/2addr v6, v10

    #@6c
    .line 329
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    .line 334
    const-string/jumbo v6, "]"

    #@73
    .line 329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 336
    :cond_2
    return-object v0
.end method

.method private findClosestSize(IILandroid/hardware/Camera$Parameters;)[I
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 277
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    #@4
    move-result-object v3

    #@5
    .line 278
    .local v3, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, -0x1

    #@6
    .line 279
    .local v2, "closestWidth":I
    const/4 v0, -0x1

    #@7
    .line 280
    .local v0, "closestHeight":I
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v8

    #@b
    check-cast v8, Landroid/hardware/Camera$Size;

    #@d
    iget v7, v8, Landroid/hardware/Camera$Size;->width:I

    #@f
    .line 281
    .local v7, "smallestWidth":I
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v8

    #@13
    check-cast v8, Landroid/hardware/Camera$Size;

    #@15
    iget v6, v8, Landroid/hardware/Camera$Size;->height:I

    #@17
    .line 282
    .local v6, "smallestHeight":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v5

    #@1b
    .local v5, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_2

    #@21
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Landroid/hardware/Camera$Size;

    #@27
    .line 287
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    #@29
    if-gt v8, p1, :cond_1

    #@2b
    .line 288
    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    #@2d
    if-gt v8, p2, :cond_1

    #@2f
    .line 289
    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    #@31
    if-lt v8, v2, :cond_1

    #@33
    .line 290
    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    #@35
    if-lt v8, v0, :cond_1

    #@37
    .line 291
    iget v2, v4, Landroid/hardware/Camera$Size;->width:I

    #@39
    .line 292
    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    #@3b
    .line 294
    :cond_1
    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    #@3d
    if-ge v8, v7, :cond_0

    #@3f
    .line 295
    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    #@41
    if-ge v8, v6, :cond_0

    #@43
    .line 296
    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    #@45
    .line 297
    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    #@47
    goto :goto_0

    #@48
    .line 300
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    const/4 v8, -0x1

    #@49
    if-ne v2, v8, :cond_3

    #@4b
    .line 302
    move v2, v7

    #@4c
    .line 303
    move v0, v6

    #@4d
    .line 306
    :cond_3
    iget-boolean v8, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@4f
    if-eqz v8, :cond_4

    #@51
    .line 307
    const-string/jumbo v8, "CameraSource"

    #@54
    .line 308
    new-instance v9, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v10, "Requested resolution: ("

    #@5c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v9

    #@60
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    const-string/jumbo v10, ", "

    #@67
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    .line 309
    const-string/jumbo v10, "). Closest match: ("

    #@72
    .line 308
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    .line 309
    const-string/jumbo v10, ", "

    #@7d
    .line 308
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    .line 310
    const-string/jumbo v10, ")."

    #@88
    .line 308
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v9

    #@8c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v9

    #@90
    .line 307
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 312
    :cond_4
    const/4 v8, 0x2

    #@94
    new-array v1, v8, [I

    #@96
    aput v2, v1, v11

    #@98
    const/4 v8, 0x1

    #@99
    aput v0, v1, v8

    #@9b
    .line 313
    .local v1, "closestSize":[I
    return-object v1
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 213
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "CameraSource"

    #@8
    const-string/jumbo v1, "Closing"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 215
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@10
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    #@13
    .line 216
    iput-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@15
    .line 217
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@17
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    #@1a
    .line 218
    iput-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@1c
    .line 212
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 230
    const-string/jumbo v1, "framerate"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 231
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    #@c
    .line 232
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    #@e
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@10
    invoke-direct {p0, v1, v2}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    #@13
    move-result-object v0

    #@14
    .line 233
    .local v0, "closestRange":[I
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@16
    const/4 v2, 0x0

    #@17
    aget v2, v0, v2

    #@19
    .line 234
    const/4 v3, 0x1

    #@1a
    aget v3, v0, v3

    #@1c
    .line 233
    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    #@1f
    .line 235
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@21
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@23
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    #@26
    .line 229
    .end local v0    # "closestRange":[I
    :cond_0
    return-void
.end method

.method public declared-synchronized getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 240
    const/4 v0, 0x0

    #@2
    .line 241
    .local v0, "closeCamera":Z
    :try_start_0
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@4
    if-nez v3, :cond_1

    #@6
    .line 242
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@8
    if-nez v3, :cond_0

    #@a
    .line 243
    iget v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    #@c
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    #@f
    move-result-object v3

    #@10
    iput-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@12
    .line 244
    const/4 v0, 0x1

    #@13
    .line 246
    :cond_0
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@15
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    #@18
    move-result-object v3

    #@19
    iput-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@1b
    .line 248
    if-eqz v0, :cond_1

    #@1d
    .line 249
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@1f
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    #@22
    .line 250
    const/4 v3, 0x0

    #@23
    iput-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@25
    .line 254
    :cond_1
    iget v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    #@27
    iget v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    #@29
    iget-object v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@2b
    invoke-direct {p0, v3, v4, v5}, Landroid/filterpacks/videosrc/CameraSource;->findClosestSize(IILandroid/hardware/Camera$Parameters;)[I

    #@2e
    move-result-object v2

    #@2f
    .line 255
    .local v2, "closestSize":[I
    const/4 v3, 0x0

    #@30
    aget v3, v2, v3

    #@32
    iput v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    #@34
    .line 256
    const/4 v3, 0x1

    #@35
    aget v3, v2, v3

    #@37
    iput v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    #@39
    .line 257
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@3b
    iget v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    #@3d
    iget v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    #@3f
    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    #@42
    .line 259
    iget v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    #@44
    iget-object v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@46
    invoke-direct {p0, v3, v4}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    #@49
    move-result-object v1

    #@4a
    .line 261
    .local v1, "closestRange":[I
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@4c
    const/4 v4, 0x0

    #@4d
    aget v4, v1, v4

    #@4f
    .line 262
    const/4 v5, 0x1

    #@50
    aget v5, v1, v5

    #@52
    .line 261
    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    #@55
    .line 264
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    monitor-exit p0

    #@58
    return-object v3

    #@59
    .end local v1    # "closestRange":[I
    .end local v2    # "closestSize":[I
    :catchall_0
    move-exception v3

    #@5a
    monitor-exit p0

    #@5b
    throw v3
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 134
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "CameraSource"

    #@7
    const-string/jumbo v2, "Opening"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 136
    :cond_0
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    #@f
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@15
    .line 139
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    #@18
    .line 140
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@1a
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@1c
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    #@1f
    .line 143
    invoke-direct {p0}, Landroid/filterpacks/videosrc/CameraSource;->createFormats()V

    #@22
    .line 146
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@28
    .line 148
    const-wide/16 v4, 0x0

    #@2a
    .line 147
    const/16 v3, 0x68

    #@2c
    .line 146
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/filterfw/core/GLFrame;

    #@32
    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    #@34
    .line 149
    new-instance v1, Landroid/graphics/SurfaceTexture;

    #@36
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    #@38
    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    #@3b
    move-result v2

    #@3c
    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #@3f
    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@41
    .line 151
    :try_start_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@43
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@45
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 158
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@4a
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@4c
    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    #@4f
    .line 160
    const/4 v1, 0x0

    #@50
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    #@52
    .line 161
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@54
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    #@57
    .line 133
    return-void

    #@58
    .line 152
    :catch_0
    move-exception v0

    #@59
    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@5b
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v3, "Could not bind camera surface texture: "

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    .line 154
    const-string/jumbo v3, "!"

    #@72
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v1
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "CameraSource"

    #@7
    const-string/jumbo v1, "Preparing"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 129
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@f
    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    #@12
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@15
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    #@17
    .line 126
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 14
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 166
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "CameraSource"

    #@8
    const-string/jumbo v2, "Processing new frame"

    #@b
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 168
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 170
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    #@14
    if-nez v0, :cond_2

    #@16
    .line 175
    const-wide/16 v2, 0x64

    #@18
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/filterpacks/videosrc/CameraSource;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    goto :goto_0

    #@1c
    .line 176
    :catch_0
    move-exception v9

    #@1d
    .line 177
    .local v9, "e":Ljava/lang/InterruptedException;
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@1f
    if-eqz v0, :cond_1

    #@21
    const-string/jumbo v0, "CameraSource"

    #@24
    const-string/jumbo v2, "Interrupted while waiting for new frame"

    #@27
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    goto :goto_0

    #@2b
    .line 180
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    #@2d
    .line 181
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@2f
    if-eqz v0, :cond_3

    #@31
    const-string/jumbo v0, "CameraSource"

    #@34
    const-string/jumbo v2, "Got new frame"

    #@37
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 184
    :cond_3
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@3c
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    #@3f
    .line 186
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@41
    if-eqz v0, :cond_4

    #@43
    const-string/jumbo v0, "CameraSource"

    #@46
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v3, "Using frame extractor in thread: "

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 187
    :cond_4
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@63
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    #@65
    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    #@68
    .line 188
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    #@6a
    .line 189
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    #@6c
    .line 190
    sget-object v4, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    #@6e
    move v3, v1

    #@6f
    move v5, v1

    #@70
    .line 188
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@73
    .line 191
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    #@75
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    #@77
    aget v1, v2, v1

    #@79
    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    #@7b
    const/4 v3, 0x1

    #@7c
    aget v2, v2, v3

    #@7e
    .line 192
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    #@80
    const/4 v4, 0x4

    #@81
    aget v3, v3, v4

    #@83
    iget-object v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    #@85
    const/4 v5, 0x5

    #@86
    aget v4, v4, v5

    #@88
    .line 193
    iget-object v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    #@8a
    const/16 v6, 0x8

    #@8c
    aget v5, v5, v6

    #@8e
    iget-object v6, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    #@90
    const/16 v7, 0x9

    #@92
    aget v6, v6, v7

    #@94
    .line 194
    iget-object v7, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    #@96
    const/16 v8, 0xc

    #@98
    aget v7, v7, v8

    #@9a
    iget-object v8, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    #@9c
    const/16 v11, 0xd

    #@9e
    aget v8, v8, v11

    #@a0
    .line 191
    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    #@a3
    .line 196
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@a6
    move-result-object v0

    #@a7
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@a9
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@ac
    move-result-object v10

    #@ad
    .line 197
    .local v10, "output":Landroid/filterfw/core/Frame;
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    #@af
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    #@b1
    invoke-virtual {v0, v1, v10}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@b4
    .line 199
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@b6
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    #@b9
    move-result-wide v12

    #@ba
    .line 200
    .local v12, "timestamp":J
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@bc
    if-eqz v0, :cond_5

    #@be
    const-string/jumbo v0, "CameraSource"

    #@c1
    new-instance v1, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v2, "Timestamp: "

    #@c9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v1

    #@cd
    long-to-double v2, v12

    #@ce
    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    #@d3
    div-double/2addr v2, v4

    #@d4
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    const-string/jumbo v2, " s"

    #@db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v1

    #@e3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    .line 201
    :cond_5
    invoke-virtual {v10, v12, v13}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@e9
    .line 203
    const-string/jumbo v0, "video"

    #@ec
    invoke-virtual {p0, v0, v10}, Landroid/filterpacks/videosrc/CameraSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@ef
    .line 206
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@f2
    .line 208
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    #@f4
    if-eqz v0, :cond_6

    #@f6
    const-string/jumbo v0, "CameraSource"

    #@f9
    const-string/jumbo v1, "Done processing new frame"

    #@fc
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ff
    .line 165
    :cond_6
    return-void
.end method

.method public declared-synchronized setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 269
    :try_start_0
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    #@3
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    #@8
    .line 270
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@a
    .line 271
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->isOpen()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 272
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    #@12
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    #@14
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit p0

    #@18
    .line 268
    return-void

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 115
    const-string/jumbo v0, "video"

    #@4
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/CameraSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 113
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 224
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@9
    .line 222
    :cond_0
    return-void
.end method
