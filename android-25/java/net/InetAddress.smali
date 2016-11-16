.class public Ljava/net/InetAddress;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/InetAddress$1;,
        Ljava/net/InetAddress$InetAddressHolder;
    }
.end annotation


# static fields
.field private static final BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

.field static final NETID_UNSET:I = 0x0

.field static final impl:Ljava/net/InetAddressImpl;

.field private static final nameService:Lsun/net/spi/nameservice/NameService;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# instance fields
.field private transient canonicalHostName:Ljava/lang/String;

.field transient holder:Ljava/net/InetAddress$InetAddressHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 229
    new-instance v0, Ljava/net/Inet6AddressImpl;

    #@2
    invoke-direct {v0}, Ljava/net/Inet6AddressImpl;-><init>()V

    #@5
    sput-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@7
    .line 232
    new-instance v0, Ljava/net/InetAddress$1;

    #@9
    invoke-direct {v0}, Ljava/net/InetAddress$1;-><init>()V

    #@c
    sput-object v0, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    #@e
    .line 836
    const-class v0, Ljava/lang/Object;

    #@10
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    #@16
    .line 858
    const/4 v0, 0x3

    #@17
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@19
    .line 859
    new-instance v1, Ljava/io/ObjectStreamField;

    #@1b
    const-string/jumbo v2, "hostName"

    #@1e
    const-class v3, Ljava/lang/String;

    #@20
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@23
    const/4 v2, 0x0

    #@24
    aput-object v1, v0, v2

    #@26
    .line 860
    new-instance v1, Ljava/io/ObjectStreamField;

    #@28
    const-string/jumbo v2, "address"

    #@2b
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2d
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@30
    const/4 v2, 0x1

    #@31
    aput-object v1, v0, v2

    #@33
    .line 861
    new-instance v1, Ljava/io/ObjectStreamField;

    #@35
    const-string/jumbo v2, "family"

    #@38
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3a
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@3d
    const/4 v2, 0x2

    #@3e
    aput-object v1, v0, v2

    #@40
    .line 858
    sput-object v0, Ljava/net/InetAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@42
    .line 184
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 244
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    #@6
    .line 256
    new-instance v0, Ljava/net/InetAddress$InetAddressHolder;

    #@8
    invoke-direct {v0}, Ljava/net/InetAddress$InetAddressHolder;-><init>()V

    #@b
    iput-object v0, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    #@d
    .line 255
    return-void
.end method

.method static anyLocalAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 824
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@2
    invoke-interface {v0}, Ljava/net/InetAddressImpl;->anyLocalAddress()Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static clearDnsCache()V
    .locals 1

    #@0
    .prologue
    .line 944
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@2
    invoke-interface {v0}, Ljava/net/InetAddressImpl;->clearAddressCache()V

    #@5
    .line 943
    return-void
.end method

.method static disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 909
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
    .line 910
    :cond_0
    return-object p1

    #@e
    .line 915
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
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 752
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p0, v1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Ljava/net/InetAddress;

    #@d
    return-object v0
.end method

