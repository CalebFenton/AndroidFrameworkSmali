.class Landroid/app/EnterTransitionCoordinator;
.super Landroid/app/ActivityTransitionCoordinator;
.source "EnterTransitionCoordinator.java"


# static fields
.field private static final greylist-max-o MIN_ANIMATION_FRAMES:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EnterTransitionCoordinator"


# instance fields
.field private greylist-max-o mActivity:Landroid/app/Activity;

.field private greylist-max-o mAreViewsReady:Z

.field private greylist-max-o mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private greylist-max-o mEnterViewsTransition:Landroid/transition/Transition;

.field private greylist-max-o mHasStopped:Z

.field private greylist-max-o mIsCanceled:Z

.field private final greylist-max-o mIsCrossTask:Z

.field private greylist-max-o mIsExitTransitionComplete:Z

.field private greylist-max-o mIsReadyForTransition:Z

.field private blacklist mIsTaskRoot:Z

.field private greylist-max-o mIsViewsTransitionStarted:Z

.field private blacklist mOnTransitionComplete:Ljava/lang/Runnable;

.field private blacklist mPendingExitNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReplacedBackground:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mSharedElementTransitionStarted:Z

.field private greylist-max-o mSharedElementsBundle:Landroid/os/Bundle;

.field private greylist-max-o mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

