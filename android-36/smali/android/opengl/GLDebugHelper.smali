.class public Landroid/opengl/GLDebugHelper;
.super Ljava/lang/Object;
.source "GLDebugHelper.java"


# static fields
.field public static final whitelist CONFIG_CHECK_GL_ERROR:I = 0x1

.field public static final whitelist CONFIG_CHECK_THREAD:I = 0x2

.field public static final whitelist CONFIG_LOG_ARGUMENT_NAMES:I = 0x4

.field public static final whitelist ERROR_WRONG_THREAD:I = 0x7000


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist wrap(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)Ljavax/microedition/khronos/egl/EGL;
    .registers 4
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL;
    .param p1, "configFlags"    # I
    .param p2, "log"    # Ljava/io/Writer;

    .line 101
    if-eqz p2, :cond_8

    .line 102
    new-instance v0, Landroid/opengl/EGLLogWrapper;

    invoke-direct {v0, p0, p1, p2}, Landroid/opengl/EGLLogWrapper;-><init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V

    move-object p0, v0

    .line 104
    :cond_8
    return-object p0
.end method

.method public static whitelist wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;
    .registers 5
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p1, "configFlags"    # I
    .param p2, "log"    # Ljava/io/Writer;

    .line 80
    if-eqz p1, :cond_8

    .line 81
    new-instance v0, Landroid/opengl/GLErrorWrapper;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLErrorWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;I)V

    move-object p0, v0

    .line 83
    :cond_8
    if-eqz p2, :cond_17

    .line 84
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 86
    .local v0, "logArgumentNames":Z
    :goto_11
    new-instance v1, Landroid/opengl/GLLogWrapper;

    invoke-direct {v1, p0, p2, v0}, Landroid/opengl/GLLogWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V

    move-object p0, v1

    .line 88
    .end local v0    # "logArgumentNames":Z
    :cond_17
    return-object p0
.end method
