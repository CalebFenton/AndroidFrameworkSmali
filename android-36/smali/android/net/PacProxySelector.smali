.class public Landroid/net/PacProxySelector;
.super Ljava/net/ProxySelector;
.source "PacProxySelector.java"


# static fields
.field private static final greylist-max-o PROXY:Ljava/lang/String; = "PROXY "

.field public static final greylist-max-o PROXY_SERVICE:Ljava/lang/String; = "com.android.net.IProxyService"

.field private static final greylist-max-o SOCKS:Ljava/lang/String; = "SOCKS "

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PacProxySelector"


# instance fields
.field private final greylist-max-o mDefaultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProxyService:Lcom/android/net/IProxyService;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 50
    nop

    .line 51
    const-string v0, "com.android.net.IProxyService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    .line 52
    iget-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v0, :cond_1b

    .line 54
    const-string v0, "PacProxySelector"

    const-string v1, "PacProxyService: no proxy service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/net/PacProxySelector;->mDefaultList:Ljava/util/List;

    .line 57
    return-void
.end method

.method private static greylist-max-o parseResponse(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 97
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "split":[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_5e

    aget-object v4, v0, v3

    .line 100
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "trimmed":Ljava/lang/String;
    const-string v6, "DIRECT"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 102
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 103
    :cond_22
    const-string v6, "PROXY "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 104
    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/net/PacProxySelector;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v6

    .line 105
    .local v6, "proxy":Ljava/net/Proxy;
    if-eqz v6, :cond_5a

    .line 106
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 108
    .end local v6    # "proxy":Ljava/net/Proxy;
    :cond_3e
    const-string v6, "SOCKS "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 109
    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/net/PacProxySelector;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v6

    .line 110
    .restart local v6    # "proxy":Ljava/net/Proxy;
    if-eqz v6, :cond_5b

    .line 111
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 108
    .end local v6    # "proxy":Ljava/net/Proxy;
    :cond_5a
    :goto_5a
    nop

    .line 99
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "trimmed":Ljava/lang/String;
    :cond_5b
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 115
    :cond_5e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_69

    .line 116
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_69
    return-object v1
.end method

.method private static greylist-max-o proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;
    .registers 7
    .param p0, "type"    # Ljava/net/Proxy$Type;
    .param p1, "hostPortString"    # Ljava/lang/String;

    .line 123
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "hostPort":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 125
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, "port":I
    new-instance v3, Ljava/net/Proxy;

    invoke-static {v1, v2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v3

    .line 127
    .end local v0    # "hostPort":[Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    :catch_1a
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse proxy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PacProxySelector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist test-api connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .param p3, "failure"    # Ljava/io/IOException;

    .line 136
    return-void
.end method

.method public whitelist test-api select(Ljava/net/URI;)Ljava/util/List;
    .registers 13
    .param p1, "uri"    # Ljava/net/URI;
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

    .line 61
    iget-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v0, :cond_11

    .line 62
    nop

    .line 63
    const-string v0, "com.android.net.IProxyService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    .line 65
    :cond_11
    iget-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    const-string v1, "PacProxySelector"

    if-nez v0, :cond_2a

    .line 66
    const-string/jumbo v0, "select: no proxy service return NO_PROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 69
    :cond_2a
    const/4 v2, 0x0

    .line 75
    .local v2, "response":Ljava/lang/String;
    :try_start_2b
    const-string/jumbo v0, "http"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 76
    new-instance v3, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v7

    const-string v8, "/"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    .line 78
    :cond_4f
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_57
    .catch Ljava/net/URISyntaxException; {:try_start_2b .. :try_end_57} :catch_5e
    .catch Ljava/net/MalformedURLException; {:try_start_2b .. :try_end_57} :catch_58

    .local v0, "urlString":Ljava/lang/String;
    goto :goto_63

    .line 81
    .end local v0    # "urlString":Ljava/lang/String;
    :catch_58
    move-exception v0

    .line 82
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .local v3, "urlString":Ljava/lang/String;
    goto :goto_64

    .line 79
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v3    # "urlString":Ljava/lang/String;
    :catch_5e
    move-exception v0

    .line 80
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "urlString":Ljava/lang/String;
    :goto_63
    move-object v3, v0

    .line 85
    .end local v0    # "urlString":Ljava/lang/String;
    .restart local v3    # "urlString":Ljava/lang/String;
    :goto_64
    :try_start_64
    iget-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Lcom/android/net/IProxyService;->resolvePacFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6e} :catch_70

    move-object v2, v0

    .line 88
    goto :goto_76

    .line 86
    :catch_70
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error resolving PAC File"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_76
    if-nez v2, :cond_7b

    .line 90
    iget-object v0, p0, Landroid/net/PacProxySelector;->mDefaultList:Ljava/util/List;

    return-object v0

    .line 93
    :cond_7b
    invoke-static {v2}, Landroid/net/PacProxySelector;->parseResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
