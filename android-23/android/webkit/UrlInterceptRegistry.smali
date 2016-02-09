.class public final Landroid/webkit/UrlInterceptRegistry;
.super Ljava/lang/Object;
.source "UrlInterceptRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "intercept"

.field private static mDisabled:Z

.field private static mHandlerList:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z

    #@3
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static declared-synchronized getHandlers()Ljava/util/LinkedList;
    .locals 2

    #@0
    .prologue
    const-class v1, Landroid/webkit/UrlInterceptRegistry;

    #@2
    monitor-enter v1

    #@3
    .line 42
    :try_start_0
    sget-object v0, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 43
    new-instance v0, Ljava/util/LinkedList;

    #@9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@c
    sput-object v0, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    #@e
    .line 44
    :cond_0
    sget-object v0, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public static declared-synchronized getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/PluginData;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    const-class v4, Landroid/webkit/UrlInterceptRegistry;

    #@3
    monitor-enter v4

    #@4
    .line 154
    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    monitor-exit v4

    #@b
    .line 155
    return-object v5

    #@c
    .line 157
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    #@13
    move-result-object v2

    #@14
    .line 158
    .local v2, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/webkit/UrlInterceptHandler;

    #@20
    .line 160
    .local v1, "handler":Landroid/webkit/UrlInterceptHandler;
    invoke-interface {v1, p0, p1}, Landroid/webkit/UrlInterceptHandler;->getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    move-result-object v0

    #@24
    .line 161
    .local v0, "data":Landroid/webkit/PluginData;
    if-eqz v0, :cond_1

    #@26
    monitor-exit v4

    #@27
    .line 162
    return-object v0

    #@28
    .end local v0    # "data":Landroid/webkit/PluginData;
    .end local v1    # "handler":Landroid/webkit/UrlInterceptHandler;
    :cond_2
    monitor-exit v4

    #@29
    .line 165
    return-object v5

    #@2a
    .end local v2    # "iter":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3
.end method

.method public static declared-synchronized getSurrogate(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    const-class v4, Landroid/webkit/UrlInterceptRegistry;

    #@3
    monitor-enter v4

    #@4
    .line 126
    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    monitor-exit v4

    #@b
    .line 127
    return-object v5

    #@c
    .line 129
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    #@13
    move-result-object v1

    #@14
    .line 130
    .local v1, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/webkit/UrlInterceptHandler;

    #@20
    .line 132
    .local v0, "handler":Landroid/webkit/UrlInterceptHandler;
    invoke-interface {v0, p0, p1}, Landroid/webkit/UrlInterceptHandler;->service(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 133
    .local v2, "result":Landroid/webkit/CacheManager$CacheResult;
    if-eqz v2, :cond_1

    #@26
    monitor-exit v4

    #@27
    .line 134
    return-object v2

    #@28
    .end local v0    # "handler":Landroid/webkit/UrlInterceptHandler;
    .end local v2    # "result":Landroid/webkit/CacheManager$CacheResult;
    :cond_2
    monitor-exit v4

    #@29
    .line 137
    return-object v5

    #@2a
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3
.end method

.method public static declared-synchronized registerHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .locals 2
    .param p0, "handler"    # Landroid/webkit/UrlInterceptHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const-class v1, Landroid/webkit/UrlInterceptRegistry;

    #@2
    monitor-enter v1

    #@3
    .line 89
    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 90
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 91
    const/4 v0, 0x1

    #@15
    monitor-exit v1

    #@16
    return v0

    #@17
    .line 93
    :cond_0
    const/4 v0, 0x0

    #@18
    monitor-exit v1

    #@19
    return v0

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public static declared-synchronized setUrlInterceptDisabled(Z)V
    .locals 2
    .param p0, "disabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    #@2
    monitor-enter v0

    #@3
    .line 58
    :try_start_0
    sput-boolean p0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 57
    return-void

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static declared-synchronized unregisterHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .locals 2
    .param p0, "handler"    # Landroid/webkit/UrlInterceptHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const-class v1, Landroid/webkit/UrlInterceptRegistry;

    #@2
    monitor-enter v1

    #@3
    .line 110
    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public static declared-synchronized urlInterceptDisabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    #@2
    monitor-enter v0

    #@3
    .line 72
    :try_start_0
    sget-boolean v1, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method
