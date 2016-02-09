.class public Landroid/filterpacks/videosrc/MediaSource;
.super Landroid/filterfw/core/Filter;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosrc/MediaSource$1;,
        Landroid/filterpacks/videosrc/MediaSource$2;,
        Landroid/filterpacks/videosrc/MediaSource$3;,
        Landroid/filterpacks/videosrc/MediaSource$4;
    }
.end annotation


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final PREP_TIMEOUT:I = 0x64

.field private static final PREP_TIMEOUT_REPEAT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaSource"

.field private static final mSourceCoords_0:[F

.field private static final mSourceCoords_180:[F

.field private static final mSourceCoords_270:[F

.field private static final mSourceCoords_90:[F


# instance fields
.field private mCompleted:Z

.field private mContext:Landroid/content/Context;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "context"
    .end annotation
.end field

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private final mFrameShader:Ljava/lang/String;

.field private mGotSize:Z

.field private mHeight:I

.field private final mLogVerbose:Z

.field private mLooping:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "loop"
    .end annotation
.end field

.field private mMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNewFrameAvailable:Z

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mOrientationUpdated:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mPaused:Z

.field private mPlaying:Z

.field private mPrepared:Z

.field private mSelectedIsUrl:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceIsUrl"
    .end annotation
.end field

.field private mSourceAsset:Landroid/content/res/AssetFileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceAsset"
    .end annotation
.end field

.field private mSourceUrl:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceUrl"
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVolume:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "volume"
    .end annotation
.end field

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method static synthetic -get0(Landroid/filterpacks/videosrc/MediaSource;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/filterpacks/videosrc/MediaSource;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/filterpacks/videosrc/MediaSource;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/filterpacks/videosrc/MediaSource;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/filterpacks/videosrc/MediaSource;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 136
    new-array v0, v1, [F

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    #@9
    .line 140
    new-array v0, v1, [F

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    #@10
    .line 144
    new-array v0, v1, [F

    #@12
    fill-array-data v0, :array_2

    #@15
    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    #@17
    .line 148
    new-array v0, v1, [F

    #@19
    fill-array-data v0, :array_3

    #@1c
    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    #@1e
    .line 46
    return-void

    #@1f
    .line 136
    nop

    #@20
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@44
    .line 140
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@68
    .line 144
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@8c
    .line 148
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
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
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 165
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@6
    .line 54
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    #@b
    .line 58
    iput-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    #@d
    .line 64
    iput-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    #@f
    .line 70
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    #@11
    .line 77
    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    #@13
    .line 83
    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    #@15
    .line 89
    const/4 v0, 0x0

    #@16
    iput v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    #@18
    .line 95
    iput v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    #@1a
    .line 114
    const-string/jumbo v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    #@1d
    .line 113
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameShader:Ljava/lang/String;

    #@1f
    .line 512
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$1;

    #@21
    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$1;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    #@24
    .line 511
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@26
    .line 537
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$2;

    #@28
    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$2;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    #@2b
    .line 536
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@2d
    .line 548
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$3;

    #@2f
    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$3;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    #@32
    .line 547
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@34
    .line 558
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$4;

    #@36
    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$4;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    #@39
    .line 557
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@3b
    .line 166
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    #@3d
    .line 168
    const-string/jumbo v0, "MediaSource"

    #@40
    const/4 v1, 0x2

    #@41
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@44
    move-result v0

    #@45
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@47
    .line 164
    return-void
.end method

.method private createFormats()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 179
    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@7
    .line 178
    return-void
.end method

.method private declared-synchronized setupMediaPlayer(Z)Z
    .locals 10
    .param p1, "useUrl"    # Z

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 434
    const/4 v0, 0x0

    #@3
    :try_start_0
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    #@5
    .line 435
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    #@8
    .line 436
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    #@b
    .line 437
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    #@e
    .line 438
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    #@11
    .line 439
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    #@14
    .line 441
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    const-string/jumbo v0, "MediaSource"

    #@1b
    const-string/jumbo v1, "Setting up playback."

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 443
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 445
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@27
    if-eqz v0, :cond_1

    #@29
    const-string/jumbo v0, "MediaSource"

    #@2c
    const-string/jumbo v1, "Resetting existing MediaPlayer."

    #@2f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 446
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@34
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    #@37
    .line 453
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@39
    if-nez v0, :cond_4

    #@3b
    .line 454
    new-instance v0, Ljava/lang/RuntimeException;

    #@3d
    const-string/jumbo v1, "Unable to create a MediaPlayer!"

    #@40
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    :catchall_0
    move-exception v0

    #@45
    monitor-exit p0

    #@46
    throw v0

    #@47
    .line 449
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@49
    if-eqz v0, :cond_3

    #@4b
    const-string/jumbo v0, "MediaSource"

    #@4e
    const-string/jumbo v1, "Creating new MediaPlayer."

    #@51
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 450
    :cond_3
    new-instance v0, Landroid/media/MediaPlayer;

    #@56
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    #@59
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    goto :goto_0

    #@5c
    .line 459
    :cond_4
    if-eqz p1, :cond_8

    #@5e
    .line 460
    :try_start_2
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@60
    if-eqz v0, :cond_5

    #@62
    const-string/jumbo v0, "MediaSource"

    #@65
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v2, "Setting MediaPlayer source to URI "

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 461
    :cond_5
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    #@80
    if-nez v0, :cond_7

    #@82
    .line 462
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@84
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    #@86
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@89
    .line 488
    :goto_1
    :try_start_3
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8b
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    #@8d
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    #@90
    .line 489
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@92
    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    #@94
    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    #@96
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    #@99
    .line 492
    new-instance v8, Landroid/view/Surface;

    #@9b
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@9d
    invoke-direct {v8, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    #@a0
    .line 493
    .local v8, "surface":Landroid/view/Surface;
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@a2
    invoke-virtual {v0, v8}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    #@a5
    .line 494
    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    #@a8
    .line 498
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@aa
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@ac
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    #@af
    .line 499
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@b1
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@b3
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    #@b6
    .line 500
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@b8
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@ba
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    #@bd
    .line 503
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@bf
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@c1
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    #@c4
    .line 505
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@c6
    if-eqz v0, :cond_6

    #@c8
    const-string/jumbo v0, "MediaSource"

    #@cb
    const-string/jumbo v1, "Preparing MediaPlayer."

    #@ce
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d1
    .line 506
    :cond_6
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@d3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@d6
    monitor-exit p0

    #@d7
    .line 508
    return v9

    #@d8
    .line 464
    .end local v8    # "surface":Landroid/view/Surface;
    :cond_7
    :try_start_4
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@da
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    #@dc
    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    #@de
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@e1
    move-result-object v2

    #@e2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@e5
    move-result-object v2

    #@e6
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e9
    goto :goto_1

    #@ea
    .line 470
    :catch_0
    move-exception v6

    #@eb
    .line 471
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@ed
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    #@f0
    .line 472
    const/4 v0, 0x0

    #@f1
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@f3
    .line 473
    if-eqz p1, :cond_b

    #@f5
    .line 474
    new-instance v0, Ljava/lang/RuntimeException;

    #@f7
    const-string/jumbo v1, "Unable to set MediaPlayer to URL %s!"

    #@fa
    const/4 v2, 0x1

    #@fb
    new-array v2, v2, [Ljava/lang/Object;

    #@fd
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    #@ff
    const/4 v4, 0x0

    #@100
    aput-object v3, v2, v4

    #@102
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@105
    move-result-object v1

    #@106
    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@109
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@10a
    .line 467
    .end local v6    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_6
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@10c
    if-eqz v0, :cond_9

    #@10e
    const-string/jumbo v0, "MediaSource"

    #@111
    new-instance v1, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string/jumbo v2, "Setting MediaPlayer source to asset "

    #@119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v1

    #@11d
    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    #@11f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v1

    #@123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v1

    #@127
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@12a
    .line 468
    :cond_9
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@12c
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    #@12e
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@131
    move-result-object v1

    #@132
    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    #@134
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@137
    move-result-wide v2

    #@138
    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    #@13a
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    #@13d
    move-result-wide v4

    #@13e
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@141
    goto/16 :goto_1

    #@143
    .line 478
    :catch_1
    move-exception v7

    #@144
    .line 479
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@146
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    #@149
    .line 480
    const/4 v0, 0x0

    #@14a
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@14c
    .line 481
    if-eqz p1, :cond_a

    #@14e
    .line 482
    new-instance v0, Ljava/lang/RuntimeException;

    #@150
    const-string/jumbo v1, "Unable to set MediaPlayer to URL %s!"

    #@153
    const/4 v2, 0x1

    #@154
    new-array v2, v2, [Ljava/lang/Object;

    #@156
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    #@158
    const/4 v4, 0x0

    #@159
    aput-object v3, v2, v4

    #@15b
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15e
    move-result-object v1

    #@15f
    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@162
    throw v0

    #@163
    .line 484
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    #@165
    const-string/jumbo v1, "Unable to set MediaPlayer to asset %s!"

    #@168
    const/4 v2, 0x1

    #@169
    new-array v2, v2, [Ljava/lang/Object;

    #@16b
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    #@16d
    const/4 v4, 0x0

    #@16e
    aput-object v3, v2, v4

    #@170
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@173
    move-result-object v1

    #@174
    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@177
    throw v0

    #@178
    .line 476
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "e":Ljava/io/IOException;
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    #@17a
    const-string/jumbo v1, "Unable to set MediaPlayer to asset %s!"

    #@17d
    const/4 v2, 0x1

    #@17e
    new-array v2, v2, [Ljava/lang/Object;

    #@180
    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    #@182
    const/4 v4, 0x0

    #@183
    aput-object v3, v2, v4

    #@185
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@188
    move-result-object v1

    #@189
    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18c
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 347
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 348
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@c
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    #@f
    .line 350
    :cond_0
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    #@11
    .line 351
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    #@13
    .line 352
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    #@15
    .line 353
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    #@17
    .line 354
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    #@19
    .line 355
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    #@1b
    .line 357
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@1d
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    #@20
    .line 358
    iput-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@22
    .line 359
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@24
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    #@27
    .line 360
    iput-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@29
    .line 361
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@2b
    if-eqz v0, :cond_1

    #@2d
    const-string/jumbo v0, "MediaSource"

    #@30
    const-string/jumbo v1, "MediaSource closed"

    #@33
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 346
    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 379
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "MediaSource"

    #@7
    const-string/jumbo v1, "Parameter update"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 380
    :cond_0
    const-string/jumbo v0, "sourceUrl"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_3

    #@16
    .line 381
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 382
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@1e
    if-eqz v0, :cond_1

    #@20
    const-string/jumbo v0, "MediaSource"

    #@23
    const-string/jumbo v1, "Opening new source URL"

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 383
    :cond_1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 384
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    #@2f
    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    #@32
    .line 378
    :cond_2
    :goto_0
    return-void

    #@33
    .line 387
    :cond_3
    const-string/jumbo v0, "sourceAsset"

    #@36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_5

    #@3c
    .line 388
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_2

    #@42
    .line 389
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@44
    if-eqz v0, :cond_4

    #@46
    const-string/jumbo v0, "MediaSource"

    #@49
    const-string/jumbo v1, "Opening new source FD"

    #@4c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 390
    :cond_4
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    #@51
    if-nez v0, :cond_2

    #@53
    .line 391
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    #@55
    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    #@58
    goto :goto_0

    #@59
    .line 394
    :cond_5
    const-string/jumbo v0, "loop"

    #@5c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_6

    #@62
    .line 395
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_2

    #@68
    .line 396
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@6a
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    #@6c
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    #@6f
    goto :goto_0

    #@70
    .line 398
    :cond_6
    const-string/jumbo v0, "sourceIsUrl"

    #@73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v0

    #@77
    if-eqz v0, :cond_9

    #@79
    .line 399
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_2

    #@7f
    .line 400
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    #@81
    if-eqz v0, :cond_8

    #@83
    .line 401
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@85
    if-eqz v0, :cond_7

    #@87
    const-string/jumbo v0, "MediaSource"

    #@8a
    const-string/jumbo v1, "Opening new source URL"

    #@8d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 405
    :cond_7
    :goto_1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    #@92
    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    #@95
    goto :goto_0

    #@96
    .line 403
    :cond_8
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@98
    if-eqz v0, :cond_7

    #@9a
    const-string/jumbo v0, "MediaSource"

    #@9d
    const-string/jumbo v1, "Opening new source Asset"

    #@a0
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    goto :goto_1

    #@a4
    .line 407
    :cond_9
    const-string/jumbo v0, "volume"

    #@a7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v0

    #@ab
    if-eqz v0, :cond_a

    #@ad
    .line 408
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    #@b0
    move-result v0

    #@b1
    if-eqz v0, :cond_2

    #@b3
    .line 409
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@b5
    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    #@b7
    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    #@b9
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    #@bc
    goto/16 :goto_0

    #@be
    .line 411
    :cond_a
    const-string/jumbo v0, "orientation"

    #@c1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v0

    #@c5
    if-eqz v0, :cond_2

    #@c7
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    #@c9
    if-eqz v0, :cond_2

    #@cb
    .line 412
    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    #@cd
    if-eqz v0, :cond_b

    #@cf
    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    #@d1
    const/16 v1, 0xb4

    #@d3
    if-ne v0, v1, :cond_c

    #@d5
    .line 413
    :cond_b
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@d7
    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    #@d9
    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    #@db
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@de
    .line 417
    :goto_2
    const/4 v0, 0x1

    #@df
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    #@e1
    goto/16 :goto_0

    #@e3
    .line 415
    :cond_c
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@e5
    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    #@e7
    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    #@e9
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@ec
    goto :goto_2
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 198
    const-string/jumbo v0, "MediaSource"

    #@7
    const-string/jumbo v1, "Opening MediaSource"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 199
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 200
    const-string/jumbo v0, "MediaSource"

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Current URL is "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 206
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@30
    move-result-object v0

    #@31
    .line 207
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@33
    .line 209
    const-wide/16 v2, 0x0

    #@35
    .line 208
    const/16 v4, 0x68

    #@37
    .line 206
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/filterfw/core/GLFrame;

    #@3d
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    #@3f
    .line 211
    new-instance v0, Landroid/graphics/SurfaceTexture;

    #@41
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    #@43
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    #@46
    move-result v1

    #@47
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #@4a
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@4c
    .line 213
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    #@4e
    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    #@51
    move-result v0

    #@52
    if-nez v0, :cond_2

    #@54
    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    #@56
    const-string/jumbo v1, "Error setting up MediaPlayer!"

    #@59
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0

    #@5d
    .line 202
    :cond_1
    const-string/jumbo v0, "MediaSource"

    #@60
    const-string/jumbo v1, "Current source is Asset!"

    #@63
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    goto :goto_0

    #@67
    .line 196
    :cond_2
    return-void
.end method

.method public declared-synchronized pauseVideo(Z)V
    .locals 1
    .param p1, "pauseState"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 422
    :try_start_0
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 423
    if-eqz p1, :cond_0

    #@9
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 425
    :cond_0
    if-nez p1, :cond_1

    #@f
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 426
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@15
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    #@18
    .line 429
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 421
    return-void

    #@1c
    .line 424
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@1e
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    goto :goto_0

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    #@2
    .line 185
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "MediaSource"

    #@9
    const-string/jumbo v1, "Preparing MediaSource"

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 187
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@11
    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    #@14
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@17
    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    #@19
    .line 190
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    #@1b
    const/4 v1, 0x0

    #@1c
    const/high16 v2, -0x40800000    # -1.0f

    #@1e
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@21
    .line 192
    invoke-direct {p0}, Landroid/filterpacks/videosrc/MediaSource;->createFormats()V

    #@24
    .line 184
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 20
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 221
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    const-string/jumbo v3, "MediaSource"

    #@9
    const-string/jumbo v5, "Processing new frame"

    #@c
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 223
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@13
    if-nez v3, :cond_1

    #@15
    .line 225
    new-instance v3, Ljava/lang/NullPointerException;

    #@17
    const-string/jumbo v5, "Unexpected null media player!"

    #@1a
    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 228
    :cond_1
    move-object/from16 v0, p0

    #@20
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 230
    const-string/jumbo v3, "video"

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    #@2c
    .line 231
    return-void

    #@2d
    .line 234
    :cond_2
    move-object/from16 v0, p0

    #@2f
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    #@31
    if-nez v3, :cond_5

    #@33
    .line 235
    const/16 v17, 0x0

    #@35
    .line 236
    .local v17, "waitCount":I
    move-object/from16 v0, p0

    #@37
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@39
    if-eqz v3, :cond_3

    #@3b
    const-string/jumbo v3, "MediaSource"

    #@3e
    const-string/jumbo v5, "Waiting for preparation to complete"

    #@41
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 237
    :cond_3
    move-object/from16 v0, p0

    #@46
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    #@48
    if-eqz v3, :cond_9

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    #@4e
    if-eqz v3, :cond_9

    #@50
    .line 254
    move-object/from16 v0, p0

    #@52
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@54
    if-eqz v3, :cond_4

    #@56
    const-string/jumbo v3, "MediaSource"

    #@59
    const-string/jumbo v5, "Starting playback"

    #@5c
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 255
    :cond_4
    move-object/from16 v0, p0

    #@61
    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@63
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    #@66
    .line 260
    .end local v17    # "waitCount":I
    :cond_5
    move-object/from16 v0, p0

    #@68
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    #@6a
    if-eqz v3, :cond_b

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    #@70
    if-eqz v3, :cond_b

    #@72
    .line 290
    :goto_0
    move-object/from16 v0, p0

    #@74
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    #@76
    if-eqz v3, :cond_7

    #@78
    .line 291
    const/16 v3, 0x10

    #@7a
    new-array v4, v3, [F

    #@7c
    .line 292
    .local v4, "surfaceTransform":[F
    move-object/from16 v0, p0

    #@7e
    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@80
    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    #@83
    .line 294
    const/16 v3, 0x10

    #@85
    new-array v2, v3, [F

    #@87
    .line 295
    .local v2, "sourceCoords":[F
    move-object/from16 v0, p0

    #@89
    iget v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    #@8b
    sparse-switch v3, :sswitch_data_0

    #@8e
    .line 300
    :sswitch_0
    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    #@90
    .line 298
    const/4 v3, 0x0

    #@91
    .line 299
    const/4 v5, 0x0

    #@92
    .line 300
    const/4 v7, 0x0

    #@93
    .line 298
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@96
    .line 318
    :goto_1
    move-object/from16 v0, p0

    #@98
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@9a
    if-eqz v3, :cond_6

    #@9c
    .line 319
    const-string/jumbo v3, "MediaSource"

    #@9f
    new-instance v5, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v6, "OrientationHint = "

    #@a7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v5

    #@ab
    move-object/from16 v0, p0

    #@ad
    iget v6, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    #@af
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v5

    #@b7
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    .line 320
    const-string/jumbo v3, "SetSourceRegion: %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f"

    #@bd
    const/16 v5, 0x8

    #@bf
    new-array v5, v5, [Ljava/lang/Object;

    #@c1
    .line 321
    const/4 v6, 0x4

    #@c2
    aget v6, v2, v6

    #@c4
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@c7
    move-result-object v6

    #@c8
    const/4 v7, 0x0

    #@c9
    aput-object v6, v5, v7

    #@cb
    const/4 v6, 0x5

    #@cc
    aget v6, v2, v6

    #@ce
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@d1
    move-result-object v6

    #@d2
    const/4 v7, 0x1

    #@d3
    aput-object v6, v5, v7

    #@d5
    const/4 v6, 0x0

    #@d6
    aget v6, v2, v6

    #@d8
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@db
    move-result-object v6

    #@dc
    const/4 v7, 0x2

    #@dd
    aput-object v6, v5, v7

    #@df
    const/4 v6, 0x1

    #@e0
    aget v6, v2, v6

    #@e2
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e5
    move-result-object v6

    #@e6
    const/4 v7, 0x3

    #@e7
    aput-object v6, v5, v7

    #@e9
    .line 322
    const/16 v6, 0xc

    #@eb
    aget v6, v2, v6

    #@ed
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@f0
    move-result-object v6

    #@f1
    const/4 v7, 0x4

    #@f2
    aput-object v6, v5, v7

    #@f4
    const/16 v6, 0xd

    #@f6
    aget v6, v2, v6

    #@f8
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@fb
    move-result-object v6

    #@fc
    const/4 v7, 0x5

    #@fd
    aput-object v6, v5, v7

    #@ff
    const/16 v6, 0x8

    #@101
    aget v6, v2, v6

    #@103
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@106
    move-result-object v6

    #@107
    const/4 v7, 0x6

    #@108
    aput-object v6, v5, v7

    #@10a
    const/16 v6, 0x9

    #@10c
    aget v6, v2, v6

    #@10e
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@111
    move-result-object v6

    #@112
    const/4 v7, 0x7

    #@113
    aput-object v6, v5, v7

    #@115
    .line 320
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@118
    move-result-object v16

    #@119
    .line 323
    .local v16, "temp":Ljava/lang/String;
    const-string/jumbo v3, "MediaSource"

    #@11c
    move-object/from16 v0, v16

    #@11e
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@121
    .line 325
    .end local v16    # "temp":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    #@123
    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    #@125
    const/4 v3, 0x4

    #@126
    aget v6, v2, v3

    #@128
    const/4 v3, 0x5

    #@129
    aget v7, v2, v3

    #@12b
    .line 326
    const/4 v3, 0x0

    #@12c
    aget v8, v2, v3

    #@12e
    const/4 v3, 0x1

    #@12f
    aget v9, v2, v3

    #@131
    .line 327
    const/16 v3, 0xc

    #@133
    aget v10, v2, v3

    #@135
    const/16 v3, 0xd

    #@137
    aget v11, v2, v3

    #@139
    .line 328
    const/16 v3, 0x8

    #@13b
    aget v12, v2, v3

    #@13d
    const/16 v3, 0x9

    #@13f
    aget v13, v2, v3

    #@141
    .line 325
    invoke-virtual/range {v5 .. v13}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    #@144
    .line 329
    const/4 v3, 0x0

    #@145
    move-object/from16 v0, p0

    #@147
    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    #@149
    .line 332
    .end local v2    # "sourceCoords":[F
    .end local v4    # "surfaceTransform":[F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@14c
    move-result-object v3

    #@14d
    move-object/from16 v0, p0

    #@14f
    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@151
    invoke-virtual {v3, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@154
    move-result-object v15

    #@155
    .line 333
    .local v15, "output":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@157
    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    #@159
    move-object/from16 v0, p0

    #@15b
    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    #@15d
    invoke-virtual {v3, v5, v15}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@160
    .line 335
    move-object/from16 v0, p0

    #@162
    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@164
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    #@167
    move-result-wide v18

    #@168
    .line 336
    .local v18, "timestamp":J
    move-object/from16 v0, p0

    #@16a
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@16c
    if-eqz v3, :cond_8

    #@16e
    const-string/jumbo v3, "MediaSource"

    #@171
    new-instance v5, Ljava/lang/StringBuilder;

    #@173
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@176
    const-string/jumbo v6, "Timestamp: "

    #@179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v5

    #@17d
    move-wide/from16 v0, v18

    #@17f
    long-to-double v6, v0

    #@180
    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    #@185
    div-double/2addr v6, v8

    #@186
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@189
    move-result-object v5

    #@18a
    const-string/jumbo v6, " s"

    #@18d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v5

    #@191
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@194
    move-result-object v5

    #@195
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@198
    .line 337
    :cond_8
    move-wide/from16 v0, v18

    #@19a
    invoke-virtual {v15, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@19d
    .line 339
    const-string/jumbo v3, "video"

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    invoke-virtual {v0, v3, v15}, Landroid/filterpacks/videosrc/MediaSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@1a5
    .line 340
    invoke-virtual {v15}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@1a8
    .line 342
    const/4 v3, 0x1

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    #@1ad
    .line 219
    return-void

    #@1ae
    .line 239
    .end local v15    # "output":Landroid/filterfw/core/Frame;
    .end local v18    # "timestamp":J
    .restart local v17    # "waitCount":I
    :cond_9
    const-wide/16 v6, 0x64

    #@1b0
    :try_start_0
    move-object/from16 v0, p0

    #@1b2
    invoke-virtual {v0, v6, v7}, Landroid/filterpacks/videosrc/MediaSource;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b5
    .line 243
    :goto_2
    move-object/from16 v0, p0

    #@1b7
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    #@1b9
    if-eqz v3, :cond_a

    #@1bb
    .line 245
    const-string/jumbo v3, "video"

    #@1be
    move-object/from16 v0, p0

    #@1c0
    invoke-virtual {v0, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    #@1c3
    .line 246
    return-void

    #@1c4
    .line 240
    :catch_0
    move-exception v14

    #@1c5
    .local v14, "e":Ljava/lang/InterruptedException;
    goto :goto_2

    #@1c6
    .line 248
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :cond_a
    add-int/lit8 v17, v17, 0x1

    #@1c8
    .line 249
    const/16 v3, 0x64

    #@1ca
    move/from16 v0, v17

    #@1cc
    if-ne v0, v3, :cond_3

    #@1ce
    .line 250
    move-object/from16 v0, p0

    #@1d0
    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@1d2
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    #@1d5
    .line 251
    new-instance v3, Ljava/lang/RuntimeException;

    #@1d7
    const-string/jumbo v5, "MediaPlayer timed out while preparing!"

    #@1da
    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1dd
    throw v3

    #@1de
    .line 261
    .end local v17    # "waitCount":I
    :cond_b
    move-object/from16 v0, p0

    #@1e0
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    #@1e2
    if-eqz v3, :cond_11

    #@1e4
    .line 262
    move-object/from16 v0, p0

    #@1e6
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@1e8
    if-eqz v3, :cond_c

    #@1ea
    const-string/jumbo v3, "MediaSource"

    #@1ed
    const-string/jumbo v5, "Waiting for new frame"

    #@1f0
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f3
    .line 264
    :cond_c
    const/16 v17, 0x0

    #@1f5
    .line 265
    .restart local v17    # "waitCount":I
    :goto_3
    move-object/from16 v0, p0

    #@1f7
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    #@1f9
    if-nez v3, :cond_10

    #@1fb
    .line 266
    const/16 v3, 0xa

    #@1fd
    move/from16 v0, v17

    #@1ff
    if-ne v0, v3, :cond_e

    #@201
    .line 267
    move-object/from16 v0, p0

    #@203
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    #@205
    if-eqz v3, :cond_d

    #@207
    .line 269
    const-string/jumbo v3, "video"

    #@20a
    move-object/from16 v0, p0

    #@20c
    invoke-virtual {v0, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    #@20f
    .line 270
    return-void

    #@210
    .line 272
    :cond_d
    new-instance v3, Ljava/lang/RuntimeException;

    #@212
    const-string/jumbo v5, "Timeout waiting for new frame!"

    #@215
    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@218
    throw v3

    #@219
    .line 276
    :cond_e
    const-wide/16 v6, 0x64

    #@21b
    :try_start_1
    move-object/from16 v0, p0

    #@21d
    invoke-virtual {v0, v6, v7}, Landroid/filterpacks/videosrc/MediaSource;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@220
    .line 281
    :cond_f
    :goto_4
    add-int/lit8 v17, v17, 0x1

    #@222
    goto :goto_3

    #@223
    .line 277
    :catch_1
    move-exception v14

    #@224
    .line 278
    .restart local v14    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    #@226
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@228
    if-eqz v3, :cond_f

    #@22a
    const-string/jumbo v3, "MediaSource"

    #@22d
    const-string/jumbo v5, "interrupted"

    #@230
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@233
    goto :goto_4

    #@234
    .line 283
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :cond_10
    const/4 v3, 0x0

    #@235
    move-object/from16 v0, p0

    #@237
    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    #@239
    .line 284
    move-object/from16 v0, p0

    #@23b
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    #@23d
    if-eqz v3, :cond_11

    #@23f
    const-string/jumbo v3, "MediaSource"

    #@242
    const-string/jumbo v5, "Got new frame"

    #@245
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@248
    .line 287
    .end local v17    # "waitCount":I
    :cond_11
    move-object/from16 v0, p0

    #@24a
    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@24c
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    #@24f
    .line 288
    const/4 v3, 0x1

    #@250
    move-object/from16 v0, p0

    #@252
    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    #@254
    goto/16 :goto_0

    #@256
    .line 305
    .restart local v2    # "sourceCoords":[F
    .restart local v4    # "surfaceTransform":[F
    :sswitch_1
    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    #@258
    .line 303
    const/4 v3, 0x0

    #@259
    .line 304
    const/4 v5, 0x0

    #@25a
    .line 305
    const/4 v7, 0x0

    #@25b
    .line 303
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@25e
    goto/16 :goto_1

    #@260
    .line 310
    :sswitch_2
    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    #@262
    .line 308
    const/4 v3, 0x0

    #@263
    .line 309
    const/4 v5, 0x0

    #@264
    .line 310
    const/4 v7, 0x0

    #@265
    .line 308
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@268
    goto/16 :goto_1

    #@26a
    .line 315
    :sswitch_3
    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    #@26c
    .line 313
    const/4 v3, 0x0

    #@26d
    .line 314
    const/4 v5, 0x0

    #@26e
    .line 315
    const/4 v7, 0x0

    #@26f
    .line 313
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@272
    goto/16 :goto_1

    #@274
    .line 295
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 174
    const-string/jumbo v0, "video"

    #@4
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/MediaSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 172
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 367
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@9
    .line 365
    :cond_0
    return-void
.end method
