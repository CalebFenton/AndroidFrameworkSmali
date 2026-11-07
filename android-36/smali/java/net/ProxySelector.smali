.class public abstract Ljava/net/ProxySelector;
.super Ljava/lang/Object;
.source "ProxySelector.java"


# static fields
.field private static greylist-max-o theProxySelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 72
    :try_start_0
    const-string v0, "sun.net.spi.DefaultProxySelector"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_18

    const-class v1, Ljava/net/ProxySelector;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/ProxySelector;

    sput-object v1, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 78
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    goto :goto_1d

    .line 76
    :catch_19
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api getDefault()Ljava/net/ProxySelector;
    .registers 2

    .line 92
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 93
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 94
    sget-object v1, Lsun/security/util/SecurityConstants;->GET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 96
    :cond_b
    sget-object v1, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;

    return-object v1
.end method

.method public static whitelist test-api setDefault(Ljava/net/ProxySelector;)V
    .registers 3
    .param p0, "ps"    # Ljava/net/ProxySelector;

    .line 115
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 116
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 117
    sget-object v1, Lsun/security/util/SecurityConstants;->SET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 119
    :cond_b
    sput-object p0, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;

    .line 120
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
.end method

.method public abstract whitelist test-api select(Ljava/net/URI;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end method
