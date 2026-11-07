.class public Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;
.super Ljava/lang/Object;
.source "PublishProcessorState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;,
        Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private volatile blacklist mIsPublishing:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mPendingRequest:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;

.field private final blacklist mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

.field private blacklist mTaskId:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PublishProcessorState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "subId"    # I

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    .line 256
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPendingRequest:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;

    .line 257
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-direct {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    .line 258
    return-void
.end method


# virtual methods
.method public blacklist clearPendingRequest()V
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPendingRequest:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->clearPendingRequest()V

    .line 306
    return-void
.end method

.method public blacklist generatePublishTaskId()J
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->generateTaskId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mTaskId:J

    .line 266
    iget-wide v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mTaskId:J

    monitor-exit v0

    return-wide v1

    .line 267
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist getCurrentTaskId()J
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-wide v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mTaskId:J

    monitor-exit v0

    return-wide v1

    .line 276
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getPendingRequestTriggerType()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPendingRequest:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->getPendingRequestTriggerType()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPublishingDelayTime()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->getPublishingDelayTime()Ljava/util/Optional;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 393
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist hasPendingRequest()Z
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPendingRequest:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->hasPendingRequest()Z

    move-result v0

    return v0
.end method

.method public blacklist increaseRetryCount()V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->increaseRetryCount()V

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist isPublishAllowedAtThisTime()Z
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->isPublishAllowedAtThisTime()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 376
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist isPublishingNow()Z
    .registers 2

    .line 290
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mIsPublishing:Z

    return v0
.end method

.method public blacklist isReachMaximumRetries()Z
    .registers 3

    .line 365
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->isReachMaximumRetries()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 367
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist onRcsDisconnected()V
    .registers 3

    .line 403
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setPublishingFlag(Z)V

    .line 405
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->clearPendingRequest()V

    .line 406
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->resetState()V

    .line 407
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist resetRetryCount()V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->resetRetryCount()V

    .line 348
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist resetState()V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->resetState()V

    .line 358
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist setLastPublishedTime(Ljava/time/Instant;)V
    .registers 4
    .param p1, "lastPublishedTime"    # Ljava/time/Instant;

    .line 328
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->setLastPublishedTime(Ljava/time/Instant;)V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist setPendingRequest(I)V
    .registers 3
    .param p1, "triggerType"    # I

    .line 297
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPendingRequest:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->setPendingRequest(I)V

    .line 298
    return-void
.end method

.method public blacklist setPublishingFlag(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 283
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mIsPublishing:Z

    .line 284
    return-void
.end method

.method public blacklist updatePublishThrottle(I)V
    .registers 4
    .param p1, "publishThrottle"    # I

    .line 397
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->updatePublishThrottle(I)V

    .line 399
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist updatePublishingAllowedTime(I)V
    .registers 4
    .param p1, "triggerType"    # I

    .line 384
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->mPublishThrottle:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->updatePublishingAllowedTime(I)V

    .line 386
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
