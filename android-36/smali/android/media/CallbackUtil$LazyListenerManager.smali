.class Landroid/media/CallbackUtil$LazyListenerManager;
.super Ljava/lang/Object;
.source "CallbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CallbackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyListenerManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

.field private final blacklist mListenerLock:Ljava/lang/Object;

.field private blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 257
    .local p0, "this":Landroid/media/CallbackUtil$LazyListenerManager;, "Landroid/media/CallbackUtil$LazyListenerManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    .line 260
    return-void
.end method

.method static synthetic blacklist lambda$addListener$0(Landroid/media/CallbackUtil$DispatcherStub;)V
    .registers 2
    .param p0, "stub"    # Landroid/media/CallbackUtil$DispatcherStub;

    .line 278
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/media/CallbackUtil$DispatcherStub;->register(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$removeListener$1(Landroid/media/CallbackUtil$DispatcherStub;)V
    .registers 2
    .param p0, "stub"    # Landroid/media/CallbackUtil$DispatcherStub;

    .line 295
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/media/CallbackUtil$DispatcherStub;->register(Z)V

    return-void
.end method


# virtual methods
.method blacklist addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V
    .registers 14
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/media/CallbackUtil$DispatcherStub;",
            ">;)V"
        }
    .end annotation

    .line 273
    .local p0, "this":Landroid/media/CallbackUtil$LazyListenerManager;, "Landroid/media/CallbackUtil$LazyListenerManager<TT;>;"
    .local p2, "listener":Ljava/lang/Object;, "TT;"
    .local p4, "newStub":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/media/CallbackUtil$DispatcherStub;>;"
    iget-object v1, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_3
    iget-object v5, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    new-instance v8, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda1;-><init>()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_22

    .line 275
    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v7, p4

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/lang/Object;, "TT;"
    .end local p3    # "methodName":Ljava/lang/String;
    .end local p4    # "newStub":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/media/CallbackUtil$DispatcherStub;>;"
    .local v2, "methodName":Ljava/lang/String;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "listener":Ljava/lang/Object;, "TT;"
    .local v7, "newStub":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/media/CallbackUtil$DispatcherStub;>;"
    :try_start_10
    invoke-static/range {v2 .. v8}, Landroid/media/CallbackUtil;->addListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)Landroid/util/Pair;

    move-result-object p1

    .line 279
    .local p1, "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;Landroid/media/CallbackUtil$DispatcherStub;>;"
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 280
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/media/CallbackUtil$DispatcherStub;

    iput-object p2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    .line 281
    .end local p1    # "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;Landroid/media/CallbackUtil$DispatcherStub;>;"
    monitor-exit v1

    .line 282
    return-void

    .line 281
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "listener":Ljava/lang/Object;, "TT;"
    .end local v7    # "newStub":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/media/CallbackUtil$DispatcherStub;>;"
    .local p1, "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Ljava/lang/Object;, "TT;"
    .restart local p3    # "methodName":Ljava/lang/String;
    .restart local p4    # "newStub":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/media/CallbackUtil$DispatcherStub;>;"
    :catchall_22
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v7, p4

    move-object p1, v0

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/lang/Object;, "TT;"
    .end local p3    # "methodName":Ljava/lang/String;
    .end local p4    # "newStub":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/media/CallbackUtil$DispatcherStub;>;"
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "executor":Ljava/util/concurrent/Executor;
    .restart local v4    # "listener":Ljava/lang/Object;, "TT;"
    .restart local v7    # "newStub":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/media/CallbackUtil$DispatcherStub;>;"
    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2a

    throw p1

    :catchall_2a
    move-exception v0

    move-object p1, v0

    goto :goto_28
.end method

.method blacklist callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/CallbackUtil$CallbackMethod<",
            "TT;>;)V"
        }
    .end annotation

    .line 307
    .local p0, "this":Landroid/media/CallbackUtil$LazyListenerManager;, "Landroid/media/CallbackUtil$LazyListenerManager<TT;>;"
    .local p1, "callback":Landroid/media/CallbackUtil$CallbackMethod;, "Landroid/media/CallbackUtil$CallbackMethod<TT;>;"
    iget-object v0, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Landroid/media/CallbackUtil;->callListeners(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 308
    return-void
.end method

.method blacklist removeListener(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 291
    .local p0, "this":Landroid/media/CallbackUtil$LazyListenerManager;, "Landroid/media/CallbackUtil$LazyListenerManager<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    new-instance v3, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda0;-><init>()V

    .line 293
    invoke-static {p2, p1, v1, v2, v3}, Landroid/media/CallbackUtil;->removeListener(Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Consumer;)Landroid/util/Pair;

    move-result-object v1

    .line 296
    .local v1, "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;Landroid/media/CallbackUtil$DispatcherStub;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 297
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/CallbackUtil$DispatcherStub;

    iput-object v2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    .line 298
    .end local v1    # "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;Landroid/media/CallbackUtil$DispatcherStub;>;"
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method