.method static getAllByName0(Ljava/lang/String;Z)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "authHost"    # Ljava/lang/String;
    .param p1, "check"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 978
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
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
    .line 973
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@2
    invoke-interface {v0, p0, p1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/net/InetAddress;

    #@c
    return-object v0
.end method

.method public static getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 650
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "scopeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 656
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    const/16 v2, 0x5b

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 657
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v1

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    const/16 v2, 0x5d

    #@1d
    if-ne v1, v2, :cond_0

    #@1f
    .line 658
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@22
    move-result v1

    #@23
    add-int/lit8 v1, v1, -0x1

    #@25
    const/4 v2, 0x1

    #@26
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    .line 661
    :cond_0
    if-eqz p1, :cond_3

    #@2c
    .line 662
    array-length v1, p1

    #@2d
    const/4 v2, 0x4

    #@2e
    if-ne v1, v2, :cond_1

    #@30
    .line 663
    new-instance v1, Ljava/net/Inet4Address;

    #@32
    invoke-direct {v1, p0, p1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    #@35
    return-object v1

    #@36
    .line 664
    :cond_1
    array-length v1, p1

    #@37
    const/16 v2, 0x10

    #@39
    if-ne v1, v2, :cond_3

    #@3b
    .line 666
    invoke-static {p1}, Lsun/net/util/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    #@3e
    move-result-object v0

    #@3f
    .line 667
    .local v0, "newAddr":[B
    if-eqz v0, :cond_2

    #@41
    .line 668
    new-instance v1, Ljava/net/Inet4Address;

    #@43
    invoke-direct {v1, p0, v0}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    #@46
    return-object v1

    #@47
    .line 670
    :cond_2
    new-instance v1, Ljava/net/Inet6Address;

    #@49
    invoke-direct {v1, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    #@4c
    return-object v1

    #@4d
    .line 674
    .end local v0    # "newAddr":[B
    :cond_3
    new-instance v1, Ljava/net/UnknownHostException;

    #@4f
    const-string/jumbo v2, "addr is of illegal length"

    #@52
    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@55
    throw v1
.end method

.method public static getByAddress([B)Ljava/net/InetAddress;
    .locals 1
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 788
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    #@4
    move-result-object v0

    #@5
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
    .line 708
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@3
    invoke-interface {v0, p0, v1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@6
    move-result-object v0

    #@7
    aget-object v0, v0, v1

    #@9
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
    .line 959
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@2
    invoke-interface {v0, p0, p1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    aget-object v0, v0, v1

    #@9
    return-object v0
.end method

.method private static getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 7
    .param p0, "addr"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 531
    const/4 v2, 0x0

    #@1
    .line 534
    .local v2, "host":Ljava/lang/String;
    :try_start_0
    sget-object v5, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    #@3
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    #@6
    move-result-object v6

    #@7
    invoke-interface {v5, v6}, Lsun/net/spi/nameservice/NameService;->getHostByAddr([B)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 540
    .local v2, "host":Ljava/lang/String;
    sget-object v5, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    #@d
    const/4 v6, 0x0

    #@e
    invoke-interface {v5, v2, v6}, Lsun/net/spi/nameservice/NameService;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@11
    move-result-object v0

    #@12
    .line 541
    .local v0, "arr":[Ljava/net/InetAddress;
    const/4 v4, 0x0

    #@13
    .line 543
    .local v4, "ok":Z
    if-eqz v0, :cond_0

    #@15
    .line 544
    const/4 v3, 0x0

    #@16
    .end local v4    # "ok":Z
    .local v3, "i":I
    :goto_0
    if-nez v4, :cond_0

    #@18
    array-length v5, v0

    #@19
    if-ge v3, v5, :cond_0

    #@1b
    .line 545
    aget-object v5, v0, v3

    #@1d
    invoke-virtual {p0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    .line 544
    .local v4, "ok":Z
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 550
    .end local v3    # "i":I
    .end local v4    # "ok":Z
    :cond_0
    if-nez v4, :cond_1

    #@26
    .line 551
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v2

    #@2a
    .line 552
    return-object v2

    #@2b
    .line 554
    .end local v0    # "arr":[Ljava/net/InetAddress;
    .end local v2    # "host":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@2c
    .line 555
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 558
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v2    # "host":Ljava/lang/String;
    :cond_1
    return-object v2
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
    .line 815
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3
    invoke-interface {v1}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    #@6
    move-result-object v1

    #@7
    iget-object v0, v1, Landroid/system/StructUtsname;->nodename:Ljava/lang/String;

    #@9
    .line 816
    .local v0, "local":Ljava/lang/String;
    sget-object v1, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@b
    invoke-interface {v1, v0, v2}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@e
    move-result-object v1

    #@f
    aget-object v1, v1, v2

    #@11
    return-object v1
.end method

.method public static getLoopbackAddress()Ljava/net/InetAddress;
    .locals 2

    #@0
    .prologue
    .line 767
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@2
    invoke-interface {v0}, Ljava/net/InetAddressImpl;->loopbackAddresses()[Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    aget-object v0, v0, v1

    #@9
    return-object v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 888
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    #@4
    move-result-object v0

    #@5
    .line 889
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

.method public static parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "numericAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 927
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 928
    :cond_0
    sget-object v1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    #@a
    return-object v1

    #@b
    .line 930
    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    #@e
    move-result-object v0

    #@f
    .line 931
    .local v0, "result":Ljava/net/InetAddress;
    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    #@12
    move-result-object v0

    #@13
    .line 932
    if-nez v0, :cond_2

    #@15
    .line 933
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
    .line 935
    :cond_2
    return-object v0
.end method

.method static parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 894
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
    .line 895
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
    .line 897
    :cond_0
    new-instance v1, Landroid/system/StructAddrinfo;

    #@2a
    invoke-direct {v1}, Landroid/system/StructAddrinfo;-><init>()V

    #@2d
    .line 898
    .local v1, "hints":Landroid/system/StructAddrinfo;
    sget v4, Landroid/system/OsConstants;->AI_NUMERICHOST:I

    #@2f
    iput v4, v1, Landroid/system/StructAddrinfo;->ai_flags:I

    #@31
    .line 899
    const/4 v0, 0x0

    #@32
    .line 901
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
    .line 904
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    :goto_0
    if-eqz v0, :cond_1

    #@3b
    aget-object v3, v0, v6

    #@3d
    :cond_1
    return-object v3

    #@3e
    .line 902
    .restart local v0    # "addresses":[Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    #@3f
    .local v2, "ignored":Landroid/system/GaiException;
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 841
    invoke-virtual {p0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v4

    #@9
    sget-object v5, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    #@b
    if-eq v4, v5, :cond_0

    #@d
    .line 842
    new-instance v4, Ljava/lang/SecurityException;

    #@f
    const-string/jumbo v5, "invalid address type"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 844
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@19
    move-result-object v2

    #@1a
    .line 845
    .local v2, "gf":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v4, "hostName"

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/lang/String;

    #@24
    .line 846
    .local v3, "host":Ljava/lang/String;
    const-string/jumbo v4, "address"

    #@27
    invoke-virtual {v2, v4, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@2a
    move-result v0

    #@2b
    .line 847
    .local v0, "address":I
    const-string/jumbo v4, "family"

    #@2e
    invoke-virtual {v2, v4, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@31
    move-result v1

    #@32
    .line 848
    .local v1, "family":I
    new-instance v4, Ljava/net/InetAddress$InetAddressHolder;

    #@34
    invoke-direct {v4, v3, v0, v1}, Ljava/net/InetAddress$InetAddressHolder;-><init>(Ljava/lang/String;II)V

    #@37
    iput-object v4, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    #@39
    .line 839
    return-void
.end method

.method private readObjectNoData(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 830
    invoke-virtual {p0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 831
    new-instance v0, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v1, "invalid address type"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 828
    :cond_0
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
    .line 269
    new-instance v0, Ljava/net/Inet4Address;

    #@2
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@11
    move-result v2

    #@12
    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;I)V

    #@15
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 867
    invoke-virtual {p0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 868
    new-instance v1, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v2, "invalid address type"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 870
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@18
    move-result-object v0

    #@19
    .line 871
    .local v0, "pf":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "hostName"

    #@1c
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@1f
    move-result-object v2

    #@20
    iget-object v2, v2, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@25
    .line 872
    const-string/jumbo v1, "address"

    #@28
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@2b
    move-result-object v2

    #@2c
    iget v2, v2, Ljava/net/InetAddress$InetAddressHolder;->address:I

    #@2e
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@31
    .line 873
    const-string/jumbo v1, "family"

    #@34
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@37
    move-result-object v2

    #@38
    iget v2, v2, Ljava/net/InetAddress$InetAddressHolder;->family:I

    #@3a
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@3d
    .line 874
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@40
    .line 875
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V

    #@43
    .line 865
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 608
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAddress()[B
    .locals 1

    #@0
    .prologue
    .line 569
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCanonicalHostName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 508
    invoke-static {p0}, Ljava/net/InetAddress;->getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    #@a
    .line 510
    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    #@c
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 579
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 479
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 480
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@d
    move-result-object v0

    #@e
    invoke-static {p0}, Ljava/net/InetAddress;->getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@14
    .line 482
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method getHostName(Z)Ljava/lang/String;
    .locals 1
    .param p1, "check"    # Z

    #@0
    .prologue
    .line 983
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 588
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method holder()Ljava/net/InetAddress$InetAddressHolder;
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    #@2
    return-object v0
.end method

.method public isAnyLocalAddress()Z
    .locals 1

    #@0
    .prologue
    .line 290
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isLinkLocalAddress()Z
    .locals 1

    #@0
    .prologue
    .line 312
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isLoopbackAddress()Z
    .locals 1

    #@0
    .prologue
    .line 301
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCGlobal()Z
    .locals 1

    #@0
    .prologue
    .line 335
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCLinkLocal()Z
    .locals 1

    #@0
    .prologue
    .line 359
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCNodeLocal()Z
    .locals 1

    #@0
    .prologue
    .line 347
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 1

    #@0
    .prologue
    .line 384
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCSiteLocal()Z
    .locals 1

    #@0
    .prologue
    .line 371
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMulticastAddress()Z
    .locals 1

    #@0
    .prologue
    .line 280
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
    .line 409
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
    .locals 2
    .param p1, "netif"    # Ljava/net/NetworkInterface;
    .param p2, "ttl"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 445
    if-gez p2, :cond_0

    #@2
    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "ttl can\'t be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 447
    :cond_0
    if-gez p3, :cond_1

    #@d
    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "timeout can\'t be negative"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 450
    :cond_1
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@18
    invoke-interface {v0, p0, p3, p1, p2}, Ljava/net/InetAddressImpl;->isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public isSiteLocalAddress()Z
    .locals 1

    #@0
    .prologue
    .line 323
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 622
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 623
    .local v0, "hostName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    if-eqz v0, :cond_0

    #@f
    .end local v0    # "hostName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 624
    const-string/jumbo v2, "/"

    #@16
    .line 623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 624
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    return-object v1

    #@27
    .restart local v0    # "hostName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    #@2a
    goto :goto_0
.end method
