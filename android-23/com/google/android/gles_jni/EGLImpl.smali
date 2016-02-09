.class public Lcom/google/android/gles_jni/EGLImpl;
.super Ljava/lang/Object;
.source "EGLImpl.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL10;


# instance fields
.field private mContext:Lcom/google/android/gles_jni/EGLContextImpl;

.field private mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

.field private mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #@0
    .prologue
    .line 159
    invoke-static {}, Lcom/google/android/gles_jni/EGLImpl;->_nativeClassInit()V

    #@3
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 27
    new-instance v0, Lcom/google/android/gles_jni/EGLContextImpl;

    #@7
    invoke-direct {v0, v2, v3}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    #@a
    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    #@c
    .line 28
    new-instance v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    #@e
    invoke-direct {v0, v2, v3}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    #@11
    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    #@13
    .line 29
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    #@15
    invoke-direct {v0, v2, v3}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    #@18
    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    #@1a
    .line 26
    return-void
.end method

.method private native _eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)J
.end method

.method private native _eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)J
.end method

.method private native _eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V
.end method

.method private native _eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J
.end method

.method private native _eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J
.end method

.method private native _eglGetCurrentContext()J
.end method

.method private native _eglGetCurrentDisplay()J
.end method

.method private native _eglGetCurrentSurface(I)J
.end method

.method private native _eglGetDisplay(Ljava/lang/Object;)J
.end method

.method private static native _nativeClassInit()V
.end method

.method public static native getInitCount(Ljavax/microedition/khronos/egl/EGLDisplay;)I
.end method


