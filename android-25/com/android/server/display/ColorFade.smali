.class final Lcom/android/server/display/ColorFade;
.super Ljava/lang/Object;
.source "ColorFade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final COLOR_FADE_LAYER:I = 0x40000001

.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorFade"


# instance fields
.field private mCreatedResources:Z

.field private mDisplayHeight:I

.field private final mDisplayId:I

.field private mDisplayLayerStack:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private final mGLBuffers:[I

.field private mGammaLoc:I

.field private mMode:I

.field private mOpacityLoc:I

.field private mPrepared:Z

.field private mProgram:I

.field private final mProjMatrix:[F

.field private mProjMatrixLoc:I

.field private mSaturationLoc:I

.field private mScaleLoc:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTexCoordLoc:I

.field private final mTexMatrix:[F

.field private mTexMatrixLoc:I

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private mTexUnitLoc:I

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexLoc:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    const/16 v1, 0x8

    #@4
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 96
    const/4 v0, 0x1

    #@8
    new-array v0, v0, [I

    #@a
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@c
    .line 98
    new-array v0, v2, [F

    #@e
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    #@10
    .line 99
    new-array v0, v2, [F

    #@12
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@14
    .line 100
    const/4 v0, 0x2

    #@15
    new-array v0, v0, [I

    #@17
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@19
    .line 107
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    #@1f
    .line 108
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@25
    .line 126
    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    #@27
    .line 127
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    #@29
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    #@2f
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@31
    .line 125
    return-void
.end method

.method private attachEglContext()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 665
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 666
    return v4

    #@6
    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@8
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@a
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@c
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    #@e
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 669
    const-string/jumbo v0, "eglMakeCurrent"

    #@17
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@1a
    .line 670
    return v4

    #@1b
    .line 672
    :cond_1
    const/4 v0, 0x1

    #@1c
    return v0
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 468
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 469
    return v3

    #@9
    .line 472
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    #@b
    if-nez v0, :cond_2

    #@d
    .line 473
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@f
    const/4 v1, 0x1

    #@10
    const/4 v2, 0x0

    #@11
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    #@14
    .line 474
    const-string/jumbo v0, "glGenTextures"

    #@17
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 504
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@20
    .line 475
    return v3

    #@21
    .line 477
    :cond_1
    const/4 v0, 0x1

    #@22
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    #@24
    .line 480
    :cond_2
    new-instance v8, Landroid/graphics/SurfaceTexture;

    #@26
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@28
    const/4 v1, 0x0

    #@29
    aget v0, v0, v1

    #@2b
    invoke-direct {v8, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #@2e
    .line 481
    .local v8, "st":Landroid/graphics/SurfaceTexture;
    new-instance v7, Landroid/view/Surface;

    #@30
    invoke-direct {v7, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    .line 484
    .local v7, "s":Landroid/view/Surface;
    const/4 v0, 0x0

    #@34
    .line 483
    :try_start_2
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0, v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    #@3b
    .line 485
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    #@3e
    .line 486
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    #@40
    invoke-virtual {v8, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 488
    :try_start_3
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    #@46
    .line 489
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->release()V

    #@49
    .line 495
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@4b
    const/4 v1, 0x0

    #@4c
    const/4 v2, 0x0

    #@4d
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@50
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@52
    const/4 v1, 0x1

    #@53
    const/4 v2, 0x0

    #@54
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@57
    .line 496
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@59
    const/4 v1, 0x2

    #@5a
    const/4 v2, 0x0

    #@5b
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@5e
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@60
    const/4 v1, 0x3

    #@61
    const/high16 v2, 0x3f800000    # 1.0f

    #@63
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@66
    .line 497
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@68
    const/4 v1, 0x4

    #@69
    const/high16 v2, 0x3f800000    # 1.0f

    #@6b
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@6e
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@70
    const/4 v1, 0x5

    #@71
    const/high16 v2, 0x3f800000    # 1.0f

    #@73
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@76
    .line 498
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@78
    const/4 v1, 0x6

    #@79
    const/high16 v2, 0x3f800000    # 1.0f

    #@7b
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@7e
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@80
    const/4 v1, 0x7

    #@81
    const/4 v2, 0x0

    #@82
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@85
    .line 501
    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    #@87
    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    #@89
    const/4 v2, 0x0

    #@8a
    const/4 v3, 0x0

    #@8b
    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    #@8e
    .line 502
    const/4 v1, 0x0

    #@8f
    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    #@91
    int-to-float v2, v0

    #@92
    const/4 v3, 0x0

    #@93
    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    #@95
    int-to-float v4, v0

    #@96
    const/high16 v5, -0x40800000    # -1.0f

    #@98
    const/high16 v6, 0x3f800000    # 1.0f

    #@9a
    move-object v0, p0

    #@9b
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/ColorFade;->ortho(FFFFFF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@9e
    .line 504
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@a1
    .line 506
    return v9

    #@a2
    .line 487
    :catchall_0
    move-exception v0

    #@a3
    .line 488
    :try_start_4
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    #@a6
    .line 489
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->release()V

    #@a9
    .line 487
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@aa
    .line 503
    .end local v7    # "s":Landroid/view/Surface;
    .end local v8    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_1
    move-exception v0

    #@ab
    .line 504
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@ae
    .line 503
    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .locals 1
    .param p0, "func"    # Ljava/lang/String;

    #@0
    .prologue
    .line 693
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "log"    # Z

    #@0
    .prologue
    .line 697
    const/4 v1, 0x0

    #@1
    .line 699
    .local v1, "hadError":Z
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    #@4
    move-result v0

    #@5
    .local v0, "error":I
    if-eqz v0, :cond_1

    #@7
    .line 700
    if-eqz p1, :cond_0

    #@9
    .line 701
    const-string/jumbo v2, "ColorFade"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    const-string/jumbo v4, " failed: error "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    new-instance v4, Ljava/lang/Throwable;

    #@26
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    #@29
    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    .line 703
    :cond_0
    const/4 v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 705
    :cond_1
    return v1
.end method

.method private createEglContext()Z
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 518
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 519
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@e
    .line 520
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@10
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    #@12
    if-ne v0, v4, :cond_0

    #@14
    .line 521
    const-string/jumbo v0, "eglGetDisplay"

    #@17
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@1a
    .line 522
    return v2

    #@1b
    .line 525
    :cond_0
    new-array v9, v11, [I

    #@1d
    .line 526
    .local v9, "version":[I
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@1f
    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_1

    #@25
    .line 527
    iput-object v5, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@27
    .line 528
    const-string/jumbo v0, "eglInitialize"

    #@2a
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@2d
    .line 529
    return v2

    #@2e
    .line 533
    .end local v9    # "version":[I
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    #@30
    if-nez v0, :cond_3

    #@32
    .line 534
    const/16 v0, 0xb

    #@34
    new-array v1, v0, [I

    #@36
    .local v1, "eglConfigAttribList":[I
    fill-array-data v1, :array_0

    #@39
    .line 543
    new-array v6, v10, [I

    #@3b
    .line 544
    .local v6, "numEglConfigs":[I
    new-array v3, v10, [Landroid/opengl/EGLConfig;

    #@3d
    .line 545
    .local v3, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@3f
    .line 546
    array-length v5, v3

    #@40
    move v4, v2

    #@41
    move v7, v2

    #@42
    .line 545
    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    #@45
    move-result v0

    #@46
    if-nez v0, :cond_2

    #@48
    .line 547
    const-string/jumbo v0, "eglChooseConfig"

    #@4b
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@4e
    .line 548
    return v2

    #@4f
    .line 550
    :cond_2
    aget-object v0, v3, v2

    #@51
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    #@53
    .line 553
    .end local v1    # "eglConfigAttribList":[I
    .end local v3    # "eglConfigs":[Landroid/opengl/EGLConfig;
    .end local v6    # "numEglConfigs":[I
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    #@55
    if-nez v0, :cond_4

    #@57
    .line 555
    const/16 v0, 0x3098

    #@59
    .line 556
    const/16 v4, 0x3038

    #@5b
    .line 554
    filled-new-array {v0, v11, v4}, [I

    #@5e
    move-result-object v8

    #@5f
    .line 558
    .local v8, "eglContextAttribList":[I
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@61
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    #@63
    .line 559
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    #@65
    .line 558
    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    #@68
    move-result-object v0

    #@69
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    #@6b
    .line 560
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    #@6d
    if-nez v0, :cond_4

    #@6f
    .line 561
    const-string/jumbo v0, "eglCreateContext"

    #@72
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@75
    .line 562
    return v2

    #@76
    .line 565
    .end local v8    # "eglContextAttribList":[I
    :cond_4
    return v10

    #@77
    .line 534
    nop

    #@78
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 607
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 608
    new-array v0, v5, [I

    #@8
    .line 609
    const/16 v1, 0x3038

    #@a
    aput v1, v0, v4

    #@c
    .line 612
    .local v0, "eglSurfaceAttribList":[I
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@e
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    #@10
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    #@12
    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@18
    .line 614
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@1a
    if-nez v1, :cond_0

    #@1c
    .line 615
    const-string/jumbo v1, "eglCreateWindowSurface"

    #@1f
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@22
    .line 616
    return v4

    #@23
    .line 619
    .end local v0    # "eglSurfaceAttribList":[I
    :cond_0
    return v5
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "size"    # I

    #@0
    .prologue
    .line 683
    mul-int/lit8 v1, p0, 0x4

    #@2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    .line 684
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@d
    .line 685
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method private createSurface()Z
    .locals 8

    #@0
    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 570
    new-instance v0, Landroid/view/SurfaceSession;

    #@6
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@b
    .line 573
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@e
    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 578
    :try_start_1
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    #@14
    const/4 v1, 0x2

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 579
    const v6, 0x20004

    #@1a
    .line 583
    .local v6, "flags":I
    :goto_0
    new-instance v0, Landroid/view/SurfaceControl;

    #@1c
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@1e
    .line 584
    const-string/jumbo v2, "ColorFade"

    #@21
    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    #@23
    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    #@25
    .line 585
    const/4 v5, -0x1

    #@26
    .line 583
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@29
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 591
    :try_start_2
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2d
    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    #@2f
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@32
    .line 592
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@34
    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    #@36
    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    #@38
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    #@3b
    .line 593
    new-instance v0, Landroid/view/Surface;

    #@3d
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    #@42
    .line 594
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    #@44
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@46
    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    #@49
    .line 596
    new-instance v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    #@4b
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@4d
    .line 597
    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    #@4f
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@51
    .line 596
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    #@54
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    #@56
    .line 598
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    #@58
    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    .line 601
    .end local v6    # "flags":I
    :cond_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@5e
    .line 603
    const/4 v0, 0x1

    #@5f
    return v0

    #@60
    .line 581
    :cond_2
    const/16 v6, 0x404

    #@62
    .restart local v6    # "flags":I
    goto :goto_0

    #@63
    .line 586
    .end local v6    # "flags":I
    :catch_0
    move-exception v7

    #@64
    .line 587
    .local v7, "ex":Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    const-string/jumbo v0, "ColorFade"

    #@67
    const-string/jumbo v1, "Unable to create surface."

    #@6a
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    .line 588
    const/4 v0, 0x0

    #@6e
    .line 601
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@71
    .line 588
    return v0

    #@72
    .line 600
    .end local v7    # "ex":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    #@73
    .line 601
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@76
    .line 600
    throw v0
.end method

.method private destroyEglSurface()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 623
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 624
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@7
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@9
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 625
    const-string/jumbo v0, "eglDestroySurface"

    #@12
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@15
    .line 627
    :cond_0
    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@17
    .line 622
    :cond_1
    return-void
.end method

.method private destroyGLBuffers()V
    .locals 3

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    #@7
    .line 300
    const-string/jumbo v0, "glDeleteBuffers"

    #@a
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    #@d
    .line 298
    return-void
.end method

.method private destroyGLShaders()V
    .locals 1

    #@0
    .prologue
    .line 260
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    #@5
    .line 261
    const-string/jumbo v0, "glDeleteProgram"

    #@8
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    #@b
    .line 259
    return-void
.end method

.method private destroyScreenshotTexture()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 510
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 511
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    #@7
    .line 512
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@9
    const/4 v1, 0x1

    #@a
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    #@d
    .line 513
    const-string/jumbo v0, "glDeleteTextures"

    #@10
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    #@13
    .line 509
    :cond_0
    return-void
.end method

.method private destroySurface()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 632
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 633
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    #@7
    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->dispose()V

    #@a
    .line 634
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    #@c
    .line 635
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@f
    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@11
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    #@14
    .line 638
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    #@16
    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 640
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@1c
    .line 642
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@1e
    .line 643
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    #@21
    .line 644
    const/4 v0, 0x0

    #@22
    iput v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    #@24
    .line 631
    :cond_0
    return-void

    #@25
    .line 639
    :catchall_0
    move-exception v0

    #@26
    .line 640
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@29
    .line 639
    throw v0
.end method

.method private detachEglContext()V
    .locals 4

    #@0
    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 677
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@6
    .line 678
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    #@8
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    #@a
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    #@c
    .line 677
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    #@f
    .line 675
    :cond_0
    return-void
.end method

.method private drawFaded(FFFF)V
    .locals 8
    .param p1, "opacity"    # F
    .param p2, "gamma"    # F
    .param p3, "saturation"    # F
    .param p4, "scale"    # F

    #@0
    .prologue
    const/16 v2, 0x1406

    #@2
    const/4 v1, 0x2

    #@3
    const v7, 0x8892

    #@6
    const/4 v6, 0x1

    #@7
    const/4 v3, 0x0

    #@8
    .line 418
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@a
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    #@d
    .line 421
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    #@f
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@11
    invoke-static {v0, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    #@14
    .line 422
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    #@16
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    #@18
    invoke-static {v0, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    #@1b
    .line 423
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    #@1d
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    #@20
    .line 424
    iget v0, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    #@22
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    #@25
    .line 425
    iget v0, p0, Lcom/android/server/display/ColorFade;->mSaturationLoc:I

    #@27
    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    #@2a
    .line 426
    iget v0, p0, Lcom/android/server/display/ColorFade;->mScaleLoc:I

    #@2c
    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    #@2f
    .line 429
    const v0, 0x84c0

    #@32
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    #@35
    .line 430
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@37
    aget v0, v0, v3

    #@39
    const v4, 0x8d65

    #@3c
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    #@3f
    .line 433
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@41
    aget v0, v0, v3

    #@43
    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@46
    .line 434
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    #@48
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    #@4b
    .line 435
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    #@4d
    move v4, v3

    #@4e
    move v5, v3

    #@4f
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    #@52
    .line 437
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@54
    aget v0, v0, v6

    #@56
    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@59
    .line 438
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    #@5b
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    #@5e
    .line 439
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    #@60
    move v4, v3

    #@61
    move v5, v3

    #@62
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    #@65
    .line 441
    const/4 v0, 0x6

    #@66
    const/4 v1, 0x4

    #@67
    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    #@6a
    .line 444
    const v0, 0x8d65

    #@6d
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    #@70
    .line 445
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@73
    .line 412
    return-void
.end method

.method private initGLBuffers()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const v5, 0x8892

    #@5
    const/4 v4, 0x0

    #@6
    const v3, 0x8d65

    #@9
    .line 266
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    #@b
    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    #@d
    int-to-float v1, v1

    #@e
    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    #@10
    int-to-float v2, v2

    #@11
    invoke-static {v0, v6, v6, v1, v2}, Lcom/android/server/display/ColorFade;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    #@14
    .line 269
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@16
    aget v0, v0, v4

    #@18
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    #@1b
    .line 270
    const/16 v0, 0x2800

    #@1d
    .line 271
    const/16 v1, 0x2600

    #@1f
    .line 270
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    #@22
    .line 272
    const/16 v0, 0x2801

    #@24
    .line 273
    const/16 v1, 0x2600

    #@26
    .line 272
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    #@29
    .line 274
    const/16 v0, 0x2802

    #@2b
    .line 275
    const v1, 0x812f

    #@2e
    .line 274
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    #@31
    .line 276
    const/16 v0, 0x2803

    #@33
    .line 277
    const v1, 0x812f

    #@36
    .line 276
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    #@39
    .line 278
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    #@3c
    .line 281
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@3e
    const/4 v1, 0x2

    #@3f
    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    #@42
    .line 284
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@44
    aget v0, v0, v4

    #@46
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@49
    .line 285
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    #@4b
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    #@4e
    move-result v0

    #@4f
    mul-int/lit8 v0, v0, 0x4

    #@51
    .line 286
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    #@53
    const v2, 0x88e4

    #@56
    .line 285
    invoke-static {v5, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    #@59
    .line 289
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@5b
    aget v0, v0, v7

    #@5d
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@60
    .line 290
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@62
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    #@65
    move-result v0

    #@66
    mul-int/lit8 v0, v0, 0x4

    #@68
    .line 291
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@6a
    const v2, 0x88e4

    #@6d
    .line 290
    invoke-static {v5, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    #@70
    .line 293
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@73
    .line 295
    return v7
.end method

.method private initGLShaders(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 224
    const v2, 0x1100004

    #@4
    .line 225
    const v3, 0x8b31

    #@7
    .line 224
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    #@a
    move-result v1

    #@b
    .line 226
    .local v1, "vshader":I
    const v2, 0x1100003

    #@e
    .line 227
    const v3, 0x8b30

    #@11
    .line 226
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    #@14
    move-result v0

    #@15
    .line 228
    .local v0, "fshader":I
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    #@18
    .line 229
    if-eqz v1, :cond_0

    #@1a
    if-nez v0, :cond_1

    #@1c
    :cond_0
    return v4

    #@1d
    .line 231
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    #@20
    move-result v2

    #@21
    iput v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@23
    .line 233
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@25
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    #@28
    .line 234
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@2a
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    #@2d
    .line 235
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    #@30
    .line 236
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    #@33
    .line 238
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@35
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    #@38
    .line 240
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@3a
    const-string/jumbo v3, "position"

    #@3d
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    #@40
    move-result v2

    #@41
    iput v2, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    #@43
    .line 241
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@45
    const-string/jumbo v3, "uv"

    #@48
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    #@4b
    move-result v2

    #@4c
    iput v2, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    #@4e
    .line 243
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@50
    const-string/jumbo v3, "proj_matrix"

    #@53
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    #@56
    move-result v2

    #@57
    iput v2, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    #@59
    .line 244
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@5b
    const-string/jumbo v3, "tex_matrix"

    #@5e
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    #@61
    move-result v2

    #@62
    iput v2, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    #@64
    .line 246
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@66
    const-string/jumbo v3, "opacity"

    #@69
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    #@6c
    move-result v2

    #@6d
    iput v2, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    #@6f
    .line 247
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@71
    const-string/jumbo v3, "gamma"

    #@74
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    #@77
    move-result v2

    #@78
    iput v2, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    #@7a
    .line 248
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@7c
    const-string/jumbo v3, "saturation"

    #@7f
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    #@82
    move-result v2

    #@83
    iput v2, p0, Lcom/android/server/display/ColorFade;->mSaturationLoc:I

    #@85
    .line 249
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@87
    const-string/jumbo v3, "scale"

    #@8a
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    #@8d
    move-result v2

    #@8e
    iput v2, p0, Lcom/android/server/display/ColorFade;->mScaleLoc:I

    #@90
    .line 250
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@92
    const-string/jumbo v3, "texUnit"

    #@95
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    #@98
    move-result v2

    #@99
    iput v2, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    #@9b
    .line 252
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@9d
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    #@a0
    .line 253
    iget v2, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    #@a2
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    #@a5
    .line 254
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    #@a8
    .line 256
    const/4 v2, 0x1

    #@a9
    return v2
.end method

.method private loadShader(Landroid/content/Context;II)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "type"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorFade;->readFile(Landroid/content/Context;I)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 205
    .local v2, "source":Ljava/lang/String;
    invoke-static {p3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    #@8
    move-result v1

    #@9
    .line 207
    .local v1, "shader":I
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    #@c
    .line 208
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    #@f
    .line 210
    const/4 v3, 0x1

    #@10
    new-array v0, v3, [I

    #@12
    .line 211
    .local v0, "compiled":[I
    const v3, 0x8b81

    #@15
    invoke-static {v1, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    #@18
    .line 212
    aget v3, v0, v4

    #@1a
    if-nez v3, :cond_0

    #@1c
    .line 213
    const-string/jumbo v3, "ColorFade"

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Could not compile shader "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, ", "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    const-string/jumbo v5, ":"

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 214
    const-string/jumbo v3, "ColorFade"

    #@4b
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 215
    const-string/jumbo v3, "ColorFade"

    #@55
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 216
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    #@5f
    .line 217
    const/4 v1, 0x0

    #@60
    .line 220
    :cond_0
    return v1
.end method

.method private static logEglError(Ljava/lang/String;)V
    .locals 3
    .param p0, "func"    # Ljava/lang/String;

    #@0
    .prologue
    .line 689
    const-string/jumbo v0, "ColorFade"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, " failed: error "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    #@16
    move-result v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    new-instance v2, Ljava/lang/Throwable;

    #@21
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@24
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 688
    return-void
.end method

.method private ortho(FFFFFF)V
    .locals 5
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "znear"    # F
    .param p6, "zfar"    # F

    #@0
    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    #@2
    const/4 v3, 0x0

    #@3
    .line 449
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@5
    sub-float v1, p2, p1

    #@7
    div-float v1, v4, v1

    #@9
    const/4 v2, 0x0

    #@a
    aput v1, v0, v2

    #@c
    .line 450
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@e
    const/4 v1, 0x1

    #@f
    aput v3, v0, v1

    #@11
    .line 451
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@13
    const/4 v1, 0x2

    #@14
    aput v3, v0, v1

    #@16
    .line 452
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@18
    const/4 v1, 0x3

    #@19
    aput v3, v0, v1

    #@1b
    .line 453
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@1d
    const/4 v1, 0x4

    #@1e
    aput v3, v0, v1

    #@20
    .line 454
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@22
    sub-float v1, p4, p3

    #@24
    div-float v1, v4, v1

    #@26
    const/4 v2, 0x5

    #@27
    aput v1, v0, v2

    #@29
    .line 455
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@2b
    const/4 v1, 0x6

    #@2c
    aput v3, v0, v1

    #@2e
    .line 456
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@30
    const/4 v1, 0x7

    #@31
    aput v3, v0, v1

    #@33
    .line 457
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@35
    const/16 v1, 0x8

    #@37
    aput v3, v0, v1

    #@39
    .line 458
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@3b
    const/16 v1, 0x9

    #@3d
    aput v3, v0, v1

    #@3f
    .line 459
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@41
    sub-float v1, p6, p5

    #@43
    const/high16 v2, -0x40000000    # -2.0f

    #@45
    div-float v1, v2, v1

    #@47
    const/16 v2, 0xa

    #@49
    aput v1, v0, v2

    #@4b
    .line 460
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@4d
    const/16 v1, 0xb

    #@4f
    aput v3, v0, v1

    #@51
    .line 461
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@53
    add-float v1, p2, p1

    #@55
    neg-float v1, v1

    #@56
    sub-float v2, p2, p1

    #@58
    div-float/2addr v1, v2

    #@59
    const/16 v2, 0xc

    #@5b
    aput v1, v0, v2

    #@5d
    .line 462
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@5f
    add-float v1, p4, p3

    #@61
    neg-float v1, v1

    #@62
    sub-float v2, p4, p3

    #@64
    div-float/2addr v1, v2

    #@65
    const/16 v2, 0xd

    #@67
    aput v1, v0, v2

    #@69
    .line 463
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@6b
    add-float v1, p6, p5

    #@6d
    neg-float v1, v1

    #@6e
    sub-float v2, p6, p5

    #@70
    div-float/2addr v1, v2

    #@71
    const/16 v2, 0xe

    #@73
    aput v1, v0, v2

    #@75
    .line 464
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@77
    const/high16 v1, 0x3f800000    # 1.0f

    #@79
    const/16 v2, 0xf

    #@7b
    aput v1, v0, v2

    #@7d
    .line 448
    return-void
.end method

.method private readFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    #@0
    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@7
    move-result-object v1

    #@8
    .line 194
    .local v1, "stream":Ljava/io/InputStream;
    new-instance v2, Ljava/lang/String;

    #@a
    new-instance v3, Ljava/io/InputStreamReader;

    #@c
    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@f
    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    return-object v2

    #@17
    .line 196
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@18
    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ColorFade"

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Unrecognized shader "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 198
    new-instance v2, Ljava/lang/RuntimeException;

    #@38
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@3b
    throw v2
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .locals 2
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    #@0
    .prologue
    .line 307
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@4
    .line 308
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@8
    .line 309
    const/4 v0, 0x2

    #@9
    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@c
    .line 310
    add-float v0, p2, p4

    #@e
    const/4 v1, 0x3

    #@f
    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@12
    .line 311
    add-float v0, p1, p3

    #@14
    const/4 v1, 0x4

    #@15
    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@18
    .line 312
    add-float v0, p2, p4

    #@1a
    const/4 v1, 0x5

    #@1b
    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@1e
    .line 313
    add-float v0, p1, p3

    #@20
    const/4 v1, 0x6

    #@21
    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@24
    .line 314
    const/4 v0, 0x7

    #@25
    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@28
    .line 303
    return-void
.end method

.method private showSurface(F)Z
    .locals 3
    .param p1, "alpha"    # F

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 649
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    #@7
    cmpl-float v0, v0, p1

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 650
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@e
    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@10
    const v1, 0x40000001    # 2.0000002f

    #@13
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@16
    .line 653
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@18
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@1b
    .line 654
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@1d
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 656
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@23
    .line 658
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    #@25
    .line 659
    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    #@27
    .line 661
    :cond_1
    return v2

    #@28
    .line 655
    :catchall_0
    move-exception v0

    #@29
    .line 656
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@2c
    .line 655
    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 358
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    #@7
    .line 359
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    #@a
    .line 360
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    #@d
    .line 352
    :cond_0
    return-void
.end method

.method public dismissResources()V
    .locals 1

    #@0
    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 329
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    #@7
    .line 331
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyScreenshotTexture()V

    #@a
    .line 332
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    #@d
    .line 333
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLBuffers()V

    #@10
    .line 334
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 336
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@16
    .line 340
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    #@19
    .line 341
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    #@1c
    .line 323
    :cond_0
    return-void

    #@1d
    .line 335
    :catchall_0
    move-exception v0

    #@1e
    .line 336
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@21
    .line 335
    throw v0
.end method

.method public draw(F)Z
    .locals 14
    .param p1, "level"    # F

    #@0
    .prologue
    .line 376
    iget-boolean v10, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    #@2
    if-nez v10, :cond_0

    #@4
    .line 377
    const/4 v10, 0x0

    #@5
    return v10

    #@6
    .line 380
    :cond_0
    iget v10, p0, Lcom/android/server/display/ColorFade;->mMode:I

    #@8
    const/4 v11, 0x2

    #@9
    if-ne v10, v11, :cond_1

    #@b
    .line 381
    const/high16 v10, 0x3f800000    # 1.0f

    #@d
    sub-float/2addr v10, p1

    #@e
    invoke-direct {p0, v10}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    #@11
    move-result v10

    #@12
    return v10

    #@13
    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    #@16
    move-result v10

    #@17
    if-nez v10, :cond_2

    #@19
    .line 385
    const/4 v10, 0x0

    #@1a
    return v10

    #@1b
    .line 389
    :cond_2
    const/4 v10, 0x0

    #@1c
    const/4 v11, 0x0

    #@1d
    const/4 v12, 0x0

    #@1e
    const/high16 v13, 0x3f800000    # 1.0f

    #@20
    :try_start_0
    invoke-static {v10, v11, v12, v13}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    #@23
    .line 390
    const/16 v10, 0x4000

    #@25
    invoke-static {v10}, Landroid/opengl/GLES20;->glClear(I)V

    #@28
    .line 393
    const/high16 v10, 0x3f800000    # 1.0f

    #@2a
    sub-float/2addr v10, p1

    #@2b
    float-to-double v4, v10

    #@2c
    .line 394
    .local v4, "one_minus_level":D
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    #@31
    mul-double/2addr v10, v4

    #@32
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    #@35
    move-result-wide v0

    #@36
    .line 395
    .local v0, "cos":D
    const-wide/16 v10, 0x0

    #@38
    cmpg-double v10, v0, v10

    #@3a
    if-gez v10, :cond_3

    #@3c
    const/4 v10, -0x1

    #@3d
    :goto_0
    int-to-double v8, v10

    #@3e
    .line 396
    .local v8, "sign":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@40
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@43
    move-result-wide v10

    #@44
    neg-double v10, v10

    #@45
    double-to-float v10, v10

    #@46
    const/high16 v11, 0x3f800000    # 1.0f

    #@48
    add-float v3, v10, v11

    #@4a
    .line 397
    .local v3, "opacity":F
    float-to-double v10, p1

    #@4b
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    #@4d
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@50
    move-result-wide v10

    #@51
    double-to-float v6, v10

    #@52
    .line 398
    .local v6, "saturation":F
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@54
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@57
    move-result-wide v10

    #@58
    neg-double v10, v10

    #@59
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    #@5b
    add-double/2addr v10, v12

    #@5c
    const-wide v12, 0x3fb999999999999aL    # 0.1

    #@61
    mul-double/2addr v10, v12

    #@62
    const-wide v12, 0x3feccccccccccccdL    # 0.9

    #@67
    add-double/2addr v10, v12

    #@68
    double-to-float v7, v10

    #@69
    .line 399
    .local v7, "scale":F
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    #@6b
    mul-double/2addr v10, v8

    #@6c
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    #@6e
    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@71
    move-result-wide v12

    #@72
    mul-double/2addr v10, v12

    #@73
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    #@75
    add-double/2addr v10, v12

    #@76
    const-wide v12, 0x3feccccccccccccdL    # 0.9

    #@7b
    mul-double/2addr v10, v12

    #@7c
    const-wide v12, 0x3fb999999999999aL    # 0.1

    #@81
    add-double/2addr v10, v12

    #@82
    double-to-float v2, v10

    #@83
    .line 400
    .local v2, "gamma":F
    const/high16 v10, 0x3f800000    # 1.0f

    #@85
    div-float/2addr v10, v2

    #@86
    invoke-direct {p0, v3, v10, v6, v7}, Lcom/android/server/display/ColorFade;->drawFaded(FFFF)V

    #@89
    .line 401
    const-string/jumbo v10, "drawFrame"

    #@8c
    invoke-static {v10}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8f
    move-result v10

    #@90
    if-eqz v10, :cond_4

    #@92
    .line 402
    const/4 v10, 0x0

    #@93
    .line 407
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@96
    .line 402
    return v10

    #@97
    .line 395
    .end local v2    # "gamma":F
    .end local v3    # "opacity":F
    .end local v6    # "saturation":F
    .end local v7    # "scale":F
    .end local v8    # "sign":D
    :cond_3
    const/4 v10, 0x1

    #@98
    goto :goto_0

    #@99
    .line 405
    .restart local v2    # "gamma":F
    .restart local v3    # "opacity":F
    .restart local v6    # "saturation":F
    .restart local v7    # "scale":F
    .restart local v8    # "sign":D
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@9b
    iget-object v11, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@9d
    invoke-static {v10, v11}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a0
    .line 407
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@a3
    .line 409
    const/high16 v10, 0x3f800000    # 1.0f

    #@a5
    invoke-direct {p0, v10}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    #@a8
    move-result v10

    #@a9
    return v10

    #@aa
    .line 406
    .end local v0    # "cos":D
    .end local v2    # "gamma":F
    .end local v3    # "opacity":F
    .end local v4    # "one_minus_level":D
    .end local v6    # "saturation":F
    .end local v7    # "scale":F
    .end local v8    # "sign":D
    :catchall_0
    move-exception v10

    #@ab
    .line 407
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@ae
    .line 406
    throw v10
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 709
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 710
    const-string/jumbo v0, "Color Fade State:"

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "  mPrepared="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, "  mMode="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget v1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, "  mDisplayLayerStack="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v1, "  mDisplayWidth="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v1, "  mDisplayHeight="

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v1, "  mSurfaceVisible="

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v1, "  mSurfaceAlpha="

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    iget v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b8
    .line 708
    return-void
.end method

.method public prepare(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 142
    iput p2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    #@4
    .line 146
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@6
    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    #@8
    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    #@b
    move-result-object v0

    #@c
    .line 147
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v0, Landroid/view/DisplayInfo;->layerStack:I

    #@e
    iput v2, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    #@10
    .line 148
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    #@13
    move-result v2

    #@14
    iput v2, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    #@16
    .line 149
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    #@19
    move-result v2

    #@1a
    iput v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    #@1c
    .line 152
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createSurface()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglContext()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglSurface()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 153
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->captureScreenshotTextureAndSetViewport()Z

    #@31
    move-result v2

    #@32
    .line 152
    :goto_0
    if-nez v2, :cond_1

    #@34
    .line 154
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    #@37
    .line 155
    return v3

    #@38
    :cond_0
    move v2, v3

    #@39
    .line 152
    goto :goto_0

    #@3a
    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_2

    #@40
    .line 160
    return v3

    #@41
    .line 163
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_3

    #@47
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->initGLBuffers()Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_3

    #@4d
    const-string/jumbo v2, "prepare"

    #@50
    invoke-static {v2}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_4

    #@56
    .line 164
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@59
    .line 165
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    .line 169
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@5f
    .line 166
    return v3

    #@60
    .line 169
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@63
    .line 173
    iput-boolean v5, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    #@65
    .line 174
    iput-boolean v5, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    #@67
    .line 183
    if-ne p2, v5, :cond_5

    #@69
    .line 184
    const/4 v1, 0x0

    #@6a
    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    #@6b
    if-ge v1, v2, :cond_5

    #@6d
    .line 185
    const/high16 v2, 0x3f800000    # 1.0f

    #@6f
    invoke-virtual {p0, v2}, Lcom/android/server/display/ColorFade;->draw(F)Z

    #@72
    .line 184
    add-int/lit8 v1, v1, 0x1

    #@74
    goto :goto_1

    #@75
    .line 168
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@76
    .line 169
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@79
    .line 168
    throw v2

    #@7a
    .line 188
    :cond_5
    return v5
.end method
