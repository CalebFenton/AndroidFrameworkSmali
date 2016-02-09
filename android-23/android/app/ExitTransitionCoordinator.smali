.class Landroid/app/ExitTransitionCoordinator;
.super Landroid/app/ActivityTransitionCoordinator;
.source "ExitTransitionCoordinator.java"


# static fields
.field private static final MAX_WAIT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ExitTransitionCoordinator"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mExitNotified:Z

.field private mExitSharedElementBundle:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mIsBackgroundReady:Z

.field private mIsCanceled:Z

.field private mIsExitStarted:Z

.field private mIsHidden:Z

.field private mSharedElementBundle:Landroid/os/Bundle;

.field private mSharedElementNotified:Z

.field private mSharedElementsHidden:Z


# direct methods
.method static synthetic -get0(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ExitTransitionCoordinator;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/app/ExitTransitionCoordinator;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;
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

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p5, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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
    .line 76
    .local p2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "mapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, p5}, Landroid/app/ExitTransitionCoordinator;->getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, p2, v1, p5}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    #@b
    .line 77
    invoke-virtual {p0, p3, p4}, Landroid/app/ExitTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    #@12
    .line 78
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->stripOffscreenViews()V

    #@15
    .line 79
    if-eqz p5, :cond_0

    #@17
    const/4 v0, 0x0

    #@18
    :goto_0
    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    #@1a
    .line 80
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@1c
    .line 75
    return-void

    #@1d
    .line 79
    :cond_0
    const/4 v0, 0x1

    #@1e
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
    .line 364
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    #@5
    move-result-object v1

    #@6
    .line 365
    .local v1, "sharedElementTransition":Landroid/transition/Transition;
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    #@9
    move-result-object v3

    #@a
    .line 367
    .local v3, "viewsTransition":Landroid/transition/Transition;
    invoke-static {v1, v3}, Landroid/app/ExitTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    #@d
    move-result-object v2

    #@e
    .line 368
    .local v2, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@11
    move-result-object v0

    #@12
    .line 369
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 370
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    #@19
    .line 371
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@1c
    .line 372
    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@1f
    .line 373
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@22
    .line 374
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    #@25
    .line 375
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    #@28
    .line 363
    :goto_0
    return-void

    #@29
    .line 377
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    #@2c
    goto :goto_0
.end method

.method private captureExitSharedElementsState()Landroid/os/Bundle;
    .locals 8

    #@0
    .prologue
    .line 393
    new-instance v3, Landroid/os/Bundle;

    #@2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 394
    .local v3, "bundle":Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/RectF;

    #@7
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    #@a
    .line 395
    .local v5, "bounds":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    #@f
    .line 396
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
    .line 397
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/String;

    #@20
    .line 398
    .local v2, "name":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@22
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@25
    move-result-object v7

    #@26
    .line 399
    .local v7, "sharedElementState":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    #@28
    .line 400
    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2b
    .line 396
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 402
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
    .line 403
    invoke-virtual/range {v0 .. v5}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    #@3a
    goto :goto_1

    #@3b
    .line 406
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
    .line 124
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 125
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@6
    const/16 v1, 0x6a

    #@8
    const-wide/16 v2, 0x3e8

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@d
    .line 123
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
    .line 287
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 288
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@9
    move-result-object v1

    #@a
    .line 290
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
    .line 291
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v0

    #@16
    .line 292
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1d
    .line 293
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
    .line 294
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@2c
    new-instance v3, Landroid/app/ExitTransitionCoordinator$8;

    #@2e
    invoke-direct {v3, p0}, Landroid/app/ExitTransitionCoordinator$8;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@31
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@34
    .line 304
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@36
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getFadeDuration()J

    #@39
    move-result-wide v4

    #@3a
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@3d
    .line 305
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@3f
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    #@42
    .line 286
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "decor":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    #@43
    .line 307
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
    .line 465
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    #@5
    .line 466
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 467
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@b
    iget-object v0, v0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@d
    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->clear()V

    #@10
    .line 468
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@12
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@15
    .line 469
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@17
    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    #@1a
    .line 470
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@1c
    .line 473
    :cond_0
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@1e
    .line 474
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    #@20
    .line 475
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 476
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@26
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@29
    .line 477
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@2b
    .line 479
    :cond_1
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@2d
    .line 480
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    #@30
    .line 464
    return-void
.end method

.method private finishIfNecessary()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 455
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
    .line 456
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    #@17
    .line 455
    if-eqz v0, :cond_1

    #@19
    .line 457
    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    #@1c
    .line 459
    :cond_1
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@1e
    if-nez v0, :cond_2

    #@20
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 460
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@26
    .line 454
    :cond_2
    return-void
.end method

.method private getExitTransition()Landroid/transition/Transition;
    .locals 4

    #@0
    .prologue
    .line 313
    const/4 v1, 0x0

    #@1
    .line 314
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
    .line 317
    .end local v1    # "viewsTransition":Landroid/transition/Transition;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    #@f
    .line 318
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->viewsTransitionComplete()V

    #@12
    .line 337
    :goto_1
    return-object v1

    #@13
    .line 315
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
    .line 320
    .end local v1    # "viewsTransition":Landroid/transition/Transition;
    :cond_2
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@1f
    .line 321
    .local v0, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/app/ExitTransitionCoordinator$9;

    #@21
    invoke-direct {v2, p0, p0, v0}, Landroid/app/ExitTransitionCoordinator$9;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V

    #@24
    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@27
    .line 335
    const/4 v2, 0x4

    #@28
    const/4 v3, 0x0

    #@29
    invoke-virtual {v1, v2, v3}, Landroid/transition/Transition;->forceVisibility(IZ)V

    #@2c
    goto :goto_1
.end method

.method private static getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isReturning"    # Z

    #@0
    .prologue
    .line 84
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    #@7
    goto :goto_0
.end method

.method private getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 341
    const/4 v0, 0x0

    #@2
    .line 342
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 343
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    #@11
    move-result-object v0

    #@12
    .line 345
    .end local v0    # "sharedElementTransition":Landroid/transition/Transition;
    :cond_0
    if-nez v0, :cond_1

    #@14
    .line 346
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    #@17
    .line 360
    :goto_0
    return-object v0

    #@18
    .line 348
    :cond_1
    new-instance v1, Landroid/app/ExitTransitionCoordinator$10;

    #@1a
    invoke-direct {v1, p0, p0}, Landroid/app/ExitTransitionCoordinator$10;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@20
    .line 358
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
    .line 196
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    #@3
    .line 197
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 198
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@9
    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    #@c
    .line 200
    :cond_0
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    #@f
    .line 201
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    #@12
    .line 195
    return-void
.end method

.method private notifyExitComplete()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 442
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
    .line 443
    const/4 v1, 0x1

    #@c
    iput-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    #@e
    .line 444
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@10
    const/16 v2, 0x68

    #@12
    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@15
    .line 445
    iput-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@17
    .line 446
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@1a
    move-result-object v0

    #@1b
    .line 447
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@1d
    if-nez v1, :cond_0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 448
    const/4 v1, 0x0

    #@22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@25
    .line 450
    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    #@28
    .line 441
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private sharedElementExitBack()V
    .locals 2

    #@0
    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    .line 145
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@6
    .line 146
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@a
    .line 148
    :cond_0
    if-eqz v0, :cond_1

    #@c
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 149
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@12
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    #@1b
    .line 143
    :goto_0
    return-void

    #@1c
    .line 150
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
    .line 151
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
    .line 276
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    #@3
    move-result-object v1

    #@4
    .line 277
    .local v1, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@7
    move-result-object v0

    #@8
    .line 278
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 279
    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@13
    .line 280
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/view/View;

    #@1c
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    #@1f
    .line 275
    :goto_0
    return-void

    #@20
    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    #@23
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
    .line 162
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    #@5
    move-result-object v1

    #@6
    .line 163
    .local v1, "transition":Landroid/transition/Transition;
    new-instance v2, Landroid/app/ExitTransitionCoordinator$2;

    #@8
    invoke-direct {v2, p0}, Landroid/app/ExitTransitionCoordinator$2;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@b
    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@e
    .line 172
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@10
    .line 173
    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@12
    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    #@15
    move-result-object v0

    #@16
    .line 174
    .local v0, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@19
    move-result-object v2

    #@1a
    .line 175
    new-instance v3, Landroid/app/ExitTransitionCoordinator$3;

    #@1c
    invoke-direct {v3, p0, p1, v0}, Landroid/app/ExitTransitionCoordinator$3;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    #@1f
    .line 174
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@22
    .line 183
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    #@25
    .line 184
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@28
    .line 185
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 186
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@2e
    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@30
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v2, v3, v4, v0}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@35
    .line 189
    :cond_0
    invoke-static {p1, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@38
    .line 190
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@3b
    .line 191
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    #@3e
    .line 192
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    #@41
    .line 161
    return-void
.end method

.method private stopCancel()V
    .locals 2

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 119
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@6
    const/16 v1, 0x6a

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@b
    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method protected getSharedElementTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 498
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 499
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
    .line 501
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
    .line 490
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 491
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
    .line 493
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
    .line 382
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
    .line 485
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
    .line 415
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isReadyToNotify()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 416
    iget-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    #@8
    if-nez v2, :cond_2

    #@a
    .line 417
    const/4 v2, 0x1

    #@b
    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    #@d
    .line 418
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    #@10
    .line 419
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@12
    if-nez v2, :cond_1

    #@14
    .line 420
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@16
    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    #@18
    const/16 v4, 0x67

    #@1a
    invoke-virtual {v2, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@1d
    .line 421
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    #@20
    .line 414
    :cond_0
    :goto_0
    return-void

    #@21
    .line 423
    :cond_1
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@23
    .line 424
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    #@25
    .line 425
    .local v1, "sharedElementBundle":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@27
    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@29
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@2b
    .line 426
    new-instance v5, Landroid/app/ExitTransitionCoordinator$11;

    #@2d
    invoke-direct {v5, p0, v0, v1}, Landroid/app/ExitTransitionCoordinator$11;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V

    #@30
    .line 425
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    #@33
    goto :goto_0

    #@34
    .line 436
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
    .line 89
    packed-switch p1, :pswitch_data_0

    #@6
    .line 88
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@7
    .line 91
    :pswitch_1
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    #@a
    .line 92
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
    .line 93
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 94
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@1e
    .line 95
    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@20
    goto :goto_0

    #@21
    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    #@24
    goto :goto_0

    #@25
    .line 101
    :pswitch_2
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    #@28
    .line 102
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    #@2a
    if-nez v0, :cond_0

    #@2c
    .line 103
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->hideSharedElements()V

    #@2f
    goto :goto_0

    #@30
    .line 107
    :pswitch_3
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@35
    .line 108
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    #@38
    goto :goto_0

    #@39
    .line 111
    :pswitch_4
    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@3b
    .line 112
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementExitBack()V

    #@3e
    goto :goto_0

    #@3f
    .line 89
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onTransitionsComplete()V
    .locals 0

    #@0
    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    #@3
    .line 410
    return-void
.end method

.method public resetViews()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 130
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 131
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@7
    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@a
    .line 133
    :cond_0
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@c
    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@f
    .line 134
    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    #@11
    .line 135
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@14
    move-result-object v0

    #@15
    .line 136
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@17
    if-nez v1, :cond_1

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 137
    const/4 v1, 0x0

    #@1c
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@1f
    .line 139
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    #@22
    .line 140
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    #@25
    .line 129
    return-void
.end method

.method protected sharedElementTransitionComplete()V
    .locals 1

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 388
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    .line 387
    :goto_0
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    #@a
    .line 389
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->sharedElementTransitionComplete()V

    #@d
    .line 386
    return-void

    #@e
    .line 388
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
    const/4 v5, 0x1

    #@1
    .line 223
    iget-boolean v4, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    #@3
    if-nez v4, :cond_3

    #@5
    .line 224
    iput-boolean v5, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    #@7
    .line 225
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    #@a
    .line 226
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@d
    move-result-object v0

    #@e
    .line 227
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@10
    .line 228
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@13
    .line 230
    :cond_0
    new-instance v4, Landroid/app/ExitTransitionCoordinator$5;

    #@15
    invoke-direct {v4, p0}, Landroid/app/ExitTransitionCoordinator$5;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@18
    iput-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    #@1a
    .line 237
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    #@1d
    .line 238
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    #@20
    .line 239
    if-eqz v0, :cond_1

    #@22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v4

    #@26
    if-nez v4, :cond_1

    #@28
    .line 240
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
    .line 242
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
    .line 243
    const/16 v5, 0x17

    #@44
    .line 242
    if-lt v4, v5, :cond_4

    #@46
    :cond_2
    const/4 v3, 0x1

    #@47
    .line 244
    .local v3, "targetsM":Z
    :goto_0
    if-eqz v3, :cond_5

    #@49
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@4b
    .line 246
    .local v2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@4d
    invoke-static {v4, p0, v2, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;

    #@50
    move-result-object v1

    #@51
    .line 248
    .local v1, "options":Landroid/app/ActivityOptions;
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@53
    new-instance v5, Landroid/app/ExitTransitionCoordinator$6;

    #@55
    invoke-direct {v5, p0}, Landroid/app/ExitTransitionCoordinator$6;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@58
    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    #@5b
    .line 256
    new-instance v4, Landroid/app/ExitTransitionCoordinator$7;

    #@5d
    invoke-direct {v4, p0}, Landroid/app/ExitTransitionCoordinator$7;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    #@60
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    #@63
    .line 222
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    .end local v1    # "options":Landroid/app/ActivityOptions;
    .end local v2    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "targetsM":Z
    :cond_3
    return-void

    #@64
    .line 242
    .restart local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_4
    const/4 v3, 0x0

    #@65
    .restart local v3    # "targetsM":Z
    goto :goto_0

    #@66
    .line 245
    :cond_5
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@68
    .restart local v2    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 266
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 270
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@b
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    #@e
    .line 271
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    #@11
    .line 265
    :cond_0
    return-void
.end method
