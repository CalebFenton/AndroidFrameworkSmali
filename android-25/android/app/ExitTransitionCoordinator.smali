.class Landroid/app/ExitTransitionCoordinator;
.super Landroid/app/ActivityTransitionCoordinator;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ExitTransitionCoordinator"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mExitNotified:Z

.field private mExitSharedElementBundle:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

.field private mIsBackgroundReady:Z

.field private mIsCanceled:Z

.field private mIsExitStarted:Z

.field private mIsHidden:Z

.field private mSharedElementBundle:Landroid/os/Bundle;

.field private mSharedElementNotified:Z

.field private mSharedElementsHidden:Z


# direct methods
.method static synthetic -get0(Landroid/app/ExitTransitionCoordinator;)Landroid/app/Activity;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/app/ExitTransitionCoordinator;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/app/ExitTransitionCoordinator;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/app/ExitTransitionCoordinator;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/app/ExitTransitionCoordinator;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->beginTransitions()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->startExitTransition()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "decorView"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ExitTransitionCoordinator;->startSharedElementExit(Landroid/view/ViewGroup;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "listener"    # Landroid/app/SharedElementCallback;
    .param p7, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/Window;",
            "Landroid/app/SharedElementCallback;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "mapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, p2, p4, p3, p7}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    #@3
    .line 69
    invoke-virtual {p0, p5, p6}, Landroid/app/ExitTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    #@a
    .line 70
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->stripOffscreenViews()V

    #@d
    .line 71
    if-eqz p7, :cond_0

    #@f
    const/4 v0, 0x0

    #@10
    :goto_0
    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    #@12
    .line 72
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@14
    .line 67
    return-void

    #@15
    .line 71
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method private beginTransitions()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x0

    #@2
    .line 370
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    #@5
    move-result-object v1

    #@6
    .line 371
    .local v1, "sharedElementTransition":Landroid/transition/Transition;
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    #@9
    move-result-object v3

    #@a
    .line 373
    .local v3, "viewsTransition":Landroid/transition/Transition;
    invoke-static {v1, v3}, Landroid/app/ExitTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    #@d
    move-result-object v2

    #@e
    .line 374
    .local v2, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@11
    move-result-object v0

    #@12
    .line 375
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 376
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    #@19
    .line 377
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@1c
    .line 378
    if-eqz v3, :cond_0

    #@1e
    .line 379
    invoke-virtual {p0, v4, v4}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@21
    .line 381
    :cond_0
    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@24
    .line 382
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@27
    .line 383
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    #@2a
    .line 384
    if-eqz v3, :cond_1

    #@2c
    .line 385
    invoke-virtual {p0, v5, v4}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@2f
    .line 387
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    #@32
    .line 369
    :goto_0
    return-void

    #@33
    .line 389
    :cond_2
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    #@36
    goto :goto_0
.end method

.method private captureExitSharedElementsState()Landroid/os/Bundle;
    .locals 8

    #@0
    .prologue
    .line 405
    new-instance v3, Landroid/os/Bundle;

    #@2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 406
    .local v3, "bundle":Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/RectF;

    #@7
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    #@a
    .line 407
    .local v5, "bounds":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    #@f
    .line 408
    .local v4, "matrix":Landroid/graphics/Matrix;
    const/4 v6, 0x0

    #@10
    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v0

    #@16
    if-ge v6, v0, :cond_1

    #@18
    .line 409
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/String;

    #@20
    .line 410
    .local v2, "name":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@22
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@25
    move-result-object v7

    #@26
    .line 411
    .local v7, "sharedElementState":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    #@28
    .line 412
    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2b
    .line 408
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 414
    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Landroid/view/View;

    #@36
    .local v1, "view":Landroid/view/View;
    move-object v0, p0

    #@37
    .line 415
    invoke-virtual/range {v0 .. v5}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    #@3a
    goto :goto_1

    #@3b
    .line 418
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "name":Ljava/lang/String;
    .end local v7    # "sharedElementState":Landroid/os/Bundle;
    :cond_1
    return-object v3
.end method

.method private delayCancel()V
    .locals 4

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 121
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@6
    const/16 v1, 0x6a

    #@8
    const-wide/16 v2, 0x3e8

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@d
    .line 119
    :cond_0
    return-void
.end method

