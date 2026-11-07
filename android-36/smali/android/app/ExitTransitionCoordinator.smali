.class public Landroid/app/ExitTransitionCoordinator;
.super Landroid/app/ActivityTransitionCoordinator;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;,
        Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ExitTransitionCoordinator"

.field static blacklist sMaxWaitMillis:J


# instance fields
.field private greylist-max-o mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private blacklist mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

.field private greylist-max-o mExitNotified:Z

.field private greylist-max-o mExitSharedElementBundle:Landroid/os/Bundle;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mIsBackgroundReady:Z

.field private greylist-max-o mIsCanceled:Z

.field private greylist-max-o mIsExitStarted:Z

.field private greylist-max-o mIsHidden:Z

.field private greylist-max-o mSharedElementBundle:Landroid/os/Bundle;

.field private greylist-max-o mSharedElementNotified:Z

.field private greylist-max-o mSharedElementsHidden:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$J-79aYH8O28dqMEJyy0mEByTTow(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->beginTransitions()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$njheX47g5m3f-wUjaxdijobDGrw(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->startExitTransition()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z2Z-q8RfRW_4-XfB-YXKCM8hybg(Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ExitTransitionCoordinator;->lambda$startSharedElementExit$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCanceled(Landroid/app/ExitTransitionCoordinator;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsHidden(Landroid/app/ExitTransitionCoordinator;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSharedElementBundle(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBackgroundAnimator(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBackgroundReady(Landroid/app/ExitTransitionCoordinator;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsCanceled(Landroid/app/ExitTransitionCoordinator;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdelayCancel(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfadeOutBackground(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyExitComplete(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSharedElementExit(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ExitTransitionCoordinator;->startSharedElementExit(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 54
    const-wide/16 v0, 0x3e8

    sput-wide v0, Landroid/app/ExitTransitionCoordinator;->sMaxWaitMillis:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 9
    .param p1, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "listener"    # Landroid/app/SharedElementCallback;
    .param p7, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/view/Window;",
            "Landroid/app/SharedElementCallback;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 72
    .local p4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "mapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, p2, p4, p3, p7}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    .line 73
    invoke-virtual {p0, p5, p6}, Landroid/app/ExitTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->stripOffscreenViews()V

    .line 75
    xor-int/lit8 v0, p7, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    .line 76
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

    .line 77
    return-void
.end method

.method private greylist-max-o beginTransitions()V
    .registers 7

    .line 367
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 368
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    move-result-object v1

    .line 370
    .local v1, "viewsTransition":Landroid/transition/Transition;
    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v2

    .line 371
    .local v2, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v3

    .line 372
    .local v3, "decorView":Landroid/view/ViewGroup;
    if-eqz v2, :cond_33

    if-eqz v3, :cond_33

    .line 373
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 374
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 375
    const/4 v5, 0x0

    if-eqz v1, :cond_21

    .line 376
    invoke-virtual {p0, v5, v5}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 378
    :cond_21
    invoke-static {v3, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 379
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 380
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 381
    if-eqz v1, :cond_2f

    .line 382
    invoke-virtual {p0, v4, v5}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 384
    :cond_2f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_36

    .line 386
    :cond_33
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    .line 388
    :goto_36
    return-void
.end method

.method private greylist-max-o captureExitSharedElementsState()Landroid/os/Bundle;
    .registers 9

    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 403
    .local v4, "bundle":Landroid/os/Bundle;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 404
    .local v6, "bounds":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 405
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 406
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 407
    .local v3, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 408
    .local v7, "sharedElementState":Landroid/os/Bundle;
    if-eqz v7, :cond_2e

    .line 409
    invoke-virtual {v4, v3, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3b

    .line 411
    :cond_2e
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 412
    .local v2, "view":Landroid/view/View;
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 405
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "sharedElementState":Landroid/os/Bundle;
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 415
    .end local v0    # "i":I
    :cond_3e
    return-object v4
.end method

.method private greylist-max-o delayCancel()V
    .registers 5

    .line 120
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 121
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    sget-wide v2, Landroid/app/ExitTransitionCoordinator;->sMaxWaitMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    :cond_d
    return-void
.end method

.method private greylist-max-o fadeOutBackground()V
    .registers 6

    .line 285
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_48

    .line 286
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 288
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    .local v2, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_42

    .line 289
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 290
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    const/4 v2, 0x0

    filled-new-array {v2}, [I

    move-result-object v2

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 292
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/app/ExitTransitionCoordinator$5;

    invoke-direct {v3, p0}, Landroid/app/ExitTransitionCoordinator$5;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 303
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getFadeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 304
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_48

    .line 306
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_42
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 307
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    .line 310
    .end local v0    # "decor":Landroid/view/ViewGroup;
    :cond_48
    :goto_48
    return-void
.end method

.method private greylist-max-o finish()V
    .registers 2

    .line 476
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    .line 477
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

    if-eqz v0, :cond_f

    .line 478
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

    invoke-interface {v0}, Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;->onFinish()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

    .line 482
    :cond_f
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 483
    return-void
.end method

.method private greylist-max-o finishIfNecessary()V
    .registers 2

    .line 469
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    if-eqz v0, :cond_1b

    .line 471
    :cond_18
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    .line 473
    :cond_1b
    return-void
.end method

.method private greylist-max-o getExitTransition()Landroid/transition/Transition;
    .registers 4

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "viewsTransition":Landroid/transition/Transition;
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 315
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 316
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 317
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 318
    const/4 v0, 0x0

    .line 321
    :cond_24
    if-nez v0, :cond_2a

    .line 322
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->viewsTransitionComplete()V

    goto :goto_34

    .line 324
    :cond_2a
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 325
    .local v1, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/app/ExitTransitionCoordinator$6;

    invoke-direct {v2, p0, v1}, Landroid/app/ExitTransitionCoordinator$6;-><init>(Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 340
    .end local v1    # "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_34
    return-object v0
.end method

.method private greylist-max-o getSharedElementExitTransition()Landroid/transition/Transition;
    .registers 4

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 346
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 348
    :cond_12
    if-nez v0, :cond_18

    .line 349
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    goto :goto_2b

    .line 351
    :cond_18
    new-instance v1, Landroid/app/ExitTransitionCoordinator$7;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$7;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 361
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 363
    :goto_2b
    return-object v0
.end method

.method private greylist-max-o hideSharedElements()V
    .registers 2

    .line 190
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 191
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

    if-eqz v0, :cond_c

    .line 192
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

    invoke-interface {v0}, Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;->hideSharedElements()V

    .line 194
    :cond_c
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    if-nez v0, :cond_15

    .line 195
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 197
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    .line 198
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    .line 199
    return-void
.end method

.method private synthetic blacklist lambda$startSharedElementExit$0(Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "sharedElementSnapshots"    # Ljava/util/ArrayList;

    .line 175
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, p1}, Landroid/app/ExitTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 176
    return-void
.end method

.method private greylist-max-o notifyExitComplete()V
    .registers 4

    .line 456
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isViewsTransitionComplete()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    .line 458
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 459
    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 460
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 461
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_25

    if-eqz v0, :cond_25

    .line 462
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 464
    :cond_25
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    .line 466
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_28
    return-void
.end method

.method private greylist-max-o sharedElementExitBack()V
    .registers 3

    .line 144
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 145
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_a

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 148
    :cond_a
    if-eqz v0, :cond_2f

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    .line 149
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 151
    new-instance v1, Landroid/app/ExitTransitionCoordinator$1;

    invoke-direct {v1, p0, v0}, Landroid/app/ExitTransitionCoordinator$1;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    goto :goto_32

    .line 157
    :cond_2f
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 159
    :goto_32
    return-void
.end method

.method private greylist-max-o startExitTransition()V
    .registers 5

    .line 272
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 273
    .local v0, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 274
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_1f

    .line 275
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 276
    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 277
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 278
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_22

    .line 280
    :cond_1f
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    .line 282
    :goto_22
    return-void
.end method

.method private greylist-max-o startSharedElementExit(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "decorView"    # Landroid/view/ViewGroup;

    .line 162
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 163
    .local v0, "transition":Landroid/transition/Transition;
    new-instance v1, Landroid/app/ExitTransitionCoordinator$2;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$2;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 172
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    .line 174
    .local v1, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda0;-><init>(Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-static {p1, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 177
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 178
    invoke-virtual {p0, v2}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 179
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v2, :cond_30

    .line 180
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 183
    :cond_30
    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 184
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 185
    invoke-virtual {p0, v2}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 186
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 187
    return-void
.end method

.method private greylist-max-o stopCancel()V
    .registers 3

    .line 114
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 115
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    :cond_b
    return-void
.end method


# virtual methods
.method protected greylist-max-o clearState()V
    .registers 3

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    .line 488
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    .line 489
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_10

    .line 490
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 491
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 493
    :cond_10
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    .line 494
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->clearState()V

    .line 495
    return-void
.end method

.method public bridge synthetic blacklist copyMappedViews()Ljava/util/ArrayList;
    .registers 2

    .line 52
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->copyMappedViews()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getAcceptedNames()Ljava/util/ArrayList;
    .registers 2

    .line 52
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->getAcceptedNames()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDecor()Landroid/view/ViewGroup;
    .registers 2

    .line 52
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getMappedNames()Ljava/util/ArrayList;
    .registers 2

    .line 52
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->getMappedNames()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o getSharedElementTransition()Landroid/transition/Transition;
    .registers 2

    .line 512
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_d

    .line 513
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 515
    :cond_d
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o getViewsTransition()Landroid/transition/Transition;
    .registers 2

    .line 504
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_d

    .line 505
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 507
    :cond_d
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o isReadyToNotify()Z
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public bridge synthetic blacklist isTransitionRunning()Z
    .registers 2

    .line 52
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o moveSharedElementWithParent()Z
    .registers 2

    .line 499
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected greylist-max-o notifyComplete()V
    .registers 7

    .line 424
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isReadyToNotify()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 425
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    if-nez v0, :cond_48

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    .line 427
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    .line 429
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

    invoke-interface {v0}, Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;->isReturnTransitionAllowed()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 430
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 433
    :cond_24
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-nez v0, :cond_35

    .line 434
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x67

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 435
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    goto :goto_4b

    .line 437
    :cond_35
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 438
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    .line 439
    .local v1, "sharedElementBundle":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    new-instance v5, Landroid/app/ExitTransitionCoordinator$8;

    invoke-direct {v5, p0, v0, v1}, Landroid/app/ExitTransitionCoordinator$8;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    .line 448
    .end local v0    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v1    # "sharedElementBundle":Landroid/os/Bundle;
    goto :goto_4b

    .line 450
    :cond_48
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    .line 453
    :cond_4b
    :goto_4b
    return-void
.end method

.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 81
    const/16 v0, 0x6a

    packed-switch p1, :pswitch_data_48

    :pswitch_5
    goto :goto_47

    .line 103
    :pswitch_6
    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    .line 104
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementExitBack()V

    .line 105
    goto :goto_47

    .line 107
    :pswitch_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    .line 108
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    goto :goto_47

    .line 99
    :pswitch_13
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    .line 101
    goto :goto_47

    .line 93
    :pswitch_1c
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    .line 94
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_47

    .line 95
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->hideSharedElements()V

    goto :goto_47

    .line 83
    :pswitch_27
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    .line 84
    const-string v1, "android:remoteReceiver"

    const-class v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 85
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    if-eqz v1, :cond_43

    .line 86
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 87
    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    goto :goto_47

    .line 89
    :cond_43
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    .line 91
    nop

    .line 111
    :cond_47
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x64
        :pswitch_27
        :pswitch_1c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_13
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method protected greylist-max-o onTransitionsComplete()V
    .registers 1

    .line 420
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    .line 421
    return-void
.end method

.method public greylist-max-o resetViews()V
    .registers 5

    .line 126
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 127
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_9

    .line 128
    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 130
    :cond_9
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    .line 131
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 132
    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 134
    :cond_17
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 135
    iput-boolean v3, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    .line 136
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_27

    if-eqz v0, :cond_27

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 139
    :cond_27
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 140
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 141
    return-void
.end method

.method protected greylist-max-o sharedElementTransitionComplete()V
    .registers 2

    .line 396
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    .line 397
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->captureExitSharedElementsState()Landroid/os/Bundle;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    .line 398
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 399
    return-void
.end method

.method public greylist-max-o startExit()V
    .registers 3

    .line 202
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    if-nez v0, :cond_21

    .line 203
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    .line 205
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    .line 206
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 207
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_16

    .line 208
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 210
    :cond_16
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 211
    new-instance v0, Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda2;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 213
    .end local v1    # "decorView":Landroid/view/ViewGroup;
    :cond_21
    return-void
.end method

.method public blacklist startExit(Landroid/app/Activity;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 219
    iget v0, p1, Landroid/app/Activity;->mResultCode:I

    .line 220
    .local v0, "resultCode":I
    iget-object v1, p1, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 221
    .local v1, "data":Landroid/content/Intent;
    iget-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    if-nez v2, :cond_69

    .line 222
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    .line 223
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    .line 224
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v3

    .line 225
    .local v3, "decorView":Landroid/view/ViewGroup;
    if-eqz v3, :cond_17

    .line 226
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 228
    :cond_17
    new-instance v4, Landroid/app/ExitTransitionCoordinator$3;

    invoke-direct {v4, p0}, Landroid/app/ExitTransitionCoordinator$3;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    iput-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    .line 235
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    .line 236
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 237
    const/4 v4, 0x0

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_39

    .line 238
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    :cond_39
    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 241
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_4a

    goto :goto_4c

    :cond_4a
    move v2, v4

    goto :goto_4d

    :cond_4c
    :goto_4c
    nop

    .line 242
    .local v2, "targetsM":Z
    :goto_4d
    if-eqz v2, :cond_52

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    goto :goto_54

    .line 243
    :cond_52
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    :goto_54
    nop

    .line 244
    .local v4, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, p0, v4, v0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 246
    .local v5, "options":Landroid/app/ActivityOptions;
    new-instance v6, Landroid/app/ExitTransitionCoordinator$4;

    invoke-direct {v6, p0}, Landroid/app/ExitTransitionCoordinator$4;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {p1, v6, v5}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    .line 254
    new-instance v6, Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda1;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {p0, v6}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 256
    .end local v2    # "targetsM":Z
    .end local v3    # "decorView":Landroid/view/ViewGroup;
    .end local v4    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "options":Landroid/app/ActivityOptions;
    :cond_69
    return-void
.end method

.method public blacklist stop(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 262
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitCallbacks:Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;

    if-eqz v0, :cond_f

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    .line 267
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    .line 269
    :cond_f
    return-void
.end method
