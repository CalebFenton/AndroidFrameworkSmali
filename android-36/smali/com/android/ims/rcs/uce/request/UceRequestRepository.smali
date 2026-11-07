.class public Lcom/android/ims/rcs/uce/request/UceRequestRepository;
.super Ljava/lang/Object;
.source "UceRequestRepository.java"


# instance fields
.field private volatile blacklist mDestroyed:Z

.field private final blacklist mDispatcher:Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;

.field private final blacklist mRequestCoordinators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mDestroyed:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mRequestCoordinators:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;

    invoke-direct {v0, p1, p2}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;-><init>(ILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mDispatcher:Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;

    .line 40
    return-void
.end method

.method static synthetic blacklist lambda$onDestroy$0(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V
    .registers 2
    .param p0, "taskId"    # Ljava/lang/Long;
    .param p1, "requestCoord"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    .line 48
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onFinish()V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V
    .registers 5
    .param p1, "coordinator"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    monitor-enter p0

    .line 75
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 76
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mRequestCoordinators:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getCoordinatorId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    .line 77
    monitor-exit p0

    return-void

    .line 74
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestRepository;
    .end local p1    # "coordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist addRequestCoordinatorAndDispatch(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V
    .registers 6
    .param p1, "coordinator"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    monitor-enter p0

    .line 57
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 58
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mRequestCoordinators:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getCoordinatorId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mDispatcher:Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getCoordinatorId()J

    move-result-wide v1

    .line 60
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getActivatedRequestTaskIds()Ljava/util/List;

    move-result-object v3

    .line 59
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->addRequest(JLjava/util/List;)V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_23

    .line 61
    monitor-exit p0

    return-void

    .line 56
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestRepository;
    .end local p1    # "coordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public declared-synchronized blacklist getRequestCoordinator(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .registers 3
    .param p1, "coordinatorId"    # Ljava/lang/Long;

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mRequestCoordinators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 83
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestRepository;
    .end local p1    # "coordinatorId":Ljava/lang/Long;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist getUceRequest(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;
    .registers 5
    .param p1, "taskId"    # Ljava/lang/Long;

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mRequestCoordinators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    .line 88
    .local v1, "coordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getUceRequest(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_23

    .line 89
    .local v2, "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    if-eqz v2, :cond_1f

    .line 90
    monitor-exit p0

    return-object v2

    .line 92
    .end local v1    # "coordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .end local v2    # "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    :cond_1f
    goto :goto_b

    .line 93
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestRepository;
    :cond_20
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 86
    .end local p1    # "taskId":Ljava/lang/Long;
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public declared-synchronized blacklist notifyRequestFinished(Ljava/lang/Long;)V
    .registers 3
    .param p1, "taskId"    # Ljava/lang/Long;

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mDispatcher:Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->onRequestFinished(Ljava/lang/Long;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 99
    monitor-exit p0

    return-void

    .line 97
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestRepository;
    .end local p1    # "taskId":Ljava/lang/Long;
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized blacklist onDestroy()V
    .registers 3

    monitor-enter p0

    .line 46
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mDestroyed:Z

    .line 47
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mDispatcher:Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->onDestroy()V

    .line 48
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mRequestCoordinators:Ljava/util/Map;

    new-instance v1, Lcom/android/ims/rcs/uce/request/UceRequestRepository$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/UceRequestRepository$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 49
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mRequestCoordinators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1a

    .line 50
    monitor-exit p0

    return-void

    .line 45
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestRepository;
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public declared-synchronized blacklist removeRequestCoordinator(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .registers 3
    .param p1, "coordinatorId"    # Ljava/lang/Long;

    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->mRequestCoordinators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 67
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/UceRequestRepository;
    .end local p1    # "coordinatorId":Ljava/lang/Long;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method