.method private fadeOutBackground()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 293
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 294
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@9
    move-result-object v1

    #@a
    .line 296
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    #@c
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@12
    .line 297
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v0

    #@16
    .line 298
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1d
    .line 299
    const-string/jumbo v2, "alpha"

    #@20
    new-array v3, v3, [I

    #@22
    aput v4, v3, v4

    #@24
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@2a
    .line 300
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@2c
    new-instance v3, Landroid/app/ExitTransitionCoordinator$8;

    #@2e
    invoke-direct {v3, p0}, Landroid/app/ExitTransitionCoordinator$8;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@31
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@34
    .line 310
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@36
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getFadeDuration()J

    #@39
    move-result-wide v4

    #@3a
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@3d
    .line 311
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@3f
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    #@42
    .line 292
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "decor":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    #@43
    .line 313
    .restart local v1    # "decor":Landroid/view/ViewGroup;
    :cond_1
    iput-boolean v3, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    #@45
    goto :goto_0
.end method

.method private finish()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 477
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    #@5
    .line 478
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 479
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@b
    iget-object v0, v0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@d
    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->clear()V

    #@10
    .line 480
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@12
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@15
    .line 481
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@17
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    #@1a
    .line 482
    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@1c
    .line 485
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    #@1f
    .line 476
    return-void
.end method

.method private finishIfNecessary()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 467
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 468
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    #@17
    .line 467
    if-eqz v0, :cond_1

    #@19
    .line 469
    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    #@1c
    .line 471
    :cond_1
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@1e
    if-nez v0, :cond_2

    #@20
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 472
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@26
    .line 466
    :cond_2
    return-void
.end method

.method private getExitTransition()Landroid/transition/Transition;
    .locals 4

    #@0
    .prologue
    .line 319
    const/4 v1, 0x0

    #@1
    .line 320
    .local v1, "viewsTransition":Landroid/transition/Transition;
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 323
    .end local v1    # "viewsTransition":Landroid/transition/Transition;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    #@f
    .line 324
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->viewsTransitionComplete()V

    #@12
    .line 343
    :goto_1
    return-object v1

    #@13
    .line 321
    .restart local v1    # "viewsTransition":Landroid/transition/Transition;
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    #@16
    move-result-object v2

    #@17
    const/4 v3, 0x1

    #@18
    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "viewsTransition":Landroid/transition/Transition;
    goto :goto_0

    #@1d
    .line 326
    .end local v1    # "viewsTransition":Landroid/transition/Transition;
    :cond_2
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@1f
    .line 327
    .local v0, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/app/ExitTransitionCoordinator$9;

    #@21
    invoke-direct {v2, p0, p0, v0}, Landroid/app/ExitTransitionCoordinator$9;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V

    #@24
    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@27
    goto :goto_1
.end method

.method private getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 347
    const/4 v0, 0x0

    #@2
    .line 348
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 349
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    #@11
    move-result-object v0

    #@12
    .line 351
    .end local v0    # "sharedElementTransition":Landroid/transition/Transition;
    :cond_0
    if-nez v0, :cond_1

    #@14
    .line 352
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    #@17
    .line 366
    :goto_0
    return-object v0

    #@18
    .line 354
    :cond_1
    new-instance v1, Landroid/app/ExitTransitionCoordinator$10;

    #@1a
    invoke-direct {v1, p0, p0}, Landroid/app/ExitTransitionCoordinator$10;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@20
    .line 364
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/view/View;

    #@28
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    #@2b
    goto :goto_0
.end method

.method private hideSharedElements()V
    .locals 1

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    #@3
    .line 194
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 195
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    #@9
    invoke-interface {v0}, Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;->hideSharedElements()V

    #@c
    .line 197
    :cond_0
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 198
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@12
    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    #@15
    .line 200
    :cond_1
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    #@18
    .line 201
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    #@1b
    .line 192
    return-void
.end method

.method private notifyExitComplete()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 454
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    #@3
    if-nez v1, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isViewsTransitionComplete()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 455
    const/4 v1, 0x1

    #@c
    iput-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    #@e
    .line 456
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@10
    const/16 v2, 0x68

    #@12
    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@15
    .line 457
    iput-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@17
    .line 458
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@1a
    move-result-object v0

    #@1b
    .line 459
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@1d
    if-nez v1, :cond_0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 460
    const/4 v1, 0x0

    #@22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@25
    .line 462
    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    #@28
    .line 453
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private sharedElementExitBack()V
    .locals 2

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    .line 142
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@6
    .line 143
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@a
    .line 145
    :cond_0
    if-eqz v0, :cond_1

    #@c
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 146
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@12
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 154
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    #@1b
    .line 140
    :goto_0
    return-void

    #@1c
    .line 147
    :cond_2
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_1

    #@24
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    #@27
    move-result-object v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 148
    new-instance v1, Landroid/app/ExitTransitionCoordinator$1;

    #@2c
    invoke-direct {v1, p0, v0}, Landroid/app/ExitTransitionCoordinator$1;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V

    #@2f
    invoke-virtual {p0, v1}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    #@32
    goto :goto_0
.end method

.method private startExitTransition()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 280
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    #@4
    move-result-object v1

    #@5
    .line 281
    .local v1, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@8
    move-result-object v0

    #@9
    .line 282
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    #@b
    if-eqz v0, :cond_0

    #@d
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 283
    invoke-virtual {p0, v3, v3}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@14
    .line 284
    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@17
    .line 285
    const/4 v2, 0x4

    #@18
    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@1b
    .line 286
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    #@1e
    .line 279
    :goto_0
    return-void

    #@1f
    .line 288
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    #@22
    goto :goto_0
.end method

.method private startSharedElementExit(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "decorView"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v5, 0x0

    #@2
    .line 159
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    #@5
    move-result-object v1

    #@6
    .line 160
    .local v1, "transition":Landroid/transition/Transition;
    new-instance v2, Landroid/app/ExitTransitionCoordinator$2;

    #@8
    invoke-direct {v2, p0}, Landroid/app/ExitTransitionCoordinator$2;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@b
    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@e
    .line 169
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@10
    .line 170
    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@12
    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    #@15
    move-result-object v0

    #@16
    .line 171
    .local v0, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@19
    move-result-object v2

    #@1a
    .line 172
    new-instance v3, Landroid/app/ExitTransitionCoordinator$3;

    #@1c
    invoke-direct {v3, p0, p1, v0}, Landroid/app/ExitTransitionCoordinator$3;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    #@1f
    .line 171
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@22
    .line 180
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    #@25
    .line 181
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@28
    .line 182
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 183
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@2e
    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@30
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v2, v3, v4, v0}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@35
    .line 186
    :cond_0
    invoke-static {p1, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@38
    .line 187
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@3b
    .line 188
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    #@3e
    .line 189
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    #@41
    .line 158
    return-void
.end method

.method private stopCancel()V
    .locals 2

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 115
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@6
    const/16 v1, 0x6a

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@b
    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method protected clearState()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 490
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@3
    .line 491
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    #@5
    .line 492
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 493
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@b
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@e
    .line 494
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@10
    .line 496
    :cond_0
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@12
    .line 497
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->clearState()V

    #@15
    .line 489
    return-void
.end method

.method protected getSharedElementTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 515
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 516
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 518
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementExitTransition()Landroid/transition/Transition;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method protected getViewsTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 507
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 508
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/view/Window;->getReturnTransition()Landroid/transition/Transition;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 510
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method protected isReadyToNotify()Z
    .locals 1

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method protected moveSharedElementWithParent()Z
    .locals 1

    #@0
    .prologue
    .line 502
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method protected notifyComplete()V
    .locals 6

    #@0
    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isReadyToNotify()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 428
    iget-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    #@8
    if-nez v2, :cond_2

    #@a
    .line 429
    const/4 v2, 0x1

    #@b
    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    #@d
    .line 430
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    #@10
    .line 431
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@12
    if-nez v2, :cond_1

    #@14
    .line 432
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@16
    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    #@18
    const/16 v4, 0x67

    #@1a
    invoke-virtual {v2, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@1d
    .line 433
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    #@20
    .line 426
    :cond_0
    :goto_0
    return-void

    #@21
    .line 435
    :cond_1
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@23
    .line 436
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    #@25
    .line 437
    .local v1, "sharedElementBundle":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@27
    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@29
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@2b
    .line 438
    new-instance v5, Landroid/app/ExitTransitionCoordinator$11;

    #@2d
    invoke-direct {v5, p0, v0, v1}, Landroid/app/ExitTransitionCoordinator$11;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V

    #@30
    .line 437
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    #@33
    goto :goto_0

    #@34
    .line 448
    .end local v0    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v1    # "sharedElementBundle":Landroid/os/Bundle;
    :cond_2
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    #@37
    goto :goto_0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v1, 0x6a

    #@3
    .line 81
    packed-switch p1, :pswitch_data_0

    #@6
    .line 80
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@7
    .line 83
    :pswitch_1
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    #@a
    .line 84
    const-string/jumbo v0, "android:remoteReceiver"

    #@d
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/os/ResultReceiver;

    #@13
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@15
    .line 85
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 86
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@1e
    .line 87
    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@20
    goto :goto_0

    #@21
    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    #@24
    goto :goto_0

    #@25
    .line 93
    :pswitch_2
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    #@28
    .line 94
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    #@2a
    if-nez v0, :cond_0

    #@2c
    .line 95
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->hideSharedElements()V

    #@2f
    goto :goto_0

    #@30
    .line 99
    :pswitch_3
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@35
    .line 100
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    #@38
    goto :goto_0

    #@39
    .line 103
    :pswitch_4
    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@3b
    .line 104
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementExitBack()V

    #@3e
    goto :goto_0

    #@3f
    .line 107
    :pswitch_5
    const/4 v0, 0x1

    #@40
    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    #@42
    .line 108
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    #@45
    goto :goto_0

    #@46
    .line 81
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onTransitionsComplete()V
    .locals 0

    #@0
    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    #@3
    .line 422
    return-void
.end method

.method public resetViews()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 126
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 127
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@8
    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@b
    .line 128
    invoke-virtual {p0, v3, v2}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@e
    .line 130
    :cond_0
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@10
    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@13
    .line 131
    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    #@15
    .line 132
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@18
    move-result-object v0

    #@19
    .line 133
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@1b
    if-nez v1, :cond_1

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 134
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@22
    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    #@25
    .line 137
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    #@28
    .line 125
    return-void
.end method

.method setHideSharedElementsCallback(Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    #@2
    .line 75
    return-void
.end method

.method protected sharedElementTransitionComplete()V
    .locals 1

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 400
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    .line 399
    :goto_0
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    #@a
    .line 401
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->sharedElementTransitionComplete()V

    #@d
    .line 398
    return-void

    #@e
    .line 400
    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->captureExitSharedElementsState()Landroid/os/Bundle;

    #@11
    move-result-object v0

    #@12
    goto :goto_0
.end method

.method public startExit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 205
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 206
    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    #@7
    .line 207
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    #@a
    .line 208
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@d
    move-result-object v0

    #@e
    .line 209
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@10
    .line 210
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@13
    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    #@16
    .line 213
    new-instance v1, Landroid/app/ExitTransitionCoordinator$4;

    #@18
    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$4;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@1b
    invoke-virtual {p0, v1}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    #@1e
    .line 204
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public startExit(ILandroid/content/Intent;)V
    .locals 7
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 227
    iget-boolean v4, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    #@3
    if-nez v4, :cond_3

    #@5
    .line 228
    iput-boolean v3, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    #@7
    .line 229
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    #@a
    .line 230
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@d
    move-result-object v0

    #@e
    .line 231
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@10
    .line 232
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@13
    .line 234
    :cond_0
    new-instance v4, Landroid/app/ExitTransitionCoordinator$5;

    #@15
    invoke-direct {v4, p0}, Landroid/app/ExitTransitionCoordinator$5;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@18
    iput-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@1a
    .line 241
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    #@1d
    .line 242
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    #@20
    .line 243
    if-eqz v0, :cond_1

    #@22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v4

    #@26
    if-nez v4, :cond_1

    #@28
    .line 244
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@2b
    move-result-object v4

    #@2c
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    #@2e
    const/high16 v6, -0x1000000

    #@30
    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@33
    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@36
    .line 246
    :cond_1
    if-eqz v0, :cond_2

    #@38
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3f
    move-result-object v4

    #@40
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@42
    .line 247
    const/16 v5, 0x17

    #@44
    .line 246
    if-lt v4, v5, :cond_4

    #@46
    .line 248
    .local v3, "targetsM":Z
    :cond_2
    :goto_0
    if-eqz v3, :cond_5

    #@48
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@4a
    .line 250
    .local v2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@4c
    invoke-static {v4, p0, v2, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;

    #@4f
    move-result-object v1

    #@50
    .line 252
    .local v1, "options":Landroid/app/ActivityOptions;
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@52
    new-instance v5, Landroid/app/ExitTransitionCoordinator$6;

    #@54
    invoke-direct {v5, p0}, Landroid/app/ExitTransitionCoordinator$6;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@57
    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    #@5a
    .line 260
    new-instance v4, Landroid/app/ExitTransitionCoordinator$7;

    #@5c
    invoke-direct {v4, p0}, Landroid/app/ExitTransitionCoordinator$7;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@5f
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    #@62
    .line 226
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    .end local v1    # "options":Landroid/app/ActivityOptions;
    .end local v2    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "targetsM":Z
    :cond_3
    return-void

    #@63
    .line 246
    .restart local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_4
    const/4 v3, 0x0

    #@64
    goto :goto_0

    #@65
    .line 249
    .restart local v3    # "targetsM":Z
    :cond_5
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@67
    .restart local v2    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 270
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 274
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@b
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    #@e
    .line 275
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    #@11
    .line 269
    :cond_0
    return-void
.end method
