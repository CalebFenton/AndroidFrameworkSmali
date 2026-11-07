.class public final Landroid/media/MediaTranscodingManager$TranscodingSession;
.super Ljava/lang/Object;
.source "MediaTranscodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranscodingSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;,
        Landroid/media/MediaTranscodingManager$TranscodingSession$TranscodingSessionErrorCode;,
        Landroid/media/MediaTranscodingManager$TranscodingSession$Result;,
        Landroid/media/MediaTranscodingManager$TranscodingSession$Status;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_DROPPED_BY_SERVICE:I = 0x1

.field public static final whitelist ERROR_NONE:I = 0x0

.field public static final whitelist ERROR_SERVICE_DIED:I = 0x2

.field public static final whitelist RESULT_CANCELED:I = 0x4

.field public static final whitelist RESULT_ERROR:I = 0x3

.field public static final whitelist RESULT_NONE:I = 0x1

.field public static final whitelist RESULT_SUCCESS:I = 0x2

.field public static final whitelist STATUS_FINISHED:I = 0x3

.field public static final whitelist STATUS_PAUSED:I = 0x4

.field public static final whitelist STATUS_PENDING:I = 0x1

.field public static final whitelist STATUS_RUNNING:I = 0x2


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mHasRetried:Z

.field private blacklist mListener:Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;

.field private blacklist mListenerExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mManager:Landroid/media/MediaTranscodingManager;

.field private blacklist mProgress:I

.field private blacklist mProgressUpdateExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mProgressUpdateInterval:I

.field private blacklist mProgressUpdateListener:Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;

.field private final blacklist mRequest:Landroid/media/MediaTranscodingManager$TranscodingRequest;

.field private blacklist mResult:I

.field private blacklist mSessionId:I

.field private blacklist mStatus:I


