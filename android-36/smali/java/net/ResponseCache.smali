.class public abstract Ljava/net/ResponseCache;
.super Ljava/lang/Object;
.source "ResponseCache.java"


# static fields
.field private static greylist-max-o theResponseCache:Ljava/net/ResponseCache;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized whitelist test-api getDefault()Ljava/net/ResponseCache;
    .registers 3

    const-class v0, Ljava/net/ResponseCache;

    monitor-enter v0

    .line 84
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 85
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_e

    .line 86
    sget-object v2, Lsun/security/util/SecurityConstants;->GET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 88
    :cond_e
    sget-object v2, Ljava/net/ResponseCache;->theResponseCache:Ljava/net/ResponseCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v2

    .line 83
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static declared-synchronized whitelist test-api setDefault(Ljava/net/ResponseCache;)V
    .registers 4
    .param p0, "responseCache"    # Ljava/net/ResponseCache;

    const-class v0, Ljava/net/ResponseCache;

    monitor-enter v0

    .line 107
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 108
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_e

    .line 109
    sget-object v2, Lsun/security/util/SecurityConstants;->SET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 111
    :cond_e
    sput-object p0, Ljava/net/ResponseCache;->theResponseCache:Ljava/net/ResponseCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 112
    monitor-exit v0

    return-void

    .line 106
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "responseCache":Ljava/net/ResponseCache;
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public abstract whitelist test-api get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
