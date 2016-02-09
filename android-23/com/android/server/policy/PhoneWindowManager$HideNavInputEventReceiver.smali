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
    .line 3316
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    .line 3317
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@5
    .line 3316
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 3322
    const/4 v3, 0x0

    #@1
    .line 3324
    .local v3, "handled":Z
    :try_start_0
    instance-of v6, p1, Landroid/view/MotionEvent;

    #@3
    if-eqz v6, :cond_2

    #@5
    .line 3325
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    #@8
    move-result v6

    #@9
    and-int/lit8 v6, v6, 0x2

    #@b
    if-eqz v6, :cond_2

    #@d
    .line 3326
    move-object v0, p1

    #@e
    check-cast v0, Landroid/view/MotionEvent;

    #@10
    move-object v4, v0

    #@11
    .line 3327
    .local v4, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    #@14
    move-result v6

    #@15
    if-nez v6, :cond_2

    #@17
    .line 3329
    const/4 v2, 0x0

    #@18
    .line 3330
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
    .line 3336
    :try_start_1
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@23
    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@25
    or-int/lit8 v6, v6, 0x2

    #@27
    or-int/lit8 v6, v6, 0x1

    #@29
    or-int/lit8 v5, v6, 0x4

    #@2b
    .line 3340
    .local v5, "newVal":I
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2d
    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@2f
    if-eq v6, v5, :cond_0

    #@31
    .line 3341
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@33
    iput v5, v6, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@35
    .line 3342
    const/4 v2, 0x1

    #@36
    .line 3347
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@38
    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@3a
    or-int/lit8 v5, v6, 0x2

    #@3c
    .line 3349
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@3e
    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@40
    if-eq v6, v5, :cond_1

    #@42
    .line 3350
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@44
    iput v5, v6, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@46
    .line 3351
    const/4 v2, 0x1

    #@47
    .line 3352
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@49
    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@4b
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@4d
    invoke-static {v8}, Lcom/android/server/policy/PhoneWindowManager;->-get1(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;

    #@50
    move-result-object v8

    #@51
    const-wide/16 v10, 0x3e8

    #@53
    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    :cond_1
    :try_start_2
    monitor-exit v7

    #@57
    .line 3355
    if-eqz v2, :cond_2

    #@59
    .line 3356
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@5b
    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@5d
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@60
    .line 3361
    .end local v2    # "changed":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newVal":I
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@63
    .line 3321
    return-void

    #@64
    .line 3330
    .restart local v2    # "changed":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v6

    #@65
    :try_start_3
    monitor-exit v7

    #@66
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@67
    .line 3360
    .end local v2    # "changed":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_1
    move-exception v6

    #@68
    .line 3361
    invoke-virtual {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@6b
    .line 3360
    throw v6
.end method
