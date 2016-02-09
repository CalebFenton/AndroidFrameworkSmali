.class public Ljava/net/InetAddress;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NETID_UNSET:I = 0x0

.field public static final UNSPECIFIED:Ljava/net/InetAddress;

.field private static final addressCache:Ljava/net/AddressCache;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# instance fields
.field private family:I

.field hostName:Ljava/lang/String;

.field ipaddress:[B


# direct methods
.method static synthetic -wrap0(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 1
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "source"    # Ljava/net/InetAddress;
    .param p3, "timeout"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetAddress;->isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 126
    new-instance v0, Ljava/net/AddressCache;

    #@3
    invoke-direct {v0}, Ljava/net/AddressCache;-><init>()V

    #@6
    sput-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    #@8
    .line 143
    new-instance v0, Ljava/net/InetAddress;

    #@a
    sget v1, Landroid/system/OsConstants;->AF_UNSPEC:I

    #@c
    invoke-direct {v0, v1, v2, v2}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    #@f
    sput-object v0, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    #@11
    .line 866
    const/4 v0, 0x3

    #@12
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@14
    .line 867
    new-instance v1, Ljava/io/ObjectStreamField;

    #@16
    const-string/jumbo v2, "address"

    #@19
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1b
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1e
    const/4 v2, 0x0

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 868
    new-instance v1, Ljava/io/ObjectStreamField;

    #@23
    const-string/jumbo v2, "family"

    #@26
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@28
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@2b
    const/4 v2, 0x1

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 869
    new-instance v1, Ljava/io/ObjectStreamField;

    #@30
    const-string/jumbo v2, "hostName"

    #@33
    const-class v3, Ljava/lang/String;

    #@35
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@38
    const/4 v2, 0x2

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 866
    sput-object v0, Ljava/net/InetAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@3d
    .line 124
    return-void
.end method

.method constructor <init>(I[BLjava/lang/String;)V
    .locals 0
    .param p1, "family"    # I
    .param p2, "ipaddress"    # [B
    .param p3, "hostName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 151
    iput p1, p0, Ljava/net/InetAddress;->family:I

    #@5
    .line 152
    iput-object p2, p0, Ljava/net/InetAddress;->ipaddress:[B

    #@7
    .line 153
    iput-object p3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@9
    .line 150
    return-void
.end method

.method private static badAddressLength([B)Ljava/net/UnknownHostException;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 837
    new-instance v0, Ljava/net/UnknownHostException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Address is neither 4 or 16 bytes: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method

.method private static bytesToInetAddresses([[BLjava/lang/String;)[Ljava/net/InetAddress;
    .locals 3
    .param p0, "rawAddresses"    # [[B
    .param p1, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    array-length v2, p0

    #@1
    new-array v1, v2, [Ljava/net/InetAddress;

    #@3
    .line 196
    .local v1, "returnedAddresses":[Ljava/net/InetAddress;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 197
    aget-object v2, p0, v0

    #@9
    invoke-static {v2, p1}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    #@c
    move-result-object v2

    #@d
    aput-object v2, v1, v0

    #@f
    .line 196
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 199
    :cond_0
    return-object v1
.end method

.method public static clearDnsCache()V
    .locals 1

    #@0
    .prologue
    .line 480
    sget-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    #@2
    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    #@5
    .line 479
    return-void
.end method

.method private static disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 267
    instance-of v0, p1, Ljava/net/Inet4Address;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/16 v0, 0x3a

    #@6
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v0

    #@a
    const/4 v1, -0x1

    #@b
    if-eq v0, v1, :cond_1

    #@d
    .line 268
    :cond_0
    return-object p1

    #@e
    .line 273
    :cond_1
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@10
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    #@12
    invoke-interface {v0, v1, p0}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/net/InetAddress;

    #@b
    return-object v0
.end method

.method private static getAllByNameImpl(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 239
    :cond_0
    invoke-static {}, Ljava/net/InetAddress;->loopbackAddresses()[Ljava/net/InetAddress;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 243
    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    #@10
    move-result-object v0

    #@11
    .line 244
    .local v0, "result":Ljava/net/InetAddress;
    if-eqz v0, :cond_3

    #@13
    .line 245
    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    #@16
    move-result-object v0

    #@17
    .line 246
    if-nez v0, :cond_2

    #@19
    .line 247
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
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 249
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
    .line 252
    :cond_3
    invoke-static {p0, p1}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, [Ljava/net/InetAddress;

    #@44
    return-object v1
.end method

.method public static getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    invoke-static {p0, p1}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Ljava/net/InetAddress;

    #@a
    return-object v0
.end method

.method public static getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .locals 1
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "ipAddress"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 813
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;
    .locals 2
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "ipAddress"    # [B
    .param p2, "scopeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 817
    if-nez p1, :cond_0

    #@2
    .line 818
    new-instance v0, Ljava/net/UnknownHostException;

    #@4
    const-string/jumbo v1, "ipAddress == null"

    #@7
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 820
    :cond_0
    array-length v0, p1

    #@c
    const/4 v1, 0x4

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 821
    new-instance v1, Ljava/net/Inet4Address;

    #@11
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [B

    #@17
    invoke-direct {v1, v0, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    #@1a
    return-object v1

    #@1b
    .line 822
    :cond_1
    array-length v0, p1

    #@1c
    const/16 v1, 0x10

    #@1e
    if-ne v0, v1, :cond_3

    #@20
    .line 826
    invoke-static {p1}, Ljava/net/InetAddress;->isIPv4MappedAddress([B)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 827
    new-instance v0, Ljava/net/Inet4Address;

    #@28
    invoke-static {p1}, Ljava/net/InetAddress;->ipv4MappedToIPv4([B)[B

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, v1, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    #@2f
    return-object v0

    #@30
    .line 829
    :cond_2
    new-instance v1, Ljava/net/Inet6Address;

    #@32
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, [B

    #@38
    invoke-direct {v1, v0, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    #@3b
    return-object v1

    #@3c
    .line 832
    :cond_3
    invoke-static {p1}, Ljava/net/InetAddress;->badAddressLength([B)Ljava/net/UnknownHostException;

    #@3f
    move-result-object v0

    #@40
    throw v0
.end method

.method public static getByAddress([B)Ljava/net/InetAddress;
    .locals 2
    .param p0, "ipAddress"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 793
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {v0, p0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 305
    invoke-static {p0, v1}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@4
    move-result-object v0

    #@5
    aget-object v0, v0, v1

    #@7
    return-object v0
.end method

.method public static getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 320
    invoke-static {p0, p1}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    aget-object v0, v0, v1

    #@7
    return-object v0
.end method

.method private static getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 484
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 486
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@9
    sget v3, Landroid/system/OsConstants;->NI_NAMEREQD:I

    #@b
    invoke-interface {v2, p0, v3}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 487
    .local v1, "hostname":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    #@11
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, [B

    #@17
    invoke-static {v2, v1}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 488
    .end local v1    # "hostname":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1d
    .line 489
    .local v0, "gaiException":Landroid/system/GaiException;
    invoke-virtual {v0}, Landroid/system/GaiException;->rethrowAsUnknownHostException()Ljava/net/UnknownHostException;

    #@20
    move-result-object v2

    #@21
    throw v2
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 408
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3
    invoke-interface {v1}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    #@6
    move-result-object v1

    #@7
    iget-object v0, v1, Landroid/system/StructUtsname;->nodename:Ljava/lang/String;

    #@9
    .line 409
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0, v2}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@c
    move-result-object v1

    #@d
    aget-object v1, v1, v2

    #@f
    return-object v1
.end method

.method public static getLoopbackAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 546
    sget-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method private static ipv4MappedToIPv4([B)[B
    .locals 4
    .param p0, "mappedAddress"    # [B

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 859
    new-array v1, v3, [B

    #@3
    .line 860
    .local v1, "ipv4Address":[B
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@6
    .line 861
    add-int/lit8 v2, v0, 0xc

    #@8
    aget-byte v2, p0, v2

    #@a
    aput-byte v2, v1, v0

    #@c
    .line 860
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 863
    :cond_0
    return-object v1
.end method

.method private static isIPv4MappedAddress([B)Z
    .locals 6
    .param p0, "ipAddress"    # [B

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    const/4 v4, -0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 844
    if-eqz p0, :cond_0

    #@6
    array-length v1, p0

    #@7
    const/16 v2, 0x10

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 845
    :cond_0
    return v3

    #@c
    .line 847
    :cond_1
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_3

    #@f
    .line 848
    aget-byte v1, p0, v0

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 849
    return v3

    #@14
    .line 847
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 852
    :cond_3
    aget-byte v1, p0, v5

    #@19
    if-ne v1, v4, :cond_4

    #@1b
    const/16 v1, 0xb

    #@1d
    aget-byte v1, p0, v1

    #@1f
    if-eq v1, v4, :cond_5

    #@21
    .line 853
    :cond_4
    return v3

    #@22
    .line 855
    :cond_5
    const/4 v1, 0x1

    #@23
    return v1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 513
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    #@4
    move-result-object v0

    #@5
    .line 514
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    #@7
    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    :cond_0
    return v1
.end method

.method private isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 5
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "source"    # Ljava/net/InetAddress;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 768
    const/4 v3, 0x1

    #@1
    invoke-static {v3}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    #@4
    move-result-object v1

    #@5
    .line 769
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    #@6
    .line 771
    .local v2, "reached":Z
    if-eqz p2, :cond_0

    #@8
    .line 772
    const/4 v3, 0x0

    #@9
    :try_start_0
    invoke-static {v1, p2, v3}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@c
    .line 774
    :cond_0
    const/4 v3, 0x7

    #@d
    invoke-static {v1, p1, v3, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 775
    const/4 v2, 0x1

    #@11
    .line 783
    :cond_1
    :goto_0
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    #@14
    .line 785
    return v2

    #@15
    .line 776
    :catch_0
    move-exception v0

    #@16
    .line 777
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    #@19
    move-result-object v3

    #@1a
    instance-of v3, v3, Landroid/system/ErrnoException;

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 779
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Landroid/system/ErrnoException;

    #@24
    iget v3, v3, Landroid/system/ErrnoException;->errno:I

    #@26
    sget v4, Landroid/system/OsConstants;->ECONNREFUSED:I

    #@28
    if-ne v3, v4, :cond_2

    #@2a
    const/4 v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    :cond_2
    const/4 v2, 0x0

    #@2d
    goto :goto_0
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
    .line 431
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v6

    #@4
    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 433
    sget-object v6, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    #@9
    invoke-virtual {v6, p0, p1}, Ljava/net/AddressCache;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    .line 434
    .local v2, "cachedResult":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@f
    .line 435
    instance-of v6, v2, [Ljava/net/InetAddress;

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 437
    check-cast v2, [Ljava/net/InetAddress;

    #@15
    .end local v2    # "cachedResult":Ljava/lang/Object;
    return-object v2

    #@16
    .line 440
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
    .line 444
    .restart local v2    # "cachedResult":Ljava/lang/Object;
    :cond_1
    :try_start_0
    new-instance v5, Landroid/system/StructAddrinfo;

    #@20
    invoke-direct {v5}, Landroid/system/StructAddrinfo;-><init>()V

    #@23
    .line 445
    .local v5, "hints":Landroid/system/StructAddrinfo;
    sget v6, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    #@25
    iput v6, v5, Landroid/system/StructAddrinfo;->ai_flags:I

    #@27
    .line 446
    sget v6, Landroid/system/OsConstants;->AF_UNSPEC:I

    #@29
    iput v6, v5, Landroid/system/StructAddrinfo;->ai_family:I

    #@2b
    .line 450
    sget v6, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@2d
    iput v6, v5, Landroid/system/StructAddrinfo;->ai_socktype:I

    #@2f
    .line 451
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@31
    invoke-interface {v6, p0, v5, p1}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    #@34
    move-result-object v1

    #@35
    .line 453
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
    .line 454
    .local v0, "address":Ljava/net/InetAddress;
    iput-object p0, v0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@3d
    .line 453
    add-int/lit8 v6, v6, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 456
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_2
    sget-object v6, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    #@42
    invoke-virtual {v6, p0, p1, v1}, Ljava/net/AddressCache;->put(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 457
    return-object v1

    #@46
    .line 458
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v5    # "hints":Landroid/system/StructAddrinfo;
    :catch_0
    move-exception v4

    #@47
    .line 462
    .local v4, "gaiException":Landroid/system/GaiException;
    invoke-virtual {v4}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    #@4a
    move-result-object v6

    #@4b
    instance-of v6, v6, Landroid/system/ErrnoException;

    #@4d
    if-eqz v6, :cond_3

    #@4f
    .line 463
    invoke-virtual {v4}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    #@52
    move-result-object v6

    #@53
    check-cast v6, Landroid/system/ErrnoException;

    #@55
    iget v6, v6, Landroid/system/ErrnoException;->errno:I

    #@57
    sget v7, Landroid/system/OsConstants;->EACCES:I

    #@59
    if-ne v6, v7, :cond_3

    #@5b
    .line 464
    new-instance v6, Ljava/lang/SecurityException;

    #@5d
    const-string/jumbo v7, "Permission denied (missing INTERNET permission?)"

    #@60
    invoke-direct {v6, v7, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    throw v6

    #@64
    .line 468
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v7, "Unable to resolve host \""

    #@6c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    const-string/jumbo v7, "\": "

    #@77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@7d
    iget v8, v4, Landroid/system/GaiException;->error:I

    #@7f
    invoke-interface {v7, v8}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    .line 469
    .local v3, "detailMessage":Ljava/lang/String;
    sget-object v6, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    #@8d
    invoke-virtual {v6, p0, p1, v3}, Ljava/net/AddressCache;->putUnknownHost(Ljava/lang/String;ILjava/lang/String;)V

    #@90
    .line 470
    invoke-virtual {v4, v3}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    #@93
    move-result-object v6

    #@94
    throw v6
.end method

.method private static loopbackAddresses()[Ljava/net/InetAddress;
    .locals 3

    #@0
    .prologue
    .line 538
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/net/InetAddress;

    #@3
    sget-object v1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    sget-object v1, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    return-object v0
.end method

.method private static makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    array-length v0, p0

    #@1
    const/4 v1, 0x4

    #@2
    if-ne v0, v1, :cond_0

    #@4
    .line 257
    new-instance v0, Ljava/net/Inet4Address;

    #@6
    invoke-direct {v0, p0, p1}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    #@9
    return-object v0

    #@a
    .line 258
    :cond_0
    array-length v0, p0

    #@b
    const/16 v1, 0x10

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 259
    new-instance v0, Ljava/net/Inet6Address;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-direct {v0, p0, p1, v1}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    #@15
    return-object v0

    #@16
    .line 261
    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->badAddressLength([B)Ljava/net/UnknownHostException;

    #@19
    move-result-object v0

    #@1a
    throw v0
.end method

.method public static parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "numericAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 526
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 527
    :cond_0
    sget-object v1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    #@a
    return-object v1

    #@b
    .line 529
    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    #@e
    move-result-object v0

    #@f
    .line 530
    .local v0, "result":Ljava/net/InetAddress;
    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    #@12
    move-result-object v0

    #@13
    .line 531
    if-nez v0, :cond_2

    #@15
    .line 532
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Not a numeric address: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 534
    :cond_2
    return-object v0
.end method

.method private static parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 278
    const-string/jumbo v4, "["

    #@5
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    const-string/jumbo v4, "]"

    #@e
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    const/16 v4, 0x3a

    #@16
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    #@19
    move-result v4

    #@1a
    const/4 v5, -0x1

    #@1b
    if-eq v4, v5, :cond_0

    #@1d
    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v4

    #@21
    add-int/lit8 v4, v4, -0x1

    #@23
    const/4 v5, 0x1

    #@24
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object p0

    #@28
    .line 281
    :cond_0
    new-instance v1, Landroid/system/StructAddrinfo;

    #@2a
    invoke-direct {v1}, Landroid/system/StructAddrinfo;-><init>()V

    #@2d
    .line 282
    .local v1, "hints":Landroid/system/StructAddrinfo;
    sget v4, Landroid/system/OsConstants;->AI_NUMERICHOST:I

    #@2f
    iput v4, v1, Landroid/system/StructAddrinfo;->ai_flags:I

    #@31
    .line 283
    const/4 v0, 0x0

    #@32
    .line 285
    .local v0, "addresses":[Ljava/net/InetAddress;
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@34
    const/4 v5, 0x0

    #@35
    invoke-interface {v4, p0, v1, v5}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result-object v0

    #@39
    .line 288
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    :goto_0
    if-eqz v0, :cond_1

    #@3b
    aget-object v3, v0, v6

    #@3d
    :cond_1
    return-object v3

    #@3e
    .line 286
    .restart local v0    # "addresses":[Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    #@3f
    .local v2, "ignored":Landroid/system/GaiException;
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 886
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v1

    #@5
    .line 887
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v2, "address"

    #@8
    invoke-virtual {v1, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 888
    .local v0, "addr":I
    const/4 v2, 0x4

    #@d
    new-array v2, v2, [B

    #@f
    iput-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    #@11
    .line 889
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    #@13
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@15
    invoke-static {v2, v4, v0, v3}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@18
    .line 890
    const-string/jumbo v2, "hostName"

    #@1b
    const/4 v3, 0x0

    #@1c
    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/String;

    #@22
    iput-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@24
    .line 891
    const-string/jumbo v2, "family"

    #@27
    const/4 v3, 0x2

    #@28
    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@2b
    move-result v2

    #@2c
    iput v2, p0, Ljava/net/InetAddress;->family:I

    #@2e
    .line 885
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 899
    new-instance v0, Ljava/net/Inet4Address;

    #@2
    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    #@4
    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@6
    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    #@9
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 873
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@4
    move-result-object v0

    #@5
    .line 874
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 875
    const-string/jumbo v1, "address"

    #@c
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@f
    .line 879
    :goto_0
    const-string/jumbo v1, "family"

    #@12
    iget v2, p0, Ljava/net/InetAddress;->family:I

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@17
    .line 880
    const-string/jumbo v1, "hostName"

    #@1a
    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@1f
    .line 882
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@22
    .line 872
    return-void

    #@23
    .line 877
    :cond_0
    const-string/jumbo v1, "address"

    #@26
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    #@28
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2a
    invoke-static {v2, v4, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@2d
    move-result v2

    #@2e
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@31
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 167
    instance-of v0, p1, Ljava/net/InetAddress;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 168
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 170
    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    #@8
    check-cast p1, Ljava/net/InetAddress;

    #@a
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/net/InetAddress;->ipaddress:[B

    #@c
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getAddress()[B
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getCanonicalHostName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 364
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    #@3
    move-result-object v1

    #@4
    iget-object v1, v1, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 365
    :catch_0
    move-exception v0

    #@8
    .line 366
    .local v0, "ex":Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 327
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    sget v1, Landroid/system/OsConstants;->NI_NUMERICHOST:I

    #@4
    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 336
    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 338
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    #@7
    move-result-object v1

    #@8
    iget-object v1, v1, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@a
    iput-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 343
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@e
    return-object v1

    #@f
    .line 339
    :catch_0
    move-exception v0

    #@10
    .line 340
    .local v0, "ex":Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@16
    goto :goto_0
.end method

.method public getHostString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 354
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 356
    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isAnyLocalAddress()Z
    .locals 1

    #@0
    .prologue
    .line 554
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isLinkLocalAddress()Z
    .locals 1

    #@0
    .prologue
    .line 570
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isLoopbackAddress()Z
    .locals 1

    #@0
    .prologue
    .line 581
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCGlobal()Z
    .locals 1

    #@0
    .prologue
    .line 595
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCLinkLocal()Z
    .locals 1

    #@0
    .prologue
    .line 608
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCNodeLocal()Z
    .locals 1

    #@0
    .prologue
    .line 621
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 1

    #@0
    .prologue
    .line 634
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCSiteLocal()Z
    .locals 1

    #@0
    .prologue
    .line 647
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMulticastAddress()Z
    .locals 1

    #@0
    .prologue
    .line 658
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReachable(I)Z
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 698
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1, p1}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReachable(Ljava/net/NetworkInterface;II)Z
    .locals 10
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "ttl"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 722
    if-ltz p2, :cond_0

    #@4
    if-gez p3, :cond_1

    #@6
    .line 723
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "ttl < 0 || timeout < 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 727
    :cond_1
    if-nez p1, :cond_2

    #@11
    .line 728
    invoke-direct {p0, p0, v0, p3}, Ljava/net/InetAddress;->isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 733
    :cond_2
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    #@1d
    move-result-object v9

    #@1e
    .line 734
    .local v9, "sourceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 735
    return v1

    #@25
    .line 737
    :cond_3
    move-object v2, p0

    #@26
    .line 738
    .local v2, "destinationAddress":Ljava/net/InetAddress;
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    #@28
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@2b
    move-result v0

    #@2c
    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@2f
    .line 739
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@31
    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@34
    .line 740
    .local v5, "isReachable":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v8

    #@38
    .local v8, "sourceAddress$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_4

    #@3e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Ljava/net/InetAddress;

    #@44
    .line 741
    .local v3, "sourceAddress":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/InetAddress$1;

    #@46
    move-object v1, p0

    #@47
    move v4, p3

    #@48
    invoke-direct/range {v0 .. v6}, Ljava/net/InetAddress$1;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    #@4b
    invoke-virtual {v0}, Ljava/net/InetAddress$1;->start()V

    #@4e
    goto :goto_0

    #@4f
    .line 759
    .end local v3    # "sourceAddress":Ljava/net/InetAddress;
    :cond_4
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 763
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@55
    move-result v0

    #@56
    return v0

    #@57
    .line 760
    :catch_0
    move-exception v7

    #@58
    .line 761
    .local v7, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@5f
    goto :goto_1
.end method

.method public isSiteLocalAddress()Z
    .locals 1

    #@0
    .prologue
    .line 679
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v0, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, ""

    #@c
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "/"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    #@26
    goto :goto_0
.end method
