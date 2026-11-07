.class final Landroid/view/ViewRootImpl$NativePreImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePreImeInputStage"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 7665
    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 7666
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 7667
    return-void
.end method

.method private blacklist doOnBackKeyEvent(Landroid/view/KeyEvent;)I
    .registers 10
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 7705
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    .line 7706
    .local v0, "dispatcher":Landroid/window/WindowOnBackInvokedDispatcher;
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    .line 7707
    .local v1, "topCallback":Landroid/window/OnBackInvokedCallback;
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_12

    .line 7708
    return v3

    .line 7710
    :cond_12
    instance-of v2, v1, Landroid/window/OnBackAnimationCallback;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_55

    instance-of v2, v1, Landroid/view/ImeBackAnimationController;

    if-nez v2, :cond_55

    .line 7712
    move-object v2, v1

    check-cast v2, Landroid/window/OnBackAnimationCallback;

    .line 7714
    .local v2, "animationCallback":Landroid/window/OnBackAnimationCallback;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_82

    goto :goto_76

    .line 7732
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 7733
    invoke-interface {v2}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    goto :goto_76

    .line 7735
    :cond_31
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->tryInvokeSystemNavigationObserverCallback()V

    .line 7736
    invoke-interface {v1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    goto :goto_76

    .line 7721
    :pswitch_38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_76

    .line 7723
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackSwipeEdgeNoneApi()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4b

    .line 7724
    new-instance v6, Landroid/window/BackEvent;

    invoke-direct {v6, v7, v7, v7, v3}, Landroid/window/BackEvent;-><init>(FFFI)V

    .local v6, "backEvent":Landroid/window/BackEvent;
    goto :goto_51

    .line 7726
    .end local v6    # "backEvent":Landroid/window/BackEvent;
    :cond_4b
    new-instance v3, Landroid/window/BackEvent;

    invoke-direct {v3, v7, v7, v7, v4}, Landroid/window/BackEvent;-><init>(FFFI)V

    move-object v6, v3

    .line 7728
    .restart local v6    # "backEvent":Landroid/window/BackEvent;
    :goto_51
    invoke-interface {v2, v6}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    .line 7729
    .end local v6    # "backEvent":Landroid/window/BackEvent;
    goto :goto_76

    .line 7740
    .end local v2    # "animationCallback":Landroid/window/OnBackAnimationCallback;
    :cond_55
    if-eqz v1, :cond_76

    .line 7741
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_77

    .line 7742
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 7743
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->tryInvokeSystemNavigationObserverCallback()V

    .line 7744
    invoke-interface {v1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    goto :goto_77

    .line 7746
    :cond_6a
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Skip onBackInvoked(), reason: keyEvent.isCanceled=true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 7740
    :cond_76
    :goto_76
    nop

    .line 7750
    :cond_77
    :goto_77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_80

    .line 7752
    invoke-virtual {p1}, Landroid/view/KeyEvent;->cancel()V

    .line 7754
    :cond_80
    return v4

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_38
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o onFinishedInputEvent(Ljava/lang/Object;Z)V
    .registers 5
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    .line 7759
    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7760
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz p2, :cond_a

    .line 7761
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 7762
    return-void

    .line 7764
    :cond_a
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7765
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7671
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->forPreImeOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 7673
    return v1

    .line 7675
    :cond_8
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_66

    .line 7676
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 7680
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_55

    .line 7681
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 7682
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 7684
    nop

    .line 7683
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3b

    .line 7684
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 7685
    goto :goto_3c

    :cond_3b
    const/4 v3, 0x2

    .line 7683
    :goto_3c
    return v3

    .line 7688
    :cond_3d
    return v1

    .line 7690
    :cond_3e
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_55

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmOnBackInvokedDispatcher(Landroid/view/ViewRootImpl;)Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    .line 7691
    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 7692
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->doOnBackKeyEvent(Landroid/view/KeyEvent;)I

    move-result v1

    return v1

    .line 7696
    :cond_55
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v2, :cond_66

    .line 7697
    iget-object v1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, p1, v3, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    .line 7698
    const/4 v1, 0x3

    return v1

    .line 7701
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_66
    return v1
.end method
