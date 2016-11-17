.class public Landroid/opengl/GLDebugHelper;
.super Ljava/lang/Object;
.source "GLDebugHelper.java"


# static fields
.field public static final CONFIG_CHECK_GL_ERROR:I = 0x1

.field public static final CONFIG_CHECK_THREAD:I = 0x2

.field public static final CONFIG_LOG_ARGUMENT_NAMES:I = 0x4

.field public static final ERROR_WRONG_THREAD:I = 0x7000


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static wrap(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)Ljavax/microedition/khronos/egl/EGL;
    .locals 1
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL;
    .param p1, "configFlags"    # I
    .param p2, "log"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 101
    if-eqz p2, :cond_0

    #@2
    .line 102
    new-instance v0, Landroid/opengl/EGLLogWrapper;

    #@4
    invoke-direct {v0, p0, p1, p2}, Landroid/opengl/EGLLogWrapper;-><init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V

    #@7
    .end local p0    # "egl":Ljavax/microedition/khronos/egl/EGL;
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL;
    move-object p0, v0

    #@8
    .line 104
    .end local v0    # "egl":Ljavax/microedition/khronos/egl/EGL;
    .restart local p0    # "egl":Ljavax/microedition/khronos/egl/EGL;
    :cond_0
    return-object p0
.end method

.method public static wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;
    .locals 3
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p1, "configFlags"    # I
    .param p2, "log"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 80
    if-eqz p1, :cond_2

    #@2
    .line 81
    new-instance v0, Landroid/opengl/GLErrorWrapper;

    #@4
    invoke-direct {v0, p0, p1}, Landroid/opengl/GLErrorWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;I)V

    #@7
    .line 83
    .end local p0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL;
    :goto_0
    if-eqz p2, :cond_1

    #@9
    .line 85
    and-int/lit8 v2, p1, 0x4

    #@b
    if-eqz v2, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    .line 86
    .local v1, "logArgumentNames":Z
    :goto_1
    new-instance p0, Landroid/opengl/GLLogWrapper;

    #@10
    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/GLLogWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V

    #@13
    .line 88
    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .end local v1    # "logArgumentNames":Z
    .restart local p0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    :goto_2
    return-object p0

    #@14
    .line 85
    .end local p0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .restart local v0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    :cond_0
    const/4 v1, 0x0

    #@15
    .restart local v1    # "logArgumentNames":Z
    goto :goto_1

    #@16
    .end local v1    # "logArgumentNames":Z
    :cond_1
    move-object p0, v0

    #@17
    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .restart local p0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    goto :goto_2

    #@18
    :cond_2
    move-object v0, p0

    #@19
    .end local p0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .restart local v0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    goto :goto_0
.end method
