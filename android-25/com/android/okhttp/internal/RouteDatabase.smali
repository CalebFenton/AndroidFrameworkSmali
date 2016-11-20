.class public final Lcom/android/okhttp/internal/RouteDatabase;
.super Ljava/lang/Object;
.source "RouteDatabase.java"


# instance fields
.field private final failedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    #@a
    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized connected(Lcom/android/okhttp/Route;)V
    .locals 1
    .param p1, "route"    # Lcom/android/okhttp/Route;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 37
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized failed(Lcom/android/okhttp/Route;)V
    .locals 1
    .param p1, "failedRoute"    # Lcom/android/okhttp/Route;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 32
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized failedRoutesCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    #@3
    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized shouldPostpone(Lcom/android/okhttp/Route;)Z
    .locals 1
    .param p1, "route"    # Lcom/android/okhttp/Route;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
