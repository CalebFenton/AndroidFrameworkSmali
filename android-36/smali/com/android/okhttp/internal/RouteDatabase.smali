.class public final Lcom/android/okhttp/internal/RouteDatabase;
.super Ljava/lang/Object;
.source "RouteDatabase.java"


# instance fields
.field private final blacklist failedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist connected(Lcom/android/okhttp/Route;)V
    .registers 3

    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 41
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized blacklist failed(Lcom/android/okhttp/Route;)V
    .registers 3

    monitor-enter p0

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 36
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized blacklist failedRoutesCount()I
    .registers 2

    monitor-enter p0

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized blacklist shouldPostpone(Lcom/android/okhttp/Route;)Z
    .registers 3

    monitor-enter p0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method
