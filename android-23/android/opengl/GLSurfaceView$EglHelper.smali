.class Landroid/opengl/GLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 986
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 987
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@5
    .line 986
    return-void
.end method

.method private destroySurfaceImp()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1154
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@7
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 1155
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@d
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@f
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@11
    .line 1156
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@13
    .line 1157
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@15
    .line 1155
    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@18
    .line 1158
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@1a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/opengl/GLSurfaceView;

    #@20
    .line 1159
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v0, :cond_0

    #@22
    .line 1160
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-get4(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@28
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@2a
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@2c
    invoke-interface {v1, v2, v3, v4}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    #@2f
    .line 1162
    :cond_0
    iput-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@31
    .line 1153
    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    #@0
    .prologue
    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, " failed: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "error"    # I

    #@0
    .prologue
    .line 1197
    invoke-static {p1, p2}, Landroid/opengl/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 1196
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1184
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@2
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@5
    move-result v0

    #@6
    invoke-static {p1, v0}, Landroid/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    #@9
    .line 1183
    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    #@0
    .prologue
    .line 1188
    invoke-static {p0, p1}, Landroid/opengl/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1193
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9
    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    #@0
    .prologue
    .line 1113
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@2
    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    #@5
    move-result-object v1

    #@6
    .line 1114
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@8
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Landroid/opengl/GLSurfaceView;

    #@e
    .line 1115
    .local v3, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v3, :cond_3

    #@10
    .line 1116
    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->-get5(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;

    #@13
    move-result-object v4

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 1117
    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->-get5(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;

    #@19
    move-result-object v4

    #@1a
    invoke-interface {v4, v1}, Landroid/opengl/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    #@1d
    move-result-object v1

    #@1e
    .line 1120
    :cond_0
    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->-get0(Landroid/opengl/GLSurfaceView;)I

    #@21
    move-result v4

    #@22
    and-int/lit8 v4, v4, 0x3

    #@24
    if-eqz v4, :cond_3

    #@26
    .line 1121
    const/4 v0, 0x0

    #@27
    .line 1122
    .local v0, "configFlags":I
    const/4 v2, 0x0

    #@28
    .line 1123
    .local v2, "log":Ljava/io/Writer;
    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->-get0(Landroid/opengl/GLSurfaceView;)I

    #@2b
    move-result v4

    #@2c
    and-int/lit8 v4, v4, 0x1

    #@2e
    if-eqz v4, :cond_1

    #@30
    .line 1124
    const/4 v0, 0x1

    #@31
    .line 1126
    :cond_1
    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->-get0(Landroid/opengl/GLSurfaceView;)I

    #@34
    move-result v4

    #@35
    and-int/lit8 v4, v4, 0x2

    #@37
    if-eqz v4, :cond_2

    #@39
    .line 1127
    new-instance v2, Landroid/opengl/GLSurfaceView$LogWriter;

    #@3b
    .end local v2    # "log":Ljava/io/Writer;
    invoke-direct {v2}, Landroid/opengl/GLSurfaceView$LogWriter;-><init>()V

    #@3e
    .line 1129
    :cond_2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    #@41
    move-result-object v1

    #@42
    .line 1132
    .end local v0    # "configFlags":I
    :cond_3
    return-object v1
.end method

.method public createSurface()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1056
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1057
    new-instance v2, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v3, "egl not initialized"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 1059
    :cond_0
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@11
    if-nez v2, :cond_1

    #@13
    .line 1060
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "eglDisplay not initialized"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1062
    :cond_1
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 1063
    new-instance v2, Ljava/lang/RuntimeException;

    #@22
    const-string/jumbo v3, "mEglConfig not initialized"

    #@25
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 1070
    :cond_2
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    #@2c
    .line 1075
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@2e
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Landroid/opengl/GLSurfaceView;

    #@34
    .line 1076
    .local v1, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v1, :cond_5

    #@36
    .line 1077
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-get4(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@39
    move-result-object v2

    #@3a
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@3c
    .line 1078
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@3e
    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@40
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@43
    move-result-object v6

    #@44
    .line 1077
    invoke-interface {v2, v3, v4, v5, v6}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    #@47
    move-result-object v2

    #@48
    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@4a
    .line 1083
    :goto_0
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@4c
    if-eqz v2, :cond_3

    #@4e
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@50
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@52
    if-ne v2, v3, :cond_6

    #@54
    .line 1084
    :cond_3
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@56
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@59
    move-result v0

    #@5a
    .line 1085
    .local v0, "error":I
    const/16 v2, 0x300b

    #@5c
    if-ne v0, v2, :cond_4

    #@5e
    .line 1086
    const-string/jumbo v2, "EglHelper"

    #@61
    const-string/jumbo v3, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    #@64
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 1088
    :cond_4
    return v7

    #@68
    .line 1080
    .end local v0    # "error":I
    :cond_5
    iput-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@6a
    goto :goto_0

    #@6b
    .line 1095
    :cond_6
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@6d
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@6f
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@71
    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@73
    iget-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@75
    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@78
    move-result v2

    #@79
    if-nez v2, :cond_7

    #@7b
    .line 1100
    const-string/jumbo v2, "EGLHelper"

    #@7e
    const-string/jumbo v3, "eglMakeCurrent"

    #@81
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@83
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@86
    move-result v4

    #@87
    invoke-static {v2, v3, v4}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    #@8a
    .line 1101
    return v7

    #@8b
    .line 1104
    :cond_7
    const/4 v2, 0x1

    #@8c
    return v2
.end method

.method public destroySurface()V
    .locals 0

    #@0
    .prologue
    .line 1150
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    #@3
    .line 1146
    return-void
.end method

.method public finish()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1170
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1171
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/opengl/GLSurfaceView;

    #@d
    .line 1172
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v0, :cond_0

    #@f
    .line 1173
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-get3(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@15
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@17
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@19
    invoke-interface {v1, v2, v3, v4}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    #@1c
    .line 1175
    :cond_0
    iput-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@1e
    .line 1177
    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 1178
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@24
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@26
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    #@29
    .line 1179
    iput-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@2b
    .line 1166
    :cond_2
    return-void
.end method

.method public start()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1001
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    #@4
    move-result-object v2

    #@5
    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    #@7
    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@9
    .line 1006
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@b
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    #@d
    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    #@10
    move-result-object v2

    #@11
    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@13
    .line 1008
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@15
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@17
    if-ne v2, v3, :cond_0

    #@19
    .line 1009
    new-instance v2, Ljava/lang/RuntimeException;

    #@1b
    const-string/jumbo v3, "eglGetDisplay failed"

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 1015
    :cond_0
    const/4 v2, 0x2

    #@23
    new-array v0, v2, [I

    #@25
    .line 1016
    .local v0, "version":[I
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@27
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@29
    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    #@2c
    move-result v2

    #@2d
    if-nez v2, :cond_1

    #@2f
    .line 1017
    new-instance v2, Ljava/lang/RuntimeException;

    #@31
    const-string/jumbo v3, "eglInitialize failed"

    #@34
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2

    #@38
    .line 1019
    :cond_1
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@3a
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Landroid/opengl/GLSurfaceView;

    #@40
    .line 1020
    .local v1, "view":Landroid/opengl/GLSurfaceView;
    if-nez v1, :cond_4

    #@42
    .line 1021
    iput-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@44
    .line 1022
    iput-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@46
    .line 1032
    :goto_0
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@48
    if-eqz v2, :cond_2

    #@4a
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@4c
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@4e
    if-ne v2, v3, :cond_3

    #@50
    .line 1033
    :cond_2
    iput-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@52
    .line 1034
    const-string/jumbo v2, "createContext"

    #@55
    invoke-direct {p0, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    #@58
    .line 1040
    :cond_3
    iput-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@5a
    .line 994
    return-void

    #@5b
    .line 1024
    :cond_4
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-get1(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    #@5e
    move-result-object v2

    #@5f
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@61
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@63
    invoke-interface {v2, v3, v4}, Landroid/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    #@66
    move-result-object v2

    #@67
    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@69
    .line 1030
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-get3(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@6c
    move-result-object v2

    #@6d
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@6f
    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@71
    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@73
    invoke-interface {v2, v3, v4, v5}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    #@76
    move-result-object v2

    #@77
    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    #@79
    goto :goto_0
.end method

.method public swap()I
    .locals 3

    #@0
    .prologue
    .line 1140
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@2
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@4
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    #@6
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1141
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    #@e
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 1143
    :cond_0
    const/16 v0, 0x3000

    #@15
    return v0
.end method
