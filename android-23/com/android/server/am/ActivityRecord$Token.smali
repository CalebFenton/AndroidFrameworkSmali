.class Lcom/android/server/am/ActivityRecord$Token;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p0, "token"    # Lcom/android/server/am/ActivityRecord$Token;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 334
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    #@3
    .line 335
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    #@a
    .line 336
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    .line 334
    return-void
.end method

.method private static final tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p0, "token"    # Lcom/android/server/am/ActivityRecord$Token;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 400
    if-nez p0, :cond_0

    #@3
    .line 401
    return-object v2

    #@4
    .line 403
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/am/ActivityRecord;

    #@c
    .line 404
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@e
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@10
    if-nez v1, :cond_2

    #@12
    .line 405
    :cond_1
    return-object v2

    #@13
    .line 404
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@15
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 407
    return-object v0
.end method


# virtual methods
.method public getKeyDispatchingTimeout()J
    .locals 6

    #@0
    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v2

    #@3
    .line 390
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    .line 391
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    #@9
    .line 392
    const-wide/16 v4, 0x0

    #@b
    monitor-exit v2

    #@c
    return-wide v4

    #@d
    .line 394
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    #@10
    move-result-object v0

    #@11
    .line 395
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/am/ActivityRecord;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result-wide v4

    #@15
    monitor-exit v2

    #@16
    return-wide v4

    #@17
    .line 389
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    #@18
    monitor-exit v2

    #@19
    throw v1
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;)Z
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 376
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3
    monitor-enter v5

    #@4
    .line 377
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v3

    #@8
    .line 378
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_0

    #@a
    monitor-exit v5

    #@b
    .line 379
    return v4

    #@c
    .line 381
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    #@f
    move-result-object v2

    #@10
    .line 382
    .local v2, "anrActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    #@12
    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    :goto_0
    monitor-exit v5

    #@15
    .line 384
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    #@17
    move-object v5, p1

    #@18
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    return v0

    #@1d
    .line 382
    :cond_1
    const/4 v1, 0x0

    #@1e
    .local v1, "anrApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_0

    #@1f
    .line 376
    .end local v1    # "anrApp":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "anrActivity":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v5

    #@21
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 413
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Token{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 414
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 415
    const/16 v1, 0x20

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 416
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    #@1f
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    .line 417
    const/16 v1, 0x7d

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    return-object v1
.end method

.method public windowsDrawn()V
    .locals 3

    #@0
    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v2

    #@3
    .line 342
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    #@6
    move-result-object v0

    #@7
    .line 343
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@9
    .line 344
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsDrawnLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 340
    return-void

    #@e
    .line 341
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    #@f
    monitor-exit v2

    #@10
    throw v1
.end method

.method public windowsGone()V
    .locals 3

    #@0
    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v2

    #@3
    .line 362
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    #@6
    move-result-object v0

    #@7
    .line 363
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@9
    .line 365
    const/4 v1, 0x0

    #@a
    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 366
    return-void

    #@e
    :cond_0
    monitor-exit v2

    #@f
    .line 360
    return-void

    #@10
    .line 361
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public windowsVisible()V
    .locals 3

    #@0
    .prologue
    .line 351
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v2

    #@3
    .line 352
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    #@6
    move-result-object v0

    #@7
    .line 353
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@9
    .line 354
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsVisibleLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 350
    return-void

    #@e
    .line 351
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    #@f
    monitor-exit v2

    #@10
    throw v1
.end method
