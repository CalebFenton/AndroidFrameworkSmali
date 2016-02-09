.class public abstract Landroid/content/BroadcastReceiver;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/BroadcastReceiver$PendingResult;
    }
.end annotation


# instance fields
.field private mDebugUnregister:Z

.field private mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final abortBroadcast()V
    .locals 2

    #@0
    .prologue
    .line 691
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    #@3
    .line 692
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@5
    const/4 v1, 0x1

    #@6
    iput-boolean v1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    #@8
    .line 690
    return-void
.end method

.method checkSynchronousHint()V
    .locals 3

    #@0
    .prologue
    .line 773
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 774
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Call while result is not pending"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 780
    :cond_0
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@f
    iget-boolean v1, v1, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    #@11
    if-nez v1, :cond_1

    #@13
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@15
    iget-boolean v1, v1, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 781
    :cond_1
    return-void

    #@1a
    .line 783
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@1c
    .line 784
    const-string/jumbo v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    #@1f
    .line 783
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    .line 785
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@25
    .line 786
    const-string/jumbo v1, "BroadcastReceiver"

    #@28
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 772
    return-void
.end method

.method public final clearAbortBroadcast()V
    .locals 2

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 701
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@6
    const/4 v1, 0x0

    #@7
    iput-boolean v1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    #@9
    .line 699
    :cond_0
    return-void
.end method

.method public final getAbortBroadcast()Z
    .locals 1

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@6
    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public final getDebugUnregister()Z
    .locals 1

    #@0
    .prologue
    .line 769
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    #@2
    return v0
.end method

.method public final getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    #@0
    .prologue
    .line 742
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@2
    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@6
    iget v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public final getResultData()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 591
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@7
    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    #@9
    :cond_0
    return-object v0
.end method

.method public final getResultExtras(Z)Landroid/os/Bundle;
    .locals 3
    .param p1, "makeMap"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 628
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 629
    return-object v2

    #@6
    .line 631
    :cond_0
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@8
    iget-object v0, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@a
    .line 632
    .local v0, "e":Landroid/os/Bundle;
    if-nez p1, :cond_1

    #@c
    return-object v0

    #@d
    .line 633
    :cond_1
    if-nez v0, :cond_2

    #@f
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@11
    new-instance v0, Landroid/os/Bundle;

    #@13
    .end local v0    # "e":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@16
    .restart local v0    # "e":Landroid/os/Bundle;
    iput-object v0, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@18
    .line 634
    :cond_2
    return-object v0
.end method

.method public getSendingUserId()I
    .locals 1

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@2
    iget v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    #@4
    return v0
.end method

.method public final goAsync()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 2

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@2
    .line 508
    .local v0, "res":Landroid/content/BroadcastReceiver$PendingResult;
    const/4 v1, 0x0

    #@3
    iput-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@5
    .line 509
    return-object v0
.end method

.method public final isInitialStickyBroadcast()Z
    .locals 1

    #@0
    .prologue
    .line 720
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@6
    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public final isOrderedBroadcast()Z
    .locals 1

    #@0
    .prologue
    .line 710
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@6
    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public abstract onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "myContext"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 522
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 523
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    #@5
    .line 525
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@8
    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v3

    #@c
    .line 526
    invoke-virtual {p2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 526
    invoke-interface {v0, p2, v3, v4}, Landroid/app/IActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v1

    #@18
    .line 530
    .end local v1    # "binder":Landroid/os/IBinder;
    :goto_0
    return-object v1

    #@19
    .line 528
    .restart local v1    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    #@1a
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final setDebugUnregister(Z)V
    .locals 0
    .param p1, "debug"    # Z

    #@0
    .prologue
    .line 762
    iput-boolean p1, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    #@2
    .line 761
    return-void
.end method

.method public final setOrderedHint(Z)V
    .locals 0
    .param p1, "isOrdered"    # Z

    #@0
    .prologue
    .line 727
    return-void
.end method

.method public final setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "result"    # Landroid/content/BroadcastReceiver$PendingResult;

    #@0
    .prologue
    .line 735
    iput-object p1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@2
    .line 734
    return-void
.end method

.method public final setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 660
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    #@3
    .line 661
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@5
    iput p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    #@7
    .line 662
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@9
    iput-object p2, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    #@b
    .line 663
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@d
    iput-object p3, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@f
    .line 659
    return-void
.end method

.method public final setResultCode(I)V
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    #@3
    .line 552
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@5
    iput p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    #@7
    .line 550
    return-void
.end method

.method public final setResultData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    #@3
    .line 581
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@5
    iput-object p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    #@7
    .line 579
    return-void
.end method

.method public final setResultExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 612
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    #@3
    .line 613
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    #@5
    iput-object p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@7
    .line 611
    return-void
.end method
