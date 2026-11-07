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
.field greylist-max-o mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field greylist-max-o mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field greylist mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field greylist-max-o mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field greylist-max-o mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private greylist-max-o mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 1016
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1018
    return-void
.end method

.method private greylist-max-o destroySurfaceImp()V
    .registers 6

    .line 1184
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_31

    .line 1185
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1188
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 1189
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v0, :cond_2e

    .line 1190
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1192
    :cond_2e
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1194
    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    :cond_31
    return-void
.end method

.method public static greylist-max-o formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 1227
    invoke-static {p1, p2}, Landroid/opengl/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return-void
.end method

.method private greylist-max-o throwEglException(Ljava/lang/String;)V
    .registers 3
    .param p1, "function"    # Ljava/lang/String;

    .line 1214
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Landroid/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1215
    return-void
.end method

.method public static greylist-max-o throwEglException(Ljava/lang/String;I)V
    .registers 4
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .line 1218
    invoke-static {p0, p1}, Landroid/opengl/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method greylist-max-o createGL()Ljavax/microedition/khronos/opengles/GL;
    .registers 6

    .line 1143
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1144
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL;
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    .line 1145
    .local v1, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v1, :cond_44

    .line 1146
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmGLWrapper(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1147
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmGLWrapper(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/opengl/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1150
    :cond_1e
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmDebugFlags(Landroid/opengl/GLSurfaceView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_44

    .line 1151
    const/4 v2, 0x0

    .line 1152
    .local v2, "configFlags":I
    const/4 v3, 0x0

    .line 1153
    .local v3, "log":Ljava/io/Writer;
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmDebugFlags(Landroid/opengl/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_32

    .line 1154
    or-int/lit8 v2, v2, 0x1

    .line 1156
    :cond_32
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmDebugFlags(Landroid/opengl/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_40

    .line 1157
    new-instance v4, Landroid/opengl/GLSurfaceView$LogWriter;

    invoke-direct {v4}, Landroid/opengl/GLSurfaceView$LogWriter;-><init>()V

    move-object v3, v4

    .line 1159
    :cond_40
    invoke-static {v0, v2, v3}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1162
    .end local v2    # "configFlags":I
    .end local v3    # "log":Ljava/io/Writer;
    :cond_44
    return-object v0
.end method

.method public greylist-max-o createSurface()Z
    .registers 8

    .line 1086
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_80

    .line 1089
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_78

    .line 1092
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_6f

    .line 1100
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1105
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 1106
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v0, :cond_2e

    .line 1107
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1108
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    .line 1107
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_31

    .line 1110
    :cond_2e
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1113
    :goto_31
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_5d

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v3, :cond_3d

    goto :goto_5d

    .line 1125
    :cond_3d
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1130
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const-string v3, "EGLHelper"

    const-string v4, "eglMakeCurrent"

    invoke-static {v3, v4, v1}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1131
    return v2

    .line 1134
    :cond_5b
    const/4 v1, 0x1

    return v1

    .line 1114
    :cond_5d
    :goto_5d
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 1115
    .local v1, "error":I
    const/16 v3, 0x300b

    if-ne v1, v3, :cond_6e

    .line 1116
    const-string v3, "EglHelper"

    const-string v4, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_6e
    return v2

    .line 1093
    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    .end local v1    # "error":I
    :cond_6f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o destroySurface()V
    .registers 1

    .line 1180
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1181
    return-void
.end method

.method public greylist-max-o finish()V
    .registers 7

    .line 1200
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1201
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 1202
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v0, :cond_1c

    .line 1203
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextFactory(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1205
    :cond_1c
    iput-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1207
    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1e
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2b

    .line 1208
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1209
    iput-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1211
    :cond_2b
    return-void
.end method

.method public greylist-max-o start()V
    .registers 8

    .line 1031
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1036
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1038
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_6f

    .line 1045
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1046
    .local v0, "version":[I
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1049
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    .line 1050
    .local v1, "view":Landroid/opengl/GLSurfaceView;
    const/4 v2, 0x0

    if-nez v1, :cond_35

    .line 1051
    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1052
    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_53

    .line 1054
    :cond_35
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLConfigChooser(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v3

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v5}, Landroid/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    iput-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1060
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextFactory(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v3

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v3, v4, v5, v6}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1062
    :goto_53
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v3, :cond_5d

    iget-object v3, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v3, v4, :cond_64

    .line 1063
    :cond_5d
    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1064
    const-string v3, "createContext"

    invoke-direct {p0, v3}, Landroid/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1070
    :cond_64
    iput-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1071
    return-void

    .line 1047
    .end local v1    # "view":Landroid/opengl/GLSurfaceView;
    :cond_67
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1039
    .end local v0    # "version":[I
    :cond_6f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o swap()I
    .registers 4

    .line 1170
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1171
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    .line 1173
    :cond_13
    const/16 v0, 0x3000

    return v0
.end method
