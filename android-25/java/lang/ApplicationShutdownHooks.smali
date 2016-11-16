.class Ljava/lang/ApplicationShutdownHooks;
.super Ljava/lang/Object;
.source "ApplicationShutdownHooks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ApplicationShutdownHooks$1;
    }
.end annotation


# static fields
.field private static hooks:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 44
    :try_start_0
    new-instance v1, Ljava/lang/ApplicationShutdownHooks$1;

    #@2
    invoke-direct {v1}, Ljava/lang/ApplicationShutdownHooks$1;-><init>()V

    #@5
    .line 42
    const/4 v2, 0x1

    #@6
    .line 43
    const/4 v3, 0x0

    #@7
    .line 42
    invoke-static {v2, v3, v1}, Ljava/lang/Shutdown;->add(IZLjava/lang/Runnable;)V

    #@a
    .line 50
    new-instance v1, Ljava/util/IdentityHashMap;

    #@c
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    #@f
    sput-object v1, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 37
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    #@12
    .line 51
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_0
    move-exception v0

    #@13
    .line 54
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    #@14
    sput-object v1, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    #@16
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static declared-synchronized add(Ljava/lang/Thread;)V
    .locals 3
    .param p0, "hook"    # Ljava/lang/Thread;

    #@0
    .prologue
    const-class v1, Ljava/lang/ApplicationShutdownHooks;

    #@2
    monitor-enter v1

    #@3
    .line 65
    :try_start_0
    sget-object v0, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Shutdown in progress"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v2, "Hook already running"

    #@1e
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 71
    :cond_1
    sget-object v0, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    #@24
    invoke-virtual {v0, p0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v2, "Hook previously registered"

    #@2f
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 74
    :cond_2
    sget-object v0, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    #@35
    invoke-virtual {v0, p0, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    monitor-exit v1

    #@39
    .line 64
    return-void
.end method

.method static declared-synchronized remove(Ljava/lang/Thread;)Z
    .locals 3
    .param p0, "hook"    # Ljava/lang/Thread;

    #@0
    .prologue
    const-class v1, Ljava/lang/ApplicationShutdownHooks;

    #@2
    monitor-enter v1

    #@3
    .line 81
    :try_start_0
    sget-object v0, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Shutdown in progress"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 84
    :cond_0
    if-nez p0, :cond_1

    #@15
    .line 85
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    #@17
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 87
    :cond_1
    sget-object v0, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    #@1d
    invoke-virtual {v0, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result-object v0

    #@21
    if-eqz v0, :cond_2

    #@23
    const/4 v0, 0x1

    #@24
    :goto_0
    monitor-exit v1

    #@25
    return v0

    #@26
    :cond_2
    const/4 v0, 0x0

    #@27
    goto :goto_0
.end method

.method static runHooks()V
    .locals 6

    #@0
    .prologue
    .line 96
    const-class v5, Ljava/lang/ApplicationShutdownHooks;

    #@2
    monitor-enter v5

    #@3
    .line 97
    :try_start_0
    sget-object v4, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;

    #@5
    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    #@8
    move-result-object v2

    #@9
    .line 98
    .local v2, "threads":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Thread;>;"
    const/4 v4, 0x0

    #@a
    sput-object v4, Ljava/lang/ApplicationShutdownHooks;->hooks:Ljava/util/IdentityHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v5

    #@d
    .line 101
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "hook$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/Thread;

    #@1d
    .line 102
    .local v0, "hook":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@20
    goto :goto_0

    #@21
    .line 96
    .end local v0    # "hook":Ljava/lang/Thread;
    .end local v1    # "hook$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@22
    monitor-exit v5

    #@23
    throw v4

    #@24
    .line 104
    .restart local v1    # "hook$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_1

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/Thread;

    #@34
    .line 106
    .restart local v0    # "hook":Ljava/lang/Thread;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@37
    goto :goto_1

    #@38
    .line 107
    :catch_0
    move-exception v3

    #@39
    .local v3, "x":Ljava/lang/InterruptedException;
    goto :goto_1

    #@3a
    .line 94
    .end local v0    # "hook":Ljava/lang/Thread;
    .end local v3    # "x":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
