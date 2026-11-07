.class Landroid/widget/PopupWindow$PopupDecorView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDecorView"
.end annotation


# instance fields
.field private greylist-max-o mCleanupAfterExit:Ljava/lang/Runnable;

.field private final greylist-max-o mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field final synthetic blacklist this$0:Landroid/widget/PopupWindow;


# direct methods
.method public static synthetic blacklist $r8$lambda$QDZCkp-mnhF8KhgKttY7LXLzFlE(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow$PopupDecorView;->lambda$startExitTransition$0(Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCleanupAfterExit(Landroid/widget/PopupWindow$PopupDecorView;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartEnterTransition(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow$PopupDecorView;->startEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2532
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    .line 2533
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2718
    new-instance p1, Landroid/widget/PopupWindow$PopupDecorView$4;

    invoke-direct {p1, p0}, Landroid/widget/PopupWindow$PopupDecorView$4;-><init>(Landroid/widget/PopupWindow$PopupDecorView;)V

    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 2534
    return-void
.end method

.method private synthetic blacklist lambda$startExitTransition$0(Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V
    .registers 5
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;
    .param p2, "transition"    # Landroid/transition/Transition;
    .param p3, "anchorRoot"    # Landroid/view/View;

    .line 2661
    invoke-interface {p1, p2}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 2663
    if-eqz p3, :cond_a

    .line 2664
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2668
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    .line 2669
    return-void
.end method

.method private greylist-max-o startEnterTransition(Landroid/transition/Transition;)V
    .registers 6
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 2622
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getChildCount()I

    move-result v0

    .line 2623
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 2624
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2625
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 2626
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 2623
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2629
    .end local v1    # "i":I
    :cond_15
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2631
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_19
    if-ge v1, v0, :cond_26

    .line 2632
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2633
    .restart local v2    # "child":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 2631
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 2635
    .end local v1    # "i":I
    :cond_26
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelTransitions()V
    .registers 2

    .line 2709
    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 2713
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 2714
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2716
    :cond_c
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2538
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    .line 2539
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_10

    goto :goto_15

    .line 2559
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2540
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_20

    .line 2541
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2544
    :cond_20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_37

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_37

    .line 2545
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2546
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_36

    .line 2547
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2549
    :cond_36
    return v1

    .line 2550
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_55

    .line 2551
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2552
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_55

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_55

    .line 2553
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2554
    return v1

    .line 2557
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_55
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2565
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-$$Nest$fgetmTouchInterceptor(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-$$Nest$fgetmTouchInterceptor(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2566
    const/4 v0, 0x1

    return v0

    .line 2568
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 5

    .line 2745
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2746
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2747
    return-void

    .line 2750
    :cond_c
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 2751
    .local v0, "dispatcher":Landroid/window/OnBackInvokedDispatcher;
    if-nez v0, :cond_13

    .line 2752
    return-void

    .line 2755
    :cond_13
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/widget/PopupWindow$PopupDecorView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Landroid/widget/PopupWindow$PopupDecorView$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    invoke-static {v1, v3}, Landroid/widget/PopupWindow;->-$$Nest$fputmBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedCallback;)V

    .line 2757
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v1}, Landroid/widget/PopupWindow;->-$$Nest$fgetmBackCallback(Landroid/widget/PopupWindow;)Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 2759
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 2763
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2764
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/PopupWindow;->-$$Nest$munregisterBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedDispatcher;)V

    .line 2765
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2574
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2576
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_27

    if-ltz v0, :cond_21

    .line 2577
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_21

    if-ltz v1, :cond_21

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_27

    .line 2578
    :cond_21
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2579
    return v3

    .line 2580
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_34

    .line 2581
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2582
    return v3

    .line 2584
    :cond_34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public greylist-max-o requestEnterTransition(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2592
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2593
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 2594
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v1

    .line 2597
    .local v1, "enterTransition":Landroid/transition/Transition;
    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView$1;

    invoke-direct {v2, p0, v1}, Landroid/widget/PopupWindow$PopupDecorView$1;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2616
    .end local v1    # "enterTransition":Landroid/transition/Transition;
    :cond_14
    return-void
.end method

.method public greylist-max-o requestKeyboardShortcuts(Ljava/util/List;I)V
    .registers 4
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    .line 2735
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-$$Nest$fgetmParentRootView(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2736
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-$$Nest$fgetmParentRootView(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2737
    .local v0, "parentRoot":Landroid/view/View;
    if-eqz v0, :cond_19

    .line 2738
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    .line 2741
    .end local v0    # "parentRoot":Landroid/view/View;
    :cond_19
    return-void
.end method

.method public greylist-max-o startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V
    .registers 10
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "anchorRoot"    # Landroid/view/View;
    .param p3, "epicenter"    # Landroid/graphics/Rect;
    .param p4, "listener"    # Landroid/transition/Transition$TransitionListener;

    .line 2647
    if-nez p1, :cond_3

    .line 2648
    return-void

    .line 2654
    :cond_3
    if-eqz p2, :cond_a

    .line 2655
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2660
    :cond_a
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p4, p1, p2}, Landroid/widget/PopupWindow$PopupDecorView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView;->mCleanupAfterExit:Ljava/lang/Runnable;

    .line 2671
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    .line 2672
    .local v0, "exitTransition":Landroid/transition/Transition;
    new-instance v1, Landroid/widget/PopupWindow$PopupDecorView$2;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$PopupDecorView$2;-><init>(Landroid/widget/PopupWindow$PopupDecorView;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2684
    new-instance v1, Landroid/widget/PopupWindow$PopupDecorView$3;

    invoke-direct {v1, p0, p3}, Landroid/widget/PopupWindow$PopupDecorView$3;-><init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 2691
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getChildCount()I

    move-result v1

    .line 2692
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v1, :cond_36

    .line 2693
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2694
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 2692
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 2697
    .end local v2    # "i":I
    :cond_36
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2699
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3a
    if-ge v2, v1, :cond_47

    .line 2700
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2701
    .restart local v3    # "child":Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2699
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 2703
    .end local v2    # "i":I
    :cond_47
    return-void
.end method
