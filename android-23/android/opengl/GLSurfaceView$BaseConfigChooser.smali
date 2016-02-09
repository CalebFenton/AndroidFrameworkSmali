.class abstract Landroid/opengl/GLSurfaceView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;[I)V
    .locals 1
    .param p1, "this$0"    # Landroid/opengl/GLSurfaceView;
    .param p2, "configSpec"    # [I

    #@0
    .prologue
    .line 845
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 846
    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->filterConfigSpec([I)[I

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    #@b
    .line 845
    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 6
    .param p1, "configSpec"    # [I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    .line 881
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    #@4
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->-get2(Landroid/opengl/GLSurfaceView;)I

    #@7
    move-result v2

    #@8
    if-eq v2, v5, :cond_0

    #@a
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    #@c
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->-get2(Landroid/opengl/GLSurfaceView;)I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x3

    #@11
    if-eq v2, v3, :cond_0

    #@13
    .line 882
    return-object p1

    #@14
    .line 887
    :cond_0
    array-length v0, p1

    #@15
    .line 888
    .local v0, "len":I
    add-int/lit8 v2, v0, 0x2

    #@17
    new-array v1, v2, [I

    #@19
    .line 889
    .local v1, "newConfigSpec":[I
    add-int/lit8 v2, v0, -0x1

    #@1b
    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@1e
    .line 890
    add-int/lit8 v2, v0, -0x1

    #@20
    const/16 v3, 0x3040

    #@22
    aput v3, v1, v2

    #@24
    .line 891
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    #@26
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->-get2(Landroid/opengl/GLSurfaceView;)I

    #@29
    move-result v2

    #@2a
    if-ne v2, v5, :cond_1

    #@2c
    .line 892
    const/4 v2, 0x4

    #@2d
    aput v2, v1, v0

    #@2f
    .line 896
    :goto_0
    add-int/lit8 v2, v0, 0x1

    #@31
    const/16 v3, 0x3038

    #@33
    aput v3, v1, v2

    #@35
    .line 897
    return-object v1

    #@36
    .line 894
    :cond_1
    const/16 v2, 0x40

    #@38
    aput v2, v1, v0

    #@3a
    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 850
    const/4 v0, 0x1

    #@3
    new-array v5, v0, [I

    #@5
    .line 851
    .local v5, "num_config":[I
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    #@7
    move-object v0, p1

    #@8
    move-object v1, p2

    #@9
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "eglChooseConfig failed"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 856
    :cond_0
    aget v4, v5, v4

    #@1a
    .line 858
    .local v4, "numConfigs":I
    if-gtz v4, :cond_1

    #@1c
    .line 859
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    .line 860
    const-string/jumbo v1, "No configs match configSpec"

    #@21
    .line 859
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 863
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    #@27
    .line 864
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    #@29
    move-object v0, p1

    #@2a
    move-object v1, p2

    #@2b
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_2

    #@31
    .line 866
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    const-string/jumbo v1, "eglChooseConfig#2 failed"

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 868
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    #@3d
    move-result-object v6

    #@3e
    .line 869
    .local v6, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v6, :cond_3

    #@40
    .line 870
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@42
    const-string/jumbo v1, "No config chosen"

    #@45
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 872
    :cond_3
    return-object v6
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
