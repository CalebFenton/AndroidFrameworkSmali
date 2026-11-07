.class public Landroid/telecom/Logging/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/SessionManager$ICurrentThreadId;,
        Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;,
        Landroid/telecom/Logging/SessionManager$ISessionListener;,
        Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_SESSION_TIMEOUT_MS:J = 0x7530L

.field private static final blacklist LOGGING_TAG:Ljava/lang/String; = "Logging"

.field private static final blacklist SESSION_ID_ROLLOVER_THRESHOLD:J = 0x40000L

.field private static final blacklist TIMEOUTS_PREFIX:Ljava/lang/String; = "telecom."


# instance fields
.field private final blacklist mCleanStaleSessions:Ljava/lang/Runnable;

.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

.field private final blacklist mSessionCleanupHandler:Landroid/os/Handler;

.field private blacklist mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

.field private final blacklist mSessionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/SessionManager$ISessionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sCodeEntryCounter:I


# direct methods
.method public static synthetic blacklist $r8$lambda$ShRbsmqP5ukuHE4CQ22dtsB1994(Landroid/telecom/Logging/SessionManager;)J
    .registers 3

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->lambda$new$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic blacklist $r8$lambda$qM999J409cPNGRVH-qVvIoe3kAo(Landroid/telecom/Logging/SessionManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->lambda$new$1()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    .line 81
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    .line 111
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    .line 112
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "cleanStaleSessionsRunnable"    # Ljava/lang/Runnable;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    .line 81
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    .line 116
    iput-object p1, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    .line 117
    return-void
.end method

.method private blacklist cleanupSessionTreeAndNotify(Landroid/telecom/Logging/Session;)V
    .registers 10
    .param p1, "session"    # Landroid/telecom/Logging/Session;

    .line 367
    if-nez p1, :cond_3

    return-void

    .line 368
    :cond_3
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->endSessionImprovements()Z

    move-result v0

    if-nez v0, :cond_d

    .line 369
    invoke-direct {p0, p1}, Landroid/telecom/Logging/SessionManager;->endParentSessionsRecursive(Landroid/telecom/Logging/Session;)V

    .line 370
    return-void

    .line 372
    :cond_d
    move-object v0, p1

    .line 375
    .local v0, "currSession":Landroid/telecom/Logging/Session;
    :goto_e
    if-eqz v0, :cond_7b

    .line 376
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getChildSessions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_7a

    .line 380
    :cond_21
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    .line 381
    .local v1, "parentSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 386
    const/4 v2, 0x0

    if-nez v1, :cond_32

    .line 387
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_32
    if-eqz v1, :cond_3c

    .line 388
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_3a
    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 389
    .local v3, "reportSessionComplete":Z
    :goto_3d
    if-eqz v1, :cond_42

    invoke-virtual {v1, v0}, Landroid/telecom/Logging/Session;->removeChild(Landroid/telecom/Logging/Session;)V

    .line 390
    :cond_42
    if-eqz v3, :cond_78

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 392
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 393
    .local v4, "fullSessionTimeMs":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "END_SESSION (dur: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "Logging"

    invoke-static {v7, v6, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4, v5}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    .line 397
    .end local v4    # "fullSessionTimeMs":J
    :cond_78
    move-object v0, v1

    .line 398
    .end local v1    # "parentSession":Landroid/telecom/Logging/Session;
    .end local v3    # "reportSessionComplete":Z
    goto :goto_e

    .line 378
    :cond_7a
    :goto_7a
    return-void

    .line 399
    :cond_7b
    return-void
.end method

.method private blacklist endParentSessionsRecursive(Landroid/telecom/Logging/Session;)V
    .registers 8
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;

    .line 405
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getChildSessions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_78

    .line 408
    :cond_11
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 409
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    if-eqz v0, :cond_38

    .line 410
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/telecom/Logging/Session;->removeChild(Landroid/telecom/Logging/Session;)V

    .line 414
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 417
    .local v1, "fullSessionTimeMs":J
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    .line 419
    .end local v1    # "fullSessionTimeMs":J
    :cond_34
    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->endParentSessionsRecursive(Landroid/telecom/Logging/Session;)V

    goto :goto_77

    .line 424
    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 425
    .restart local v1    # "fullSessionTimeMs":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END_SESSION (dur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 426
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 425
    const-string v5, "Logging"

    invoke-static {v5, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v3

    if-nez v3, :cond_77

    .line 428
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    .line 431
    .end local v1    # "fullSessionTimeMs":J
    :cond_77
    :goto_77
    return-void

    .line 406
    .end local v0    # "parentSession":Landroid/telecom/Logging/Session;
    :cond_78
    :goto_78
    return-void
.end method

.method private blacklist getBase64Encoding(I)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # I

    .line 466
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 467
    .local v1, "idByteArray":[B
    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 468
    .end local v1    # "idByteArray":[B
    .local v0, "idByteArray":[B
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getCallingThreadId()I
    .registers 2

    .line 472
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ICurrentThreadId;->get()I

    move-result v0

    return v0
.end method

.method private blacklist getCleanupTimeout(Landroid/content/Context;)J
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 525
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 526
    .local v0, "cr":Landroid/content/ContentResolver;
    nop

    .line 528
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 526
    const-string/jumbo v2, "telecom.stale_session_cleanup_timeout_millis"

    const-wide/16 v3, 0x7530

    invoke-static {v0, v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v1

    return-wide v1
.end method

.method private declared-synchronized blacklist getNextSessionID()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 453
    :try_start_1
    iget v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 454
    .local v0, "nextId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x40000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_25

    .line 455
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->restartSessionCounter()V

    .line 456
    iget v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .line 458
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telecom/Logging/SessionManager;->getBase64Encoding(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v1

    .line 452
    .end local v0    # "nextId":Ljava/lang/Integer;
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private blacklist getSessionCleanupTimeoutMs()J
    .registers 3

    .line 120
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic blacklist lambda$new$0()J
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 85
    const-wide/16 v0, 0x7530

    return-wide v0

    .line 87
    :cond_7
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->getCleanupTimeout(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic blacklist lambda$new$1()V
    .registers 3

    .line 111
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telecom/Logging/SessionManager;->cleanupStaleSessions(J)V

    return-void
.end method

.method private blacklist notifySessionCompleteListeners(Ljava/lang/String;J)V
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "sessionTimeMs"    # J

    .line 434
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    monitor-enter v0

    .line 435
    :try_start_3
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/SessionManager$ISessionListener;

    .line 436
    .local v2, "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    invoke-interface {v2, p1, p2, p3}, Landroid/telecom/Logging/SessionManager$ISessionListener;->sessionComplete(Ljava/lang/String;J)V

    .line 437
    .end local v2    # "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    goto :goto_9

    .line 438
    :cond_19
    monitor-exit v0

    .line 439
    return-void

    .line 438
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private blacklist resetStaleSessionTimer()V
    .registers 6

    .line 124
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->endSessionImprovements()Z

    move-result v0

    if-nez v0, :cond_a

    .line 125
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimerOld()V

    .line 126
    return-void

    .line 129
    :cond_a
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    if-nez v0, :cond_f

    return-void

    .line 130
    :cond_f
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 131
    :try_start_12
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 132
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    .line 133
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v3

    .line 132
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    :cond_27
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private declared-synchronized blacklist resetStaleSessionTimerOld()V
    .registers 5

    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 140
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    .line 142
    monitor-exit p0

    return-void

    .line 138
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private declared-synchronized blacklist restartSessionCounter()V
    .registers 2

    monitor-enter p0

    .line 462
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 463
    monitor-exit p0

    return-void

    .line 461
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist cancelSubsession(Landroid/telecom/Logging/Session;)V
    .registers 4
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;

    monitor-enter p0

    .line 291
    if-nez p1, :cond_5

    .line 292
    monitor-exit p0

    return-void

    .line 295
    :cond_5
    const-wide/16 v0, -0x1

    :try_start_7
    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 296
    invoke-direct {p0, p1}, Landroid/telecom/Logging/SessionManager;->cleanupSessionTreeAndNotify(Landroid/telecom/Logging/Session;)V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    .line 297
    monitor-exit p0

    return-void

    .line 290
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    .end local p1    # "subsession":Landroid/telecom/Logging/Session;
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist cleanupStaleSessions(J)V
    .registers 13
    .param p1, "timeoutMs"    # J

    monitor-enter p0

    .line 491
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stale Sessions Cleaned:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "logMessage":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 493
    .local v1, "isSessionsStale":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 498
    .local v2, "currentTimeMs":J
    iget-object v4, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 499
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;>;"
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 500
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 501
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session;

    .line 502
    .local v6, "session":Landroid/telecom/Logging/Session;
    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v7

    sub-long v7, v2, v7

    .line 503
    .local v7, "runTime":J
    cmp-long v9, v7, p1

    if-lez v9, :cond_51

    .line 504
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 505
    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v9, "["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    const-string/jumbo v9, "ms] "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->printFullSessionTree()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const/4 v1, 0x1

    .line 512
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    .end local v6    # "session":Landroid/telecom/Logging/Session;
    .end local v7    # "runTime":J
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_51
    goto :goto_17

    .line 513
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;>;"
    :cond_52
    const/4 v4, 0x0

    if-eqz v1, :cond_61

    .line 514
    const-string v5, "Logging"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6a

    .line 516
    :cond_61
    const-string v5, "Logging"

    const-string v6, "No stale logging sessions needed to be cleaned..."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_6c

    .line 518
    :goto_6a
    monitor-exit p0

    return-void

    .line 490
    .end local v0    # "logMessage":Ljava/lang/StringBuilder;
    .end local v1    # "isSessionsStale":Z
    .end local v2    # "currentTimeMs":J
    .end local p1    # "timeoutMs":J
    :catchall_6c
    move-exception p1

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public declared-synchronized blacklist continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .registers 8
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;
    .param p2, "shortMethodName"    # Ljava/lang/String;

    monitor-enter p0

    .line 305
    if-nez p1, :cond_5

    .line 306
    monitor-exit p0

    return-void

    .line 308
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    .line 309
    invoke-virtual {p1, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->setExecutionStartTimeMs(J)V

    .line 311
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 312
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 313
    const-string v2, "Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log.continueSession was called with no session active for method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_6e

    .line 315
    monitor-exit p0

    return-void

    .line 318
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_35
    :try_start_35
    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v2

    if-nez v2, :cond_52

    .line 320
    const-string v2, "Logging"

    const-string v3, "CONTINUE_SUBSESSION"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6c

    .line 322
    :cond_52
    const-string v2, "Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONTINUE_SUBSESSION (Invisible Subsession) with Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_35 .. :try_end_6c} :catchall_6e

    .line 325
    :goto_6c
    monitor-exit p0

    return-void

    .line 304
    .end local v0    # "parentSession":Landroid/telecom/Logging/Session;
    .end local p1    # "subsession":Landroid/telecom/Logging/Session;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1
.end method

.method public blacklist createSubsession()Landroid/telecom/Logging/Session;
    .registers 2

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist createSubsession(Z)Landroid/telecom/Logging/Session;
    .registers 13
    .param p1, "isStartedFromActiveSession"    # Z

    monitor-enter p0

    .line 240
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 241
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 242
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 243
    const-string v3, "Logging"

    const-string v4, "Log.createSubsession was called with no session active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_54

    .line 245
    monitor-exit p0

    const/4 v2, 0x0

    return-object v2

    .line 248
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_20
    :try_start_20
    new-instance v3, Landroid/telecom/Logging/Session;

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getNextChildId()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 250
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    move v8, p1

    .end local p1    # "isStartedFromActiveSession":Z
    .local v8, "isStartedFromActiveSession":Z
    invoke-direct/range {v3 .. v10}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 251
    .local v3, "newSubsession":Landroid/telecom/Logging/Session;
    invoke-virtual {v1, v3}, Landroid/telecom/Logging/Session;->addChild(Landroid/telecom/Logging/Session;)V

    .line 252
    invoke-virtual {v3, v1}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 254
    if-nez v8, :cond_49

    .line 255
    const-string p1, "Logging"

    const-string v4, "CREATE_SUBSESSION"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_52

    .line 257
    :cond_49
    const-string p1, "Logging"

    const-string v4, "CREATE_SUBSESSION (Invisible subsession)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_20 .. :try_end_52} :catchall_54

    .line 260
    :goto_52
    monitor-exit p0

    return-object v3

    .line 239
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local v3    # "newSubsession":Landroid/telecom/Logging/Session;
    .end local v8    # "isStartedFromActiveSession":Z
    :catchall_54
    move-exception v0

    move-object p1, v0

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_54

    throw p1
.end method

.method public declared-synchronized blacklist endSession()V
    .registers 8

    monitor-enter p0

    .line 332
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 333
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 334
    .local v1, "completedSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 335
    const-string v3, "Logging"

    const-string v4, "Log.endSession was called with no session active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_9e

    .line 336
    monitor-exit p0

    return-void

    .line 339
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 340
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-nez v3, :cond_51

    .line 341
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SUBSESSION (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 342
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mS)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 341
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_75

    .line 344
    :cond_51
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SUBSESSION (Invisible Subsession) (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 345
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 344
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :goto_75
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 350
    .local v2, "parentSession":Landroid/telecom/Logging/Session;
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-direct {p0, v1}, Landroid/telecom/Logging/SessionManager;->cleanupSessionTreeAndNotify(Landroid/telecom/Logging/Session;)V

    .line 354
    if-eqz v2, :cond_9c

    invoke-virtual {v2}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v3

    if-nez v3, :cond_9c

    .line 355
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 356
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9c
    .catchall {:try_start_1f .. :try_end_9c} :catchall_9e

    .line 358
    :cond_9c
    monitor-exit p0

    return-void

    .line 331
    .end local v0    # "threadId":I
    .end local v1    # "completedSession":Landroid/telecom/Logging/Session;
    .end local v2    # "parentSession":Landroid/telecom/Logging/Session;
    :catchall_9e
    move-exception v0

    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v0
.end method

.method public declared-synchronized blacklist getExternalSession()Landroid/telecom/Logging/Session$Info;
    .registers 2

    monitor-enter p0

    .line 264
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Landroid/telecom/Logging/SessionManager;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 264
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .registers 7
    .param p1, "ownerInfo"    # Ljava/lang/String;

    monitor-enter p0

    .line 275
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 276
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 277
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    if-nez v1, :cond_20

    .line 278
    const-string v2, "Logging"

    const-string v3, "Log.getExternalSession was called with no session active."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_26

    .line 280
    monitor-exit p0

    const/4 v2, 0x0

    return-object v2

    .line 282
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_20
    :try_start_20
    invoke-virtual {v1, p1}, Landroid/telecom/Logging/Session;->getExternalInfo(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object v2

    .line 274
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local p1    # "ownerInfo":Ljava/lang/String;
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public blacklist getSessionId()Ljava/lang/String;
    .registers 3

    .line 442
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    .line 443
    .local v0, "currentSession":Landroid/telecom/Logging/Session;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, ""

    :goto_19
    return-object v1
.end method

.method public declared-synchronized blacklist printActiveSessions()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 481
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, "message":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 483
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session;

    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->printFullSessionTree()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    goto :goto_10

    .line 486
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-object v1

    .line 480
    .end local v0    # "message":Ljava/lang/StringBuilder;
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public blacklist registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .registers 4
    .param p1, "l"    # Landroid/telecom/Logging/SessionManager$ISessionListener;

    .line 447
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    monitor-enter v0

    .line 448
    :try_start_3
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    monitor-exit v0

    .line 450
    return-void

    .line 449
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    iput-object p1, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method public declared-synchronized blacklist startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .registers 14
    .param p1, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .param p2, "shortMethodName"    # Ljava/lang/String;

    monitor-enter p0

    .line 189
    if-nez p1, :cond_5

    .line 190
    monitor-exit p0

    return-void

    .line 193
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 194
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 195
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 198
    const-string v3, "Logging"

    const-string/jumbo v4, "trying to start an external session with a session already active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_68

    .line 200
    monitor-exit p0

    return-void

    .line 204
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_24
    :try_start_24
    new-instance v3, Landroid/telecom/Logging/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v10, p1, Landroid/telecom/Logging/Session$Info;->ownerInfo:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v10}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 209
    .local v3, "externalSession":Landroid/telecom/Logging/Session;
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 212
    iget-object v4, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v4, "Logging"

    const-string v5, "START_EXTERNAL_SESSION"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 216
    .local v2, "childSession":Landroid/telecom/Logging/Session;
    invoke-virtual {p0, v2, p2}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_24 .. :try_end_66} :catchall_68

    .line 217
    monitor-exit p0

    return-void

    .line 188
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local v2    # "childSession":Landroid/telecom/Logging/Session;
    .end local v3    # "externalSession":Landroid/telecom/Logging/Session;
    .end local p1    # "sessionInfo":Landroid/telecom/Logging/Session$Info;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    :catchall_68
    move-exception v0

    move-object p1, v0

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_68

    throw p1
.end method

.method public declared-synchronized blacklist startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/telecom/Logging/Session$Info;
    .param p2, "shortMethodName"    # Ljava/lang/String;
    .param p3, "callerIdentification"    # Ljava/lang/String;

    monitor-enter p0

    .line 152
    if-nez p1, :cond_7

    .line 153
    :try_start_3
    invoke-virtual {p0, p2, p3}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 155
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 157
    :goto_a
    monitor-exit p0

    return-void

    .line 151
    .end local p1    # "info":Landroid/telecom/Logging/Session$Info;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    .end local p3    # "callerIdentification":Ljava/lang/String;
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized blacklist startSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "shortMethodName"    # Ljava/lang/String;
    .param p2, "callerIdentification"    # Ljava/lang/String;

    monitor-enter p0

    .line 165
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    .line 166
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 167
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 170
    .local v1, "activeSession":Landroid/telecom/Logging/Session;
    if-eqz v1, :cond_20

    .line 171
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 172
    .local v2, "childSession":Landroid/telecom/Logging/Session;
    invoke-virtual {p0, v2, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_46

    .line 173
    monitor-exit p0

    return-void

    .line 175
    .end local v2    # "childSession":Landroid/telecom/Logging/Session;
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_20
    :try_start_20
    new-instance v2, Landroid/telecom/Logging/Session;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getNextSessionID()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v9, p2

    .end local p1    # "shortMethodName":Ljava/lang/String;
    .end local p2    # "callerIdentification":Ljava/lang/String;
    .local v4, "shortMethodName":Ljava/lang/String;
    .local v9, "callerIdentification":Ljava/lang/String;
    invoke-direct/range {v2 .. v9}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 177
    .local v2, "newSession":Landroid/telecom/Logging/Session;
    iget-object p1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string p1, "Logging"

    const-string p2, "START_SESSION"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, v3}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_46

    .line 179
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "threadId":I
    .end local v1    # "activeSession":Landroid/telecom/Logging/Session;
    .end local v2    # "newSession":Landroid/telecom/Logging/Session;
    .end local v4    # "shortMethodName":Ljava/lang/String;
    .end local v9    # "callerIdentification":Ljava/lang/String;
    :catchall_46
    move-exception v0

    move-object p1, v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_46

    throw p1
.end method
