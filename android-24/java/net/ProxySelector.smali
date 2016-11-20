.class public abstract Ljava/net/ProxySelector;
.super Ljava/lang/Object;
.source "ProxySelector.java"


# static fields
.field private static theProxySelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 72
    :try_start_0
    const-string/jumbo v2, "sun.net.spi.DefaultProxySelector"

    #@4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 73
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    #@a
    const-class v2, Ljava/net/ProxySelector;

    #@c
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/net/ProxySelector;

    #@18
    sput-object v2, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 60
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 76
    :catch_0
    move-exception v1

    #@1c
    .line 77
    .local v1, "e":Ljava/lang/Exception;
    sput-object v3, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;

    #@1e
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDefault()Ljava/net/ProxySelector;
    .locals 2

    #@0
    .prologue
    .line 92
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 93
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 94
    sget-object v1, Lsun/security/util/SecurityConstants;->GET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 96
    :cond_0
    sget-object v1, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;

    #@d
    return-object v1
.end method

.method public static setDefault(Ljava/net/ProxySelector;)V
    .locals 2
    .param p0, "ps"    # Ljava/net/ProxySelector;

    #@0
    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 116
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 117
    sget-object v1, Lsun/security/util/SecurityConstants;->SET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 119
    :cond_0
    sput-object p0, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;

    #@d
    .line 114
    return-void
.end method


# virtual methods
.method public abstract connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
.end method

.method public abstract select(Ljava/net/URI;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end method
