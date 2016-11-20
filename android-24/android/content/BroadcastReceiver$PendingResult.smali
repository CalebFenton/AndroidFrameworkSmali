.class public Landroid/content/BroadcastReceiver$PendingResult;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingResult"
.end annotation


# static fields
.field public static final TYPE_COMPONENT:I = 0x0

.field public static final TYPE_REGISTERED:I = 0x1

.field public static final TYPE_UNREGISTERED:I = 0x2


# instance fields
.field mAbortBroadcast:Z

.field mFinished:Z

.field final mFlags:I

.field final mInitialStickyHint:Z

.field final mOrderedHint:Z

.field mResultCode:I

.field mResultData:Ljava/lang/String;

.field mResultExtras:Landroid/os/Bundle;

.field final mSendingUser:I

.field final mToken:Landroid/os/IBinder;

.field final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Ljava/lang/String;
    .param p3, "resultExtras"    # Landroid/os/Bundle;
    .param p4, "type"    # I
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "userId"    # I
    .param p9, "flags"    # I

    #@0
    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 252
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    #@5
    .line 253
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    #@7
    .line 254
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@9
    .line 255
    iput p4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    #@b
    .line 256
    iput-boolean p5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    #@d
    .line 257
    iput-boolean p6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    #@f
    .line 258
    iput-object p7, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    #@11
    .line 259
    iput p8, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    #@13
    .line 260
    iput p9, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    #@15
    .line 251
    return-void
.end method


# virtual methods
.method public final abortBroadcast()V
    .locals 1

    #@0
    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    #@3
    .line 351
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    #@6
    .line 349
    return-void
.end method

.method checkSynchronousHint()V
    .locals 3

    #@0
    .prologue
    .line 442
    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    #@2
    if-nez v1, :cond_0

    #@4
    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 443
    :cond_0
    return-void

    #@9
    .line 445
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    .line 446
    const-string/jumbo v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    #@e
    .line 445
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    .line 447
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@14
    .line 448
    const-string/jumbo v1, "BroadcastReceiver"

    #@17
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 438
    return-void
.end method

.method public final clearAbortBroadcast()V
    .locals 1

    #@0
    .prologue
    .line 360
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    #@3
    .line 359
    return-void
.end method

.method public final finish()V
    .locals 3

    #@0
    .prologue
    .line 368
    iget v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    #@2
    if-nez v1, :cond_2

    #@4
    .line 369
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v0

    #@8
    .line 370
    .local v0, "mgr":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/app/QueuedWork;->hasPendingWork()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 381
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@11
    move-result-object v1

    #@12
    new-instance v2, Landroid/content/BroadcastReceiver$PendingResult$1;

    #@14
    invoke-direct {v2, p0, v0}, Landroid/content/BroadcastReceiver$PendingResult$1;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/app/IActivityManager;)V

    #@17
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@1a
    .line 367
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 391
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    #@1e
    goto :goto_0

    #@1f
    .line 393
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_2
    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    #@21
    if-eqz v1, :cond_0

    #@23
    iget v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    #@25
    const/4 v2, 0x2

    #@26
    if-eq v1, v2, :cond_0

    #@28
    .line 396
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@2b
    move-result-object v0

    #@2c
    .line 397
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    #@2f
    goto :goto_0
.end method

.method public final getAbortBroadcast()Z
    .locals 1

    #@0
    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    #@2
    return v0
.end method

.method public final getResultCode()I
    .locals 1

    #@0
    .prologue
    .line 279
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    #@2
    return v0
.end method

.method public final getResultData()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getResultExtras(Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "makeMap"    # Z

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@2
    .line 318
    .local v0, "e":Landroid/os/Bundle;
    if-nez p1, :cond_0

    #@4
    return-object v0

    #@5
    .line 319
    :cond_0
    if-nez v0, :cond_1

    #@7
    new-instance v0, Landroid/os/Bundle;

    #@9
    .end local v0    # "e":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@c
    .restart local v0    # "e":Landroid/os/Bundle;
    iput-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@e
    .line 320
    :cond_1
    return-object v0
.end method

.method public getSendingUserId()I
    .locals 1

    #@0
    .prologue
    .line 435
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    #@2
    return v0
.end method

.method public sendFinished(Landroid/app/IActivityManager;)V
    .locals 8
    .param p1, "am"    # Landroid/app/IActivityManager;

    #@0
    .prologue
    .line 410
    monitor-enter p0

    #@1
    .line 411
    :try_start_0
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 412
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Broadcast already finished"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 410
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 414
    :cond_0
    const/4 v0, 0x1

    #@12
    :try_start_1
    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .line 417
    :try_start_2
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 418
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    #@1e
    .line 420
    :cond_1
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 421
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    #@24
    iget v2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    #@26
    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    #@28
    iget-object v4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@2a
    .line 422
    iget-boolean v5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    #@2c
    iget v6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    #@2e
    move-object v0, p1

    #@2f
    .line 421
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    :goto_0
    monitor-exit p0

    #@33
    .line 409
    return-void

    #@34
    .line 426
    :cond_2
    :try_start_3
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    #@36
    iget v6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    #@38
    const/4 v2, 0x0

    #@39
    const/4 v3, 0x0

    #@3a
    const/4 v4, 0x0

    #@3b
    const/4 v5, 0x0

    #@3c
    move-object v0, p1

    #@3d
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    goto :goto_0

    #@41
    .line 428
    :catch_0
    move-exception v7

    #@42
    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 404
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@9
    .line 402
    :cond_0
    return-void
.end method

.method public final setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    #@3
    .line 330
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    #@5
    .line 331
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    #@7
    .line 332
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@9
    .line 328
    return-void
.end method

.method public final setResultCode(I)V
    .locals 0
    .param p1, "code"    # I

    #@0
    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    #@3
    .line 270
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    #@5
    .line 268
    return-void
.end method

.method public final setResultData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    #@3
    .line 289
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    #@5
    .line 287
    return-void
.end method

.method public final setResultExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    #@3
    .line 308
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    #@5
    .line 306
    return-void
.end method
