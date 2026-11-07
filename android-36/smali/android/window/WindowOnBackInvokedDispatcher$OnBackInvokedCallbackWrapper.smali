.class Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "WindowOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnBackInvokedCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIsSystemCallback:Z

.field private final blacklist mOnKeyPreIme:Ljava/util/function/BooleanSupplier;

.field private final blacklist mProgressAnimator:Landroid/window/BackProgressAnimator;

.field private final blacklist mSystemNavigationObserverCallbackRunnable:Ljava/lang/Runnable;

.field private final blacklist mTouchTracker:Landroid/window/BackTouchTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$4ToXODqn8sufRph7IG5pjjhTGhE(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackStarted$0(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$63ojIwchGKPXnN9WLnkEbUuCeQ0(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/OnBackInvokedCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackInvoked$3(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JSuRKE4c8OySpubol1Svl3F06wU(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackInvoked$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OHkUeAkifZ8klNEtL7KbX9WXjQs(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackCancelled$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xk5ZmE8Y18cgIJ8lWS9VRoUYAZ8(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackProgressed$1(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/window/OnBackInvokedCallback;Landroid/window/BackTouchTracker;Landroid/window/BackProgressAnimator;Landroid/os/Handler;Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;Z)V
    .registers 9
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;
    .param p2, "touchTracker"    # Landroid/window/BackTouchTracker;
    .param p3, "progressAnimator"    # Landroid/window/BackProgressAnimator;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "onKeyPreIme"    # Ljava/util/function/BooleanSupplier;
    .param p6, "systemNavigationObserverCallbackRunnable"    # Ljava/lang/Runnable;
    .param p7, "isSystemCallback"    # Z

    .line 520
    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    .line 521
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 522
    iput-object p2, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    .line 523
    iput-object p3, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 524
    iput-object p4, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    .line 525
    iput-object p5, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mOnKeyPreIme:Ljava/util/function/BooleanSupplier;

    .line 526
    iput-object p6, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mSystemNavigationObserverCallbackRunnable:Ljava/lang/Runnable;

    .line 527
    iput-boolean p7, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mIsSystemCallback:Z

    .line 528
    return-void
.end method

.method private blacklist consumedByOnKeyPreIme()Z
    .registers 6

    .line 617
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    .line 618
    .local v0, "callback":Landroid/window/OnBackInvokedCallback;
    instance-of v1, v0, Landroid/view/ImeBackAnimationController;

    if-nez v1, :cond_10

    instance-of v1, v0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    if-eqz v1, :cond_37

    .line 623
    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mOnKeyPreIme:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    .line 624
    .local v1, "consumed":Z
    if-eqz v1, :cond_2e

    .line 626
    nop

    .line 627
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v2

    .line 628
    .local v2, "animationCallback":Landroid/window/OnBackAnimationCallback;
    if-eqz v2, :cond_2c

    .line 629
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/window/OnBackAnimationCallback;)V

    invoke-virtual {v3, v4}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_2f

    .line 631
    :cond_2c
    const/4 v3, 0x1

    return v3

    .line 635
    .end local v1    # "consumed":Z
    .end local v2    # "animationCallback":Landroid/window/OnBackAnimationCallback;
    :cond_2e
    goto :goto_37

    .line 633
    :catch_2f
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WindowOnBackDispatcher"

    const-string v3, "Failed to call onKeyPreIme"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_37
    :goto_37
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;
    .registers 3

    .line 647
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    .line 648
    .local v0, "callback":Landroid/window/OnBackInvokedCallback;
    instance-of v1, v0, Landroid/window/OnBackAnimationCallback;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Landroid/window/OnBackAnimationCallback;

    goto :goto_11

    .line 649
    :cond_10
    const/4 v1, 0x0

    .line 648
    :goto_11
    return-object v1
.end method

.method private synthetic blacklist lambda$onBackCancelled$2()V
    .registers 4

    .line 573
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 574
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->reset()V

    .line 575
    if-nez v0, :cond_c

    return-void

    .line 576
    :cond_c
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/window/OnBackAnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V

    .line 577
    return-void
.end method

.method private synthetic blacklist lambda$onBackInvoked$3(Landroid/window/OnBackInvokedCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 601
    iget-boolean v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mIsSystemCallback:Z

    if-eqz v0, :cond_9

    .line 602
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mSystemNavigationObserverCallbackRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 604
    :cond_9
    invoke-interface {p1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    .line 605
    return-void
.end method

.method private synthetic blacklist lambda$onBackInvoked$4()V
    .registers 6

    .line 583
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->reset()V

    .line 584
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->consumedByOnKeyPreIme()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 585
    :cond_c
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v0

    .line 586
    .local v0, "isInProgress":Z
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    .line 587
    .local v1, "callback":Landroid/window/OnBackInvokedCallback;
    const-string v2, "WindowOnBackDispatcher"

    if-nez v1, :cond_29

    .line 588
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v3}, Landroid/window/BackProgressAnimator;->reset()V

    .line 589
    const-string v3, "Trying to call onBackInvoked() on a null callback reference."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 592
    :cond_29
    instance-of v3, v1, Landroid/window/OnBackAnimationCallback;

    if-eqz v3, :cond_35

    if-nez v0, :cond_35

    .line 593
    const-string v3, "ProgressAnimator was not in progress, skip onBackInvoked()."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-void

    .line 596
    :cond_35
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v2

    .line 597
    .local v2, "animationCallback":Landroid/window/OnBackAnimationCallback;
    if-eqz v2, :cond_50

    instance-of v3, v1, Landroid/view/ImeBackAnimationController;

    if-nez v3, :cond_50

    .line 599
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackTimestampApi()Z

    move-result v3

    if-nez v3, :cond_50

    .line 600
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v4, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {v3, v4}, Landroid/window/BackProgressAnimator;->onBackInvoked(Ljava/lang/Runnable;)V

    goto :goto_61

    .line 607
    :cond_50
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v3}, Landroid/window/BackProgressAnimator;->reset()V

    .line 608
    iget-boolean v3, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mIsSystemCallback:Z

    if-eqz v3, :cond_5e

    .line 609
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mSystemNavigationObserverCallbackRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 611
    :cond_5e
    invoke-interface {v1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    .line 613
    :goto_61
    return-void
.end method

.method private synthetic blacklist lambda$onBackProgressed$1(Landroid/window/BackMotionEvent;)V
    .registers 3
    .param p1, "backEvent"    # Landroid/window/BackMotionEvent;

    .line 564
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 565
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    .line 567
    :cond_b
    return-void
.end method

.method private synthetic blacklist lambda$onBackStarted$0(Landroid/window/BackMotionEvent;)V
    .registers 7
    .param p1, "backEvent"    # Landroid/window/BackMotionEvent;

    .line 533
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 538
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    if-eqz v0, :cond_13

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v1}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 539
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v1}, Landroid/window/BackProgressAnimator;->reset()V

    .line 541
    :cond_13
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    sget-object v2, Landroid/window/BackTouchTracker$TouchTrackerState;->ACTIVE:Landroid/window/BackTouchTracker$TouchTrackerState;

    invoke-virtual {v1, v2}, Landroid/window/BackTouchTracker;->setState(Landroid/window/BackTouchTracker$TouchTrackerState;)V

    .line 542
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/window/BackTouchTracker;->setShouldUpdateStartLocation(Z)V

    .line 543
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    .line 544
    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v3

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v4

    .line 543
    invoke-virtual {v1, v2, v3, v4}, Landroid/window/BackTouchTracker;->setGestureStartLocation(FFI)V

    .line 546
    if-eqz v0, :cond_47

    .line 547
    invoke-static {p1}, Landroid/window/BackEvent;->fromBackMotionEvent(Landroid/window/BackMotionEvent;)Landroid/window/BackEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    .line 548
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda6;-><init>(Landroid/window/OnBackAnimationCallback;)V

    invoke-virtual {v1, p1, v2}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    .line 550
    :cond_47
    return-void
.end method


# virtual methods
.method public blacklist onBackCancelled()V
    .registers 3

    .line 572
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    return-void
.end method

.method public blacklist onBackInvoked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackMotionEvent;)V
    .registers 4
    .param p1, "backEvent"    # Landroid/window/BackMotionEvent;

    .line 563
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    return-void
.end method

.method public blacklist onBackStarted(Landroid/window/BackMotionEvent;)V
    .registers 4
    .param p1, "backEvent"    # Landroid/window/BackMotionEvent;

    .line 532
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    return-void
.end method

.method public blacklist setHandoffHandler(Landroid/window/IBackAnimationHandoffHandler;)V
    .registers 2
    .param p1, "handoffHandler"    # Landroid/window/IBackAnimationHandoffHandler;

    .line 556
    return-void
.end method

.method public blacklist setTriggerBack(Z)V
    .registers 3
    .param p1, "triggerBack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0, p1}, Landroid/window/BackTouchTracker;->setTriggerBack(Z)V

    .line 643
    return-void
.end method