.field private greylist-max-o mWasOpaque:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$MfOaKwc6hLsV0xvjwfHxLL6x6N0(Landroid/app/EnterTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->lambda$sendSharedElementDestination$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nE8EER9Lejxx9rNXPphKWUnRJcY(Landroid/app/EnterTransitionCoordinator;Landroid/util/ArrayMap;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator;->lambda$triggerViewsReady$0(Landroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsReadyForTransition(Landroid/app/EnterTransitionCoordinator;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnterViewsTransition(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbeginTransition(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmakeOpaque(Landroid/app/EnterTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msharedElementTransitionStarted(Landroid/app/EnterTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionStarted()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartEnterTransition(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSharedElementTransition(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "isReturning"    # Z
    .param p5, "isCrossTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/ResultReceiver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 74
    .local p3, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p4, :cond_a

    if-nez p5, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 75
    :goto_b
    invoke-static {p1, v1}, Landroid/app/EnterTransitionCoordinator;->getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;

    move-result-object v1

    .line 74
    invoke-direct {p0, v0, p3, v1, p4}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    .line 76
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 77
    iput-boolean p5, p0, Landroid/app/EnterTransitionCoordinator;->mIsCrossTask:Z

    .line 78
    invoke-virtual {p0, p2}, Landroid/app/EnterTransitionCoordinator;->setResultReceiver(Landroid/os/ResultReceiver;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->prepareEnter()V

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "resultReceiverBundle":Landroid/os/Bundle;
    const-string v1, "android:remoteReceiver"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 84
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_3f

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 86
    .local v2, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    new-instance v3, Landroid/app/EnterTransitionCoordinator$1;

    invoke-direct {v3, p0, v2, v1}, Landroid/app/EnterTransitionCoordinator$1;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 101
    .end local v2    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_3f
    return-void
.end method

.method private greylist-max-o allowOverlappingTransitions()Z
    .registers 3

    .line 709
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 710
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_8

    .line 711
    const/4 v1, 0x0

    return v1

    .line 713
    :cond_8
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/view/Window;->getAllowReturnTransitionOverlap()Z

    move-result v1

    goto :goto_15

    .line 714
    :cond_11
    invoke-virtual {v0}, Landroid/view/Window;->getAllowEnterTransitionOverlap()Z

    move-result v1

    .line 713
    :goto_15
    return v1
.end method

.method private greylist-max-o beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
    .registers 9
    .param p1, "decorView"    # Landroid/view/ViewGroup;
    .param p2, "startEnterTransition"    # Z
    .param p3, "startSharedElementTransition"    # Z

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    const/4 v1, 0x0

    if-eqz p3, :cond_25

    .line 505
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 506
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/app/EnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 508
    :cond_14
    if-nez v0, :cond_1d

    .line 509
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionStarted()V

    .line 510
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    goto :goto_25

    .line 512
    :cond_1d
    new-instance v2, Landroid/app/EnterTransitionCoordinator$4;

    invoke-direct {v2, p0}, Landroid/app/EnterTransitionCoordinator$4;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 526
    :cond_25
    :goto_25
    const/4 v2, 0x0

    .line 527
    .local v2, "viewsTransition":Landroid/transition/Transition;
    if-eqz p2, :cond_4f

    .line 528
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    .line 529
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 530
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Landroid/app/EnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v2

    .line 532
    :cond_3f
    if-nez v2, :cond_45

    .line 533
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    goto :goto_4f

    .line 535
    :cond_45
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 536
    .local v3, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v4, Landroid/app/EnterTransitionCoordinator$5;

    invoke-direct {v4, p0, v3}, Landroid/app/EnterTransitionCoordinator$5;-><init>(Landroid/app/EnterTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 557
    .end local v3    # "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4f
    :goto_4f
    invoke-static {v0, v2}, Landroid/app/EnterTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v3

    .line 558
    .local v3, "transition":Landroid/transition/Transition;
    if-eqz v3, :cond_6f

    .line 559
    new-instance v4, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;

    invoke-direct {v4, p0}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 560
    if-eqz p2, :cond_63

    .line 561
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v1}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 563
    :cond_63
    invoke-static {p1, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 564
    if-eqz p2, :cond_6b

    .line 565
    invoke-virtual {p0, v1, v1}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 567
    :cond_6b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_72

    .line 569
    :cond_6f
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->transitionStarted()V

    .line 571
    :goto_72
    return-object v3
.end method

.method private greylist-max-o cancel()V
    .registers 3

    .line 322
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_3c

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    .line 324
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    if-eqz v1, :cond_12

    goto :goto_1e

    .line 326
    :cond_12
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    .line 327
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_23

    .line 325
    :cond_1e
    :goto_1e
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 329
    :cond_23
    :goto_23
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 330
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 332
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    .line 334
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    .line 336
    :cond_3c
    return-void
.end method

.method private static greylist-max-o getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isReturning"    # Z

    .line 232
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    :goto_7
    return-object v0
.end method

.method private synthetic blacklist lambda$sendSharedElementDestination$1()V
    .registers 4

    .line 219
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_12

    .line 220
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 222
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 224
    .end local v0    # "state":Landroid/os/Bundle;
    :cond_12
    return-void
.end method

.method private synthetic blacklist lambda$triggerViewsReady$0(Landroid/util/ArrayMap;)V
    .registers 3
    .param p1, "sharedElements"    # Landroid/util/ArrayMap;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    .line 167
    invoke-virtual {p0, p1}, Landroid/app/EnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 168
    return-void
.end method

.method private greylist-max-o makeOpaque()V
    .registers 2

    .line 700
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mHasStopped:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_14

    .line 701
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    if-eqz v0, :cond_11

    .line 702
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    .line 704
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 706
    :cond_14
    return-void
.end method

.method private greylist-max-o mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 175
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 176
    .local v0, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 177
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_e

    .line 178
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    .line 180
    :cond_e
    if-eqz p1, :cond_39

    .line 181
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 182
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    .local v3, "localName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 184
    .local v4, "acceptedName":Ljava/lang/String;
    if-eqz v3, :cond_36

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 185
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 186
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_36

    .line 187
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v3    # "localName":Ljava/lang/String;
    .end local v4    # "acceptedName":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 192
    .end local v2    # "i":I
    :cond_39
    return-object v0
.end method

.method private greylist-max-o onTakeSharedElements()V
    .registers 6

    .line 468
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    goto :goto_25

    .line 471
    :cond_9
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 472
    .local v0, "sharedElementState":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 473
    new-instance v1, Landroid/app/EnterTransitionCoordinator$3;

    invoke-direct {v1, p0, v0}, Landroid/app/EnterTransitionCoordinator$3;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    .line 487
    .local v1, "listener":Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-nez v2, :cond_1b

    .line 488
    invoke-interface {v1}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    goto :goto_24

    .line 490
    :cond_1b
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    .line 492
    :goto_24
    return-void

    .line 469
    .end local v0    # "sharedElementState":Landroid/os/Bundle;
    .end local v1    # "listener":Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    :cond_25
    :goto_25
    return-void
.end method

.method private static greylist-max-o removeNullViews(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 458
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_16

    .line 459
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_16

    .line 460
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 461
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 459
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 465
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method private greylist-max-o requestLayoutForSharedElements()V
    .registers 4

    .line 495
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 496
    .local v0, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 497
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 499
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private greylist-max-o sendSharedElementDestination()V
    .registers 6

    .line 197
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 198
    .local v0, "decorView":Landroid/view/View;
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 199
    const/4 v1, 0x0

    .local v1, "allReady":Z
    goto :goto_3a

    .line 200
    .end local v1    # "allReady":Z
    :cond_12
    if-nez v0, :cond_16

    .line 201
    const/4 v1, 0x1

    .restart local v1    # "allReady":Z
    goto :goto_3a

    .line 203
    .end local v1    # "allReady":Z
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 204
    .restart local v1    # "allReady":Z
    if-eqz v1, :cond_3a

    .line 205
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 206
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 207
    const/4 v1, 0x0

    .line 208
    goto :goto_3a

    .line 205
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 213
    .end local v2    # "i":I
    :cond_3a
    :goto_3a
    if-eqz v1, :cond_4b

    .line 214
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v2

    .line 215
    .local v2, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 216
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v4, 0x6b

    invoke-virtual {v3, v4, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .end local v2    # "state":Landroid/os/Bundle;
    goto :goto_56

    .line 217
    :cond_4b
    if-eqz v0, :cond_56

    .line 218
    new-instance v2, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda1;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-static {v0, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    goto :goto_57

    .line 217
    :cond_56
    :goto_56
    nop

    .line 226
    :goto_57
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 227
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V

    .line 229
    :cond_60
    return-void
.end method

.method private greylist-max-o sharedElementTransitionStarted()V
    .registers 3

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    .line 602
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    if-eqz v0, :cond_d

    .line 603
    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/EnterTransitionCoordinator;->send(ILandroid/os/Bundle;)V

    .line 605
    :cond_d
    return-void
.end method

.method private greylist-max-o startEnterTransition(Landroid/transition/Transition;)V
    .registers 7
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 608
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 609
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_57

    if-eqz v0, :cond_57

    .line 610
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 611
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_42

    .line 612
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 613
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    const/16 v2, 0xff

    filled-new-array {v2}, [I

    move-result-object v2

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 615
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getFadeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 616
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/app/EnterTransitionCoordinator$6;

    invoke-direct {v3, p0}, Landroid/app/EnterTransitionCoordinator$6;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 623
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_56

    .line 624
    :cond_42
    if-eqz p1, :cond_50

    .line 625
    new-instance v2, Landroid/app/EnterTransitionCoordinator$7;

    invoke-direct {v2, p0}, Landroid/app/EnterTransitionCoordinator$7;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 632
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->backgroundAnimatorComplete()V

    goto :goto_56

    .line 634
    :cond_50
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    .line 635
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 637
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :goto_56
    goto :goto_5a

    .line 638
    :cond_57
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 640
    :goto_5a
    return-void
.end method

.method private greylist-max-o startEnterTransitionOnly()V
    .registers 2

    .line 752
    new-instance v0, Landroid/app/EnterTransitionCoordinator$9;

    invoke-direct {v0, p0}, Landroid/app/EnterTransitionCoordinator$9;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 765
    return-void
.end method

.method private greylist-max-o startRejectedAnimations(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 718
    .local p1, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3f

    .line 721
    :cond_9
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 722
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3e

    .line 723
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 724
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    const/4 v2, 0x0

    .line 725
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 726
    .local v3, "numRejected":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_36

    .line 727
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 728
    .local v5, "snapshot":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 729
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_40

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 730
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 726
    .end local v5    # "snapshot":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 732
    .end local v4    # "i":I
    :cond_36
    new-instance v4, Landroid/app/EnterTransitionCoordinator$8;

    invoke-direct {v4, p0, v0, p1}, Landroid/app/EnterTransitionCoordinator$8;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 743
    .end local v1    # "overlay":Landroid/view/ViewGroupOverlay;
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    .end local v3    # "numRejected":I
    :cond_3e
    return-void

    .line 719
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_3f
    :goto_3f
    return-void

    :array_40
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private greylist-max-o startSharedElementTransition(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 396
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 397
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-nez v0, :cond_7

    .line 398
    return-void

    .line 401
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 402
    .local v1, "rejectedNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 403
    invoke-virtual {p0, p1, v1}, Landroid/app/EnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 404
    .local v2, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v3, :cond_20

    .line 405
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v3, v2}, Landroid/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    .line 407
    :cond_20
    invoke-static {v2}, Landroid/app/EnterTransitionCoordinator;->removeNullViews(Ljava/util/ArrayList;)V

    .line 408
    invoke-direct {p0, v2}, Landroid/app/EnterTransitionCoordinator;->startRejectedAnimations(Ljava/util/ArrayList;)V

    .line 411
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v3}, Landroid/app/EnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    .line 413
    .local v3, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 414
    invoke-virtual {p0, v3}, Landroid/app/EnterTransitionCoordinator;->scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V

    .line 415
    nop

    .line 416
    invoke-virtual {p0, p1, v3}, Landroid/app/EnterTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 417
    .local v4, "originalImageViewState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->requestLayoutForSharedElements()V

    .line 419
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_49

    iget-boolean v6, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-nez v6, :cond_49

    goto :goto_4a

    :cond_49
    move v5, v7

    .line 420
    .local v5, "startEnterTransition":Z
    :goto_4a
    const/4 v6, 0x1

    .line 421
    .local v6, "startSharedElementTransition":Z
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 422
    invoke-virtual {p0, v8}, Landroid/app/EnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 423
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->pauseInput()V

    .line 424
    invoke-direct {p0, v0, v5, v6}, Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object v8

    .line 426
    .local v8, "transition":Landroid/transition/Transition;
    invoke-virtual {p0, v7}, Landroid/app/EnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 427
    invoke-virtual {p0, v7}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 429
    if-eqz v5, :cond_64

    .line 430
    invoke-direct {p0, v8}, Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    .line 433
    :cond_64
    iget-object v7, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-static {v7, v4}, Landroid/app/EnterTransitionCoordinator;->setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 435
    iget-object v7, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v7, :cond_75

    .line 438
    new-instance v7, Landroid/app/EnterTransitionCoordinator$2;

    invoke-direct {v7, p0}, Landroid/app/EnterTransitionCoordinator$2;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 455
    :cond_75
    return-void
.end method

.method private greylist-max-o triggerViewsReady(Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    if-eqz v0, :cond_5

    .line 156
    return-void

    .line 158
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    .line 159
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 161
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 162
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_37

    .line 165
    :cond_28
    new-instance v1, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda0;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/util/ArrayMap;)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    move-result-object v1

    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    .line 169
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_3a

    .line 163
    :cond_37
    :goto_37
    invoke-virtual {p0, p1}, Landroid/app/EnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 171
    :goto_3a
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelEnter()Z
    .registers 2

    .line 676
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mHasStopped:Z

    .line 678
    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    .line 679
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->clearState()V

    .line 680
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->cancelPendingTransitions()Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o clearState()V
    .registers 3

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 686
    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    .line 687
    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 688
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_12

    .line 689
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 690
    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 692
    :cond_12
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    if-eqz v1, :cond_1d

    .line 693
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 694
    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    .line 696
    :cond_1d
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->clearState()V

    .line 697
    return-void
.end method

.method public greylist-max-o forceViewsToAppear()V
    .registers 6

    .line 279
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-nez v0, :cond_5

    .line 280
    return-void

    .line 282
    :cond_5
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3f

    .line 283
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 284
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 285
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1f

    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    if-eqz v4, :cond_1f

    .line 286
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    invoke-virtual {v4}, Lcom/android/internal/view/OneShotPreDrawListener;->removeListener()V

    .line 287
    iput-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    .line 289
    :cond_1f
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 290
    invoke-virtual {p0, v1, v3}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 291
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 292
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 293
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 294
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 295
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 296
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 297
    .end local v0    # "decor":Landroid/view/ViewGroup;
    goto :goto_6e

    .line 298
    :cond_3f
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    if-nez v0, :cond_55

    .line 299
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 300
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    .line 301
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 302
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 303
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 305
    :cond_55
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    if-nez v0, :cond_6b

    .line 306
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    .line 307
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 308
    invoke-virtual {p0, v1, v3}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 309
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 310
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 312
    :cond_6b
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->cancelPendingTransitions()Z

    .line 314
    :goto_6e
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    .line 315
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_7d

    .line 316
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 317
    iput-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 319
    :cond_7d
    return-void
.end method

.method public greylist-max-o getEnterViewsTransition()Landroid/transition/Transition;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public blacklist getPendingExitSharedElementNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mPendingExitNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected greylist-max-o getSharedElementTransition()Landroid/transition/Transition;
    .registers 3

    .line 384
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 385
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_8

    .line 386
    const/4 v1, 0x0

    return-object v1

    .line 388
    :cond_8
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_11

    .line 389
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReenterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1

    .line 391
    :cond_11
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method protected greylist-max-o getViewsTransition()Landroid/transition/Transition;
    .registers 3

    .line 372
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 373
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_8

    .line 374
    const/4 v1, 0x0

    return-object v1

    .line 376
    :cond_8
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_11

    .line 377
    invoke-virtual {v0}, Landroid/view/Window;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1

    .line 379
    :cond_11
    invoke-virtual {v0}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o isCrossTask()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCrossTask:Z

    return v0
.end method

.method public greylist-max-o isReturning()Z
    .registers 2

    .line 339
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    return v0
.end method

.method public greylist-max-o isWaitingForRemoteExit()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/app/EnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    .line 127
    return-void
.end method

.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 237
    packed-switch p1, :pswitch_data_2e

    :pswitch_3
    goto :goto_2d

    .line 256
    :pswitch_4
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsTaskRoot:Z

    if-nez v0, :cond_2d

    .line 257
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mPendingExitNames:Ljava/util/ArrayList;

    goto :goto_2d

    .line 253
    :pswitch_11
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->cancel()V

    .line 254
    goto :goto_2d

    .line 245
    :pswitch_15
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_2d

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    .line 247
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    if-eqz v0, :cond_2d

    .line 248
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    goto :goto_2d

    .line 239
    :pswitch_24
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_2d

    .line 240
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 241
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V

    .line 261
    :cond_2d
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x67
        :pswitch_24
        :pswitch_15
        :pswitch_3
        :pswitch_11
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected greylist-max-o onRemoteExitTransitionComplete()V
    .registers 2

    .line 746
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v0

    if-nez v0, :cond_9

    .line 747
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V

    .line 749
    :cond_9
    return-void
.end method

.method protected greylist-max-o onTransitionsComplete()V
    .registers 6

    .line 584
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 585
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 586
    .local v0, "decorView":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 587
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 589
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 590
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_20

    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mReplacedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v3, v4, :cond_20

    .line 591
    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    .end local v2    # "window":Landroid/view/Window;
    :cond_20
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    if-eqz v2, :cond_2b

    .line 595
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 596
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    .line 598
    :cond_2b
    return-void
.end method

.method protected greylist-max-o prepareEnter()V
    .registers 6

    .line 343
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 344
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_53

    if-nez v0, :cond_b

    goto :goto_53

    .line 348
    :cond_b
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsTaskRoot:Z

    .line 350
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->isCrossTask()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 351
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 353
    :cond_1f
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    const/4 v3, 0x0

    if-nez v1, :cond_50

    .line 354
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3, v3}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    .line 355
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 356
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3a

    .line 357
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 358
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mReplacedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_48

    .line 360
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3a
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 362
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 364
    :goto_48
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    goto :goto_52

    .line 366
    :cond_50
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 368
    :goto_52
    return-void

    .line 345
    :cond_53
    :goto_53
    return-void
.end method

.method public blacklist runAfterTransitionsComplete(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "onTransitionComplete"    # Ljava/lang/Runnable;

    .line 575
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_a

    .line 576
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onTransitionsComplete()V

    goto :goto_c

    .line 578
    :cond_a
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    .line 580
    :goto_c
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 5

    .line 645
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 646
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 647
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_22

    .line 648
    :cond_d
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    if-eqz v0, :cond_22

    .line 649
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 650
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_22

    .line 651
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 652
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_22

    .line 653
    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 657
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_22
    :goto_22
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    .line 659
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 660
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 661
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 662
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_3c

    .line 663
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 664
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 666
    :cond_3c
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 667
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->clearState()V

    .line 668
    return-void
.end method

.method public greylist-max-o viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 110
    .local v0, "remap":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 111
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 112
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_28

    .line 110
    .end local v2    # "view":Landroid/view/View;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    .restart local v2    # "view":Landroid/view/View;
    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 115
    nop

    .line 118
    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :cond_2a
    if-eqz v0, :cond_34

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/app/EnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    goto :goto_3b

    .line 121
    :cond_34
    invoke-virtual {p0, p1, p3}, Landroid/app/EnterTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    .line 123
    :goto_3b
    return-void
.end method

.method protected greylist-max-o viewsReady(Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 137
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 138
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 139
    .local v0, "viewsTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    .line 140
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/app/EnterTransitionCoordinator;->removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 141
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->stripOffscreenViews()V

    .line 142
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Landroid/app/EnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 144
    :cond_22
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_2a

    .line 145
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sendSharedElementDestination()V

    goto :goto_2d

    .line 147
    :cond_2a
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 149
    :goto_2d
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_34

    .line 150
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V

    .line 152
    :cond_34
    return-void
.end method
