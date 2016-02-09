.class public Landroid/filterpacks/videosrc/SurfaceTextureSource;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTextureSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;,
        Landroid/filterpacks/videosrc/SurfaceTextureSource$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureSource"

.field private static final mLogVerbose:Z

.field private static final mSourceCoords:[F


# instance fields
.field private mCloseOnTimeout:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "closeOnTimeout"
    .end annotation
.end field

.field private mFirstFrame:Z

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private mFrameTransform:[F

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mMappedCoords:[F

.field private mMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mNewFrameAvailable:Landroid/os/ConditionVariable;

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private final mRenderShader:Ljava/lang/String;

.field private mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "sourceListener"
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWaitTimeout:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "waitTimeout"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field

.field private onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/filterpacks/videosrc/SurfaceTextureSource;)Landroid/os/ConditionVariable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 114
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [F

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceCoords:[F

    #@9
    .line 131
    const-string/jumbo v0, "SurfaceTextureSource"

    #@c
    const/4 v1, 0x2

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@10
    move-result v0

    #@11
    sput-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    #@13
    .line 51
    return-void

    #@14
    .line 114
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
    .line 134
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@5
    .line 88
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitForNewFrame:Z

    #@8
    .line 94
    const/16 v0, 0x3e8

    #@a
    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitTimeout:I

    #@c
    .line 100
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mCloseOnTimeout:Z

    #@f
    .line 120
    const-string/jumbo v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    #@12
    .line 119
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mRenderShader:Ljava/lang/String;

    #@14
    .line 248
    new-instance v0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;

    #@16
    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;-><init>(Landroid/filterpacks/videosrc/SurfaceTextureSource;)V

    #@19
    .line 247
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1b
    .line 135
    new-instance v0, Landroid/os/ConditionVariable;

    #@1d
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    #@20
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    #@22
    .line 136
    new-array v0, v1, [F

    #@24
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    #@26
    .line 137
    new-array v0, v1, [F

    #@28
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    #@2a
    .line 133
    return-void
.end method

.method private createFormats()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 148
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWidth:I

    #@3
    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mHeight:I

    #@5
    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@b
    .line 147
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 227
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "SurfaceTextureSource"

    #@8
    const-string/jumbo v1, "SurfaceTextureSource closed"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 228
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    #@10
    invoke-interface {v0, v2}, Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    #@13
    .line 229
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@15
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    #@18
    .line 230
    iput-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@1a
    .line 226
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 242
    const-string/jumbo v0, "width"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "height"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 243
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@14
    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWidth:I

    #@16
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mHeight:I

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@1b
    .line 241
    :cond_1
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 170
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "SurfaceTextureSource"

    #@7
    const-string/jumbo v1, "Opening SurfaceTextureSource"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 172
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    #@f
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    #@11
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    #@14
    move-result v1

    #@15
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #@18
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@1a
    .line 174
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@1c
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1e
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    #@21
    .line 176
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    #@23
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@25
    invoke-interface {v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    #@28
    .line 177
    const/4 v0, 0x1

    #@29
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    #@2b
    .line 169
    return-void
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 155
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "SurfaceTextureSource"

    #@7
    const-string/jumbo v1, "Preparing SurfaceTextureSource"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 157
    :cond_0
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->createFormats()V

    #@10
    .line 160
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@16
    .line 162
    const-wide/16 v2, 0x0

    #@18
    .line 161
    const/16 v4, 0x68

    #@1a
    .line 160
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/filterfw/core/GLFrame;

    #@20
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    #@22
    .line 165
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@24
    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    #@27
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2a
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    #@2c
    .line 154
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 182
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "SurfaceTextureSource"

    #@8
    const-string/jumbo v2, "Processing new frame"

    #@b
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 185
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitForNewFrame:Z

    #@10
    if-nez v0, :cond_1

    #@12
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    #@14
    if-eqz v0, :cond_6

    #@16
    .line 187
    :cond_1
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitTimeout:I

    #@18
    if-eqz v0, :cond_4

    #@1a
    .line 188
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    #@1c
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitTimeout:I

    #@1e
    int-to-long v2, v2

    #@1f
    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    #@22
    move-result v9

    #@23
    .line 189
    .local v9, "gotNewFrame":Z
    if-nez v9, :cond_5

    #@25
    .line 190
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mCloseOnTimeout:Z

    #@27
    if-nez v0, :cond_2

    #@29
    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    #@2b
    const-string/jumbo v1, "Timeout waiting for new frame"

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 193
    :cond_2
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    #@34
    if-eqz v0, :cond_3

    #@36
    const-string/jumbo v0, "SurfaceTextureSource"

    #@39
    const-string/jumbo v1, "Timeout waiting for a new frame. Closing."

    #@3c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 194
    :cond_3
    const-string/jumbo v0, "video"

    #@42
    invoke-virtual {p0, v0}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->closeOutputPort(Ljava/lang/String;)V

    #@45
    .line 195
    return-void

    #@46
    .line 199
    .end local v9    # "gotNewFrame":Z
    :cond_4
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    #@48
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    #@4b
    .line 201
    :cond_5
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    #@4d
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    #@50
    .line 202
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    #@52
    .line 205
    :cond_6
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@54
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    #@57
    .line 207
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@59
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    #@5b
    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    #@5e
    .line 208
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    #@60
    .line 209
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    #@62
    .line 210
    sget-object v4, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceCoords:[F

    #@64
    move v3, v1

    #@65
    move v5, v1

    #@66
    .line 208
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@69
    .line 211
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    #@6b
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    #@6d
    aget v1, v2, v1

    #@6f
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    #@71
    const/4 v3, 0x1

    #@72
    aget v2, v2, v3

    #@74
    .line 212
    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    #@76
    const/4 v4, 0x4

    #@77
    aget v3, v3, v4

    #@79
    iget-object v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    #@7b
    const/4 v5, 0x5

    #@7c
    aget v4, v4, v5

    #@7e
    .line 213
    iget-object v5, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    #@80
    const/16 v6, 0x8

    #@82
    aget v5, v5, v6

    #@84
    iget-object v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    #@86
    const/16 v7, 0x9

    #@88
    aget v6, v6, v7

    #@8a
    .line 214
    iget-object v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    #@8c
    const/16 v8, 0xc

    #@8e
    aget v7, v7, v8

    #@90
    iget-object v8, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    #@92
    const/16 v11, 0xd

    #@94
    aget v8, v8, v11

    #@96
    .line 211
    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    #@99
    .line 216
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@9c
    move-result-object v0

    #@9d
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@9f
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@a2
    move-result-object v10

    #@a3
    .line 217
    .local v10, "output":Landroid/filterfw/core/Frame;
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    #@a5
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    #@a7
    invoke-virtual {v0, v1, v10}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@aa
    .line 219
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@ac
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    #@af
    move-result-wide v0

    #@b0
    invoke-virtual {v10, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@b3
    .line 221
    const-string/jumbo v0, "video"

    #@b6
    invoke-virtual {p0, v0, v10}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@b9
    .line 222
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@bc
    .line 181
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 143
    const-string/jumbo v0, "video"

    #@4
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 141
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 236
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@9
    .line 234
    :cond_0
    return-void
.end method
