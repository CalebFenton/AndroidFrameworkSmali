.class final Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 3797
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    .line 3798
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@5
    .line 3797
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 3803
    const/4 v3, 0x0

    #@1
    .line 3805
    .local v3, "handled":Z
    :try_start_0
    instance-of v6, p1, Landroid/view/MotionEvent;

    #@3
    if-eqz v6, :cond_3

    #@5
    .line 3806
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    #@8
    move-result v6

    #@9
    and-int/lit8 v6, v6, 0x2

    #@b
    if-eqz v6, :cond_3

    #@d
    .line 3807
    move-object v0, p1

    #@e
    check-cast v0, Landroid/view/MotionEvent;

    #@10
    move-object v4, v0

    #@11
    .line 3808
    .local v4, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    #@14
    move-result v6

    #@15
    if-nez v6, :cond_3

    #@17
    .line 3810
    const/4 v2, 0x0

    #@18
    .line 3811
    .local v2, "changed":Z
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@1a
    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@1c
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@1f
    move-result-object v7

    #@20
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@21
    .line 3812
    :try_start_1
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@23
    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    if-nez v6, :cond_0

    #@27
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@28
    .line 3845
    invoke-virtual {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@2b
    .line 3813
    return-void

    #@2c
    .line 3820
    :cond_0
    :try_start_3
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2e
    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@30
    or-int/lit8 v6, v6, 0x2

    #@32
    or-int/lit8 v6, v6, 0x1

    #@34
    or-int/lit8 v5, v6, 0x4

    #@36
    .line 3824
    .local v5, "newVal":I
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@38
    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@3a
    if-eq v6, v5, :cond_1

    #@3c
    .line 3825
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@3e
    iput v5, v6, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@40
    .line 3826
    const/4 v2, 0x1

    #@41
    .line 3831
    :cond_1
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@43
    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@45
    or-int/lit8 v5, v6, 0x2

    #@47
    .line 3833
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@49
    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@4b
    if-eq v6, v5, :cond_2

    #@4d
    .line 3834
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@4f
    iput v5, v6, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@51
    .line 3835
    const/4 v2, 0x1

    #@52
    .line 3836
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@54
    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@56
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@58
    invoke-static {v8}, Lcom/android/server/policy/PhoneWindowManager;->-get1(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;

    #@5b
    move-result-object v8

    #@5c
    const-wide/16 v10, 0x3e8

    #@5e
    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@61
    :cond_2
    :try_start_4
    monitor-exit v7

    #@62
    .line 3839
    if-eqz v2, :cond_3

    #@64
    .line 3840
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@66
    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@68
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6b
    .line 3845
    .end local v2    # "changed":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newVal":I
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@6e
    .line 3802
    return-void

    #@6f
    .line 3811
    .restart local v2    # "changed":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v6

    #@70
    :try_start_5
    monitor-exit v7

    #@71
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@72
    .line 3844
    .end local v2    # "changed":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_1
    move-exception v6

    #@73
    .line 3845
    invoke-virtual {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@76
    .line 3844
    throw v6
.end method
