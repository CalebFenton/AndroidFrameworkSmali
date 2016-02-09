.class public Landroid/filterfw/core/GLEnvironment;
.super Ljava/lang/Object;
.source "GLEnvironment.java"


# instance fields
.field private glEnvId:I

.field private mManageContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 148
    const-string/jumbo v0, "filterfw"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    #@6
    .line 37
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeAllocate()Z

    #@9
    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/filterfw/core/NativeAllocatorTag;)V
    .locals 1
    .param p1, "tag"    # Landroid/filterfw/core/NativeAllocatorTag;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    #@6
    .line 40
    return-void
.end method

.method public static isAnyContextActive()Z
    .locals 1

    #@0
    .prologue
    .line 78
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->nativeIsAnyContextActive()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private native nativeActivate()Z
.end method

.method private native nativeActivateSurfaceId(I)Z
.end method

.method private native nativeAddSurface(Landroid/view/Surface;)I
.end method

.method private native nativeAddSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I
.end method

.method private native nativeAddSurfaceWidthHeight(Landroid/view/Surface;II)I
.end method

.method private native nativeAllocate()Z
.end method

.method private native nativeDeactivate()Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private native nativeDisconnectSurfaceMediaSource(Landroid/media/MediaRecorder;)Z
.end method

.method private native nativeInitWithCurrentContext()Z
.end method

.method private native nativeInitWithNewContext()Z
.end method

.method private native nativeIsActive()Z
.end method

.method private static native nativeIsAnyContextActive()Z
.end method

.method private native nativeIsContextActive()Z
.end method

.method private native nativeRemoveSurfaceId(I)Z
.end method

.method private native nativeSetSurfaceTimestamp(J)Z
.end method

.method private native nativeSwapBuffers()Z
.end method


# virtual methods
.method public activate()V
    .locals 2

    #@0
    .prologue
    .line 82
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Looper;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 83
    const-string/jumbo v0, "FilterFramework"

    #@17
    const-string/jumbo v1, "Activating GL context in UI thread!"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 85
    :cond_0
    iget-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    #@1f
    if-eqz v0, :cond_1

    #@21
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeActivate()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 81
    :cond_1
    return-void

    #@28
    .line 86
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@2a
    const-string/jumbo v1, "Could not activate GLEnvironment!"

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
.end method

.method public activateSurfaceWithId(I)V
    .locals 3
    .param p1, "surfaceId"    # I

    #@0
    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeActivateSurfaceId(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Could not activate surface "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "!"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 129
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 2

    #@0
    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeDeactivate()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 90
    :cond_0
    return-void

    #@b
    .line 92
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "Could not deactivate GLEnvironment!"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/filterfw/core/GLEnvironment;->tearDown()V

    #@3
    .line 51
    return-void
.end method

.method public initWithCurrentContext()V
    .locals 2

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    #@3
    .line 64
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeInitWithCurrentContext()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    const-string/jumbo v1, "Could not initialize GLEnvironment with current context!"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 62
    :cond_0
    return-void
.end method

.method public initWithNewContext()V
    .locals 2

    #@0
    .prologue
    .line 56
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    #@3
    .line 57
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeInitWithNewContext()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    const-string/jumbo v1, "Could not initialize GLEnvironment with new context!"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 55
    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeIsActive()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isContextActive()Z
    .locals 1

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeIsContextActive()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public registerSurface(Landroid/view/Surface;)I
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurface(Landroid/view/Surface;)I

    #@3
    move-result v0

    #@4
    .line 104
    .local v0, "result":I
    if-gez v0, :cond_0

    #@6
    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Error registering surface "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, "!"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 107
    :cond_0
    return v0
.end method

.method public registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I
    .locals 4
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    #@0
    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    #@3
    move-result v0

    #@4
    .line 122
    .local v0, "result":I
    if-gez v0, :cond_0

    #@6
    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Error registering surface from MediaRecorder"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 124
    const-string/jumbo v3, "!"

    #@1b
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 126
    :cond_0
    return v0
.end method

.method public registerSurfaceTexture(Landroid/graphics/SurfaceTexture;II)I
    .locals 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 111
    new-instance v1, Landroid/view/Surface;

    #@2
    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    #@5
    .line 112
    .local v1, "surface":Landroid/view/Surface;
    invoke-direct {p0, v1, p2, p3}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurfaceWidthHeight(Landroid/view/Surface;II)I

    #@8
    move-result v0

    #@9
    .line 113
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    #@c
    .line 114
    if-gez v0, :cond_0

    #@e
    .line 115
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Error registering surfaceTexture "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, "!"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 117
    :cond_0
    return v0
.end method

.method public setSurfaceTimestamp(J)V
    .locals 3
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/GLEnvironment;->nativeSetSurfaceTimestamp(J)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v1, "Could not set timestamp for current surface!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 141
    :cond_0
    return-void
.end method

.method public swapBuffers()V
    .locals 2

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeSwapBuffers()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v1, "Error swapping EGL buffers!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 96
    :cond_0
    return-void
.end method

.method public declared-synchronized tearDown()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 44
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/GLEnvironment;->glEnvId:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 45
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeDeallocate()Z

    #@9
    .line 46
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/filterfw/core/GLEnvironment;->glEnvId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit p0

    #@d
    .line 43
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public unregisterSurfaceId(I)V
    .locals 3
    .param p1, "surfaceId"    # I

    #@0
    .prologue
    .line 136
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeRemoveSurfaceId(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Could not unregister surface "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "!"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 135
    :cond_0
    return-void
.end method
