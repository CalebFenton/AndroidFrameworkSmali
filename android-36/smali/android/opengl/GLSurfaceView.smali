.class public Landroid/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLSurfaceView$GLThread;,
        Landroid/opengl/GLSurfaceView$GLWrapper;,
        Landroid/opengl/GLSurfaceView$EGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$EGLContextFactory;,
        Landroid/opengl/GLSurfaceView$DefaultContextFactory;,
        Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;,
        Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Landroid/opengl/GLSurfaceView$Renderer;,
        Landroid/opengl/GLSurfaceView$ComponentSizeChooser;,
        Landroid/opengl/GLSurfaceView$GLThreadManager;,
        Landroid/opengl/GLSurfaceView$LogWriter;,
        Landroid/opengl/GLSurfaceView$EglHelper;,
        Landroid/opengl/GLSurfaceView$BaseConfigChooser;
    }
.end annotation


# static fields
.field public static final whitelist DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final whitelist DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final greylist-max-o LOG_ATTACH_DETACH:Z = false

.field private static final greylist-max-o LOG_EGL:Z = false

.field private static final greylist-max-o LOG_PAUSE_RESUME:Z = false

.field private static final greylist-max-o LOG_RENDERER:Z = false

.field private static final greylist-max-o LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final greylist-max-o LOG_SURFACE:Z = false

.field private static final greylist-max-o LOG_THREADS:Z = false

.field public static final whitelist RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final whitelist RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final greylist-max-o sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;


# instance fields
.field private greylist-max-o mDebugFlags:I

.field private greylist-max-o mDetached:Z

.field private greylist-max-o mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private greylist-max-o mEGLContextClientVersion:I

.field private greylist-max-o mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private greylist-max-o mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private greylist mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

.field private greylist-max-o mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

.field private greylist-max-o mPreserveEGLContextOnPause:Z

.field private greylist mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final greylist-max-o mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDebugFlags(Landroid/opengl/GLSurfaceView;)I
    .registers 1

    iget p0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEGLConfigChooser(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .registers 1

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I
    .registers 1

    iget p0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEGLContextFactory(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .registers 1

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .registers 1

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGLWrapper(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;
    .registers 1

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreserveEGLContextOnPause(Landroid/opengl/GLSurfaceView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;
    .registers 1

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;
    .registers 1

    sget-object v0, Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1929
    new-instance v0, Landroid/opengl/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>(Landroid/opengl/GLSurfaceView-IA;)V

    sput-object v0, Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 213
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1931
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 214
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    .line 215
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1931
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 223
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    .line 224
    return-void
.end method

.method private greylist-max-o checkRenderThreadState()V
    .registers 3

    .line 1903
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-nez v0, :cond_5

    .line 1907
    return-void

    .line 1904
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o init()V
    .registers 2

    .line 242
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 243
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 251
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 235
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 236
    nop

    .line 237
    return-void

    .line 235
    :catchall_e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 236
    throw v0
.end method

.method public whitelist getDebugFlags()I
    .registers 2

    .line 288
    iget v0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public whitelist getPreserveEGLContextOnPause()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public whitelist getRenderMode()I
    .registers 2

    .line 506
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 611
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 615
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2c

    .line 616
    const/4 v0, 0x1

    .line 617
    .local v0, "renderMode":I
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v1, :cond_16

    .line 618
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 620
    :cond_16
    new-instance v1, Landroid/opengl/GLSurfaceView$GLThread;

    iget-object v2, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Landroid/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    .line 621
    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    .line 622
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 624
    :cond_27
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThread;->start()V

    .line 626
    .end local v0    # "renderMode":I
    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    .line 627
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 634
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_9

    .line 635
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 637
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    .line 638
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 639
    return-void
.end method

.method public whitelist onPause()V
    .registers 2

    .line 579
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onPause()V

    .line 580
    return-void
.end method

.method public whitelist onResume()V
    .registers 2

    .line 592
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onResume()V

    .line 593
    return-void
.end method

.method public whitelist queueEvent(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 602
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 603
    return-void
.end method

.method public whitelist requestRender()V
    .registers 2

    .line 517
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestRender()V

    .line 518
    return-void
.end method

.method public whitelist setDebugFlags(I)V
    .registers 2
    .param p1, "debugFlags"    # I

    .line 280
    iput p1, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    .line 281
    return-void
.end method

.method public whitelist setEGLConfigChooser(IIIIII)V
    .registers 15
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .line 443
    new-instance v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "redSize":I
    .end local p2    # "greenSize":I
    .end local p3    # "blueSize":I
    .end local p4    # "alphaSize":I
    .end local p5    # "depthSize":I
    .end local p6    # "stencilSize":I
    .local v2, "redSize":I
    .local v3, "greenSize":I
    .local v4, "blueSize":I
    .local v5, "alphaSize":I
    .local v6, "depthSize":I
    .local v7, "stencilSize":I
    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 445
    return-void
.end method

.method public whitelist setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .registers 2
    .param p1, "configChooser"    # Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 406
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 407
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 408
    return-void
.end method

.method public whitelist setEGLConfigChooser(Z)V
    .registers 3
    .param p1, "needDepth"    # Z

    .line 425
    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 426
    return-void
.end method

.method public whitelist setEGLContextClientVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .line 474
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 475
    iput p1, p0, Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    .line 476
    return-void
.end method

.method public whitelist setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    .registers 2
    .param p1, "factory"    # Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 375
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 376
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 377
    return-void
.end method

.method public whitelist setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .registers 2
    .param p1, "factory"    # Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 389
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 390
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 391
    return-void
.end method

.method public whitelist setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V
    .registers 2
    .param p1, "glWrapper"    # Landroid/opengl/GLSurfaceView$GLWrapper;

    .line 267
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    .line 268
    return-void
.end method

.method public whitelist setPreserveEGLContextOnPause(Z)V
    .registers 2
    .param p1, "preserveOnPause"    # Z

    .line 312
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 313
    return-void
.end method

.method public whitelist setRenderMode(I)V
    .registers 3
    .param p1, "renderMode"    # I

    .line 495
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 496
    return-void
.end method

.method public whitelist setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .registers 4
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .line 349
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 350
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_f

    .line 351
    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 353
    :cond_f
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 354
    new-instance v0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Landroid/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView-IA;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 356
    :cond_1b
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_26

    .line 357
    new-instance v0, Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Landroid/opengl/GLSurfaceView-IA;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 359
    :cond_26
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 360
    new-instance v0, Landroid/opengl/GLSurfaceView$GLThread;

    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    .line 361
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->start()V

    .line 362
    return-void
.end method

.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 542
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Landroid/opengl/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 543
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 525
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 526
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 534
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 535
    return-void
.end method

.method public whitelist surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 565
    return-void
.end method

.method public whitelist surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "finishDrawing"    # Ljava/lang/Runnable;

    .line 551
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_9

    .line 552
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p2}, Landroid/opengl/GLSurfaceView$GLThread;->requestRenderAndNotify(Ljava/lang/Runnable;)V

    .line 554
    :cond_9
    return-void
.end method
