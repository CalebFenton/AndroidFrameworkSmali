.class public Landroid/net/PacProxySelector;
.super Ljava/net/ProxySelector;
.source "PacProxySelector.java"


# static fields
.field private static final PROXY:Ljava/lang/String; = "PROXY "

.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.net.IProxyService"

.field private static final SOCKS:Ljava/lang/String; = "SOCKS "

.field private static final TAG:Ljava/lang/String; = "PacProxySelector"


# instance fields
.field private final mDefaultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyService:Lcom/android/net/IProxyService;


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    #@3
    .line 49
    const-string/jumbo v0, "com.android.net.IProxyService"

    #@6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 48
    invoke-static {v0}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    #@10
    .line 50
    iget-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    #@12
    if-nez v0, :cond_0

    #@14
    .line 52
    const-string/jumbo v0, "PacProxySelector"

    #@17
    const-string/jumbo v1, "PacManager: no proxy service"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 54
    :cond_0
    const/4 v0, 0x1

    #@1e
    new-array v0, v0, [Ljava/net/Proxy;

    #@20
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@22
    const/4 v2, 0x0

    #@23
    aput-object v1, v0, v2

    #@25
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/net/PacProxySelector;->mDefaultList:Ljava/util/List;

    #@2b
    .line 47
    return-void
.end method

.method private static parseResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 87
    const-string/jumbo v6, ";"

    #@4
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 88
    .local v3, "split":[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@b
    move-result-object v1

    #@c
    .line 89
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    array-length v6, v3

    #@d
    :goto_0
    if-ge v5, v6, :cond_3

    #@f
    aget-object v2, v3, v5

    #@11
    .line 90
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 91
    .local v4, "trimmed":Ljava/lang/String;
    const-string/jumbo v7, "DIRECT"

    #@18
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1

    #@1e
    .line 92
    sget-object v7, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@20
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    .line 89
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@25
    goto :goto_0

    #@26
    .line 93
    :cond_1
    const-string/jumbo v7, "PROXY "

    #@29
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_2

    #@2f
    .line 94
    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@31
    const-string/jumbo v8, "PROXY "

    #@34
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@37
    move-result v8

    #@38
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    invoke-static {v7, v8}, Landroid/net/PacProxySelector;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    #@3f
    move-result-object v0

    #@40
    .line 95
    .local v0, "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_0

    #@42
    .line 96
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_1

    #@46
    .line 98
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_2
    const-string/jumbo v7, "SOCKS "

    #@49
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4c
    move-result v7

    #@4d
    if-eqz v7, :cond_0

    #@4f
    .line 99
    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@51
    const-string/jumbo v8, "SOCKS "

    #@54
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@57
    move-result v8

    #@58
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    invoke-static {v7, v8}, Landroid/net/PacProxySelector;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    #@5f
    move-result-object v0

    #@60
    .line 100
    .restart local v0    # "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_0

    #@62
    .line 101
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@65
    goto :goto_1

    #@66
    .line 105
    .end local v0    # "proxy":Ljava/net/Proxy;
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "trimmed":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@69
    move-result v5

    #@6a
    if-nez v5, :cond_4

    #@6c
    .line 106
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@6e
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@71
    .line 108
    :cond_4
    return-object v1
.end method

.method private static proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 7
    .param p0, "type"    # Ljava/net/Proxy$Type;
    .param p1, "hostPortString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    :try_start_0
    const-string/jumbo v4, ":"

    #@3
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 114
    .local v2, "hostPort":[Ljava/lang/String;
    const/4 v4, 0x0

    #@8
    aget-object v1, v2, v4

    #@a
    .line 115
    .local v1, "host":Ljava/lang/String;
    const/4 v4, 0x1

    #@b
    aget-object v4, v2, v4

    #@d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10
    move-result v3

    #@11
    .line 116
    .local v3, "port":I
    new-instance v4, Ljava/net/Proxy;

    #@13
    invoke-static {v1, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    #@16
    move-result-object v5

    #@17
    invoke-direct {v4, p0, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    return-object v4

    #@1b
    .line 117
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "hostPort":[Ljava/lang/String;
    .end local v3    # "port":I
    :catch_0
    move-exception v0

    #@1c
    .line 118
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "PacProxySelector"

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "Unable to parse proxy "

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    const-string/jumbo v6, " "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 119
    const/4 v4, 0x0

    #@42
    return-object v4
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .param p3, "failure"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 124
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
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

    #@0
    .prologue
    .line 59
    iget-object v4, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 61
    const-string/jumbo v4, "com.android.net.IProxyService"

    #@7
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v4

    #@b
    .line 60
    invoke-static {v4}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    #@e
    move-result-object v4

    #@f
    iput-object v4, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    #@11
    .line 63
    :cond_0
    iget-object v4, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    #@13
    if-nez v4, :cond_1

    #@15
    .line 64
    const-string/jumbo v4, "PacProxySelector"

    #@18
    const-string/jumbo v5, "select: no proxy service return NO_PROXY"

    #@1b
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 65
    const/4 v4, 0x1

    #@1f
    new-array v4, v4, [Ljava/net/Proxy;

    #@21
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@23
    const/4 v6, 0x0

    #@24
    aput-object v5, v4, v6

    #@26
    invoke-static {v4}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    #@29
    move-result-object v4

    #@2a
    return-object v4

    #@2b
    .line 67
    :cond_1
    const/4 v2, 0x0

    #@2c
    .line 70
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result-object v3

    #@34
    .line 75
    .local v3, "urlString":Ljava/lang/String;
    :goto_0
    :try_start_1
    iget-object v4, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    #@36
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-interface {v4, v5, v3}, Lcom/android/net/IProxyService;->resolvePacFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3d
    move-result-object v2

    #@3e
    .line 79
    .end local v2    # "response":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_2

    #@40
    .line 80
    iget-object v4, p0, Landroid/net/PacProxySelector;->mDefaultList:Ljava/util/List;

    #@42
    return-object v4

    #@43
    .line 71
    .end local v3    # "urlString":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@44
    .line 72
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .restart local v3    # "urlString":Ljava/lang/String;
    goto :goto_0

    #@49
    .line 76
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    #@4a
    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PacProxySelector"

    #@4d
    const-string/jumbo v5, "Error resolving PAC File"

    #@50
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_1

    #@54
    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "response":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Landroid/net/PacProxySelector;->parseResponse(Ljava/lang/String;)Ljava/util/List;

    #@57
    move-result-object v4

    #@58
    return-object v4
.end method
