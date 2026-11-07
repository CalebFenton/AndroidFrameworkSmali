.class public Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;
.super Ljava/lang/Object;
.source "UceRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mExecutingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIntervalTime:J

.field private blacklist mMaxConcurrentNum:I

.field private blacklist mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

.field private final blacklist mSubId:I

.field private final blacklist mWaitingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$6XRVCb2pAEgCvPTGXwYgr0_aOPo(Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;JLjava/lang/Long;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->lambda$addRequest$0(JLjava/lang/Long;)V

    return-void
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

    const-string v1, "RequestDispatcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mIntervalTime:J

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mMaxConcurrentNum:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mWaitingRequests:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mExecutingRequests:Ljava/util/List;

    .line 86
    iput p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mSubId:I

    .line 87
    iput-object p2, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 88
    return-void
.end method

.method private blacklist getDelayTime(Ljava/time/Instant;)J
    .registers 6
    .param p1, "executingTime"    # Ljava/time/Instant;

    .line 215
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 216
    .local v0, "delayTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_14

    .line 217
    const-wide/16 v0, 0x0

    .line 219
    :cond_14
    return-wide v0
.end method

.method private blacklist getLastRequestTime()Ljava/time/Instant;
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mExecutingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 200
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    return-object v0

    .line 203
    :cond_b
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    .line 204
    .local v0, "lastTime":Ljava/time/Instant;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mExecutingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;

    .line 205
    .local v2, "request":Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->getExecutingTime()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_13

    .line 206
    :cond_2a
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->getExecutingTime()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/Instant;

    .line 207
    .local v3, "executingTime":Ljava/time/Instant;
    invoke-virtual {v3, v0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 208
    move-object v0, v3

    .line 210
    .end local v2    # "request":Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;
    .end local v3    # "executingTime":Ljava/time/Instant;
    :cond_3b
    goto :goto_13

    .line 211
    :cond_3c
    return-object v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    return-object v0
.end method

.method private blacklist getRequestFromWaitingCollection(I)Ljava/util/List;
    .registers 6
    .param p1, "numCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mWaitingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 148
    move v0, p1

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mWaitingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 150
    .local v0, "numRequests":I
    :goto_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_26

    .line 152
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mWaitingRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 155
    .end local v2    # "i":I
    :cond_26
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mWaitingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 156
    return-object v1
.end method

.method private synthetic blacklist lambda$addRequest$0(JLjava/lang/Long;)V
    .registers 7
    .param p1, "coordinatorId"    # J
    .param p3, "taskId"    # Ljava/lang/Long;

    .line 105
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;-><init>(JJ)V

    .line 106
    .local v0, "request":Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mWaitingRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method static synthetic blacklist lambda$onRequestFinished$1(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;)Z
    .registers 6
    .param p0, "taskId"    # Ljava/lang/Long;
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;

    .line 116
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->getTaskId()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 223
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method private blacklist notifyStartOfRequest(Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 164
    .local v1, "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    if-nez v1, :cond_c

    .line 165
    const-string v2, "notifyStartOfRequest: The instance is destroyed"

    invoke-direct {v0, v2}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->logd(Ljava/lang/String;)V

    .line 166
    return-void

    .line 169
    :cond_c
    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->getLastRequestTime()Ljava/time/Instant;

    move-result-object v2

    .line 171
    .local v2, "lastRequestTime":Ljava/time/Instant;
    iget-wide v3, v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mIntervalTime:J

    invoke-virtual {v2, v3, v4}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v3

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 172
    iget-wide v3, v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mIntervalTime:J

    invoke-virtual {v2, v3, v4}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v3

    .local v3, "baseTime":Ljava/time/Instant;
    goto :goto_2b

    .line 174
    .end local v3    # "baseTime":Ljava/time/Instant;
    :cond_27
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    .line 177
    .restart local v3    # "baseTime":Ljava/time/Instant;
    :goto_2b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notifyStartOfRequest: taskId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_33
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_85

    .line 179
    iget-wide v6, v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mIntervalTime:J

    int-to-long v8, v5

    mul-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v6

    .line 180
    .local v6, "startExecutingTime":Ljava/time/Instant;
    move-object/from16 v7, p1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;

    .line 181
    .local v8, "request":Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;
    invoke-virtual {v8, v6}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->setExecutingTime(Ljava/time/Instant;)V

    .line 184
    iget-object v9, v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mExecutingRequests:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v8}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->getTaskId()J

    move-result-wide v13

    .line 188
    .local v13, "taskId":J
    invoke-virtual {v8}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->getCoordinatorId()J

    move-result-wide v11

    .line 189
    .local v11, "coordId":J
    invoke-direct {v0, v6}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->getDelayTime(Ljava/time/Instant;)J

    move-result-wide v15

    .line 190
    .local v15, "delayTime":J
    iget-object v10, v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface/range {v10 .. v16}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifySendingRequest(JJJ)V

    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    move-object/from16 v17, v2

    .end local v1    # "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .end local v2    # "lastRequestTime":Ljava/time/Instant;
    .local v10, "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .local v17, "lastRequestTime":Ljava/time/Instant;
    invoke-virtual {v8}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->getTaskId()J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .end local v6    # "startExecutingTime":Ljava/time/Instant;
    .end local v8    # "request":Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;
    .end local v11    # "coordId":J
    .end local v13    # "taskId":J
    .end local v15    # "delayTime":J
    add-int/lit8 v5, v5, 0x1

    move-object v1, v10

    move-object/from16 v2, v17

    goto :goto_33

    .end local v10    # "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .end local v17    # "lastRequestTime":Ljava/time/Instant;
    .restart local v1    # "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .restart local v2    # "lastRequestTime":Ljava/time/Instant;
    :cond_85
    move-object v10, v1

    move-object/from16 v17, v2

    .line 194
    .end local v1    # "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .end local v2    # "lastRequestTime":Ljava/time/Instant;
    .end local v5    # "i":I
    .restart local v10    # "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .restart local v17    # "lastRequestTime":Ljava/time/Instant;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExecutingRequests size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mExecutingRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->logd(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private declared-synchronized blacklist onRequestUpdated()V
    .registers 4

    monitor-enter p0

    .line 121
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestUpdated: waiting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mWaitingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mExecutingRequests:Ljava/util/List;

    .line 122
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->logd(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mWaitingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_53

    if-eqz v0, :cond_37

    .line 126
    monitor-exit p0

    return-void

    .line 131
    :cond_37
    :try_start_37
    iget v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mMaxConcurrentNum:I

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mExecutingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_53

    sub-int/2addr v0, v1

    .line 132
    .local v0, "numCapacity":I
    if-gtz v0, :cond_44

    .line 133
    monitor-exit p0

    return-void

    .line 136
    :cond_44
    :try_start_44
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->getRequestFromWaitingCollection(I)Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    .line 138
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->notifyStartOfRequest(Ljava/util/List;)V
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_53

    .line 140
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;
    :cond_51
    monitor-exit p0

    return-void

    .line 120
    .end local v0    # "numCapacity":I
    .end local v1    # "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;>;"
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist addRequest(JLjava/util/List;)V
    .registers 6
    .param p1, "coordinatorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .local p3, "taskIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 104
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;J)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 108
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->onRequestUpdated()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 109
    monitor-exit p0

    return-void

    .line 103
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;
    .end local p1    # "coordinatorId":J
    .end local p3    # "taskIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public declared-synchronized blacklist onDestroy()V
    .registers 2

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mWaitingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mExecutingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 97
    monitor-exit p0

    return-void

    .line 93
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized blacklist onRequestFinished(Ljava/lang/Long;)V
    .registers 4
    .param p1, "taskId"    # Ljava/lang/Long;

    monitor-enter p0

    .line 115
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestFinished: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->logd(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->mExecutingRequests:Ljava/util/List;

    new-instance v1, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 117
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->onRequestUpdated()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 118
    monitor-exit p0

    return-void

    .line 114
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;
    .end local p1    # "taskId":Ljava/lang/Long;
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method
