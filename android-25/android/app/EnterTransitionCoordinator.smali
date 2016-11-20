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

.field private final mIsCrossTask:Z

.field private mIsExitTransitionComplete:Z

.field private mIsReadyForTransition:Z

.field private mIsViewsTransitionStarted:Z

.field private mSharedElementTransitionStarted:Z

.field private mSharedElementsBundle:Landroid/os/Bundle;

.field private mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

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

.method static synthetic -set1(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

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

.method public constructor <init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "isReturning"    # Z
    .param p5, "isCrossTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/ResultReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@1
    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@4
    move-result-object v3

    #@5
    .line 67
    if-eqz p4, :cond_0

    #@7
    if-eqz p5, :cond_2

    #@9
    :cond_0
    :goto_0
    invoke-static {p1, v2}, Landroid/app/EnterTransitionCoordinator;->getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;

    #@c
    move-result-object v2

    #@d
    .line 66
    invoke-direct {p0, v3, p3, v2, p4}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    #@10
    .line 68
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@12
    .line 69
    iput-boolean p5, p0, Landroid/app/EnterTransitionCoordinator;->mIsCrossTask:Z

    #@14
    .line 70
    invoke-virtual {p0, p2}, Landroid/app/EnterTransitionCoordinator;->setResultReceiver(Landroid/os/ResultReceiver;)V

    #@17
    .line 71
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->prepareEnter()V

    #@1a
    .line 72
    new-instance v1, Landroid/os/Bundle;

    #@1c
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@1f
    .line 73
    .local v1, "resultReceiverBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android:remoteReceiver"

    #@22
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@25
    .line 74
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@27
    const/16 v3, 0x64

    #@29
    invoke-virtual {v2, v3, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@2c
    .line 75
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@2f
    move-result-object v0

    #@30
    .line 76
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_1

    #@32
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@35
    move-result-object v2

    #@36
    .line 78
    new-instance v3, Landroid/app/EnterTransitionCoordinator$1;

    #@38
    invoke-direct {v3, p0, v0}, Landroid/app/EnterTransitionCoordinator$1;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/View;)V

    #@3b
    .line 77
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@3e
    .line 65
    :cond_1
    return-void

    #@3f
    .line 67
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "resultReceiverBundle":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x1

    #@40
    goto :goto_0
.end method

.method private allowOverlappingTransitions()Z
    .locals 1

    #@0
    .prologue
    .line 676
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
    .line 677
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
    .line 493
    const/4 v0, 0x0

    #@3
    .line 494
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    if-eqz p3, :cond_1

    #@5
    .line 495
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    .line 496
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {p0, v4, v5}, Landroid/app/EnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    #@14
    move-result-object v0

    #@15
    .line 498
    .end local v0    # "sharedElementTransition":Landroid/transition/Transition;
    :cond_0
    if-nez v0, :cond_6

    #@17
    .line 499
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionStarted()V

    #@1a
    .line 500
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    #@1d
    .line 516
    :cond_1
    :goto_0
    const/4 v3, 0x0

    #@1e
    .line 517
    .local v3, "viewsTransition":Landroid/transition/Transition;
    if-eqz p2, :cond_3

    #@20
    .line 518
    iput-boolean v6, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    #@22
    .line 519
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
    .line 525
    .end local v3    # "viewsTransition":Landroid/transition/Transition;
    :cond_2
    :goto_1
    if-nez v3, :cond_8

    #@30
    .line 526
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    #@33
    .line 550
    :cond_3
    :goto_2
    invoke-static {v0, v3}, Landroid/app/EnterTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    #@36
    move-result-object v1

    #@37
    .line 551
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v1, :cond_9

    #@39
    .line 552
    new-instance v4, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;

    #@3b
    invoke-direct {v4, p0}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    #@3e
    invoke-virtual {v1, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@41
    .line 553
    if-eqz p2, :cond_4

    #@43
    .line 554
    const/4 v4, 0x4

    #@44
    invoke-virtual {p0, v4, v5}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@47
    .line 556
    :cond_4
    invoke-static {p1, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@4a
    .line 557
    if-eqz p2, :cond_5

    #@4c
    .line 558
    invoke-virtual {p0, v5, v5}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@4f
    .line 560
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    #@52
    .line 564
    :goto_3
    return-object v1

    #@53
    .line 502
    .end local v1    # "transition":Landroid/transition/Transition;
    :cond_6
    new-instance v4, Landroid/app/EnterTransitionCoordinator$6;

    #@55
    invoke-direct {v4, p0}, Landroid/app/EnterTransitionCoordinator$6;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    #@58
    invoke-virtual {v0, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@5b
    goto :goto_0

    #@5c
    .line 520
    .restart local v3    # "viewsTransition":Landroid/transition/Transition;
    :cond_7
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {p0, v4, v6}, Landroid/app/EnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    #@63
    move-result-object v3

    #@64
    .line 521
    .local v3, "viewsTransition":Landroid/transition/Transition;
    if-eqz v3, :cond_2

    #@66
    iget-boolean v4, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@68
    if-nez v4, :cond_2

    #@6a
    .line 522
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->stripOffscreenViews()V

    #@6d
    goto :goto_1

    #@6e
    .line 528
    .end local v3    # "viewsTransition":Landroid/transition/Transition;
    :cond_8
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@70
    .line 529
    .local v2, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v4, Landroid/app/EnterTransitionCoordinator$7;

    #@72
    invoke-direct {v4, p0, p0, v2}, Landroid/app/EnterTransitionCoordinator$7;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V

    #@75
    invoke-virtual {v3, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@78
    goto :goto_2

    #@79
    .line 562
    .end local v2    # "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "transition":Landroid/transition/Transition;
    :cond_9
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->transitionStarted()V

    #@7c
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
    .line 309
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@4
    if-nez v0, :cond_2

    #@6
    .line 310
    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@8
    .line 311
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
    .line 312
    :cond_0
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@14
    invoke-virtual {p0, v0, v1}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@17
    .line 316
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    #@1a
    .line 317
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1f
    .line 318
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@24
    .line 319
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@29
    .line 320
    invoke-direct {p0, v2}, Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    #@2c
    .line 321
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    #@2f
    .line 308
    :cond_2
    return-void

    #@30
    .line 313
    :cond_3
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 314
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@36
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@3b
    goto :goto_0
.end method

.method private static getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isReturning"    # Z

    #@0
    .prologue
    .line 228
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
    .line 667
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mHasStopped:Z

    #@3
    if-nez v0, :cond_1

    #@5
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 668
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 669
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@f
    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    #@12
    .line 671
    :cond_0
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@14
    .line 666
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
    .line 165
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 166
    .local v4, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@8
    move-result-object v1

    #@9
    .line 167
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    #@b
    .line 168
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    #@e
    .line 170
    :cond_0
    if-eqz p1, :cond_3

    #@10
    .line 171
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
    .line 172
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/lang/String;

    #@1d
    .line 173
    .local v3, "localName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    .line 174
    .local v0, "acceptedName":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@25
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_2

    #@2b
    .line 171
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 175
    :cond_2
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v5

    #@32
    check-cast v5, Landroid/view/View;

    #@34
    .line 176
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_1

    #@36
    .line 177
    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    goto :goto_1

    #@3a
    .line 182
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
    .line 449
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 450
    :cond_0
    return-void

    #@a
    .line 452
    :cond_1
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@c
    .line 453
    .local v1, "sharedElementState":Landroid/os/Bundle;
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@e
    .line 454
    new-instance v0, Landroid/app/EnterTransitionCoordinator$5;

    #@10
    invoke-direct {v0, p0, v1}, Landroid/app/EnterTransitionCoordinator$5;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    #@13
    .line 477
    .local v0, "listener":Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@15
    if-nez v2, :cond_2

    #@17
    .line 478
    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    #@1a
    .line 448
    :goto_0
    return-void

    #@1b
    .line 480
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
    .line 439
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    #@2
    .line 440
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
    .line 441
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 442
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@13
    .line 440
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@15
    goto :goto_0

    #@16
    .line 438
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private requestLayoutForSharedElements()V
    .locals 3

    #@0
    .prologue
    .line 485
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 486
    .local v1, "numSharedElements":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 487
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
    .line 486
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 484
    :cond_0
    return-void
.end method

.method private sendSharedElementDestination()V
    .locals 6

    #@0
    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@3
    move-result-object v1

    #@4
    .line 188
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
    .line 189
    const/4 v0, 0x0

    #@11
    .line 203
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    #@13
    .line 204
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    #@16
    move-result-object v3

    #@17
    .line 205
    .local v3, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    #@1a
    .line 206
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@1c
    const/16 v5, 0x6b

    #@1e
    invoke-virtual {v4, v5, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@21
    .line 222
    .end local v3    # "state":Landroid/os/Bundle;
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 223
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V

    #@2a
    .line 185
    :cond_2
    return-void

    #@2b
    .line 190
    :cond_3
    if-nez v1, :cond_4

    #@2d
    .line 191
    const/4 v0, 0x1

    #@2e
    .local v0, "allReady":Z
    goto :goto_0

    #@2f
    .line 193
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
    .line 194
    .local v0, "allReady":Z
    :goto_2
    if-eqz v0, :cond_0

    #@38
    .line 195
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
    .line 196
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
    .line 197
    const/4 v0, 0x0

    #@50
    .line 198
    .local v0, "allReady":Z
    goto :goto_0

    #@51
    .line 193
    .end local v0    # "allReady":Z
    .end local v2    # "i":I
    :cond_5
    const/4 v0, 0x1

    #@52
    goto :goto_2

    #@53
    .line 195
    .local v0, "allReady":Z
    .restart local v2    # "i":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_3

    #@56
    .line 207
    .end local v0    # "allReady":Z
    .end local v2    # "i":I
    :cond_7
    if-eqz v1, :cond_1

    #@58
    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5b
    move-result-object v4

    #@5c
    .line 209
    new-instance v5, Landroid/app/EnterTransitionCoordinator$3;

    #@5e
    invoke-direct {v5, p0, v1}, Landroid/app/EnterTransitionCoordinator$3;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/View;)V

    #@61
    .line 208
    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@64
    goto :goto_1
.end method

.method private sharedElementTransitionStarted()V
    .locals 2

    #@0
    .prologue
    .line 577
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    #@3
    .line 578
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 579
    const/16 v0, 0x68

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/app/EnterTransitionCoordinator;->send(ILandroid/os/Bundle;)V

    #@d
    .line 576
    :cond_0
    return-void
.end method

.method private startEnterTransition(Landroid/transition/Transition;)V
    .locals 6
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@3
    move-result-object v1

    #@4
    .line 585
    .local v1, "decorView":Landroid/view/ViewGroup;
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@6
    if-nez v2, :cond_0

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 586
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    .line 587
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@10
    .line 588
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    .line 589
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1b
    .line 590
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
    .line 591
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@2e
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getFadeDuration()J

    #@31
    move-result-wide v4

    #@32
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@35
    .line 592
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@37
    new-instance v3, Landroid/app/EnterTransitionCoordinator$8;

    #@39
    invoke-direct {v3, p0}, Landroid/app/EnterTransitionCoordinator$8;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    #@3c
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3f
    .line 598
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@41
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    #@44
    .line 583
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    #@45
    .line 599
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz p1, :cond_2

    #@47
    .line 600
    new-instance v2, Landroid/app/EnterTransitionCoordinator$9;

    #@49
    invoke-direct {v2, p0}, Landroid/app/EnterTransitionCoordinator$9;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    #@4c
    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@4f
    goto :goto_0

    #@50
    .line 608
    :cond_2
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    #@53
    goto :goto_0
.end method

.method private startEnterTransitionOnly()V
    .locals 1

    #@0
    .prologue
    .line 715
    new-instance v0, Landroid/app/EnterTransitionCoordinator$11;

    #@2
    invoke-direct {v0, p0}, Landroid/app/EnterTransitionCoordinator$11;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    #@8
    .line 714
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
    .line 681
    .local p1, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v6

    #@6
    if-eqz v6, :cond_1

    #@8
    .line 682
    :cond_0
    return-void

    #@9
    .line 684
    :cond_1
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@c
    move-result-object v1

    #@d
    .line 685
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    #@f
    .line 686
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@12
    move-result-object v4

    #@13
    .line 687
    .local v4, "overlay":Landroid/view/ViewGroupOverlay;
    const/4 v0, 0x0

    #@14
    .line 688
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    .line 689
    .local v3, "numRejected":I
    const/4 v2, 0x0

    #@19
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@1b
    .line 690
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, Landroid/view/View;

    #@21
    .line 691
    .local v5, "snapshot":Landroid/view/View;
    invoke-virtual {v4, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@24
    .line 692
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
    .line 693
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@39
    .line 689
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 695
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v5    # "snapshot":Landroid/view/View;
    :cond_2
    new-instance v6, Landroid/app/EnterTransitionCoordinator$10;

    #@3e
    invoke-direct {v6, p0, v1, p1}, Landroid/app/EnterTransitionCoordinator$10;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    #@41
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@44
    .line 680
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
    .line 377
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@5
    move-result-object v0

    #@6
    .line 378
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    #@8
    .line 379
    return-void

    #@9
    .line 382
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@b
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@d
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    .line 383
    .local v2, "rejectedNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@15
    .line 384
    invoke-virtual {p0, p1, v2}, Landroid/app/EnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    #@18
    move-result-object v3

    #@19
    .line 385
    .local v3, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@1b
    if-eqz v8, :cond_1

    #@1d
    .line 386
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@1f
    invoke-virtual {v8, v3}, Landroid/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    #@22
    .line 388
    :cond_1
    invoke-static {v3}, Landroid/app/EnterTransitionCoordinator;->removeNullViews(Ljava/util/ArrayList;)V

    #@25
    .line 389
    invoke-direct {p0, v3}, Landroid/app/EnterTransitionCoordinator;->startRejectedAnimations(Ljava/util/ArrayList;)V

    #@28
    .line 393
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@2a
    .line 392
    invoke-virtual {p0, p1, v8}, Landroid/app/EnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    #@2d
    move-result-object v4

    #@2e
    .line 394
    .local v4, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@30
    const/4 v9, 0x1

    #@31
    invoke-virtual {p0, v8, v9}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@34
    .line 395
    invoke-virtual {p0, v4}, Landroid/app/EnterTransitionCoordinator;->scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V

    #@37
    .line 397
    invoke-virtual {p0, p1, v4}, Landroid/app/EnterTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    #@3a
    move-result-object v1

    #@3b
    .line 398
    .local v1, "originalImageViewState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->requestLayoutForSharedElements()V

    #@3e
    .line 400
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
    .line 401
    .local v5, "startEnterTransition":Z
    :goto_0
    const/4 v6, 0x1

    #@4a
    .line 402
    .local v6, "startSharedElementTransition":Z
    invoke-virtual {p0, v11}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    #@4d
    .line 403
    invoke-virtual {p0, v11}, Landroid/app/EnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@50
    .line 404
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->pauseInput()V

    #@53
    .line 405
    invoke-direct {p0, v0, v5, v6}, Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    #@56
    move-result-object v7

    #@57
    .line 407
    .local v7, "transition":Landroid/transition/Transition;
    invoke-virtual {p0, v10}, Landroid/app/EnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    #@5a
    .line 408
    invoke-virtual {p0, v10}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    #@5d
    .line 410
    if-eqz v5, :cond_3

    #@5f
    .line 411
    invoke-direct {p0, v7}, Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    #@62
    .line 414
    :cond_3
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@64
    invoke-static {v8, v1}, Landroid/app/EnterTransitionCoordinator;->setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@67
    .line 416
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@69
    if-eqz v8, :cond_4

    #@6b
    .line 419
    new-instance v8, Landroid/app/EnterTransitionCoordinator$4;

    #@6d
    invoke-direct {v8, p0}, Landroid/app/EnterTransitionCoordinator$4;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    #@70
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    #@73
    .line 376
    :cond_4
    return-void

    #@74
    .line 400
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
    .line 139
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 140
    return-void

    #@5
    .line 142
    :cond_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    #@8
    .line 143
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@b
    move-result-object v0

    #@c
    .line 145
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    #@e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 146
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
    .line 149
    :cond_1
    new-instance v1, Landroid/app/EnterTransitionCoordinator$2;

    #@29
    invoke-direct {v1, p0, v0, p1}, Landroid/app/EnterTransitionCoordinator$2;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Landroid/util/ArrayMap;)V

    #@2c
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@2e
    .line 158
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@31
    move-result-object v1

    #@32
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@34
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@37
    .line 159
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    #@3a
    .line 138
    :goto_0
    return-void

    #@3b
    .line 147
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/EnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    #@3e
    goto :goto_0
.end method


# virtual methods
.method public cancelEnter()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 647
    const/4 v0, 0x4

    #@2
    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    #@5
    .line 648
    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mHasStopped:Z

    #@7
    .line 649
    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@9
    .line 650
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->clearState()V

    #@c
    .line 651
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->cancelPendingTransitions()Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method protected clearState()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 656
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@3
    .line 657
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    #@5
    .line 658
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@7
    .line 659
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 660
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@d
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@10
    .line 661
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@12
    .line 663
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->clearState()V

    #@15
    .line 655
    return-void
.end method

.method public forceViewsToAppear()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 266
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 267
    return-void

    #@8
    .line 269
    :cond_0
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    #@a
    if-nez v1, :cond_3

    #@c
    .line 270
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    #@e
    .line 271
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@11
    move-result-object v0

    #@12
    .line 272
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    #@14
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 273
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@1e
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@21
    .line 274
    iput-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@23
    .line 276
    :cond_1
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@25
    invoke-virtual {p0, v1, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@28
    .line 277
    invoke-virtual {p0, v5, v3}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@2b
    .line 278
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@30
    .line 279
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@35
    .line 280
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@3a
    .line 281
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    #@3c
    .line 282
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    #@3f
    .line 283
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    #@42
    .line 301
    .end local v0    # "decor":Landroid/view/ViewGroup;
    :goto_0
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    #@44
    .line 302
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@46
    if-eqz v1, :cond_2

    #@48
    .line 303
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@4a
    const/16 v2, 0x6a

    #@4c
    invoke-virtual {v1, v2, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@4f
    .line 304
    iput-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@51
    .line 265
    :cond_2
    return-void

    #@52
    .line 285
    :cond_3
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    #@54
    if-nez v1, :cond_4

    #@56
    .line 286
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    #@59
    .line 287
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    #@5b
    .line 288
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {p0, v1, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@60
    .line 289
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@65
    .line 290
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    #@68
    .line 292
    :cond_4
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    #@6a
    if-nez v1, :cond_5

    #@6c
    .line 293
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    #@6e
    .line 294
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@70
    invoke-virtual {p0, v1, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@73
    .line 295
    invoke-virtual {p0, v5, v3}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@76
    .line 296
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@7b
    .line 297
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    #@7e
    .line 299
    :cond_5
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->cancelPendingTransitions()Z

    #@81
    goto :goto_0
.end method

.method public getEnterViewsTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 117
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
    .line 365
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@4
    move-result-object v0

    #@5
    .line 366
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    #@7
    .line 367
    return-object v1

    #@8
    .line 369
    :cond_0
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 370
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReenterTransition()Landroid/transition/Transition;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 372
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
    .line 353
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@4
    move-result-object v0

    #@5
    .line 354
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    #@7
    .line 355
    return-object v1

    #@8
    .line 357
    :cond_0
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 358
    invoke-virtual {v0}, Landroid/view/Window;->getReenterTransition()Landroid/transition/Transition;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 360
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method isCrossTask()Z
    .locals 1

    #@0
    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCrossTask:Z

    #@2
    return v0
.end method

.method public isReturning()Z
    .locals 1

    #@0
    .prologue
    .line 326
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@2
    return v0
.end method

.method public isWaitingForRemoteExit()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 255
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
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
    .line 113
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/app/EnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    #@7
    .line 112
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    #@3
    .line 232
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@4
    .line 235
    :pswitch_1
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 236
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@a
    .line 237
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V

    #@d
    goto :goto_0

    #@e
    .line 241
    :pswitch_2
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@10
    if-nez v0, :cond_0

    #@12
    .line 242
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    #@15
    .line 243
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 244
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    #@1c
    goto :goto_0

    #@1d
    .line 249
    :pswitch_3
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->cancel()V

    #@20
    goto :goto_0

    #@21
    .line 233
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
    .line 709
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 710
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V

    #@9
    .line 708
    :cond_0
    return-void
.end method

.method protected onTransitionsComplete()V
    .locals 2

    #@0
    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    #@3
    .line 570
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@6
    move-result-object v0

    #@7
    .line 571
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@9
    .line 572
    const/16 v1, 0x800

    #@b
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    #@e
    .line 568
    :cond_0
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
    .line 330
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@5
    move-result-object v1

    #@6
    .line 331
    .local v1, "decorView":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@8
    if-eqz v2, :cond_0

    #@a
    if-nez v1, :cond_1

    #@c
    .line 332
    :cond_0
    return-void

    #@d
    .line 334
    :cond_1
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->isCrossTask()Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_2

    #@13
    .line 335
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@15
    invoke-virtual {v2, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    #@18
    .line 337
    :cond_2
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@1a
    if-nez v2, :cond_4

    #@1c
    .line 338
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@1e
    invoke-virtual {v2, v3, v3}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    #@21
    move-result v2

    #@22
    iput-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    #@24
    .line 339
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@27
    move-result-object v0

    #@28
    .line 340
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@2a
    .line 341
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@31
    .line 342
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@34
    move-result-object v0

    #@35
    .line 343
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@38
    .line 344
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3f
    .line 329
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_0
    return-void

    #@40
    .line 347
    :cond_4
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@42
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
    .line 616
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 617
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@8
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    #@b
    .line 618
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    #@d
    .line 628
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    #@10
    .line 629
    iput-boolean v4, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    #@12
    .line 630
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@14
    .line 631
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    #@16
    .line 632
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    #@19
    .line 633
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 634
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {p0, v2, v4}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@22
    .line 635
    const/4 v2, 0x0

    #@23
    invoke-virtual {p0, v2, v4}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    #@26
    .line 637
    :cond_1
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@28
    invoke-virtual {p0, v2, v4}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    #@2b
    .line 638
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->clearState()V

    #@2e
    .line 613
    return-void

    #@2f
    .line 619
    :cond_2
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    #@31
    if-eqz v2, :cond_0

    #@33
    .line 620
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@36
    move-result-object v0

    #@37
    .line 621
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@39
    .line 622
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3c
    move-result-object v1

    #@3d
    .line 623
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@3f
    .line 624
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@42
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
    .line 96
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@1
    .line 97
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
    .line 98
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/view/View;

    #@e
    .line 99
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
    .line 100
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 97
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 101
    :cond_0
    const/4 v1, 0x1

    #@28
    .line 105
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    if-eqz v1, :cond_2

    #@2a
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/app/EnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {p0, v3}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    #@31
    .line 95
    :goto_1
    return-void

    #@32
    .line 108
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
    .line 122
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    #@3
    .line 123
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    #@6
    .line 124
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@8
    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    #@b
    .line 125
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
    .line 126
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@17
    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    #@1a
    .line 128
    :cond_0
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 129
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sendSharedElementDestination()V

    #@21
    .line 133
    :goto_0
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 134
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V

    #@28
    .line 121
    :cond_1
    return-void

    #@29
    .line 131
    :cond_2
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    #@2c
    goto :goto_0
.end method
