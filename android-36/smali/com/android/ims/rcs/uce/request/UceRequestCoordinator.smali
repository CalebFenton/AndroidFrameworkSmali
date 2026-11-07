.class public abstract Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
.super Ljava/lang/Object;
.source "UceRequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;,
        Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$UceRequestUpdate;
    }
.end annotation


# static fields
.field protected static final blacklist DEFAULT_ERROR_CODE:I = 0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field protected static blacklist REQUEST_EVENT_DESC:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_UPDATE_CACHED_CAPABILITY_UPDATE:I = 0x5

.field public static final blacklist REQUEST_UPDATE_CAPABILITY_UPDATE:I = 0x3

.field public static final blacklist REQUEST_UPDATE_COMMAND_ERROR:I = 0x1

.field public static final blacklist REQUEST_UPDATE_ERROR:I = 0x0

.field public static final blacklist REQUEST_UPDATE_NETWORK_RESPONSE:I = 0x2

.field public static final blacklist REQUEST_UPDATE_NO_NEED_REQUEST_FROM_NETWORK:I = 0x7

.field public static final blacklist REQUEST_UPDATE_REMOTE_REQUEST_DONE:I = 0x8

.field public static final blacklist REQUEST_UPDATE_RESOURCE_TERMINATED:I = 0x4

.field public static final blacklist REQUEST_UPDATE_TERMINATED:I = 0x6

.field public static final blacklist REQUEST_UPDATE_TIMEOUT:I = 0x9


# instance fields
.field protected final blacklist mActivatedRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/ims/rcs/uce/request/UceRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mCollectionLock:Ljava/lang/Object;

.field protected final blacklist mCoordinatorId:J

.field protected final blacklist mFinishedRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile blacklist mIsFinished:Z

.field protected final blacklist mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

.field protected final blacklist mSubId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$2MYY7OmdfYLU_0fynNXaceARnOo(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;Lcom/android/ims/rcs/uce/request/UceRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->lambda$new$0(Lcom/android/ims/rcs/uce/request/UceRequest;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ReqCoordinator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->LOG_TAG:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    .line 113
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RETRIEVE_COMMAND_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_NETWORK_RESPONSE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_TERMINATED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_RESOURCE_TERMINATED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_CAPABILITY_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_CACHE_CAP_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NO_NEED_REQUEST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REMOTE_REQUEST_DONE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V
    .registers 7
    .param p1, "subId"    # I
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequest;",
            ">;",
            "Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;",
            ")V"
        }
    .end annotation

    .line 258
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mCollectionLock:Ljava/lang/Object;

    .line 259
    iput p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mSubId:I

    .line 260
    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->generateRequestCoordinatorId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mCoordinatorId:J

    .line 261
    iput-object p3, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 264
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V

    invoke-interface {p2, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mFinishedRequests:Ljava/util/Map;

    .line 268
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda2;-><init>()V

    .line 269
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 268
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    .line 270
    return-void
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 5

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][coordId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mCoordinatorId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    return-object v0
.end method

.method static synthetic blacklist lambda$getActivatedRequestTaskIds$2(Lcom/android/ims/rcs/uce/request/UceRequest;)Ljava/lang/Long;
    .registers 3
    .param p0, "request"    # Lcom/android/ims/rcs/uce/request/UceRequest;

    .line 285
    invoke-interface {p0}, Lcom/android/ims/rcs/uce/request/UceRequest;->getTaskId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$0(Lcom/android/ims/rcs/uce/request/UceRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/UceRequest;

    .line 264
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mCoordinatorId:J

    invoke-interface {p1, v0, v1}, Lcom/android/ims/rcs/uce/request/UceRequest;->setRequestCoordinatorId(J)V

    return-void
.end method

.method static synthetic blacklist lambda$new$1(Lcom/android/ims/rcs/uce/request/UceRequest;)Lcom/android/ims/rcs/uce/request/UceRequest;
    .registers 1
    .param p0, "request"    # Lcom/android/ims/rcs/uce/request/UceRequest;

    .line 269
    return-object p0
.end method

.method static synthetic blacklist lambda$onFinish$3(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequest;)V
    .registers 2
    .param p0, "taskId"    # Ljava/lang/Long;
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/UceRequest;

    .line 320
    invoke-interface {p1}, Lcom/android/ims/rcs/uce/request/UceRequest;->onFinish()V

    return-void
.end method


# virtual methods
.method public blacklist getActivatedRequestTaskIds()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda4;-><init>()V

    .line 285
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 286
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    .line 284
    return-object v1

    .line 287
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist getCoordinatorId()J
    .registers 3

    .line 276
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mCoordinatorId:J

    return-wide v0
.end method

.method public blacklist getUceRequest(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;
    .registers 4
    .param p1, "taskId"    # Ljava/lang/Long;

    .line 294
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/rcs/uce/request/UceRequest;

    monitor-exit v0

    return-object v1

    .line 296
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 332
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 336
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method protected blacklist moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V
    .registers 9
    .param p1, "taskId"    # Ljava/lang/Long;
    .param p2, "requestResult"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 306
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mFinishedRequests:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getCoordinatorId()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyUceRequestFinished(JJ)V

    .line 310
    monitor-exit v0

    .line 311
    return-void

    .line 310
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public blacklist onFinish()V
    .registers 4

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mIsFinished:Z

    .line 319
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_6
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    new-instance v2, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 321
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 322
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->mFinishedRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public abstract blacklist onRequestUpdated(JI)V
.end method