# virtual methods
.method public native eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "share_context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p4, "attrib_list"    # [I

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)J

    #@3
    move-result-wide v0

    #@4
    .line 55
    .local v0, "eglContextId":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v0, v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 56
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@c
    return-object v2

    #@d
    .line 58
    :cond_0
    new-instance v2, Lcom/google/android/gles_jni/EGLContextImpl;

    #@f
    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    #@12
    return-object v2
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attrib_list"    # [I

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)J

    #@3
    move-result-wide v0

    #@4
    .line 63
    .local v0, "eglSurfaceId":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v0, v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 64
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@c
    return-object v2

    #@d
    .line 66
    :cond_0
    new-instance v2, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    #@f
    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    #@12
    return-object v2
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 6
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_pixmap"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    #@0
    .prologue
    .line 70
    new-instance v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    #@2
    invoke-direct {v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>()V

    #@5
    .local v1, "sur":Lcom/google/android/gles_jni/EGLSurfaceImpl;
    move-object v0, p0

    #@6
    move-object v2, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V

    #@d
    .line 72
    iget-wide v2, v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    #@f
    const-wide/16 v4, 0x0

    #@11
    cmp-long v0, v2, v4

    #@13
    if-nez v0, :cond_0

    #@15
    .line 73
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@17
    return-object v0

    #@18
    .line 75
    :cond_0
    return-object v1
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 8
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_window"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    #@0
    .prologue
    .line 79
    const/4 v3, 0x0

    #@1
    .line 80
    .local v3, "sur":Landroid/view/Surface;
    instance-of v5, p3, Landroid/view/SurfaceView;

    #@3
    if-eqz v5, :cond_1

    #@5
    move-object v4, p3

    #@6
    .line 81
    check-cast v4, Landroid/view/SurfaceView;

    #@8
    .line 82
    .local v4, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@b
    move-result-object v5

    #@c
    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@f
    move-result-object v3

    #@10
    .line 91
    .end local v3    # "sur":Landroid/view/Surface;
    .end local v4    # "surfaceView":Landroid/view/SurfaceView;
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    #@12
    .line 92
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J

    #@15
    move-result-wide v0

    #@16
    .line 102
    .local v0, "eglSurfaceId":J
    :goto_1
    const-wide/16 v6, 0x0

    #@18
    cmp-long v5, v0, v6

    #@1a
    if-nez v5, :cond_5

    #@1c
    .line 103
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@1e
    return-object v5

    #@1f
    .line 83
    .end local v0    # "eglSurfaceId":J
    .restart local v3    # "sur":Landroid/view/Surface;
    :cond_1
    instance-of v5, p3, Landroid/view/SurfaceHolder;

    #@21
    if-eqz v5, :cond_2

    #@23
    move-object v2, p3

    #@24
    .line 84
    check-cast v2, Landroid/view/SurfaceHolder;

    #@26
    .line 85
    .local v2, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@29
    move-result-object v3

    #@2a
    .local v3, "sur":Landroid/view/Surface;
    goto :goto_0

    #@2b
    .line 86
    .end local v2    # "holder":Landroid/view/SurfaceHolder;
    .local v3, "sur":Landroid/view/Surface;
    :cond_2
    instance-of v5, p3, Landroid/view/Surface;

    #@2d
    if-eqz v5, :cond_0

    #@2f
    move-object v3, p3

    #@30
    .line 87
    check-cast v3, Landroid/view/Surface;

    #@32
    .local v3, "sur":Landroid/view/Surface;
    goto :goto_0

    #@33
    .line 93
    .end local v3    # "sur":Landroid/view/Surface;
    :cond_3
    instance-of v5, p3, Landroid/graphics/SurfaceTexture;

    #@35
    if-eqz v5, :cond_4

    #@37
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J

    #@3a
    move-result-wide v0

    #@3b
    .restart local v0    # "eglSurfaceId":J
    goto :goto_1

    #@3c
    .line 97
    .end local v0    # "eglSurfaceId":J
    :cond_4
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@3e
    .line 98
    const-string/jumbo v6, "eglCreateWindowSurface() can only be called with an instance of Surface, SurfaceView, SurfaceHolder or SurfaceTexture at the moment."

    #@41
    .line 97
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@44
    throw v5

    #@45
    .line 105
    .restart local v0    # "eglSurfaceId":J
    :cond_5
    new-instance v5, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    #@47
    invoke-direct {v5, v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    #@4a
    return-object v5
.end method

.method public native eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public declared-synchronized eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentContext()J

    #@4
    move-result-wide v0

    #@5
    .line 120
    .local v0, "value":J
    const-wide/16 v2, 0x0

    #@7
    cmp-long v2, v0, v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 121
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v2

    #@f
    .line 123
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    #@11
    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    #@13
    cmp-long v2, v2, v0

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 124
    new-instance v2, Lcom/google/android/gles_jni/EGLContextImpl;

    #@19
    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    #@1c
    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    #@1e
    .line 125
    :cond_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit p0

    #@21
    return-object v2

    #@22
    .end local v0    # "value":J
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2
.end method

.method public declared-synchronized eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentDisplay()J

    #@4
    move-result-wide v0

    #@5
    .line 130
    .local v0, "value":J
    const-wide/16 v2, 0x0

    #@7
    cmp-long v2, v0, v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 131
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v2

    #@f
    .line 133
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    #@11
    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    #@13
    cmp-long v2, v2, v0

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 134
    new-instance v2, Lcom/google/android/gles_jni/EGLDisplayImpl;

    #@19
    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    #@1c
    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    #@1e
    .line 135
    :cond_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit p0

    #@21
    return-object v2

    #@22
    .end local v0    # "value":J
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2
.end method

.method public declared-synchronized eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4
    .param p1, "readdraw"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentSurface(I)J

    #@4
    move-result-wide v0

    #@5
    .line 140
    .local v0, "value":J
    const-wide/16 v2, 0x0

    #@7
    cmp-long v2, v0, v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 141
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v2

    #@f
    .line 143
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    #@11
    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    #@13
    cmp-long v2, v2, v0

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 144
    new-instance v2, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    #@19
    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    #@1c
    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    #@1e
    .line 145
    :cond_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit p0

    #@21
    return-object v2

    #@22
    .end local v0    # "value":J
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2
.end method

.method public declared-synchronized eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 4
    .param p1, "native_display"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 109
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetDisplay(Ljava/lang/Object;)J

    #@4
    move-result-wide v0

    #@5
    .line 110
    .local v0, "value":J
    const-wide/16 v2, 0x0

    #@7
    cmp-long v2, v0, v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 111
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v2

    #@f
    .line 113
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    #@11
    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    #@13
    cmp-long v2, v2, v0

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 114
    new-instance v2, Lcom/google/android/gles_jni/EGLDisplayImpl;

    #@19
    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    #@1c
    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    #@1e
    .line 115
    :cond_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit p0

    #@21
    return-object v2

    #@22
    .end local v0    # "value":J
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2
.end method

.method public native eglGetError()I
.end method

.method public native eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
.end method

.method public native eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
.end method

.method public native eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
.end method

.method public native eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
.end method

.method public native eglReleaseThread()Z
.end method

.method public native eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
.end method

.method public native eglWaitGL()Z
.end method

.method public native eglWaitNative(ILjava/lang/Object;)Z
.end method
