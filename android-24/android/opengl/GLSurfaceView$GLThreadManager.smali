.class Landroid/opengl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1884
    const-string/jumbo v0, "GLThreadManager"

    #@3
    sput-object v0, Landroid/opengl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    #@5
    .line 1883
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/GLSurfaceView$GLThreadManager;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    #@3
    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1967
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 1969
    const-string/jumbo v0, "ro.opengles.version"

    #@8
    .line 1970
    const/4 v1, 0x0

    #@9
    .line 1968
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    #@f
    .line 1971
    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    #@11
    const/high16 v1, 0x20000

    #@13
    if-lt v0, v1, :cond_0

    #@15
    .line 1972
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    #@17
    .line 1978
    :cond_0
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    #@19
    .line 1966
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    monitor-enter p0

    #@3
    .line 1948
    :try_start_0
    iget-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    #@5
    if-nez v3, :cond_1

    #@7
    .line 1949
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    #@a
    .line 1950
    const/16 v3, 0x1f01

    #@c
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1951
    .local v0, "renderer":Ljava/lang/String;
    iget v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    #@12
    const/high16 v4, 0x20000

    #@14
    if-ge v3, v4, :cond_0

    #@16
    .line 1953
    const-string/jumbo v3, "Q3Dimension MSM7500 "

    #@19
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    move v3, v1

    #@20
    .line 1952
    :goto_0
    iput-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    #@22
    .line 1954
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@25
    .line 1956
    :cond_0
    iget-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    #@27
    if-eqz v3, :cond_3

    #@29
    :goto_1
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    #@2b
    .line 1962
    const/4 v1, 0x1

    #@2c
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    #@2f
    .line 1947
    return-void

    #@30
    .restart local v0    # "renderer":Ljava/lang/String;
    :cond_2
    move v3, v2

    #@31
    .line 1953
    goto :goto_0

    #@32
    :cond_3
    move v1, v2

    #@33
    .line 1956
    goto :goto_1

    #@34
    .end local v0    # "renderer":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@35
    monitor-exit p0

    #@36
    throw v1
.end method

.method public releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    #@0
    .prologue
    .line 1929
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1930
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    #@7
    .line 1932
    :cond_0
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@a
    .line 1928
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1939
    :try_start_0
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z
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

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1943
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    #@4
    .line 1944
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    monitor-exit p0

    #@a
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public declared-synchronized threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1890
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-static {p1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->-set0(Landroid/opengl/GLSurfaceView$GLThread;Z)Z

    #@5
    .line 1891
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    #@7
    if-ne v0, p1, :cond_0

    #@9
    .line 1892
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    #@c
    .line 1894
    :cond_0
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 1886
    return-void

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public tryAcquireEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1905
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    #@3
    if-eq v0, p1, :cond_0

    #@5
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1906
    :cond_0
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    #@b
    .line 1907
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@e
    .line 1908
    return v1

    #@f
    .line 1910
    :cond_1
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    #@12
    .line 1911
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1912
    return v1

    #@17
    .line 1918
    :cond_2
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    #@19
    if-eqz v0, :cond_3

    #@1b
    .line 1919
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    #@1d
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    #@20
    .line 1921
    :cond_3
    const/4 v0, 0x0

    #@21
    return v0
.end method
