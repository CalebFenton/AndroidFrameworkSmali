.class public abstract Ljava/net/CookieHandler;
.super Ljava/lang/Object;
.source "CookieHandler.java"


# static fields
.field private static greylist-max-o cookieHandler:Ljava/net/CookieHandler;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized whitelist test-api getDefault()Ljava/net/CookieHandler;
    .registers 3

    const-class v0, Ljava/net/CookieHandler;

    monitor-enter v0

    .line 73
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 74
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_e

    .line 75
    sget-object v2, Lsun/security/util/SecurityConstants;->GET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 77
    :cond_e
    sget-object v2, Ljava/net/CookieHandler;->cookieHandler:Ljava/net/CookieHandler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v2

    .line 72
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static declared-synchronized whitelist test-api setDefault(Ljava/net/CookieHandler;)V
    .registers 4
    .param p0, "cHandler"    # Ljava/net/CookieHandler;

    const-class v0, Ljava/net/CookieHandler;

    monitor-enter v0

    .line 93
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 94
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_e

    .line 95
    sget-object v2, Lsun/security/util/SecurityConstants;->SET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 97
    :cond_e
    sput-object p0, Ljava/net/CookieHandler;->cookieHandler:Ljava/net/CookieHandler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 98
    monitor-exit v0

    return-void

    .line 92
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "cHandler":Ljava/net/CookieHandler;
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public abstract whitelist test-api get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api put(Ljava/net/URI;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
