.class public Landroid/bluetooth/CallbackWrapper;
.super Ljava/lang/Object;
.source "CallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCallbackExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRegisterConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final blacklist mUnregisterConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TS;>;",
            "Ljava/util/function/Consumer<",
            "TS;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Landroid/bluetooth/CallbackWrapper;, "Landroid/bluetooth/CallbackWrapper<TT;TS;>;"
    .local p1, "registerConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TS;>;"
    .local p2, "unregisterConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TS;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/bluetooth/CallbackWrapper;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TS;>;",
            "Ljava/util/function/Consumer<",
            "TS;>;",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Landroid/bluetooth/CallbackWrapper;, "Landroid/bluetooth/CallbackWrapper<TT;TS;>;"
    .local p1, "registerConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TS;>;"
    .local p2, "unregisterConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TS;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/concurrent/Executor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    iput-object v0, p0, Landroid/bluetooth/CallbackWrapper;->mRegisterConsumer:Ljava/util/function/Consumer;

    .line 74
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    iput-object v0, p0, Landroid/bluetooth/CallbackWrapper;->mUnregisterConsumer:Ljava/util/function/Consumer;

    .line 75
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    .line 76
    return-void
.end method

.method static synthetic blacklist lambda$forEach$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 2
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "callback"    # Ljava/lang/Object;

    .line 83
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$forEach$1(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "callback"    # Ljava/lang/Object;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 83
    new-instance v0, Landroid/bluetooth/CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/bluetooth/CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Landroid/bluetooth/CallbackWrapper;, "Landroid/bluetooth/CallbackWrapper<TT;TS;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    new-instance v2, Landroid/bluetooth/CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/bluetooth/CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist registerCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 94
    .local p0, "this":Landroid/bluetooth/CallbackWrapper;, "Landroid/bluetooth/CallbackWrapper<TT;TS;>;"
    .local p1, "service":Ljava/lang/Object;, "TS;"
    .local p2, "callback":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 98
    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 102
    if-eqz p1, :cond_20

    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 103
    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mRegisterConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 106
    :cond_20
    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 99
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Callback already registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/CallbackWrapper;, "Landroid/bluetooth/CallbackWrapper<TT;TS;>;"
    .end local p1    # "service":Ljava/lang/Object;, "TS;"
    .end local p2    # "callback":Ljava/lang/Object;, "TT;"
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    throw v1

    .line 107
    .restart local p0    # "this":Landroid/bluetooth/CallbackWrapper;, "Landroid/bluetooth/CallbackWrapper<TT;TS;>;"
    .restart local p1    # "service":Ljava/lang/Object;, "TS;"
    .restart local p2    # "callback":Ljava/lang/Object;, "TT;"
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public blacklist registerToNewService(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Landroid/bluetooth/CallbackWrapper;, "Landroid/bluetooth/CallbackWrapper<TT;TS;>;"
    .local p1, "service":Ljava/lang/Object;, "TS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 132
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 133
    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mRegisterConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 135
    :cond_13
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Landroid/bluetooth/CallbackWrapper;, "Landroid/bluetooth/CallbackWrapper<TT;TS;>;"
    .local p1, "service":Ljava/lang/Object;, "TS;"
    .local p2, "callback":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 116
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 120
    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    if-eqz p1, :cond_22

    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 123
    iget-object v1, p0, Landroid/bluetooth/CallbackWrapper;->mUnregisterConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 125
    :cond_22
    monitor-exit v0

    .line 126
    return-void

    .line 117
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Callback already unregistered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/CallbackWrapper;, "Landroid/bluetooth/CallbackWrapper<TT;TS;>;"
    .end local p1    # "service":Ljava/lang/Object;, "TS;"
    .end local p2    # "callback":Ljava/lang/Object;, "TT;"
    throw v1

    .line 125
    .restart local p0    # "this":Landroid/bluetooth/CallbackWrapper;, "Landroid/bluetooth/CallbackWrapper<TT;TS;>;"
    .restart local p1    # "service":Ljava/lang/Object;, "TS;"
    .restart local p2    # "callback":Ljava/lang/Object;, "TT;"
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw v1
.end method
