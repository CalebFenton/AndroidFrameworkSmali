.class public Lcom/google/android/gles_jni/EGLImpl;
.super Ljava/lang/Object;
.source "EGLImpl.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL10;


# instance fields
.field private blacklist mContext:Lcom/google/android/gles_jni/EGLContextImpl;

.field private blacklist mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

.field private blacklist mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 168
    invoke-static {}, Lcom/google/android/gles_jni/EGLImpl;->_nativeClassInit()V

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/gles_jni/EGLContextImpl;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 33
    new-instance v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 34
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 60
    return-void
.end method

.method private native blacklist _eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)J
.end method

.method private native blacklist _eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)J
.end method

.method private native blacklist _eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V
.end method

.method private native blacklist _eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J
.end method

.method private native blacklist _eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J
.end method

.method private native blacklist _eglGetCurrentContext()J
.end method

.method private native blacklist _eglGetCurrentDisplay()J
.end method

.method private native blacklist _eglGetCurrentSurface(I)J
.end method

.method private native blacklist _eglGetDisplay(Ljava/lang/Object;)J
.end method

.method private static native blacklist _nativeClassInit()V
.end method

.method public static native blacklist getInitCount(Ljavax/microedition/khronos/egl/EGLDisplay;)I
.end method


# virtual methods
.method public native whitelist eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native whitelist eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
.end method

.method public whitelist eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 9
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "share_context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p4, "attrib_list"    # [I

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)J

    move-result-wide v0

    .line 64
    .local v0, "eglContextId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 65
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v2

    .line 67
    :cond_d
    new-instance v2, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    return-object v2
.end method

.method public whitelist eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 8
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attrib_list"    # [I

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)J

    move-result-wide v0

    .line 72
    .local v0, "eglSurfaceId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 73
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v2

    .line 75
    :cond_d
    new-instance v2, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    return-object v2
.end method

.method public whitelist eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 12
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_pixmap"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    .line 79
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>()V

    move-object v2, v0

    .line 80
    .local v2, "sur":Lcom/google/android/gles_jni/EGLSurfaceImpl;
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local p2    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local p3    # "native_pixmap":Ljava/lang/Object;
    .end local p4    # "attrib_list":[I
    .local v3, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .local v4, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .local v5, "native_pixmap":Ljava/lang/Object;
    .local v6, "attrib_list":[I
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V

    .line 81
    iget-wide p1, v2, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_19

    .line 82
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1

    .line 84
    :cond_19
    return-object v2
.end method

.method public whitelist eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 10
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_window"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "sur":Landroid/view/Surface;
    instance-of v1, p3, Landroid/view/SurfaceView;

    if-eqz v1, :cond_11

    .line 90
    move-object v1, p3

    check-cast v1, Landroid/view/SurfaceView;

    .line 91
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 92
    .end local v1    # "surfaceView":Landroid/view/SurfaceView;
    goto :goto_26

    :cond_11
    instance-of v1, p3, Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1d

    .line 93
    move-object v1, p3

    check-cast v1, Landroid/view/SurfaceHolder;

    .line 94
    .local v1, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .end local v1    # "holder":Landroid/view/SurfaceHolder;
    goto :goto_25

    .line 95
    :cond_1d
    instance-of v1, p3, Landroid/view/Surface;

    if-eqz v1, :cond_25

    .line 96
    move-object v0, p3

    check-cast v0, Landroid/view/Surface;

    goto :goto_26

    .line 95
    :cond_25
    :goto_25
    nop

    .line 100
    :goto_26
    if-eqz v0, :cond_2d

    .line 101
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J

    move-result-wide v1

    .local v1, "eglSurfaceId":J
    goto :goto_35

    .line 102
    .end local v1    # "eglSurfaceId":J
    :cond_2d
    instance-of v1, p3, Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_44

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J

    move-result-wide v1

    .line 111
    .restart local v1    # "eglSurfaceId":J
    :goto_35
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_3e

    .line 112
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v3

    .line 114
    :cond_3e
    new-instance v3, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    return-object v3

    .line 106
    .end local v1    # "eglSurfaceId":J
    :cond_44
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "eglCreateWindowSurface() can only be called with an instance of Surface, SurfaceView, SurfaceHolder or SurfaceTexture at the moment."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native whitelist eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native whitelist eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native whitelist eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native whitelist eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public declared-synchronized whitelist eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .registers 5

    monitor-enter p0

    .line 128
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentContext()J

    move-result-wide v0

    .line 129
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 130
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    monitor-exit p0

    return-object v2

    .line 132
    .end local p0    # "this":Lcom/google/android/gles_jni/EGLImpl;
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1e

    .line 133
    new-instance v2, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 134
    :cond_1e
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v2

    .line 127
    .end local v0    # "value":J
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public declared-synchronized whitelist eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .registers 5

    monitor-enter p0

    .line 138
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentDisplay()J

    move-result-wide v0

    .line 139
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 140
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    monitor-exit p0

    return-object v2

    .line 142
    .end local p0    # "this":Lcom/google/android/gles_jni/EGLImpl;
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1e

    .line 143
    new-instance v2, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 144
    :cond_1e
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v2

    .line 137
    .end local v0    # "value":J
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public declared-synchronized whitelist eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 6
    .param p1, "readdraw"    # I

    monitor-enter p0

    .line 148
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentSurface(I)J

    move-result-wide v0

    .line 149
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 150
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    monitor-exit p0

    return-object v2

    .line 152
    .end local p0    # "this":Lcom/google/android/gles_jni/EGLImpl;
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1e

    .line 153
    new-instance v2, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 154
    :cond_1e
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v2

    .line 147
    .end local v0    # "value":J
    .end local p1    # "readdraw":I
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public declared-synchronized whitelist eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .registers 6
    .param p1, "native_display"    # Ljava/lang/Object;

    monitor-enter p0

    .line 118
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetDisplay(Ljava/lang/Object;)J

    move-result-wide v0

    .line 119
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 120
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    monitor-exit p0

    return-object v2

    .line 122
    .end local p0    # "this":Lcom/google/android/gles_jni/EGLImpl;
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1e

    .line 123
    new-instance v2, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 124
    :cond_1e
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v2

    .line 117
    .end local v0    # "value":J
    .end local p1    # "native_display":Ljava/lang/Object;
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public native whitelist eglGetError()I
.end method

.method public native whitelist eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
.end method

.method public native whitelist eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native whitelist eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
.end method

.method public native whitelist eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
.end method

.method public native whitelist eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
.end method

.method public native blacklist eglReleaseThread()Z
.end method

.method public native whitelist eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native whitelist eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
.end method

.method public native whitelist eglWaitGL()Z
.end method

.method public native whitelist eglWaitNative(ILjava/lang/Object;)Z
.end method