# direct methods
.method public static synthetic blacklist $r8$lambda$8GGMqXRymWrNLypeBfq2XYKlqv0(Landroid/media/MediaTranscodingManager$TranscodingSession;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->lambda$cancel$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JTFXjXjEuCcmgPcDxcPkgHoFGUw(Landroid/media/MediaTranscodingManager$TranscodingSession;Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaTranscodingManager$TranscodingSession;->lambda$updateProgress$1(Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/MediaTranscodingManager$TranscodingSession;)Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mListener:Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerExecutor(Landroid/media/MediaTranscodingManager$TranscodingSession;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mretryInternal(Landroid/media/MediaTranscodingManager$TranscodingSession;Z)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingSession;->retryInternal(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateProgress(Landroid/media/MediaTranscodingManager$TranscodingSession;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingSession;->updateProgress(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateStatus(Landroid/media/MediaTranscodingManager$TranscodingSession;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingSession;->updateStatus(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateStatusAndResult(Landroid/media/MediaTranscodingManager$TranscodingSession;III)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaTranscodingManager$TranscodingSession;->updateStatusAndResult(III)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/MediaTranscodingManager;Landroid/media/MediaTranscodingManager$TranscodingRequest;Landroid/media/TranscodingSessionParcel;Ljava/util/concurrent/Executor;Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;)V
    .registers 8

    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1344
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mSessionId:I

    .line 1346
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1347
    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgressUpdateExecutor:Ljava/util/concurrent/Executor;

    .line 1349
    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgressUpdateListener:Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;

    const/4 v0, 0x0

    .line 1351
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgress:I

    .line 1353
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgressUpdateInterval:I

    const/4 v1, 0x1

    .line 1355
    iput v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mStatus:I

    .line 1357
    iput v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mResult:I

    .line 1359
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mErrorCode:I

    .line 1361
    iput-boolean v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mHasRetried:Z

    .line 1372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1373
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1374
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1375
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1376
    iput-object p1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mManager:Landroid/media/MediaTranscodingManager;

    .line 1377
    iget p1, p3, Landroid/media/TranscodingSessionParcel;->sessionId:I

    iput p1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mSessionId:I

    .line 1378
    iput-object p4, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 1379
    iput-object p5, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mListener:Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;

    .line 1380
    iput-object p2, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mRequest:Landroid/media/MediaTranscodingManager$TranscodingRequest;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaTranscodingManager;Landroid/media/MediaTranscodingManager$TranscodingRequest;Landroid/media/TranscodingSessionParcel;Ljava/util/concurrent/Executor;Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;Landroid/media/MediaTranscodingManager-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaTranscodingManager$TranscodingSession;-><init>(Landroid/media/MediaTranscodingManager;Landroid/media/MediaTranscodingManager$TranscodingRequest;Landroid/media/TranscodingSessionParcel;Ljava/util/concurrent/Executor;Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$cancel$0()V
    .registers 2

    .line 1505
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mListener:Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;

    invoke-interface {v0, p0}, Landroid/media/MediaTranscodingManager$OnTranscodingFinishedListener;->onTranscodingFinished(Landroid/media/MediaTranscodingManager$TranscodingSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateProgress$1(Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;I)V
    .registers 3

    .line 1661
    invoke-interface {p1, p0, p2}, Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;->onProgressUpdate(Landroid/media/MediaTranscodingManager$TranscodingSession;I)V

    return-void
.end method

.method private blacklist retryInternal(Z)Z
    .registers 10

    .line 1441
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1442
    :try_start_3
    iget v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_74

    const/4 v3, 0x2

    if-eq v1, v3, :cond_74

    .line 1447
    iget-boolean v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mHasRetried:Z

    if-nez v1, :cond_6c

    .line 1452
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mManager:Landroid/media/MediaTranscodingManager;

    invoke-static {v1}, Landroid/media/MediaTranscodingManager;->-$$Nest$mgetTranscodingClient(Landroid/media/MediaTranscodingManager;)Landroid/media/ITranscodingClient;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_23

    .line 1454
    const-string p0, "MediaTranscodingManager"

    const-string p1, "Service rebooting. Try again later"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    monitor-exit v0

    return v3

    :catchall_21
    move-exception p0

    goto :goto_7c

    .line 1458
    :cond_23
    iget-object v4, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mManager:Landroid/media/MediaTranscodingManager;

    invoke-static {v4}, Landroid/media/MediaTranscodingManager;->-$$Nest$fgetmPendingTranscodingSessions(Landroid/media/MediaTranscodingManager;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_21

    .line 1461
    :try_start_2a
    new-instance v5, Landroid/media/TranscodingSessionParcel;

    invoke-direct {v5}, Landroid/media/TranscodingSessionParcel;-><init>()V

    .line 1462
    iget-object v6, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mRequest:Landroid/media/MediaTranscodingManager$TranscodingRequest;

    iget-object v7, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mManager:Landroid/media/MediaTranscodingManager;

    invoke-static {v7}, Landroid/media/MediaTranscodingManager;->-$$Nest$fgetmContext(Landroid/media/MediaTranscodingManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/media/MediaTranscodingManager$TranscodingRequest;->-$$Nest$mwriteToParcel(Landroid/media/MediaTranscodingManager$TranscodingRequest;Landroid/content/Context;)Landroid/media/TranscodingRequestParcel;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Landroid/media/ITranscodingClient;->submitRequest(Landroid/media/TranscodingRequestParcel;Landroid/media/TranscodingSessionParcel;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1469
    iget v1, v5, Landroid/media/TranscodingSessionParcel;->sessionId:I

    iput v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mSessionId:I

    .line 1471
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mManager:Landroid/media/MediaTranscodingManager;

    invoke-static {v1}, Landroid/media/MediaTranscodingManager;->-$$Nest$fgetmPendingTranscodingSessions(Landroid/media/MediaTranscodingManager;)Ljava/util/HashMap;

    move-result-object v1

    iget v5, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mSessionId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_54} :catch_67
    .catchall {:try_start_2a .. :try_end_54} :catchall_5b

    .line 1475
    :try_start_54
    iput v2, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mStatus:I

    .line 1476
    iput-boolean p1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mHasRetried:Z

    .line 1477
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5b

    .line 1478
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_21

    return v2

    :catchall_5b
    move-exception p0

    goto :goto_6a

    .line 1464
    :cond_5d
    :try_start_5d
    iput-boolean v2, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mHasRetried:Z

    .line 1465
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Failed to enqueue request"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_67} :catch_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_5b

    .line 1473
    :catch_67
    :try_start_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_5b

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_21

    return v3

    .line 1477
    :goto_6a
    :try_start_6a
    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_5b

    :try_start_6b
    throw p0

    .line 1448
    :cond_6c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Session has been retried already"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1443
    :cond_74
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Failed to retry as session is in processing"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1478
    :goto_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_6b .. :try_end_7d} :catchall_21

    throw p0
.end method

.method private blacklist updateProgress(I)V
    .registers 6

    .line 1656
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1657
    :try_start_3
    iput p1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgress:I

    .line 1658
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgressUpdateExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_18

    iget-object v2, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgressUpdateListener:Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;

    if-eqz v2, :cond_18

    .line 1660
    new-instance v3, Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2, p1}, Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaTranscodingManager$TranscodingSession;Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 1663
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method private blacklist updateStatus(I)V
    .registers 3

    .line 1667
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1668
    :try_start_3
    iput p1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mStatus:I

    .line 1669
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method private blacklist updateStatusAndResult(III)V
    .registers 5

    .line 1409
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1410
    :try_start_3
    iput p1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mStatus:I

    .line 1411
    iput p2, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mResult:I

    .line 1412
    iput p3, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mErrorCode:I

    .line 1413
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method


# virtual methods
.method public whitelist addClientUid(I)Z
    .registers 5

    if-ltz p1, :cond_3a

    .line 1548
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mManager:Landroid/media/MediaTranscodingManager;

    invoke-static {v0}, Landroid/media/MediaTranscodingManager;->-$$Nest$mgetTranscodingClient(Landroid/media/MediaTranscodingManager;)Landroid/media/ITranscodingClient;

    move-result-object v0

    const/4 v1, 0x0

    .line 1549
    const-string v2, "MediaTranscodingManager"

    if-nez v0, :cond_13

    .line 1550
    const-string p0, "Service is dead..."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1555
    :cond_13
    :try_start_13
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mSessionId:I

    invoke-interface {v0, p0, p1}, Landroid/media/ITranscodingClient;->addClientUid(II)Z

    move-result p0

    if-nez p0, :cond_23

    .line 1556
    const-string p0, "Failed to add client uid"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_21

    return v1

    :catch_21
    move-exception p0

    goto :goto_25

    :cond_23
    const/4 p0, 0x1

    return p0

    .line 1560
    :goto_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get client uids due to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1544
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Uid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist cancel()V
    .registers 7

    .line 1488
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1490
    :try_start_3
    iget v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mStatus:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3e

    .line 1492
    :try_start_8
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mManager:Landroid/media/MediaTranscodingManager;

    invoke-static {v1}, Landroid/media/MediaTranscodingManager;->-$$Nest$mgetTranscodingClient(Landroid/media/MediaTranscodingManager;)Landroid/media/ITranscodingClient;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 1495
    iget v3, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mSessionId:I

    invoke-interface {v1, v3}, Landroid/media/ITranscodingClient;->cancelSession(I)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_18
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    goto :goto_2f

    :catchall_16
    move-exception p0

    goto :goto_40

    :catch_18
    move-exception v1

    .line 1499
    :try_start_19
    const-string v3, "MediaTranscodingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to cancel the session due to exception:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_2f
    :goto_2f
    iput v2, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mStatus:I

    const/4 v1, 0x4

    .line 1502
    iput v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mResult:I

    .line 1505
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaTranscodingManager$TranscodingSession;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1507
    :cond_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_16

    throw p0
.end method

.method public whitelist clearOnProgressUpdateListener()V
    .registers 3

    .line 1401
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1402
    :try_start_4
    iput-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgressUpdateExecutor:Ljava/util/concurrent/Executor;

    .line 1403
    iput-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgressUpdateListener:Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;

    .line 1404
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public whitelist getClientUids()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mManager:Landroid/media/MediaTranscodingManager;

    invoke-static {v1}, Landroid/media/MediaTranscodingManager;->-$$Nest$mgetTranscodingClient(Landroid/media/MediaTranscodingManager;)Landroid/media/ITranscodingClient;

    move-result-object v1

    .line 1576
    const-string v2, "MediaTranscodingManager"

    if-nez v1, :cond_15

    .line 1577
    const-string p0, "Service is dead..."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1582
    :cond_15
    :try_start_15
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mSessionId:I

    invoke-interface {v1, p0}, Landroid/media/ITranscodingClient;->getClientUids(I)[I

    move-result-object p0

    .line 1583
    array-length v1, p0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_40

    aget v4, p0, v3

    .line 1584
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_28} :catch_2b

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :catch_2b
    move-exception p0

    .line 1587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get client uids due to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-object v0
.end method

.method public whitelist getErrorCode()I
    .registers 2

    .line 1420
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1421
    :try_start_3
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mErrorCode:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1422
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public whitelist getProgress()I
    .registers 2

    .line 1518
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1519
    :try_start_3
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgress:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1520
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public whitelist getResult()I
    .registers 2

    .line 1606
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1607
    :try_start_3
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mResult:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1608
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public whitelist getSessionId()I
    .registers 1

    .line 1598
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mSessionId:I

    return p0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 1528
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1529
    :try_start_3
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mStatus:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1530
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist retry()Z
    .registers 2

    const/4 v0, 0x1

    .line 1436
    invoke-direct {p0, v0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->retryInternal(Z)Z

    move-result p0

    return p0
.end method

.method public whitelist setOnProgressUpdateListener(Ljava/util/concurrent/Executor;Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;)V
    .registers 4

    .line 1391
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1392
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1393
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1394
    iput-object p1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgressUpdateExecutor:Ljava/util/concurrent/Executor;

    .line 1395
    iput-object p2, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgressUpdateListener:Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;

    .line 1396
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 1616
    iget v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mResult:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_32

    if-eq v0, v3, :cond_2f

    if-eq v0, v2, :cond_16

    if-eq v0, v1, :cond_13

    .line 1630
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 1628
    :cond_13
    const-string v0, "RESULT_CANCELED"

    goto :goto_34

    .line 1624
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESULT_ERROR("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mErrorCode:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 1622
    :cond_2f
    const-string v0, "RESULT_SUCCESS"

    goto :goto_34

    .line 1619
    :cond_32
    const-string v0, "RESULT_NONE"

    .line 1634
    :goto_34
    iget v5, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mStatus:I

    if-eq v5, v4, :cond_4c

    if-eq v5, v3, :cond_49

    if-eq v5, v2, :cond_46

    if-eq v5, v1, :cond_43

    .line 1648
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    .line 1640
    :cond_43
    const-string v1, "STATUS_PAUSED"

    goto :goto_4e

    .line 1646
    :cond_46
    const-string v1, "STATUS_FINISHED"

    goto :goto_4e

    .line 1643
    :cond_49
    const-string v1, "STATUS_RUNNING"

    goto :goto_4e

    .line 1637
    :cond_4c
    const-string v1, "STATUS_PENDING"

    .line 1651
    :goto_4e
    iget v2, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mSessionId:I

    .line 1652
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession;->mProgress:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1651
    const-string v0, " session: {id: %d, status: %s, result: %s, progress: %d}"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
