.class Ljava/net/Inet6AddressImpl;
.super Ljava/lang/Object;
.source "Inet6AddressImpl.java"

# interfaces
.implements Ljava/net/InetAddressImpl;


# static fields
.field private static final addressCache:Ljava/net/AddressCache;

.field private static anyLocalAddress:Ljava/net/InetAddress;

.field private static loopbackAddresses:[Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/net/AddressCache;

    #@2
    invoke-direct {v0}, Ljava/net/AddressCache;-><init>()V

    #@5
    sput-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    #@7
    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private native getHostByAddr0([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method private native isReachable0([BII[BII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v6

    #@4
    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 88
    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    #@9
    invoke-virtual {v6, p0, p1}, Ljava/net/AddressCache;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    .line 89
    .local v2, "cachedResult":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@f
    .line 90
    instance-of v6, v2, [Ljava/net/InetAddress;

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 92
    check-cast v2, [Ljava/net/InetAddress;

    #@15
    .end local v2    # "cachedResult":Ljava/lang/Object;
    return-object v2

    #@16
    .line 95
    .restart local v2    # "cachedResult":Ljava/lang/Object;
    :cond_0
    new-instance v6, Ljava/net/UnknownHostException;

    #@18
    check-cast v2, Ljava/lang/String;

    #@1a
    .end local v2    # "cachedResult":Ljava/lang/Object;
    invoke-direct {v6, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v6

    #@1e
    .line 99
    .restart local v2    # "cachedResult":Ljava/lang/Object;
    :cond_1
    :try_start_0
    new-instance v5, Landroid/system/StructAddrinfo;

    #@20
    invoke-direct {v5}, Landroid/system/StructAddrinfo;-><init>()V

    #@23
    .line 100
    .local v5, "hints":Landroid/system/StructAddrinfo;
    sget v6, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    #@25
    iput v6, v5, Landroid/system/StructAddrinfo;->ai_flags:I

    #@27
    .line 101
    sget v6, Landroid/system/OsConstants;->AF_UNSPEC:I

    #@29
    iput v6, v5, Landroid/system/StructAddrinfo;->ai_family:I

    #@2b
    .line 105
    sget v6, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@2d
    iput v6, v5, Landroid/system/StructAddrinfo;->ai_socktype:I

    #@2f
    .line 106
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@31
    invoke-interface {v6, p0, v5, p1}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    #@34
    move-result-object v1

    #@35
    .line 108
    .local v1, "addresses":[Ljava/net/InetAddress;
    const/4 v6, 0x0

    #@36
    array-length v7, v1

    #@37
    :goto_0
    if-ge v6, v7, :cond_2

    #@39
    aget-object v0, v1, v6

    #@3b
    .line 109
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@3e
    move-result-object v8

    #@3f
    iput-object p0, v8, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@41
    .line 108
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 111
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_2
    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    #@46
    invoke-virtual {v6, p0, p1, v1}, Ljava/net/AddressCache;->put(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 112
    return-object v1

    #@4a
    .line 113
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v5    # "hints":Landroid/system/StructAddrinfo;
    :catch_0
    move-exception v4

    #@4b
    .line 117
    .local v4, "gaiException":Landroid/system/GaiException;
    invoke-virtual {v4}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    #@4e
    move-result-object v6

    #@4f
    instance-of v6, v6, Landroid/system/ErrnoException;

    #@51
    if-eqz v6, :cond_3

    #@53
    .line 118
    invoke-virtual {v4}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    #@56
    move-result-object v6

    #@57
    check-cast v6, Landroid/system/ErrnoException;

    #@59
    iget v6, v6, Landroid/system/ErrnoException;->errno:I

    #@5b
    sget v7, Landroid/system/OsConstants;->EACCES:I

    #@5d
    if-ne v6, v7, :cond_3

    #@5f
    .line 119
    new-instance v6, Ljava/lang/SecurityException;

    #@61
    const-string/jumbo v7, "Permission denied (missing INTERNET permission?)"

    #@64
    invoke-direct {v6, v7, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@67
    throw v6

    #@68
    .line 123
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v7, "Unable to resolve host \""

    #@70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    const-string/jumbo v7, "\": "

    #@7b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@81
    iget v8, v4, Landroid/system/GaiException;->error:I

    #@83
    invoke-interface {v7, v8}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v3

    #@8f
    .line 124
    .local v3, "detailMessage":Ljava/lang/String;
    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    #@91
    invoke-virtual {v6, p0, p1, v3}, Ljava/net/AddressCache;->putUnknownHost(Ljava/lang/String;ILjava/lang/String;)V

    #@94
    .line 125
    invoke-virtual {v4, v3}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    #@97
    move-result-object v6

    #@98
    throw v6
.end method


# virtual methods
.method public anyLocalAddress()Ljava/net/InetAddress;
    .locals 4

    #@0
    .prologue
    .line 188
    const-class v2, Ljava/net/Inet6AddressImpl;

    #@2
    monitor-enter v2

    #@3
    .line 193
    :try_start_0
    sget-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 194
    new-instance v0, Ljava/net/Inet6Address;

    #@9
    invoke-direct {v0}, Ljava/net/Inet6Address;-><init>()V

    #@c
    .line 195
    .local v0, "anyAddress":Ljava/net/Inet6Address;
    invoke-virtual {v0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v3, "::"

    #@13
    iput-object v3, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@15
    .line 196
    sput-object v0, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    #@17
    .line 199
    .end local v0    # "anyAddress":Ljava/net/Inet6Address;
    :cond_0
    sget-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    return-object v1

    #@1b
    .line 188
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public clearAddressCache()V
    .locals 1

    #@0
    .prologue
    .line 138
    sget-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    #@2
    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    #@5
    .line 137
    return-void
.end method

.method public getHostByAddr([B)Ljava/lang/String;
    .locals 1
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 133
    invoke-direct {p0, p1}, Ljava/net/Inet6AddressImpl;->getHostByAddr0([B)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z
    .locals 11
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "netif"    # Ljava/net/NetworkInterface;
    .param p4, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 143
    const/4 v4, 0x0

    #@2
    .line 144
    .local v4, "ifaddr":[B
    const/4 v2, -0x1

    #@3
    .line 145
    .local v2, "scope":I
    const/4 v6, -0x1

    #@4
    .line 146
    .local v6, "netif_scope":I
    if-eqz p3, :cond_2

    #@6
    .line 153
    invoke-virtual {p3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@9
    move-result-object v9

    #@a
    .line 154
    .local v9, "it":Ljava/util/Enumeration;
    const/4 v7, 0x0

    #@b
    .line 155
    :cond_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 156
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v7

    #@15
    check-cast v7, Ljava/net/InetAddress;

    #@17
    .line 157
    .local v7, "inetaddr":Ljava/net/InetAddress;
    invoke-virtual {v7}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 158
    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    #@24
    move-result-object v4

    #@25
    .line 159
    .local v4, "ifaddr":[B
    instance-of v0, v7, Ljava/net/Inet6Address;

    #@27
    if-eqz v0, :cond_1

    #@29
    move-object v0, v7

    #@2a
    .line 160
    check-cast v0, Ljava/net/Inet6Address;

    #@2c
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    #@2f
    move-result v6

    #@30
    .line 165
    .end local v4    # "ifaddr":[B
    .end local v7    # "inetaddr":Ljava/net/InetAddress;
    :cond_1
    if-nez v4, :cond_2

    #@32
    .line 168
    return v10

    #@33
    .line 171
    .end local v9    # "it":Ljava/util/Enumeration;
    :cond_2
    instance-of v0, p1, Ljava/net/Inet6Address;

    #@35
    if-eqz v0, :cond_3

    #@37
    move-object v0, p1

    #@38
    .line 172
    check-cast v0, Ljava/net/Inet6Address;

    #@3a
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    #@3d
    move-result v2

    #@3e
    .line 174
    :cond_3
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@41
    move-result-object v0

    #@42
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@45
    .line 180
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    #@48
    move-result-object v1

    #@49
    move-object v0, p0

    #@4a
    move v3, p2

    #@4b
    move v5, p4

    #@4c
    invoke-direct/range {v0 .. v6}, Ljava/net/Inet6AddressImpl;->isReachable0([BII[BII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    move-result v0

    #@50
    return v0

    #@51
    .line 181
    :catch_0
    move-exception v8

    #@52
    .line 182
    .local v8, "ioe":Ljava/io/IOException;
    return v10
.end method

.method public lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6AddressImpl;->loopbackAddresses()[Ljava/net/InetAddress;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 65
    :cond_1
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    #@10
    move-result-object v0

    #@11
    .line 66
    .local v0, "result":Ljava/net/InetAddress;
    if-eqz v0, :cond_3

    #@13
    .line 67
    invoke-static {p1, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    #@16
    move-result-object v0

    #@17
    .line 68
    if-nez v0, :cond_2

    #@19
    .line 69
    new-instance v1, Ljava/net/UnknownHostException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Deprecated IPv4 address format: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 71
    :cond_2
    const/4 v1, 0x1

    #@34
    new-array v1, v1, [Ljava/net/InetAddress;

    #@36
    const/4 v2, 0x0

    #@37
    aput-object v0, v1, v2

    #@39
    return-object v1

    #@3a
    .line 74
    :cond_3
    invoke-static {p1, p2}, Ljava/net/Inet6AddressImpl;->lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@3d
    move-result-object v1

    #@3e
    return-object v1
.end method

.method public loopbackAddresses()[Ljava/net/InetAddress;
    .locals 4

    #@0
    .prologue
    .line 205
    const-class v1, Ljava/net/Inet6AddressImpl;

    #@2
    monitor-enter v1

    #@3
    .line 210
    :try_start_0
    sget-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 211
    const/4 v0, 0x2

    #@8
    new-array v0, v0, [Ljava/net/InetAddress;

    #@a
    sget-object v2, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v0, v3

    #@f
    sget-object v2, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v0, v3

    #@14
    sput-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    #@16
    .line 214
    :cond_0
    sget-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 205
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method
