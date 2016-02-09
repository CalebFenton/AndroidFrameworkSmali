.class public Landroid/filterfw/core/FilterSurfaceView;
.super Landroid/view/SurfaceView;
.source "FilterSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static STATE_ALLOCATED:I

.field private static STATE_CREATED:I

.field private static STATE_INITIALIZED:I


# instance fields
.field private mFormat:I

.field private mGLEnv:Landroid/filterfw/core/GLEnvironment;

.field private mHeight:I

.field private mListener:Landroid/view/SurfaceHolder$Callback;

.field private mState:I

.field private mSurfaceId:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    const/4 v0, 0x0

    #@1
    sput v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    #@3
    .line 31
    const/4 v0, 0x1

    #@4
    sput v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    #@6
    .line 32
    const/4 v0, 0x2

    #@7
    sput v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    #@9
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    #@3
    .line 34
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    #@5
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    #@7
    .line 40
    const/4 v0, -0x1

    #@8
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    #@a
    .line 44
    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    #@11
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 34
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    #@5
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    #@7
    .line 40
    const/4 v0, -0x1

    #@8
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    #@a
    .line 49
    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    #@11
    .line 47
    return-void
.end method

.method private registerSurface()V
    .locals 3

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    #@2
    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    #@10
    .line 146
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    #@12
    if-gez v0, :cond_0

    #@14
    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Could not register Surface: "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 148
    const-string/jumbo v2, " in FilterSurfaceView!"

    #@31
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 144
    :cond_0
    return-void
.end method

.method private unregisterSurface()V
    .locals 2

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    #@6
    if-lez v0, :cond_0

    #@8
    .line 153
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    #@a
    iget v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    #@c
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    #@f
    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V
    .locals 5
    .param p1, "listener"    # Landroid/view/SurfaceHolder$Callback;
    .param p2, "glEnv"    # Landroid/filterfw/core/GLEnvironment;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 54
    if-nez p1, :cond_0

    #@3
    .line 55
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "Attempting to bind null filter to SurfaceView!"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@11
    if-eqz v0, :cond_1

    #@13
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@15
    if-eq v0, p1, :cond_1

    #@17
    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    #@19
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Attempting to bind filter "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, " to SurfaceView with another open "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 59
    const-string/jumbo v2, "filter "

    #@33
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 59
    iget-object v2, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@39
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 59
    const-string/jumbo v2, " attached already!"

    #@40
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 63
    :cond_1
    iput-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@4e
    .line 66
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    #@50
    if-eqz v0, :cond_2

    #@52
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    #@54
    if-eq v0, p2, :cond_2

    #@56
    .line 67
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    #@58
    iget v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    #@5a
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    #@5d
    .line 69
    :cond_2
    iput-object p2, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    #@5f
    .line 72
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    #@61
    sget v1, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    #@63
    if-lt v0, v1, :cond_3

    #@65
    .line 75
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->registerSurface()V

    #@68
    .line 78
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@6a
    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@6d
    move-result-object v1

    #@6e
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@71
    .line 81
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    #@73
    sget v1, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    #@75
    if-ne v0, v1, :cond_3

    #@77
    .line 82
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@79
    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@7c
    move-result-object v1

    #@7d
    iget v2, p0, Landroid/filterfw/core/FilterSurfaceView;->mFormat:I

    #@7f
    iget v3, p0, Landroid/filterfw/core/FilterSurfaceView;->mWidth:I

    #@81
    iget v4, p0, Landroid/filterfw/core/FilterSurfaceView;->mHeight:I

    #@83
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@86
    :cond_3
    monitor-exit p0

    #@87
    .line 52
    return-void
.end method

.method public declared-synchronized getGLEnv()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 96
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getSurfaceId()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 92
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 120
    :try_start_0
    iput p2, p0, Landroid/filterfw/core/FilterSurfaceView;->mFormat:I

    #@3
    .line 121
    iput p3, p0, Landroid/filterfw/core/FilterSurfaceView;->mWidth:I

    #@5
    .line 122
    iput p4, p0, Landroid/filterfw/core/FilterSurfaceView;->mHeight:I

    #@7
    .line 123
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    #@9
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    #@b
    .line 126
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 127
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@11
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit p0

    #@15
    .line 118
    return-void

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 101
    :try_start_0
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    #@3
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    #@5
    .line 104
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 105
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->registerSurface()V

    #@c
    .line 109
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 110
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@12
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    .line 100
    return-void

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 133
    :try_start_0
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    #@3
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    #@5
    .line 136
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 137
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    #@b
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@e
    .line 141
    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->unregisterSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 132
    return-void

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public declared-synchronized unbind()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 88
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 87
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method
