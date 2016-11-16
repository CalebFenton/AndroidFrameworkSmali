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
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;IIIIII)V
    .locals 4
    .param p1, "this$0"    # Landroid/opengl/GLSurfaceView;
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 924
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->this$0:Landroid/opengl/GLSurfaceView;

    #@3
    .line 926
    const/16 v0, 0xd

    #@5
    new-array v0, v0, [I

    #@7
    .line 927
    const/16 v1, 0x3024

    #@9
    const/4 v2, 0x0

    #@a
    aput v1, v0, v2

    #@c
    aput p2, v0, v3

    #@e
    .line 928
    const/16 v1, 0x3023

    #@10
    const/4 v2, 0x2

    #@11
    aput v1, v0, v2

    #@13
    const/4 v1, 0x3

    #@14
    aput p3, v0, v1

    #@16
    .line 929
    const/16 v1, 0x3022

    #@18
    const/4 v2, 0x4

    #@19
    aput v1, v0, v2

    #@1b
    const/4 v1, 0x5

    #@1c
    aput p4, v0, v1

    #@1e
    .line 930
    const/16 v1, 0x3021

    #@20
    const/4 v2, 0x6

    #@21
    aput v1, v0, v2

    #@23
    const/4 v1, 0x7

    #@24
    aput p5, v0, v1

    #@26
    .line 931
    const/16 v1, 0x3025

    #@28
    const/16 v2, 0x8

    #@2a
    aput v1, v0, v2

    #@2c
    const/16 v1, 0x9

    #@2e
    aput p6, v0, v1

    #@30
    .line 932
    const/16 v1, 0x3026

    #@32
    const/16 v2, 0xa

    #@34
    aput v1, v0, v2

    #@36
    const/16 v1, 0xb

    #@38
    aput p7, v0, v1

    #@3a
    .line 933
    const/16 v1, 0x3038

    #@3c
    const/16 v2, 0xc

    #@3e
    aput v1, v0, v2

    #@40
    .line 926
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;[I)V

    #@43
    .line 934
    new-array v0, v3, [I

    #@45
    iput-object v0, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    #@47
    .line 935
    iput p2, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    #@49
    .line 936
    iput p3, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    #@4b
    .line 937
    iput p4, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    #@4d
    .line 938
    iput p5, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    #@4f
    .line 939
    iput p6, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    #@51
    .line 940
    iput p7, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    #@53
    .line 925
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    #@0
    .prologue
    .line 972
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    #@2
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 973
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    #@a
    const/4 v1, 0x0

    #@b
    aget v0, v0, v1

    #@d
    return v0

    #@e
    .line 975
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    #@0
    .prologue
    .line 946
    const/4 v1, 0x0

    #@1
    move-object/from16 v0, p3

    #@3
    array-length v14, v0

    #@4
    move v13, v1

    #@5
    :goto_0
    if-ge v13, v14, :cond_1

    #@7
    aget-object v4, p3, v13

    #@9
    .line 948
    .local v4, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3025

    #@b
    const/4 v6, 0x0

    #@c
    move-object v1, p0

    #@d
    move-object/from16 v2, p1

    #@f
    move-object/from16 v3, p2

    #@11
    .line 947
    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    #@14
    move-result v9

    #@15
    .line 950
    .local v9, "d":I
    const/16 v5, 0x3026

    #@17
    const/4 v6, 0x0

    #@18
    move-object v1, p0

    #@19
    move-object/from16 v2, p1

    #@1b
    move-object/from16 v3, p2

    #@1d
    .line 949
    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    #@20
    move-result v12

    #@21
    .line 951
    .local v12, "s":I
    iget v1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    #@23
    if-lt v9, v1, :cond_0

    #@25
    iget v1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    #@27
    if-lt v12, v1, :cond_0

    #@29
    .line 953
    const/16 v5, 0x3024

    #@2b
    const/4 v6, 0x0

    #@2c
    move-object v1, p0

    #@2d
    move-object/from16 v2, p1

    #@2f
    move-object/from16 v3, p2

    #@31
    .line 952
    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    #@34
    move-result v11

    #@35
    .line 955
    .local v11, "r":I
    const/16 v5, 0x3023

    #@37
    const/4 v6, 0x0

    #@38
    move-object v1, p0

    #@39
    move-object/from16 v2, p1

    #@3b
    move-object/from16 v3, p2

    #@3d
    .line 954
    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    #@40
    move-result v10

    #@41
    .line 957
    .local v10, "g":I
    const/16 v5, 0x3022

    #@43
    const/4 v6, 0x0

    #@44
    move-object v1, p0

    #@45
    move-object/from16 v2, p1

    #@47
    move-object/from16 v3, p2

    #@49
    .line 956
    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    #@4c
    move-result v8

    #@4d
    .line 959
    .local v8, "b":I
    const/16 v5, 0x3021

    #@4f
    const/4 v6, 0x0

    #@50
    move-object v1, p0

    #@51
    move-object/from16 v2, p1

    #@53
    move-object/from16 v3, p2

    #@55
    .line 958
    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    #@58
    move-result v7

    #@59
    .line 960
    .local v7, "a":I
    iget v1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    #@5b
    if-ne v11, v1, :cond_0

    #@5d
    iget v1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    #@5f
    if-ne v10, v1, :cond_0

    #@61
    .line 961
    iget v1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    #@63
    if-ne v8, v1, :cond_0

    #@65
    iget v1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    #@67
    if-ne v7, v1, :cond_0

    #@69
    .line 962
    return-object v4

    #@6a
    .line 946
    .end local v7    # "a":I
    .end local v8    # "b":I
    .end local v10    # "g":I
    .end local v11    # "r":I
    :cond_0
    add-int/lit8 v1, v13, 0x1

    #@6c
    move v13, v1

    #@6d
    goto :goto_0

    #@6e
    .line 966
    .end local v4    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v9    # "d":I
    .end local v12    # "s":I
    :cond_1
    const/4 v1, 0x0

    #@6f
    return-object v1
.end method
