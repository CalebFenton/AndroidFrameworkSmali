.class Landroid/app/EnterTransitionCoordinator;
.super Landroid/app/ActivityTransitionCoordinator;
.source "EnterTransitionCoordinator.java"


# static fields
.field private static final MIN_ANIMATION_FRAMES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EnterTransitionCoordinator"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAreViewsReady:Z

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mEnterViewsTransition:Landroid/transition/Transition;

.field private mHasStopped:Z

.field private mIsCanceled:Z

.field private mIsExitTransitionComplete:Z

.field private mIsReadyForTransition:Z

.field private mIsViewsTransitionStarted:Z

.field private mSharedElementTransitionStarted:Z

.field private mSharedElementsBundle:Landroid/os/Bundle;

.field private mWasOpaque:Z


# direct methods
.method static synthetic -get0(Landroid/app/EnterTransitionCoordinator;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
    .locals 1
    .param p1, "decorView"    # Landroid/view/ViewGroup;
    .param p2, "startEnterTransition"    # Z
    .param p3, "startSharedElementTransition"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionStarted()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/ResultReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    .local p3, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v2

    #@4
    .line 63
    invoke-static {p1, p4}, Landroid/app/EnterTransitionCoordinator;->getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;

    #@7
    move-result-object v3

    #@8
    .line 62
    invoke-direct {p0, v2, p3, v3, p4}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    #@b
    .line 64
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@d
    .line 65
    invoke-virtual {p0, p2}, Landroid/app/EnterTransitionCoordinator;->setResultReceiver(Landroid/os/ResultReceiver;)V

    #@10
    .line 66
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->prepareEnter()V

    #@13
    .line 67
    new-instance v1, Landroid/os/Bundle;

    #@15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@18
    .line 68
    .local v1, "resultReceiverBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android:remoteReceiver"

    #@1b
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1e
    .line 69
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@20
    const/16 v3, 0x64

    #@22
    invoke-virtual {v2, v3, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@25
    .line 70
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@28
    move-result-object v0

    #@29
    .line 71
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@2b
    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@2e
    move-result-object v2

    #@2f
    .line 73
    new-instance v3, Landroid/app/EnterTransitionCoordinator$1;

    #@31
    invoke-direct {v3, p0, v0}, Landroid/app/EnterTransitionCoordinator$1;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/View;)V

    #@34
    .line 72
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@37
    .line 61
    :cond_0
    return-void
.end method

.method private allowOverlappingTransitions()Z
    .locals 1

    #@0
    .prologue
    .line 597
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/view/Window;->getAllowReturnTransitionOverlap()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    .line 598
    :cond_0
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/view/Window;->getAllowEnterTransitionOverlap()Z

    #@14
    move-result v0

    #@15
    goto :goto_0
.end method

.method private beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
    .locals 7
    .param p1, "decorView"    # Landroid/view/ViewGroup;
    .param p2, "startEnterTransition"    # Z
    .param p3, "startSharedElementTransition"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 425
    const/4 v0, 0x0

    #@3
    .line 426
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    if-eqz p3, :cond_1

    #@5
    .line 427
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    .line 428
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {p0, v4, v5}, Landroid/app/EnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    #@14
    move-result-object v0

    #@15
    .line 430
    .end local v0    # "sharedElementTransition":Landroid/transition/Transition;
    :cond_0
    if-nez v0, :cond_6

    #@17
    .line 431
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionStarted()V

    #@1a
    .line 432
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    #@1d
    .line 448
    :cond_1
    :goto_0
    const/4 v3, 0x0

    #@1e
    .line 449
    .local v3, "viewsTransition":Landroid/transition/Transition;
    if-eqz p2, :cond_3

    #@20
    .line 450
    iput-boolean v6, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    #@22
    .line 451
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@24
    if-eqz v4, :cond_2

    #@26
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_7

    #@2e
    .line 457
    .end local v3    # "viewsTransition":Landroid/transition/Transition;
    :cond_2
    :goto_1
    if-nez v3, :cond_8

    #@30
    .line 458
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    #@33
    .line 483
    :cond_3
    :goto_2
    invoke-static {v0, v3}, Landroid/app/EnterTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    #@36
    move-result-object v1

    #@37
    .line 484
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v1, :cond_b

    #@39
    .line 485
    new-instance v4, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;

    #@3b
    invoke-direct {v4, p0}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    #@3e
    invoke-virtual {v1, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@41
    .line 486
    invoke-static {p1, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@44
    .line 487
    if-eqz p3, :cond_4

    #@46
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_9

    #@4e
    .line 489
    :cond_4
    if-eqz p2, :cond_5

    #@50
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@52
    if-eqz v4, :cond_5

    #@54
    .line 490
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_a

    #@5c
    .line 496
    :cond_5
    :goto_3
    return-object v1

    #@5d
    .line 434
    .end local v1    # "transition":Landroid/transition/Transition;
    :cond_6
    new-instance v4, Landroid/app/EnterTransitionCoordinator$6;

    #@5f
    invoke-direct {v4, p0}, Landroid/app/EnterTransitionCoordinator$6;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    #@62
    invoke-virtual {v0, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@65
    goto :goto_0

    #@66
    .line 452
    .restart local v3    # "viewsTransition":Landroid/transition/Transition;
    :cond_7
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {p0, v4, v6}, Landroid/app/EnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    #@6d
    move-result-object v3

    #@6e
    .line 453
    .local v3, "viewsTransition":Landroid/transition/Transition;
    if-eqz v3, :cond_2

    #@70
    iget-boolean v4, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@72
    if-nez v4, :cond_2

    #@74
    .line 454
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->stripOffscreenViews()V

    #@77
    goto :goto_1

    #@78
    .line 460
    .end local v3    # "viewsTransition":Landroid/transition/Transition;
    :cond_8
    const/4 v4, 0x4

    #@79
    invoke-virtual {v3, v4, v6}, Landroid/transition/Transition;->forceVisibility(IZ)V

    #@7c
    .line 461
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@7e
    .line 462
    .local v2, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v4, Landroid/app/EnterTransitionCoordinator$7;

    #@80
    invoke-direct {v4, p0, p0, v2}, Landroid/app/EnterTransitionCoordinator$7;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V

    #@83
    invoke-virtual {v3, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@86
    goto :goto_2

    #@87
    .line 488
    .end local v2    # "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "transition":Landroid/transition/Transition;
    :cond_9
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@89
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8c
    move-result-object v4

    #@8d
    check-cast v4, Landroid/view/View;

    #@8f
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    #@92
    goto :goto_3

    #@93
    .line 491
    :cond_a
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@95
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@98
    move-result-object v4

    #@99
    check-cast v4, Landroid/view/View;

    #@9b
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    #@9e
    goto :goto_3

    #@9f
    .line 494
    :cond_b
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->transitionStarted()V

    #@a2
    goto :goto_3
.end method

.method private cancel()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 244
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@4
    if-nez v0, :cond_2

    #@6
    .line 245
    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@8
    .line 246
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_0

    #@e
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 247
    :cond_0
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@14
    invoke-virtual {p0, v0, v1}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@17
    .line 251
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 252
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@21
    .line 253
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@26
    .line 254
    invoke-direct {p0, v2}, Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    #@29
    .line 255
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    #@2c
    .line 243
    :cond_2
    return-void

    #@2d
    .line 248
    :cond_3
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@2f
    if-eqz v0, :cond_1

    #@31
    .line 249
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@33
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@38
    goto :goto_0
.end method

.method private static getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isReturning"    # Z

    #@0
    .prologue
    .line 217
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    #@7
    goto :goto_0
.end method

.method private makeOpaque()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 588
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mHasStopped:Z

    #@3
    if-nez v0, :cond_1

    #@5
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 589
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 590
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@f
    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    #@12
    .line 592
    :cond_0
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@14
    .line 587
    :cond_1
    return-void
.end method

.method private mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 154
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 155
    .local v4, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@8
    move-result-object v1

    #@9
    .line 156
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    #@b
    .line 157
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    #@e
    .line 159
    :cond_0
    if-eqz p1, :cond_3

    #@10
    .line 160
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v6

    #@15
    if-ge v2, v6, :cond_3

    #@17
    .line 161
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/lang/String;

    #@1d
    .line 162
    .local v3, "localName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    .line 163
    .local v0, "acceptedName":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@25
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_2

    #@2b
    .line 160
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 164
    :cond_2
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v5

    #@32
    check-cast v5, Landroid/view/View;

    #@34
    .line 165
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_1

    #@36
    .line 166
    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    goto :goto_1

    #@3a
    .line 171
    .end local v0    # "acceptedName":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "localName":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-object v4
.end method

.method private onTakeSharedElements()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 381
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 382
    :cond_0
    return-void

    #@a
    .line 384
    :cond_1
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@c
    .line 385
    .local v1, "sharedElementState":Landroid/os/Bundle;
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@e
    .line 386
    new-instance v0, Landroid/app/EnterTransitionCoordinator$5;

    #@10
    invoke-direct {v0, p0, v1}, Landroid/app/EnterTransitionCoordinator$5;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    #@13
    .line 409
    .local v0, "listener":Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@15
    if-nez v2, :cond_2

    #@17
    .line 410
    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    #@1a
    .line 380
    :goto_0
    return-void

    #@1b
    .line 412
    :cond_2
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@1d
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@1f
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v2, v3, v4, v0}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    #@24
    goto :goto_0
.end method

.method private static removeNullViews(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 371
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    #@2
    .line 372
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 373
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 374
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@13
    .line 372
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@15
    goto :goto_0

    #@16
    .line 370
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private requestLayoutForSharedElements()V
    .locals 3

    #@0
    .prologue
    .line 417
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 418
    .local v1, "numSharedElements":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 419
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/View;

    #@11
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    #@14
    .line 418
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 416
    :cond_0
    return-void
.end method

.method private sendSharedElementDestination()V
    .locals 6

    #@0
    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@3
    move-result-object v1

    #@4
    .line 177
    .local v1, "decorView":Landroid/view/View;
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_3

    #@a
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    #@d
    move-result-object v4

    #@e
    if-eqz v4, :cond_3

    #@10
    .line 178
    const/4 v0, 0x0

    #@11
    .line 192
    .local v0, "allReady":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    #@13
    .line 193
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    #@16
    move-result-object v3

    #@17
    .line 194
    .local v3, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    #@1a
    .line 195
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@1c
    const/16 v5, 0x6b

    #@1e
    invoke-virtual {v4, v5, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@21
    .line 211
    .end local v3    # "state":Landroid/os/Bundle;
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 212
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V

    #@2a
    .line 174
    :cond_2
    return-void

    #@2b
    .line 179
    .end local v0    # "allReady":Z
    :cond_3
    if-nez v1, :cond_4

    #@2d
    .line 180
    const/4 v0, 0x1

    #@2e
    .restart local v0    # "allReady":Z
    goto :goto_0

    #@2f
    .line 182
    .end local v0    # "allReady":Z
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_5

    #@35
    const/4 v0, 0x0

    #@36
    .line 183
    .restart local v0    # "allReady":Z
    :goto_2
    if-eqz v0, :cond_0

    #@38
    .line 184
    const/4 v2, 0x0

    #@39
    .local v2, "i":I
    :goto_3
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v4

    #@3f
    if-ge v2, v4, :cond_0

    #@41
    .line 185
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@43
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Landroid/view/View;

    #@49
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_6

    #@4f
    .line 186
    const/4 v0, 0x0

    #@50
    .line 187
    goto :goto_0

    #@51
    .line 182
    .end local v0    # "allReady":Z
    .end local v2    # "i":I
    :cond_5
    const/4 v0, 0x1

    #@52
    .restart local v0    # "allReady":Z
    goto :goto_2

    #@53
    .line 184
    .restart local v2    # "i":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_3

    #@56
    .line 196
    .end local v2    # "i":I
    :cond_7
    if-eqz v1, :cond_1

    #@58
    .line 197
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5b
    move-result-object v4

    #@5c
    .line 198
    new-instance v5, Landroid/app/EnterTransitionCoordinator$3;

    #@5e
    invoke-direct {v5, p0, v1}, Landroid/app/EnterTransitionCoordinator$3;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/View;)V

    #@61
    .line 197
    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@64
    goto :goto_1
.end method

.method private sharedElementTransitionStarted()V
    .locals 2

    #@0
    .prologue
    .line 505
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    #@3
    .line 506
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 507
    const/16 v0, 0x68

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/app/EnterTransitionCoordinator;->send(ILandroid/os/Bundle;)V

    #@d
    .line 504
    :cond_0
    return-void
.end method

.method private startEnterTransition(Landroid/transition/Transition;)V
    .locals 6
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@3
    move-result-object v1

    #@4
    .line 513
    .local v1, "decorView":Landroid/view/ViewGroup;
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@6
    if-nez v2, :cond_0

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 514
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    .line 515
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@10
    .line 516
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    .line 517
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1b
    .line 518
    const-string/jumbo v2, "alpha"

    #@1e
    const/4 v3, 0x1

    #@1f
    new-array v3, v3, [I

    #@21
    const/16 v4, 0xff

    #@23
    const/4 v5, 0x0

    #@24
    aput v4, v3, v5

    #@26
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@29
    move-result-object v2

    #@2a
    iput-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@2c
    .line 519
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@2e
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getFadeDuration()J

    #@31
    move-result-wide v4

    #@32
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@35
    .line 520
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@37
    new-instance v3, Landroid/app/EnterTransitionCoordinator$8;

    #@39
    invoke-direct {v3, p0}, Landroid/app/EnterTransitionCoordinator$8;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    #@3c
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3f
    .line 526
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@41
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    #@44
    .line 511
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    #@45
    .line 527
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz p1, :cond_2

    #@47
    .line 528
    new-instance v2, Landroid/app/EnterTransitionCoordinator$9;

    #@49
    invoke-direct {v2, p0}, Landroid/app/EnterTransitionCoordinator$9;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    #@4c
    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@4f
    goto :goto_0

    #@50
    .line 536
    :cond_2
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    #@53
    goto :goto_0
.end method

.method private startEnterTransitionOnly()V
    .locals 1

    #@0
    .prologue
    .line 636
    new-instance v0, Landroid/app/EnterTransitionCoordinator$11;

    #@2
    invoke-direct {v0, p0}, Landroid/app/EnterTransitionCoordinator$11;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    #@8
    .line 635
    return-void
.end method

.method private startRejectedAnimations(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 602
    .local p1, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v6

    #@6
    if-eqz v6, :cond_1

    #@8
    .line 603
    :cond_0
    return-void

    #@9
    .line 605
    :cond_1
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@c
    move-result-object v1

    #@d
    .line 606
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    #@f
    .line 607
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@12
    move-result-object v4

    #@13
    .line 608
    .local v4, "overlay":Landroid/view/ViewGroupOverlay;
    const/4 v0, 0x0

    #@14
    .line 609
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    .line 610
    .local v3, "numRejected":I
    const/4 v2, 0x0

    #@19
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@1b
    .line 611
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, Landroid/view/View;

    #@21
    .line 612
    .local v5, "snapshot":Landroid/view/View;
    invoke-virtual {v4, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@24
    .line 613
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@26
    const/4 v7, 0x2

    #@27
    new-array v7, v7, [F

    #@29
    const/high16 v8, 0x3f800000    # 1.0f

    #@2b
    const/4 v9, 0x0

    #@2c
    aput v8, v7, v9

    #@2e
    const/4 v8, 0x0

    #@2f
    const/4 v9, 0x1

    #@30
    aput v8, v7, v9

    #@32
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@35
    move-result-object v0

    #@36
    .line 614
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@39
    .line 610
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 616
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v5    # "snapshot":Landroid/view/View;
    :cond_2
    new-instance v6, Landroid/app/EnterTransitionCoordinator$10;

    #@3e
    invoke-direct {v6, p0, v1, p1}, Landroid/app/EnterTransitionCoordinator$10;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    #@41
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@44
    .line 601
    .end local v2    # "i":I
    .end local v3    # "numRejected":I
    .end local v4    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_3
    return-void
.end method

.method private startSharedElementTransition(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v11, 0x4

    #@1
    const/4 v10, 0x0

    #@2
    .line 309
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@5
    move-result-object v0

    #@6
    .line 310
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    #@8
    .line 311
    return-void

    #@9
    .line 314
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@b
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@d
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    .line 315
    .local v2, "rejectedNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@15
    .line 316
    invoke-virtual {p0, p1, v2}, Landroid/app/EnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    #@18
    move-result-object v3

    #@19
    .line 317
    .local v3, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@1b
    if-eqz v8, :cond_1

    #@1d
    .line 318
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@1f
    invoke-virtual {v8, v3}, Landroid/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    #@22
    .line 320
    :cond_1
    invoke-static {v3}, Landroid/app/EnterTransitionCoordinator;->removeNullViews(Ljava/util/ArrayList;)V

    #@25
    .line 321
    invoke-direct {p0, v3}, Landroid/app/EnterTransitionCoordinator;->startRejectedAnimations(Ljava/util/ArrayList;)V

    #@28
    .line 325
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@2a
    .line 324
    invoke-virtual {p0, p1, v8}, Landroid/app/EnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    #@2d
    move-result-object v4

    #@2e
    .line 326
    .local v4, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@30
    const/4 v9, 0x1

    #@31
    invoke-virtual {p0, v8, v9}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@34
    .line 327
    invoke-virtual {p0, v4}, Landroid/app/EnterTransitionCoordinator;->scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V

    #@37
    .line 329
    invoke-virtual {p0, p1, v4}, Landroid/app/EnterTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    #@3a
    move-result-object v1

    #@3b
    .line 330
    .local v1, "originalImageViewState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->requestLayoutForSharedElements()V

    #@3e
    .line 332
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    #@41
    move-result v8

    #@42
    if-eqz v8, :cond_2

    #@44
    iget-boolean v8, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@46
    if-eqz v8, :cond_5

    #@48
    :cond_2
    const/4 v5, 0x0

    #@49
    .line 333
    .local v5, "startEnterTransition":Z
    :goto_0
    const/4 v6, 0x1

    #@4a
    .line 334
    .local v6, "startSharedElementTransition":Z
    invoke-virtual {p0, v11}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    #@4d
    .line 335
    invoke-virtual {p0, v11}, Landroid/app/EnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@50
    .line 336
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->pauseInput()V

    #@53
    .line 337
    invoke-direct {p0, v0, v5, v6}, Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    #@56
    move-result-object v7

    #@57
    .line 339
    .local v7, "transition":Landroid/transition/Transition;
    invoke-virtual {p0, v10}, Landroid/app/EnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@5a
    .line 340
    invoke-virtual {p0, v10}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    #@5d
    .line 342
    if-eqz v5, :cond_3

    #@5f
    .line 343
    invoke-direct {p0, v7}, Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    #@62
    .line 346
    :cond_3
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@64
    invoke-static {v8, v1}, Landroid/app/EnterTransitionCoordinator;->setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@67
    .line 348
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@69
    if-eqz v8, :cond_4

    #@6b
    .line 351
    new-instance v8, Landroid/app/EnterTransitionCoordinator$4;

    #@6d
    invoke-direct {v8, p0}, Landroid/app/EnterTransitionCoordinator$4;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    #@70
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    #@73
    .line 308
    :cond_4
    return-void

    #@74
    .line 332
    .end local v5    # "startEnterTransition":Z
    .end local v6    # "startSharedElementTransition":Z
    .end local v7    # "transition":Landroid/transition/Transition;
    :cond_5
    const/4 v5, 0x1

    #@75
    .restart local v5    # "startEnterTransition":Z
    goto :goto_0
.end method

.method private triggerViewsReady(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 130
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 131
    return-void

    #@5
    .line 133
    :cond_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    #@8
    .line 134
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@b
    move-result-object v0

    #@c
    .line 136
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    #@e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 137
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_2

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/view/View;

    #@21
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 140
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@2a
    move-result-object v1

    #@2b
    .line 141
    new-instance v2, Landroid/app/EnterTransitionCoordinator$2;

    #@2d
    invoke-direct {v2, p0, v0, p1}, Landroid/app/EnterTransitionCoordinator$2;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Landroid/util/ArrayMap;)V

    #@30
    .line 140
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@33
    .line 129
    :goto_0
    return-void

    #@34
    .line 138
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/EnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    #@37
    goto :goto_0
.end method


# virtual methods
.method public cancelEnter()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 574
    const/4 v0, 0x4

    #@3
    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    #@6
    .line 575
    iput-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mHasStopped:Z

    #@8
    .line 576
    iput-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@a
    .line 577
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@c
    .line 578
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 579
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@12
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@15
    .line 580
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@17
    .line 582
    :cond_0
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@19
    .line 583
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->clearState()V

    #@1c
    .line 584
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->cancelPendingTransitions()Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method public getEnterViewsTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method protected getSharedElementTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 297
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@4
    move-result-object v0

    #@5
    .line 298
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    #@7
    .line 299
    return-object v1

    #@8
    .line 301
    :cond_0
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 302
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReenterTransition()Landroid/transition/Transition;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 304
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method protected getViewsTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 285
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@4
    move-result-object v0

    #@5
    .line 286
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    #@7
    .line 287
    return-object v1

    #@8
    .line 289
    :cond_0
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 290
    invoke-virtual {v0}, Landroid/view/Window;->getReenterTransition()Landroid/transition/Transition;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 292
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public isReturning()Z
    .locals 1

    #@0
    .prologue
    .line 260
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@2
    return v0
.end method

.method public namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/app/EnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    #@7
    .line 103
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 222
    packed-switch p1, :pswitch_data_0

    #@3
    .line 221
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@4
    .line 224
    :pswitch_1
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 225
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@a
    .line 226
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V

    #@d
    goto :goto_0

    #@e
    .line 230
    :pswitch_2
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@10
    if-nez v0, :cond_0

    #@12
    .line 231
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    #@15
    .line 232
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 233
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    #@1c
    goto :goto_0

    #@1d
    .line 238
    :pswitch_3
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->cancel()V

    #@20
    goto :goto_0

    #@21
    .line 222
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRemoteExitTransitionComplete()V
    .locals 1

    #@0
    .prologue
    .line 630
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 631
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V

    #@9
    .line 629
    :cond_0
    return-void
.end method

.method protected onTransitionsComplete()V
    .locals 0

    #@0
    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    #@3
    .line 500
    return-void
.end method

.method protected prepareEnter()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 264
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@5
    move-result-object v1

    #@6
    .line 265
    .local v1, "decorView":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@8
    if-eqz v2, :cond_0

    #@a
    if-nez v1, :cond_1

    #@c
    .line 266
    :cond_0
    return-void

    #@d
    .line 268
    :cond_1
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@f
    invoke-virtual {v2, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    #@12
    .line 269
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@14
    if-nez v2, :cond_3

    #@16
    .line 270
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@18
    invoke-virtual {v2, v3, v3}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    #@1b
    move-result v2

    #@1c
    iput-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    #@1e
    .line 271
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object v0

    #@22
    .line 272
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    #@24
    .line 273
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2b
    .line 274
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@2e
    move-result-object v0

    #@2f
    .line 275
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@32
    .line 276
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@39
    .line 263
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    return-void

    #@3a
    .line 279
    :cond_3
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@3c
    goto :goto_0
.end method

.method public stop()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 544
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 545
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@8
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    #@b
    .line 546
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@d
    .line 556
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    #@10
    .line 557
    iput-boolean v4, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@12
    .line 558
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@14
    .line 559
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@16
    .line 560
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    #@19
    .line 561
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 562
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {p0, v2, v4}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@22
    .line 564
    :cond_1
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@24
    invoke-virtual {p0, v2, v4}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@27
    .line 565
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->clearState()V

    #@2a
    .line 541
    return-void

    #@2b
    .line 547
    :cond_2
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 548
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@32
    move-result-object v0

    #@33
    .line 549
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@35
    .line 550
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@38
    move-result-object v1

    #@39
    .line 551
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@3b
    .line 552
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@3e
    goto :goto_0
.end method

.method public viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@1
    .line 88
    .local v1, "remap":Z
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    if-ge v0, v3, :cond_1

    #@8
    .line 89
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/view/View;

    #@e
    .line 90
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/lang/CharSequence;

    #@18
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 91
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 88
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 92
    :cond_0
    const/4 v1, 0x1

    #@28
    .line 96
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    if-eqz v1, :cond_2

    #@2a
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/app/EnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {p0, v3}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    #@31
    .line 86
    :goto_1
    return-void

    #@32
    .line 99
    :cond_2
    invoke-virtual {p0, p1, p3}, Landroid/app/EnterTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    #@35
    move-result-object v3

    #@36
    invoke-direct {p0, v3}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    #@39
    goto :goto_1
.end method

.method protected viewsReady(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    #@3
    .line 114
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    #@6
    .line 115
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@8
    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    #@b
    .line 116
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 117
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@17
    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    #@1a
    .line 119
    :cond_0
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 120
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sendSharedElementDestination()V

    #@21
    .line 124
    :goto_0
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 125
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V

    #@28
    .line 112
    :cond_1
    return-void

    #@29
    .line 122
    :cond_2
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    #@2c
    goto :goto_0
.end method
