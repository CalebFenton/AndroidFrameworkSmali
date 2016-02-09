.class public Landroid/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLSurfaceView$GLWrapper;,
        Landroid/opengl/GLSurfaceView$Renderer;,
        Landroid/opengl/GLSurfaceView$EGLContextFactory;,
        Landroid/opengl/GLSurfaceView$DefaultContextFactory;,
        Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;,
        Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Landroid/opengl/GLSurfaceView$EGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$BaseConfigChooser;,
        Landroid/opengl/GLSurfaceView$ComponentSizeChooser;,
        Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$EglHelper;,
        Landroid/opengl/GLSurfaceView$GLThread;,
        Landroid/opengl/GLSurfaceView$LogWriter;,
        Landroid/opengl/GLSurfaceView$GLThreadManager;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

.field private mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
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
.method static synthetic -get0(Landroid/opengl/GLSurfaceView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/opengl/GLSurfaceView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/opengl/GLSurfaceView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    #@2
    return-object v0
.end method

.method static synthetic -get8()Landroid/opengl/GLSurfaceView$GLThreadManager;
    .locals 1

    #@0
    sget-object v0, Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1941
    new-instance v0, Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>(Landroid/opengl/GLSurfaceView$GLThreadManager;)V

    #@6
    sput-object v0, Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@8
    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 214
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    #@3
    .line 1944
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    .line 1943
    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    #@a
    .line 215
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    #@d
    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 1944
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    .line 1943
    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    #@a
    .line 224
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    #@d
    .line 222
    return-void
.end method

.method private checkRenderThreadState()V
    .locals 2

    #@0
    .prologue
    .line 1820
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1821
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 1822
    const-string/jumbo v1, "setRenderer has already been called for this instance."

    #@9
    .line 1821
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1819
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    #@0
    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@3
    move-result-object v0

    #@4
    .line 244
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    #@7
    .line 240
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 233
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@6
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 236
    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceView;->finalize()V

    #@c
    .line 228
    return-void

    #@d
    .line 235
    :catchall_0
    move-exception v0

    #@e
    .line 236
    invoke-super {p0}, Landroid/view/SurfaceView;->finalize()V

    #@11
    .line 235
    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    #@0
    .prologue
    .line 289
    iget v0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    #@2
    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    #@0
    .prologue
    .line 318
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    #@2
    return v0
.end method

.method public getRenderMode()I
    .locals 1

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    #@0
    .prologue
    .line 581
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    #@3
    .line 585
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    #@5
    if-eqz v1, :cond_2

    #@7
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    #@9
    if-eqz v1, :cond_2

    #@b
    .line 586
    const/4 v0, 0x1

    #@c
    .line 587
    .local v0, "renderMode":I
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 588
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@12
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    #@15
    move-result v0

    #@16
    .line 590
    :cond_0
    new-instance v1, Landroid/opengl/GLSurfaceView$GLThread;

    #@18
    iget-object v2, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    #@1a
    invoke-direct {v1, v2}, Landroid/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    #@1d
    iput-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@1f
    .line 591
    const/4 v1, 0x1

    #@20
    if-eq v0, v1, :cond_1

    #@22
    .line 592
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@24
    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    #@27
    .line 594
    :cond_1
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@29
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThread;->start()V

    #@2c
    .line 596
    .end local v0    # "renderMode":I
    :cond_2
    const/4 v1, 0x0

    #@2d
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    #@2f
    .line 580
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 605
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@6
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    #@9
    .line 607
    :cond_0
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    #@c
    .line 608
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    #@f
    .line 600
    return-void
.end method

.method public onPause()V
    .locals 1

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onPause()V

    #@5
    .line 550
    return-void
.end method

.method public onResume()V
    .locals 1

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onResume()V

    #@5
    .line 561
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 572
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    #@5
    .line 571
    return-void
.end method

.method public requestRender()V
    .locals 1

    #@0
    .prologue
    .line 516
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestRender()V

    #@5
    .line 515
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    #@0
    .prologue
    .line 281
    iput p1, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    #@2
    .line 280
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    #@0
    .prologue
    .line 442
    new-instance v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move v6, p5

    #@8
    move v7, p6

    #@9
    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLSurfaceView;IIIIII)V

    #@c
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    #@f
    .line 441
    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    #@0
    .prologue
    .line 405
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    #@3
    .line 406
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    #@5
    .line 404
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    #@0
    .prologue
    .line 424
    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    #@5
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    #@8
    .line 423
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    #@0
    .prologue
    .line 473
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    #@3
    .line 474
    iput p1, p0, Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    #@5
    .line 472
    return-void
.end method

.method public setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@0
    .prologue
    .line 374
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    #@3
    .line 375
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@5
    .line 373
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@0
    .prologue
    .line 388
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    #@3
    .line 389
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@5
    .line 387
    return-void
.end method

.method public setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Landroid/opengl/GLSurfaceView$GLWrapper;

    #@0
    .prologue
    .line 268
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    #@2
    .line 267
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    #@0
    .prologue
    .line 311
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    #@2
    .line 310
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    #@5
    .line 493
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 348
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    #@4
    .line 349
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 350
    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-direct {v0, p0, v1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    #@e
    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    #@10
    .line 352
    :cond_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@12
    if-nez v0, :cond_1

    #@14
    .line 353
    new-instance v0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;

    #@16
    invoke-direct {v0, p0, v2}, Landroid/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$DefaultContextFactory;)V

    #@19
    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    #@1b
    .line 355
    :cond_1
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 356
    new-instance v0, Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;

    #@21
    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;)V

    #@24
    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    #@26
    .line 358
    :cond_2
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    #@28
    .line 359
    new-instance v0, Landroid/opengl/GLSurfaceView$GLThread;

    #@2a
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    #@2c
    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    #@2f
    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@31
    .line 360
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@33
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->start()V

    #@36
    .line 347
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    invoke-virtual {v0, p3, p4}, Landroid/opengl/GLSurfaceView$GLThread;->onWindowResize(II)V

    #@5
    .line 540
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 524
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceCreated()V

    #@5
    .line 523
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    #@2
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    #@5
    .line 531
    return-void
.end method
