.class public abstract Landroid/content/BroadcastReceiver;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/BroadcastReceiver$PendingResult;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_STORE_ENABLED:Z


# instance fields
.field private greylist-max-o mDebugUnregister:Z

.field private greylist mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_STORE_ENABLED()Z
    .registers 1

    sget-boolean v0, Landroid/content/BroadcastReceiver;->DEBUG_STORE_ENABLED:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    invoke-static {}, Lcom/android/internal/os/Flags;->debugStoreEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/content/BroadcastReceiver;->DEBUG_STORE_ENABLED:Z

    .line 62
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    return-void
.end method


# virtual methods
.method public final whitelist abortBroadcast()V
    .registers 3

    .line 643
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 644
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 645
    return-void
.end method

.method greylist-max-o checkSynchronousHint()V
    .registers 4

    .line 761
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_23

    .line 768
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    if-eqz v0, :cond_11

    goto :goto_22

    .line 771
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 773
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    return-void

    .line 769
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_22
    :goto_22
    return-void

    .line 762
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call while result is not pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist clearAbortBroadcast()V
    .registers 3

    .line 652
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_9

    .line 653
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 655
    :cond_9
    return-void
.end method

.method public final whitelist getAbortBroadcast()Z
    .registers 2

    .line 625
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final whitelist getDebugUnregister()Z
    .registers 2

    .line 757
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    return v0
.end method

.method public final greylist getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;
    .registers 2

    .line 696
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    return-object v0
.end method

.method public final whitelist getResultCode()I
    .registers 2

    .line 513
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final whitelist getResultData()Ljava/lang/String;
    .registers 2

    .line 543
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final whitelist getResultExtras(Z)Landroid/os/Bundle;
    .registers 5
    .param p1, "makeMap"    # Z

    .line 580
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-nez v0, :cond_6

    .line 581
    const/4 v0, 0x0

    return-object v0

    .line 583
    :cond_6
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 584
    .local v0, "e":Landroid/os/Bundle;
    if-nez p1, :cond_d

    return-object v0

    .line 585
    :cond_d
    if-nez v0, :cond_19

    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    iput-object v2, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 586
    :cond_19
    return-object v0
.end method

.method public final whitelist getSendingUser()Landroid/os/UserHandle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 710
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSendingUserId()I
    .registers 2

    .line 715
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    return v0
.end method

.method public whitelist getSentFromPackage()Ljava/lang/String;
    .registers 2

    .line 735
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mSentFromPackage:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getSentFromUid()I
    .registers 2

    .line 725
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mSentFromUid:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public final whitelist goAsync()Landroid/content/BroadcastReceiver$PendingResult;
    .registers 6

    .line 444
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 445
    .local v0, "res":Landroid/content/BroadcastReceiver$PendingResult;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 446
    sget-boolean v1, Landroid/content/BroadcastReceiver;->DEBUG_STORE_ENABLED:Z

    if-eqz v1, :cond_10

    .line 447
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/os/DebugStore;->recordGoAsync(I)V

    .line 449
    :cond_10
    if-eqz v0, :cond_3d

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 450
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/BroadcastReceiver$PendingResult;->mReceiverClassName:Ljava/lang/String;

    .line 451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver#goAsync#ClassName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/BroadcastReceiver$PendingResult;->mReceiverClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 456
    :cond_3d
    return-object v0
.end method

.method public final whitelist isInitialStickyBroadcast()Z
    .registers 2

    .line 672
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final whitelist isOrderedBroadcast()Z
    .registers 2

    .line 662
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public abstract whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public whitelist peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 7
    .param p1, "myContext"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;

    .line 474
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 475
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    .line 477
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_5
    invoke-virtual {p2, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 478
    nop

    .line 479
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 478
    invoke-virtual {p2, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-interface {v0, p2, v2, v3}, Landroid/app/IActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_19} :catch_1b

    move-object v1, v2

    .line 481
    goto :goto_1c

    .line 480
    :catch_1b
    move-exception v2

    .line 482
    :goto_1c
    return-object v1
.end method

.method public final whitelist setDebugUnregister(Z)V
    .registers 2
    .param p1, "debug"    # Z

    .line 750
    iput-boolean p1, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    .line 751
    return-void
.end method

.method public final whitelist setOrderedHint(Z)V
    .registers 2
    .param p1, "isOrdered"    # Z

    .line 681
    return-void
.end method

.method public final greylist setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 2
    .param p1, "result"    # Landroid/content/BroadcastReceiver$PendingResult;

    .line 688
    iput-object p1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 689
    return-void
.end method

.method public final whitelist setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 612
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 613
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 614
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p2, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p3, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 616
    return-void
.end method

.method public final whitelist setResultCode(I)V
    .registers 3
    .param p1, "code"    # I

    .line 503
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 504
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 505
    return-void
.end method

.method public final whitelist setResultData(Ljava/lang/String;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .line 532
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 533
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public final whitelist setResultExtras(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 564
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 565
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 566
    return-void
.end method
