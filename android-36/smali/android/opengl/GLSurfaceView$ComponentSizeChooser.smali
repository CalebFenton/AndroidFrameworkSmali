.class Landroid/opengl/GLSurfaceView$ComponentSizeChooser;
.super Landroid/opengl/GLSurfaceView$BaseConfigChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected greylist-max-o mAlphaSize:I

.field protected greylist-max-o mBlueSize:I

.field protected greylist-max-o mDepthSize:I

.field protected greylist-max-o mGreenSize:I

.field protected greylist-max-o mRedSize:I

.field protected greylist-max-o mStencilSize:I

.field private greylist-max-o mValue:[I


# direct methods
.method public constructor blacklist <init>(Landroid/opengl/GLSurfaceView;IIIIII)V
    .registers 21
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 938
    const/16 v10, 0x3026

    const/16 v12, 0x3038

    const/16 v0, 0x3024

    const/16 v2, 0x3023

    const/16 v4, 0x3022

    const/16 v6, 0x3021

    const/16 v8, 0x3025

    move v1, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v11, p7

    filled-new-array/range {v0 .. v12}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;[I)V

    .line 946
    const/4 p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    .line 947
    iput p2, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 948
    iput v3, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 949
    iput v5, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 950
    iput v7, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 951
    iput v9, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 952
    iput v11, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    .line 953
    return-void
.end method

.method private greylist-max-o findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 8
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .line 984
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 985
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 987
    :cond_e
    return p5
.end method


# virtual methods
.method public greylist-max-o chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 15
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 958
    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4e

    aget-object v5, p3, v1

    .line 959
    .local v5, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "egl":Ljavax/microedition/khronos/egl/EGL10;
    .end local p2    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .local v3, "egl":Ljavax/microedition/khronos/egl/EGL10;
    .local v4, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    .line 961
    .local p1, "d":I
    const/16 v6, 0x3026

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p2

    .line 963
    .local p2, "s":I
    iget v6, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-lt p1, v6, :cond_49

    iget v6, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    if-lt p2, v6, :cond_49

    .line 964
    const/16 v6, 0x3024

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 966
    .local v8, "r":I
    const/16 v6, 0x3023

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 968
    .local v9, "g":I
    const/16 v6, 0x3022

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 970
    .local v10, "b":I
    const/16 v6, 0x3021

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 972
    .local v6, "a":I
    iget v7, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    if-ne v8, v7, :cond_49

    iget v7, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    if-ne v9, v7, :cond_49

    iget v7, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    if-ne v10, v7, :cond_49

    iget v7, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    if-ne v6, v7, :cond_49

    .line 974
    return-object v5

    .line 958
    .end local v5    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v6    # "a":I
    .end local v8    # "r":I
    .end local v9    # "g":I
    .end local v10    # "b":I
    .end local p1    # "d":I
    .end local p2    # "s":I
    :cond_49
    add-int/lit8 v1, v1, 0x1

    move-object p1, v3

    move-object p2, v4

    goto :goto_2

    .line 978
    .end local v3    # "egl":Ljavax/microedition/khronos/egl/EGL10;
    .end local v4    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .local p1, "egl":Ljavax/microedition/khronos/egl/EGL10;
    .local p2, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    :cond_4e
    move-object v3, p1

    .end local p1    # "egl":Ljavax/microedition/khronos/egl/EGL10;
    .restart local v3    # "egl":Ljavax/microedition/khronos/egl/EGL10;
    const/4 p1, 0x0

    return-object p1
.end method
