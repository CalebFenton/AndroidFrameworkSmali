.class public Landroid/view/ViewRootInsetsControllerHost;
.super Ljava/lang/Object;
.source "ViewRootInsetsControllerHost.java"

# interfaces
.implements Landroid/view/InsetsController$Host;


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/ViewRootInsetsControllerHost;)Landroid/view/ViewRootImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "VRInsetsControllerHost"

    iput-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->TAG:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 47
    return-void
.end method

.method private blacklist isVisibleToUser()Z
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic blacklist lambda$releaseSurfaceControlFromRt$0(Landroid/view/SurfaceControl;J)V
    .registers 3
    .param p0, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p1, "frame"    # J

    .line 235
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 236
    return-void
.end method


# virtual methods
.method public blacklist addOnPreDrawRunnable(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 61
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 62
    return-void

    .line 64
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost$1;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRootInsetsControllerHost$1;-><init>(Landroid/view/ViewRootInsetsControllerHost;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 73
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 74
    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 4
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 123
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_39

    .line 126
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_15

    .line 127
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 129
    :cond_15
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Landroid/view/ViewRootInsetsControllerHost;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 130
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_38

    .line 136
    :cond_2b
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 137
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {v1, v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 138
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 140
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :goto_38
    return-void

    .line 124
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View of the ViewRootImpl is not initiated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist dipToPx(I)I
    .registers 3
    .param p1, "dips"    # I

    .line 264
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v0

    return v0

    .line 267
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 114
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 116
    return-void

    .line 118
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 119
    return-void
.end method

.method public blacklist dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 78
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 79
    return-void

    .line 81
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 82
    return-void
.end method

.method public blacklist dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 4
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 98
    .local p2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 4
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p2, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 88
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    return-object v0
.end method

.method public blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    .line 246
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public blacklist getRootViewContext()Landroid/content/Context;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist getRootViewTitle()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_6

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemBarsAppearance()I
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    return v0
.end method

.method public blacklist getSystemBarsBehavior()I
    .registers 2

    .line 221
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    return v0
.end method

.method public blacklist getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_9

    .line 285
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    return-object v0

    .line 287
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWindowToken()Landroid/os/IBinder;
    .registers 3

    .line 272
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 273
    return-object v1

    .line 275
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_f

    .line 277
    return-object v1

    .line 279
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public blacklist hasAnimationCallbacks()Z
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 189
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    return v0
.end method

.method public blacklist isHandlingPointerEvent()Z
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isHandlingPointerEvent()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist notifyInsetsChanged()V
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->notifyInsetsChanged()V

    .line 57
    return-void
.end method

.method public blacklist postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 144
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 233
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 234
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 238
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_25

    .line 240
    :cond_22
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 242
    :goto_25
    return-void
.end method

.method public blacklist setSystemBarsAppearance(II)V
    .registers 7
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 196
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 197
    .local v0, "insetsFlags":Landroid/view/InsetsFlags;
    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    .line 198
    .local v1, "newAppearance":I
    iget v2, v0, Landroid/view/InsetsFlags;->appearance:I

    if-eq v2, v1, :cond_1d

    .line 199
    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 200
    iget-object v2, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 201
    iget-object v2, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 203
    :cond_1d
    return-void
.end method

.method public blacklist setSystemBarsBehavior(I)V
    .registers 4
    .param p1, "behavior"    # I

    .line 212
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    if-eq v0, p1, :cond_1c

    .line 213
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput p1, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 214
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 215
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 217
    :cond_1c
    return-void
.end method

.method public blacklist updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5
    .param p1, "animatingTypes"    # I
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 176
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/16 v1, 0x47

    if-eqz v0, :cond_13

    .line 177
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 179
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1a

    .line 181
    :cond_13
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 184
    :goto_1a
    return-void
.end method

.method public blacklist updateCompatSysUiVisibility(III)V
    .registers 5
    .param p1, "visibleTypes"    # I
    .param p2, "requestedVisibleTypes"    # I
    .param p3, "controllableTypes"    # I

    .line 151
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->updateCompatSysUiVisibility(III)V

    .line 153
    return-void
.end method

.method public blacklist updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6
    .param p1, "types"    # I
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 159
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    const/16 v1, 0x35

    if-eqz v0, :cond_1b

    .line 160
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 162
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowSession;->updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_22

    .line 165
    :cond_1b
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 170
    :goto_22
    goto :goto_2b

    .line 168
    :catch_23
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VRInsetsControllerHost"

    const-string v2, "Failed to call insetsModified"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method
