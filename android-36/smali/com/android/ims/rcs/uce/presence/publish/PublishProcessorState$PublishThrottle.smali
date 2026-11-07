.class Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;
.super Ljava/lang/Object;
.source "PublishProcessorState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublishThrottle"
.end annotation


# static fields
.field private static final blacklist PUBLISH_MAXIMUM_NUM_RETRIES:I = 0x3

.field private static final blacklist RETRY_BASE_PERIOD_MIN:I = 0x1


# instance fields
.field private blacklist mLastPublishedTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPublishAllowedTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRcsPublishThrottle:J

.field private blacklist mRetryCount:I

.field private blacklist mSubId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "subId"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mSubId:I

    .line 110
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->resetState()V

    .line 111
    return-void
.end method

.method private blacklist calcLatestPublishAllowedTime()V
    .registers 7

    .line 198
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->getNextRetryDelayTime()J

    move-result-wide v0

    .line 199
    .local v0, "retryDelay":J
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mLastPublishedTime:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_29

    .line 203
    nop

    .line 204
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v2

    .line 203
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mPublishAllowedTime:Ljava/util/Optional;

    .line 205
    invoke-static {}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "calcLatestPublishAllowedTime: The last published time is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 209
    :cond_29
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mLastPublishedTime:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/Instant;

    .line 210
    .local v2, "lastPublishedTime":Ljava/time/Instant;
    iget-wide v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRcsPublishThrottle:J

    .line 211
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v3

    .line 210
    invoke-virtual {v2, v3}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v3

    .line 213
    .local v3, "defaultAllowedTime":Ljava/time/Instant;
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_48

    .line 215
    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mPublishAllowedTime:Ljava/util/Optional;

    goto :goto_64

    .line 220
    :cond_48
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v4

    .line 221
    .local v4, "retryDelayTime":Ljava/time/Instant;
    nop

    .line 222
    invoke-virtual {v4, v3}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 223
    move-object v5, v4

    goto :goto_5e

    :cond_5d
    move-object v5, v3

    .line 221
    :goto_5e
    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mPublishAllowedTime:Ljava/util/Optional;

    .line 226
    .end local v2    # "lastPublishedTime":Ljava/time/Instant;
    .end local v3    # "defaultAllowedTime":Ljava/time/Instant;
    .end local v4    # "retryDelayTime":Ljava/time/Instant;
    :goto_64
    invoke-static {}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calcLatestPublishAllowedTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mPublishAllowedTime:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method private blacklist getNextRetryDelayTime()J
    .registers 6

    .line 232
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRetryCount:I

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 234
    :cond_7
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    .line 235
    .local v0, "power":I
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 237
    .local v1, "delayTime":Ljava/lang/Double;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public blacklist getPublishingDelayTime()Ljava/util/Optional;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mPublishAllowedTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_d

    .line 185
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 189
    :cond_d
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mPublishAllowedTime:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/Temporal;

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v0

    .line 190
    .local v0, "delayTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_27

    .line 191
    const-wide/16 v0, 0x0

    .line 193
    :cond_27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method public blacklist increaseRetryCount()V
    .registers 3

    .line 120
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    .line 121
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRetryCount:I

    .line 124
    :cond_b
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->calcLatestPublishAllowedTime()V

    .line 125
    return-void
.end method

.method public blacklist isPublishAllowedAtThisTime()Z
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mPublishAllowedTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_a

    .line 159
    const/4 v0, 0x0

    return v0

    .line 163
    :cond_a
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mPublishAllowedTime:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isReachMaximumRetries()Z
    .registers 3

    .line 145
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRetryCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist resetRetryCount()V
    .registers 2

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRetryCount:I

    .line 131
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->calcLatestPublishAllowedTime()V

    .line 132
    return-void
.end method

.method public blacklist resetState()V
    .registers 5

    .line 137
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mLastPublishedTime:Ljava/util/Optional;

    .line 138
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mPublishAllowedTime:Ljava/util/Optional;

    .line 139
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mSubId:I

    invoke-static {v0}, Lcom/android/ims/rcs/uce/util/UceUtils;->getRcsPublishThrottle(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRcsPublishThrottle:J

    .line 140
    invoke-static {}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsPublishThrottle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRcsPublishThrottle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public blacklist setLastPublishedTime(Ljava/time/Instant;)V
    .registers 3
    .param p1, "lastPublishedTime"    # Ljava/time/Instant;

    .line 115
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mLastPublishedTime:Ljava/util/Optional;

    .line 116
    return-void
.end method

.method public blacklist updatePublishThrottle(I)V
    .registers 4
    .param p1, "publishThrottle"    # I

    .line 150
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRcsPublishThrottle:J

    .line 151
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->calcLatestPublishAllowedTime()V

    .line 152
    return-void
.end method

.method public blacklist updatePublishingAllowedTime(I)V
    .registers 3
    .param p1, "triggerType"    # I

    .line 168
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mRetryCount:I

    .line 172
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->mPublishAllowedTime:Ljava/util/Optional;

    goto :goto_17

    .line 173
    :cond_11
    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    .line 176
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState$PublishThrottle;->resetRetryCount()V

    .line 178
    :cond_17
    :goto_17
    return-void
.end method
