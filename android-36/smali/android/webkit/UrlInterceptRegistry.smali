.class public final Landroid/webkit/UrlInterceptRegistry;
.super Ljava/lang/Object;
.source "UrlInterceptRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "intercept"

.field private static greylist-max-o mDisabled:Z

.field private static greylist-max-o mHandlerList:Ljava/util/LinkedList;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized greylist-max-o getHandlers()Ljava/util/LinkedList;
    .registers 2

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    if-nez v1, :cond_e

    .line 44
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    .line 45
    :cond_e
    sget-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static declared-synchronized greylist-max-r getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/PluginData;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 161
    :try_start_3
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2b

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 162
    monitor-exit v0

    return-object v2

    .line 164
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 165
    .local v1, "iter":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/UrlInterceptHandler;

    .line 167
    .local v3, "handler":Landroid/webkit/UrlInterceptHandler;
    invoke-interface {v3, p0, p1}, Landroid/webkit/UrlInterceptHandler;->getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2b

    .line 168
    .local v4, "data":Landroid/webkit/PluginData;
    if-eqz v4, :cond_28

    .line 169
    monitor-exit v0

    return-object v4

    .line 171
    .end local v3    # "handler":Landroid/webkit/UrlInterceptHandler;
    .end local v4    # "data":Landroid/webkit/PluginData;
    :cond_28
    goto :goto_14

    .line 172
    :cond_29
    monitor-exit v0

    return-object v2

    .line 160
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local p0    # "url":Ljava/lang/String;
    .end local p1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2b
    move-exception p0

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public static declared-synchronized greylist-max-o getSurrogate(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 131
    :try_start_3
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2b

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 132
    monitor-exit v0

    return-object v2

    .line 134
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 135
    .local v1, "iter":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/UrlInterceptHandler;

    .line 137
    .local v3, "handler":Landroid/webkit/UrlInterceptHandler;
    invoke-interface {v3, p0, p1}, Landroid/webkit/UrlInterceptHandler;->service(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2b

    .line 138
    .local v4, "result":Landroid/webkit/CacheManager$CacheResult;
    if-eqz v4, :cond_28

    .line 139
    monitor-exit v0

    return-object v4

    .line 141
    .end local v3    # "handler":Landroid/webkit/UrlInterceptHandler;
    .end local v4    # "result":Landroid/webkit/CacheManager$CacheResult;
    :cond_28
    goto :goto_14

    .line 142
    :cond_29
    monitor-exit v0

    return-object v2

    .line 130
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local p0    # "url":Ljava/lang/String;
    .end local p1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2b
    move-exception p0

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public static declared-synchronized greylist registerHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .registers 3
    .param p0, "handler"    # Landroid/webkit/UrlInterceptHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 92
    :try_start_3
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 93
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    .line 94
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 96
    :cond_17
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 91
    .end local p0    # "handler":Landroid/webkit/UrlInterceptHandler;
    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public static declared-synchronized greylist setUrlInterceptDisabled(Z)V
    .registers 2
    .param p0, "disabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 60
    :try_start_3
    sput-boolean p0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 61
    monitor-exit v0

    return-void

    .line 59
    .end local p0    # "disabled":Z
    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static declared-synchronized greylist unregisterHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .registers 3
    .param p0, "handler"    # Landroid/webkit/UrlInterceptHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 114
    :try_start_3
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return v1

    .line 114
    .end local p0    # "handler":Landroid/webkit/UrlInterceptHandler;
    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static declared-synchronized greylist-max-o urlInterceptDisabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-boolean v1, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 74
    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method
