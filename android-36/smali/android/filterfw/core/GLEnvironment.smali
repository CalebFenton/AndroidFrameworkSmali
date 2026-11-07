.class public Landroid/filterfw/core/GLEnvironment;
.super Ljava/lang/Object;
.source "GLEnvironment.java"


# instance fields
.field private greylist-max-o glEnvId:I

.field private greylist-max-o mManageContext:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    .line 37
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeAllocate()Z

    .line 38
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/filterfw/core/NativeAllocatorTag;)V
    .registers 3
    .param p1, "tag"    # Landroid/filterfw/core/NativeAllocatorTag;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    .line 41
    return-void
.end method

.method public static greylist-max-o isAnyContextActive()Z
    .registers 1

    .line 79
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->nativeIsAnyContextActive()Z

    move-result v0

    return v0
.end method

.method private native greylist-max-o nativeActivate()Z
.end method

.method private native greylist-max-o nativeActivateSurfaceId(I)Z
.end method

.method private native greylist-max-o nativeAddSurface(Landroid/view/Surface;)I
.end method

.method private native greylist-max-o nativeAddSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I
.end method

.method private native greylist-max-o nativeAddSurfaceWidthHeight(Landroid/view/Surface;II)I
.end method

.method private native greylist-max-o nativeAllocate()Z
.end method

.method private native greylist-max-o nativeDeactivate()Z
.end method

.method private native greylist-max-o nativeDeallocate()Z
.end method

.method private native greylist-max-o nativeDisconnectSurfaceMediaSource(Landroid/media/MediaRecorder;)Z
.end method

.method private native greylist-max-o nativeInitWithCurrentContext()Z
.end method

.method private native greylist-max-o nativeInitWithNewContext()Z
.end method

.method private native greylist-max-o nativeIsActive()Z
.end method

.method private static native greylist-max-o nativeIsAnyContextActive()Z
.end method

.method private native greylist-max-o nativeIsContextActive()Z
.end method

.method private native greylist-max-o nativeRemoveSurfaceId(I)Z
.end method

.method private native greylist-max-o nativeSetSurfaceTimestamp(J)Z
.end method

.method private native greylist-max-o nativeSwapBuffers()Z
.end method


# virtual methods
.method public greylist activate()V
    .registers 3

    .line 84
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 85
    const-string v0, "FilterFramework"

    const-string v1, "Activating GL context in UI thread!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1b
    iget-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeActivate()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_2e

    .line 88
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not activate GLEnvironment!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2e
    :goto_2e
    return-void
.end method

.method public greylist activateSurfaceWithId(I)V
    .registers 5
    .param p1, "surfaceId"    # I

    .line 136
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeActivateSurfaceId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    return-void

    .line 137
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not activate surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist deactivate()V
    .registers 3

    .line 94
    iget-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeDeactivate()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 95
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not deactivate GLEnvironment!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_13
    :goto_13
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Landroid/filterfw/core/GLEnvironment;->tearDown()V

    .line 53
    return-void
.end method

.method public greylist-max-o initWithCurrentContext()V
    .registers 3

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    .line 64
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeInitWithCurrentContext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 67
    return-void

    .line 65
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not initialize GLEnvironment with current context!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o initWithNewContext()V
    .registers 3

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    .line 57
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeInitWithNewContext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 60
    return-void

    .line 58
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not initialize GLEnvironment with new context!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist isActive()Z
    .registers 2

    .line 71
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeIsActive()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isContextActive()Z
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeIsContextActive()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o registerSurface(Landroid/view/Surface;)I
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;

    .line 107
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurface(Landroid/view/Surface;)I

    move-result v0

    .line 108
    .local v0, "result":I
    if-ltz v0, :cond_7

    .line 111
    return v0

    .line 109
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I
    .registers 6
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .line 126
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    move-result v0

    .line 127
    .local v0, "result":I
    if-ltz v0, :cond_7

    .line 131
    return v0

    .line 128
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering surface from MediaRecorder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o registerSurfaceTexture(Landroid/graphics/SurfaceTexture;II)I
    .registers 9
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 115
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 116
    .local v0, "surface":Landroid/view/Surface;
    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurfaceWidthHeight(Landroid/view/Surface;II)I

    move-result v1

    .line 117
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 118
    if-ltz v1, :cond_f

    .line 121
    return v1

    .line 119
    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error registering surfaceTexture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist setSurfaceTimestamp(J)V
    .registers 5
    .param p1, "timestamp"    # J

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/GLEnvironment;->nativeSetSurfaceTimestamp(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 153
    return-void

    .line 151
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set timestamp for current surface!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist swapBuffers()V
    .registers 3

    .line 101
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeSwapBuffers()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    return-void

    .line 102
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error swapping EGL buffers!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized greylist-max-o tearDown()V
    .registers 3

    monitor-enter p0

    .line 44
    :try_start_1
    iget v0, p0, Landroid/filterfw/core/GLEnvironment;->glEnvId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 45
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeDeallocate()Z

    .line 46
    iput v1, p0, Landroid/filterfw/core/GLEnvironment;->glEnvId:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 48
    .end local p0    # "this":Landroid/filterfw/core/GLEnvironment;
    :cond_b
    monitor-exit p0

    return-void

    .line 43
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public greylist unregisterSurfaceId(I)V
    .registers 5
    .param p1, "surfaceId"    # I

    .line 143
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeRemoveSurfaceId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    return-void

    .line 144
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
