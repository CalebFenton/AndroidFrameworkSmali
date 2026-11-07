.class Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;
.super Ljava/lang/Object;
.source "PublishProcessorState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingRequest"
.end annotation


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPendingFlag:Z

.field private blacklist mTriggerType:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mLock:Ljava/lang/Object;

    .line 46
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mTriggerType:Ljava/util/Optional;

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist clearPendingRequest()V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mPendingFlag:Z

    .line 61
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mTriggerType:Ljava/util/Optional;

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getPendingRequestTriggerType()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mTriggerType:Ljava/util/Optional;

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist hasPendingRequest()Z
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mPendingFlag:Z

    monitor-exit v0

    return v1

    .line 69
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist setPendingRequest(I)V
    .registers 4
    .param p1, "triggerType"    # I

    .line 51
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mPendingFlag:Z

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PendingRequest;->mTriggerType:Ljava/util/Optional;

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method
