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
.field protected greylist-max-o mConfigSpec:[I

.field final synthetic blacklist this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor blacklist <init>(Landroid/opengl/GLSurfaceView;[I)V
    .registers 3
    .param p2, "configSpec"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 875
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    .line 877
    return-void
.end method

.method private greylist-max-o filterConfigSpec([I)[I
    .registers 7
    .param p1, "configSpec"    # [I

    .line 911
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_13

    .line 912
    return-object p1

    .line 917
    :cond_13
    array-length v0, p1

    .line 918
    .local v0, "len":I
    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    .line 919
    .local v2, "newConfigSpec":[I
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    add-int/lit8 v3, v0, -0x1

    const/16 v4, 0x3040

    aput v4, v2, v3

    .line 921
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v3

    if-ne v3, v1, :cond_30

    .line 922
    const/4 v1, 0x4

    aput v1, v2, v0

    goto :goto_34

    .line 924
    :cond_30
    const/16 v1, 0x40

    aput v1, v2, v0

    .line 926
    :goto_34
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x3038

    aput v3, v2, v1

    .line 927
    return-object v2
.end method


# virtual methods
.method public whitelist chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 10
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 880
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 881
    .local v6, "num_config":[I
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "egl":Ljavax/microedition/khronos/egl/EGL10;
    .end local p2    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .local v1, "egl":Ljavax/microedition/khronos/egl/EGL10;
    .local v2, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 886
    const/4 p1, 0x0

    aget v5, v6, p1

    .line 888
    .local v5, "numConfigs":I
    if-lez v5, :cond_35

    .line 893
    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 894
    .local v4, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 898
    invoke-virtual {p0, v1, v2, v4}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    .line 899
    .local p1, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-eqz p1, :cond_25

    .line 902
    return-object p1

    .line 900
    :cond_25
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "No config chosen"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 896
    .end local p1    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig#2 failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 889
    .end local v4    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 883
    .end local v5    # "numConfigs":I
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract greylist-max-o chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
