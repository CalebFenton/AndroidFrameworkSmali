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
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 95
    const/4 v0, 0x1

    #@8
    new-array v0, v0, [I

    #@a
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@c
    .line 97
    new-array v0, v2, [F

    #@e
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    #@10
    .line 98
    new-array v0, v2, [F

    #@12
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@14
    .line 99
    const/4 v0, 0x2

    #@15
    new-array v0, v0, [I

    #@17
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@19
    .line 106
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    #@1f
    .line 107
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@25
    .line 125
    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    #@27
    .line 126
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
    .line 124
    return-void
.end method

.method private attachEglContext()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 644
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 645
    return v4

    #@6
    .line 647
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
    .line 648
    const-string/jumbo v0, "eglMakeCurrent"

    #@17
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@1a
    .line 649
    return v4

    #@1b
    .line 651
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
    .line 447
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 448
    return v3

    #@9
    .line 451
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    #@b
    if-nez v0, :cond_2

    #@d
    .line 452
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@f
    const/4 v1, 0x1

    #@10
    const/4 v2, 0x0

    #@11
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    #@14
    .line 453
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
    .line 483
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@20
    .line 454
    return v3

    #@21
    .line 456
    :cond_1
    const/4 v0, 0x1

    #@22
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    #@24
    .line 459
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
    .line 460
    .local v8, "st":Landroid/graphics/SurfaceTexture;
    new-instance v7, Landroid/view/Surface;

    #@30
    invoke-direct {v7, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    .line 463
    .local v7, "s":Landroid/view/Surface;
    const/4 v0, 0x0

    #@34
    .line 462
    :try_start_2
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0, v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    #@3b
    .line 464
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    #@3e
    .line 465
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    #@40
    invoke-virtual {v8, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 467
    :try_start_3
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    #@46
    .line 468
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->release()V

    #@49
    .line 474
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
    .line 475
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
    .line 476
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
    .line 477
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
    .line 480
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
    .line 481
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
    .line 483
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@a1
    .line 485
    return v9

    #@a2
    .line 466
    :catchall_0
    move-exception v0

    #@a3
    .line 467
    :try_start_4
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    #@a6
    .line 468
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->release()V

    #@a9
    .line 466
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@aa
    .line 482
    .end local v7    # "s":Landroid/view/Surface;
    .end local v8    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_1
    move-exception v0

    #@ab
    .line 483
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@ae
    .line 482
    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .locals 1
    .param p0, "func"    # Ljava/lang/String;

    #@0
    .prologue
    .line 672
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
    .line 676
    const/4 v1, 0x0

    #@1
    .line 678
    .local v1, "hadError":Z
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    #@4
    move-result v0

    #@5
    .local v0, "error":I
    if-eqz v0, :cond_1

    #@7
    .line 679
    if-eqz p1, :cond_0

    #@9
    .line 680
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
    .line 682
    :cond_0
    const/4 v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 684
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
    .line 497
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 498
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@e
    .line 499
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@10
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    #@12
    if-ne v0, v4, :cond_0

    #@14
    .line 500
    const-string/jumbo v0, "eglGetDisplay"

    #@17
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@1a
    .line 501
    return v2

    #@1b
    .line 504
    :cond_0
    new-array v9, v11, [I

    #@1d
    .line 505
    .local v9, "version":[I
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@1f
    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_1

    #@25
    .line 506
    iput-object v5, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@27
    .line 507
    const-string/jumbo v0, "eglInitialize"

    #@2a
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@2d
    .line 508
    return v2

    #@2e
    .line 512
    .end local v9    # "version":[I
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    #@30
    if-nez v0, :cond_3

    #@32
    .line 513
    const/16 v0, 0xb

    #@34
    new-array v1, v0, [I

    #@36
    .local v1, "eglConfigAttribList":[I
    fill-array-data v1, :array_0

    #@39
    .line 522
    new-array v6, v10, [I

    #@3b
    .line 523
    .local v6, "numEglConfigs":[I
    new-array v3, v10, [Landroid/opengl/EGLConfig;

    #@3d
    .line 524
    .local v3, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@3f
    .line 525
    array-length v5, v3

    #@40
    move v4, v2

    #@41
    move v7, v2

    #@42
    .line 524
    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    #@45
    move-result v0

    #@46
    if-nez v0, :cond_2

    #@48
    .line 526
    const-string/jumbo v0, "eglChooseConfig"

    #@4b
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@4e
    .line 527
    return v2

    #@4f
    .line 529
    :cond_2
    aget-object v0, v3, v2

    #@51
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    #@53
    .line 532
    .end local v1    # "eglConfigAttribList":[I
    .end local v3    # "eglConfigs":[Landroid/opengl/EGLConfig;
    .end local v6    # "numEglConfigs":[I
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    #@55
    if-nez v0, :cond_4

    #@57
    .line 534
    const/16 v0, 0x3098

    #@59
    .line 535
    const/16 v4, 0x3038

    #@5b
    .line 533
    filled-new-array {v0, v11, v4}, [I

    #@5e
    move-result-object v8

    #@5f
    .line 537
    .local v8, "eglContextAttribList":[I
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@61
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    #@63
    .line 538
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    #@65
    .line 537
    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    #@68
    move-result-object v0

    #@69
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    #@6b
    .line 539
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    #@6d
    if-nez v0, :cond_4

    #@6f
    .line 540
    const-string/jumbo v0, "eglCreateContext"

    #@72
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@75
    .line 541
    return v2

    #@76
    .line 544
    .end local v8    # "eglContextAttribList":[I
    :cond_4
    return v10

    #@77
    .line 513
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
    .line 586
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 587
    new-array v0, v5, [I

    #@8
    .line 588
    const/16 v1, 0x3038

    #@a
    aput v1, v0, v4

    #@c
    .line 591
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
    .line 593
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@1a
    if-nez v1, :cond_0

    #@1c
    .line 594
    const-string/jumbo v1, "eglCreateWindowSurface"

    #@1f
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@22
    .line 595
    return v4

    #@23
    .line 598
    .end local v0    # "eglSurfaceAttribList":[I
    :cond_0
    return v5
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "size"    # I

    #@0
    .prologue
    .line 662
    mul-int/lit8 v1, p0, 0x4

    #@2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    .line 663
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@d
    .line 664
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
    .line 548
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 549
    new-instance v0, Landroid/view/SurfaceSession;

    #@6
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@b
    .line 552
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@e
    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 557
    :try_start_1
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    #@14
    const/4 v1, 0x2

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 558
    const v6, 0x20004

    #@1a
    .line 562
    .local v6, "flags":I
    :goto_0
    new-instance v0, Landroid/view/SurfaceControl;

    #@1c
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@1e
    .line 563
    const-string/jumbo v2, "ColorFade"

    #@21
    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    #@23
    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    #@25
    .line 564
    const/4 v5, -0x1

    #@26
    .line 562
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@29
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 571
    .end local v6    # "flags":I
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2d
    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    #@2f
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@32
    .line 572
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@34
    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    #@36
    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    #@38
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    #@3b
    .line 573
    new-instance v0, Landroid/view/Surface;

    #@3d
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    #@42
    .line 574
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    #@44
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@46
    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    #@49
    .line 576
    new-instance v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    #@4b
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@4d
    .line 577
    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    #@4f
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@51
    .line 576
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    #@54
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    #@56
    .line 578
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    #@58
    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    .line 580
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@5e
    .line 582
    const/4 v0, 0x1

    #@5f
    return v0

    #@60
    .line 560
    :cond_2
    const/16 v6, 0x404

    #@62
    .restart local v6    # "flags":I
    goto :goto_0

    #@63
    .line 565
    .end local v6    # "flags":I
    :catch_0
    move-exception v7

    #@64
    .line 566
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
    .line 567
    const/4 v0, 0x0

    #@6e
    .line 580
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@71
    .line 567
    return v0

    #@72
    .line 579
    .end local v7    # "ex":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    #@73
    .line 580
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@76
    .line 579
    throw v0
.end method

.method private destroyEglSurface()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 602
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 603
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
    .line 604
    const-string/jumbo v0, "eglDestroySurface"

    #@12
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    #@15
    .line 606
    :cond_0
    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    #@17
    .line 601
    :cond_1
    return-void
.end method

.method private destroyGLBuffers()V
    .locals 3

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    #@7
    .line 298
    const-string/jumbo v0, "glDeleteBuffers"

    #@a
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    #@d
    .line 296
    return-void
.end method

.method private destroyGLShaders()V
    .locals 1

    #@0
    .prologue
    .line 258
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    #@5
    .line 259
    const-string/jumbo v0, "glDeleteProgram"

    #@8
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    #@b
    .line 257
    return-void
.end method

.method private destroyScreenshotTexture()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 489
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 490
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    #@7
    .line 491
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@9
    const/4 v1, 0x1

    #@a
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    #@d
    .line 492
    const-string/jumbo v0, "glDeleteTextures"

    #@10
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    #@13
    .line 488
    :cond_0
    return-void
.end method

.method private destroySurface()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 611
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 612
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    #@7
    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->dispose()V

    #@a
    .line 613
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    #@c
    .line 614
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@f
    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@11
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    #@14
    .line 617
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    #@16
    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 619
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@1c
    .line 621
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@1e
    .line 622
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    #@21
    .line 623
    const/4 v0, 0x0

    #@22
    iput v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    #@24
    .line 610
    :cond_0
    return-void

    #@25
    .line 618
    :catchall_0
    move-exception v0

    #@26
    .line 619
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@29
    .line 618
    throw v0
.end method

.method private detachEglContext()V
    .locals 4

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 656
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    #@6
    .line 657
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    #@8
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    #@a
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    #@c
    .line 656
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    #@f
    .line 654
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
    .line 397
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@a
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    #@d
    .line 400
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    #@f
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@11
    invoke-static {v0, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    #@14
    .line 401
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    #@16
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    #@18
    invoke-static {v0, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    #@1b
    .line 402
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    #@1d
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    #@20
    .line 403
    iget v0, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    #@22
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    #@25
    .line 404
    iget v0, p0, Lcom/android/server/display/ColorFade;->mSaturationLoc:I

    #@27
    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    #@2a
    .line 405
    iget v0, p0, Lcom/android/server/display/ColorFade;->mScaleLoc:I

    #@2c
    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    #@2f
    .line 408
    const v0, 0x84c0

    #@32
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    #@35
    .line 409
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@37
    aget v0, v0, v3

    #@39
    const v4, 0x8d65

    #@3c
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    #@3f
    .line 412
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@41
    aget v0, v0, v3

    #@43
    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@46
    .line 413
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    #@48
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    #@4b
    .line 414
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    #@4d
    move v4, v3

    #@4e
    move v5, v3

    #@4f
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    #@52
    .line 416
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@54
    aget v0, v0, v6

    #@56
    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@59
    .line 417
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    #@5b
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    #@5e
    .line 418
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    #@60
    move v4, v3

    #@61
    move v5, v3

    #@62
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    #@65
    .line 420
    const/4 v0, 0x6

    #@66
    const/4 v1, 0x4

    #@67
    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    #@6a
    .line 423
    const v0, 0x8d65

    #@6d
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    #@70
    .line 424
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@73
    .line 391
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
    .line 264
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
    .line 267
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    #@16
    aget v0, v0, v4

    #@18
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    #@1b
    .line 268
    const/16 v0, 0x2800

    #@1d
    .line 269
    const/16 v1, 0x2600

    #@1f
    .line 268
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    #@22
    .line 270
    const/16 v0, 0x2801

    #@24
    .line 271
    const/16 v1, 0x2600

    #@26
    .line 270
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    #@29
    .line 272
    const/16 v0, 0x2802

    #@2b
    .line 273
    const v1, 0x812f

    #@2e
    .line 272
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    #@31
    .line 274
    const/16 v0, 0x2803

    #@33
    .line 275
    const v1, 0x812f

    #@36
    .line 274
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    #@39
    .line 276
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    #@3c
    .line 279
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@3e
    const/4 v1, 0x2

    #@3f
    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    #@42
    .line 282
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@44
    aget v0, v0, v4

    #@46
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@49
    .line 283
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    #@4b
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    #@4e
    move-result v0

    #@4f
    mul-int/lit8 v0, v0, 0x4

    #@51
    .line 284
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    #@53
    const v2, 0x88e4

    #@56
    .line 283
    invoke-static {v5, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    #@59
    .line 287
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    #@5b
    aget v0, v0, v7

    #@5d
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@60
    .line 288
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@62
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    #@65
    move-result v0

    #@66
    mul-int/lit8 v0, v0, 0x4

    #@68
    .line 289
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    #@6a
    const v2, 0x88e4

    #@6d
    .line 288
    invoke-static {v5, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    #@70
    .line 291
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    #@73
    .line 293
    return v7
.end method

.method private initGLShaders(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 222
    const v2, 0x1100004

    #@4
    .line 223
    const v3, 0x8b31

    #@7
    .line 222
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    #@a
    move-result v1

    #@b
    .line 224
    .local v1, "vshader":I
    const v2, 0x1100003

    #@e
    .line 225
    const v3, 0x8b30

    #@11
    .line 224
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    #@14
    move-result v0

    #@15
    .line 226
    .local v0, "fshader":I
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    #@18
    .line 227
    if-eqz v1, :cond_0

    #@1a
    if-nez v0, :cond_1

    #@1c
    :cond_0
    return v4

    #@1d
    .line 229
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    #@20
    move-result v2

    #@21
    iput v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@23
    .line 231
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@25
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    #@28
    .line 232
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@2a
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    #@2d
    .line 233
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    #@30
    .line 234
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    #@33
    .line 236
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@35
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    #@38
    .line 238
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
    .line 239
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
    .line 241
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
    .line 242
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
    .line 244
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
    .line 245
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
    .line 246
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
    .line 247
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
    .line 248
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
    .line 250
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    #@9d
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    #@a0
    .line 251
    iget v2, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    #@a2
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    #@a5
    .line 252
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    #@a8
    .line 254
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
    .line 201
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorFade;->readFile(Landroid/content/Context;I)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 203
    .local v2, "source":Ljava/lang/String;
    invoke-static {p3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    #@8
    move-result v1

    #@9
    .line 205
    .local v1, "shader":I
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    #@c
    .line 206
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    #@f
    .line 208
    const/4 v3, 0x1

    #@10
    new-array v0, v3, [I

    #@12
    .line 209
    .local v0, "compiled":[I
    const v3, 0x8b81

    #@15
    invoke-static {v1, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    #@18
    .line 210
    aget v3, v0, v4

    #@1a
    if-nez v3, :cond_0

    #@1c
    .line 211
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
    .line 212
    const-string/jumbo v3, "ColorFade"

    #@4b
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 213
    const-string/jumbo v3, "ColorFade"

    #@55
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 214
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    #@5f
    .line 215
    const/4 v1, 0x0

    #@60
    .line 218
    :cond_0
    return v1
.end method

.method private static logEglError(Ljava/lang/String;)V
    .locals 3
    .param p0, "func"    # Ljava/lang/String;

    #@0
    .prologue
    .line 668
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
    .line 667
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
    .line 428
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
    .line 429
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@e
    const/4 v1, 0x1

    #@f
    aput v3, v0, v1

    #@11
    .line 430
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@13
    const/4 v1, 0x2

    #@14
    aput v3, v0, v1

    #@16
    .line 431
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@18
    const/4 v1, 0x3

    #@19
    aput v3, v0, v1

    #@1b
    .line 432
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@1d
    const/4 v1, 0x4

    #@1e
    aput v3, v0, v1

    #@20
    .line 433
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
    .line 434
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@2b
    const/4 v1, 0x6

    #@2c
    aput v3, v0, v1

    #@2e
    .line 435
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@30
    const/4 v1, 0x7

    #@31
    aput v3, v0, v1

    #@33
    .line 436
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@35
    const/16 v1, 0x8

    #@37
    aput v3, v0, v1

    #@39
    .line 437
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@3b
    const/16 v1, 0x9

    #@3d
    aput v3, v0, v1

    #@3f
    .line 438
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
    .line 439
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@4d
    const/16 v1, 0xb

    #@4f
    aput v3, v0, v1

    #@51
    .line 440
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
    .line 441
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
    .line 442
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
    .line 443
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    #@77
    const/high16 v1, 0x3f800000    # 1.0f

    #@79
    const/16 v2, 0xf

    #@7b
    aput v1, v0, v2

    #@7d
    .line 427
    return-void
.end method

.method private readFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    #@0
    .prologue
    .line 191
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@7
    move-result-object v1

    #@8
    .line 192
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
    .line 194
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@18
    .line 195
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
    .line 196
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
    .line 305
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@4
    .line 306
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@8
    .line 307
    const/4 v0, 0x2

    #@9
    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@c
    .line 308
    add-float v0, p2, p4

    #@e
    const/4 v1, 0x3

    #@f
    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@12
    .line 309
    add-float v0, p1, p3

    #@14
    const/4 v1, 0x4

    #@15
    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@18
    .line 310
    add-float v0, p2, p4

    #@1a
    const/4 v1, 0x5

    #@1b
    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@1e
    .line 311
    add-float v0, p1, p3

    #@20
    const/4 v1, 0x6

    #@21
    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@24
    .line 312
    const/4 v0, 0x7

    #@25
    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@28
    .line 301
    return-void
.end method

.method private showSurface(F)Z
    .locals 3
    .param p1, "alpha"    # F

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 628
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
    .line 629
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@e
    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@10
    const v1, 0x40000001    # 2.0000002f

    #@13
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@16
    .line 632
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@18
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@1b
    .line 633
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@1d
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 635
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@23
    .line 637
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    #@25
    .line 638
    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    #@27
    .line 640
    :cond_1
    return v2

    #@28
    .line 634
    :catchall_0
    move-exception v0

    #@29
    .line 635
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@2c
    .line 634
    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 328
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    #@7
    .line 330
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyScreenshotTexture()V

    #@a
    .line 331
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    #@d
    .line 332
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLBuffers()V

    #@10
    .line 333
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 335
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@16
    .line 337
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    #@19
    .line 338
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    #@1c
    .line 339
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    #@1f
    .line 322
    :cond_0
    return-void

    #@20
    .line 334
    :catchall_0
    move-exception v0

    #@21
    .line 335
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@24
    .line 334
    throw v0
.end method

.method public draw(F)Z
    .locals 14
    .param p1, "level"    # F

    #@0
    .prologue
    .line 355
    iget-boolean v10, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    #@2
    if-nez v10, :cond_0

    #@4
    .line 356
    const/4 v10, 0x0

    #@5
    return v10

    #@6
    .line 359
    :cond_0
    iget v10, p0, Lcom/android/server/display/ColorFade;->mMode:I

    #@8
    const/4 v11, 0x2

    #@9
    if-ne v10, v11, :cond_1

    #@b
    .line 360
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
    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    #@16
    move-result v10

    #@17
    if-nez v10, :cond_2

    #@19
    .line 364
    const/4 v10, 0x0

    #@1a
    return v10

    #@1b
    .line 368
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
    .line 369
    const/16 v10, 0x4000

    #@25
    invoke-static {v10}, Landroid/opengl/GLES20;->glClear(I)V

    #@28
    .line 372
    const/high16 v10, 0x3f800000    # 1.0f

    #@2a
    sub-float/2addr v10, p1

    #@2b
    float-to-double v4, v10

    #@2c
    .line 373
    .local v4, "one_minus_level":D
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    #@31
    mul-double/2addr v10, v4

    #@32
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    #@35
    move-result-wide v0

    #@36
    .line 374
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
    .line 375
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
    .line 376
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
    .line 377
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
    .line 378
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
    .line 379
    .local v2, "gamma":F
    const/high16 v10, 0x3f800000    # 1.0f

    #@85
    div-float/2addr v10, v2

    #@86
    invoke-direct {p0, v3, v10, v6, v7}, Lcom/android/server/display/ColorFade;->drawFaded(FFFF)V

    #@89
    .line 380
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
    .line 381
    const/4 v10, 0x0

    #@93
    .line 386
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@96
    .line 381
    return v10

    #@97
    .line 374
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
    .line 384
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
    .line 386
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@a3
    .line 388
    const/high16 v10, 0x3f800000    # 1.0f

    #@a5
    invoke-direct {p0, v10}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    #@a8
    move-result v10

    #@a9
    return v10

    #@aa
    .line 385
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
    .line 386
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@ae
    .line 385
    throw v10
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 688
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 689
    const-string/jumbo v0, "Color Fade State:"

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 690
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
    .line 691
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
    .line 692
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
    .line 693
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
    .line 694
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
    .line 695
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
    .line 696
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
    .line 687
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
    .line 141
    iput p2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    #@4
    .line 145
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@6
    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    #@8
    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    #@b
    move-result-object v0

    #@c
    .line 146
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v0, Landroid/view/DisplayInfo;->layerStack:I

    #@e
    iput v2, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    #@10
    .line 147
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    #@13
    move-result v2

    #@14
    iput v2, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    #@16
    .line 148
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    #@19
    move-result v2

    #@1a
    iput v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    #@1c
    .line 151
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
    .line 152
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->captureScreenshotTextureAndSetViewport()Z

    #@31
    move-result v2

    #@32
    .line 151
    :goto_0
    if-nez v2, :cond_1

    #@34
    .line 153
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    #@37
    .line 154
    return v3

    #@38
    :cond_0
    move v2, v3

    #@39
    .line 151
    goto :goto_0

    #@3a
    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_2

    #@40
    .line 159
    return v3

    #@41
    .line 162
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
    .line 163
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@59
    .line 164
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    .line 168
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@5f
    .line 165
    return v3

    #@60
    .line 168
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@63
    .line 172
    iput-boolean v5, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    #@65
    .line 181
    if-ne p2, v5, :cond_5

    #@67
    .line 182
    const/4 v1, 0x0

    #@68
    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    #@69
    if-ge v1, v2, :cond_5

    #@6b
    .line 183
    const/high16 v2, 0x3f800000    # 1.0f

    #@6d
    invoke-virtual {p0, v2}, Lcom/android/server/display/ColorFade;->draw(F)Z

    #@70
    .line 182
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_1

    #@73
    .line 167
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@74
    .line 168
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    #@77
    .line 167
    throw v2

    #@78
    .line 186
    :cond_5
    return v5
.end method
