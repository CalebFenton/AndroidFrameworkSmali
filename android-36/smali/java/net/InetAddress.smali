.class public Ljava/net/InetAddress;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/InetAddress$InetAddressHolder;
    }
.end annotation


# static fields
.field private static final greylist-max-o BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

.field static final greylist-max-o NETID_UNSET:I = 0x0

.field static final greylist-max-o impl:Ljava/net/InetAddressImpl;

.field private static final greylist-max-o nameService:Lsun/net/spi/nameservice/NameService;

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# instance fields
.field private transient greylist-max-o canonicalHostName:Ljava/lang/String;

.field transient greylist holder:Ljava/net/InetAddress$InetAddressHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 273
    new-instance v0, Ljava/net/Inet6AddressImpl;

    invoke-direct {v0}, Ljava/net/Inet6AddressImpl;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    .line 279
    new-instance v0, Ljava/net/InetAddress$1;

    invoke-direct {v0}, Ljava/net/InetAddress$1;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    .line 1562
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    .line 1584
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "hostName"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "address"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "family"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljava/net/InetAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/net/InetAddress$InetAddressHolder;

    invoke-direct {v0}, Ljava/net/InetAddress$InetAddressHolder;-><init>()V

    iput-object v0, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    .line 324
    return-void
.end method

.method static greylist-max-o anyLocalAddress()Ljava/net/InetAddress;
    .registers 1

    .line 1505
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0}, Ljava/net/InetAddressImpl;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static greylist test-api clearDnsCache()V
    .registers 1

    .line 1654
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0}, Ljava/net/InetAddressImpl;->clearAddressCache()V

    .line 1655
    return-void
.end method

.method public static whitelist test-api getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 3
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1152
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public static greylist test-api getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .registers 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1684
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, p1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public static whitelist test-api getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .registers 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1046
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "scopeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1053
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_28

    .line 1054
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_28

    .line 1055
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1058
    :cond_28
    if-eqz p1, :cond_4c

    .line 1059
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_34

    .line 1060
    new-instance v0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0, p1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    return-object v0

    .line 1061
    :cond_34
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4c

    .line 1062
    nop

    .line 1063
    invoke-static {p1}, Lsun/net/util/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    move-result-object v0

    .line 1064
    .local v0, "newAddr":[B
    if-eqz v0, :cond_46

    .line 1065
    new-instance v1, Ljava/net/Inet4Address;

    invoke-direct {v1, p0, v0}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    return-object v1

    .line 1067
    :cond_46
    new-instance v1, Ljava/net/Inet6Address;

    invoke-direct {v1, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    return-object v1

    .line 1071
    .end local v0    # "newAddr":[B
    :cond_4c
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getByAddress([B)Ljava/net/InetAddress;
    .registers 2
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1402
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1106
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static greylist-max-o test-api getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1670
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, p1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static greylist-max-o getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 6
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 652
    const/4 v0, 0x0

    .line 656
    .local v0, "host":Ljava/lang/String;
    :try_start_1
    sget-object v1, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lsun/net/spi/nameservice/NameService;->getHostByAddr([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 662
    sget-object v1, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lsun/net/spi/nameservice/NameService;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1

    .line 663
    .local v1, "arr":[Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 665
    .local v2, "ok":Z
    if-eqz v1, :cond_26

    .line 666
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-nez v2, :cond_26

    array-length v4, v1

    if-ge v3, v4, :cond_26

    .line 667
    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    move v2, v4

    .line 666
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 672
    .end local v3    # "i":I
    :cond_26
    if-nez v2, :cond_2d

    .line 673
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_2c} :catch_2e

    .line 674
    .end local v0    # "host":Ljava/lang/String;
    .local v3, "host":Ljava/lang/String;
    return-object v3

    .line 678
    .end local v1    # "arr":[Ljava/net/InetAddress;
    .end local v2    # "ok":Z
    .end local v3    # "host":Ljava/lang/String;
    .restart local v0    # "host":Ljava/lang/String;
    :cond_2d
    goto :goto_33

    .line 676
    :catch_2e
    move-exception v1

    .line 677
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 680
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_33
    return-object v0
.end method

.method public static whitelist test-api getLocalHost()Ljava/net/InetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1487
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v0

    iget-object v0, v0, Landroid/system/StructUtsname;->nodename:Ljava/lang/String;

    .line 1488
    .local v0, "local":Ljava/lang/String;
    sget-object v1, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static whitelist test-api getLoopbackAddress()Ljava/net/InetAddress;
    .registers 2

    .line 1168
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0}, Ljava/net/InetAddressImpl;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static greylist-max-p test-api isNumeric(Ljava/lang/String;)Z
    .registers 2
    .param p0, "address"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1620
    invoke-static {p0}, Llibcore/net/InetAddressUtils;->parseNumericAddressNoThrowStripOptionalBrackets(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-p test-api parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "numericAddress"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1637
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2a

    .line 1640
    :cond_9
    nop

    .line 1641
    invoke-static {p0}, Llibcore/net/InetAddressUtils;->parseNumericAddressNoThrowStripOptionalBrackets(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1642
    .local v0, "result":Ljava/net/InetAddress;
    if-eqz v0, :cond_11

    .line 1645
    return-object v0

    .line 1643
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a numeric address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1638
    .end local v0    # "result":Ljava/net/InetAddress;
    :cond_2a
    :goto_2a
    sget-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1567
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    if-ne v0, v1, :cond_2e

    .line 1570
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1571
    .local v0, "gf":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "hostName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1572
    .local v1, "host":Ljava/lang/String;
    const-string v2, "address"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1573
    .local v2, "address":I
    const-string v4, "family"

    invoke-virtual {v0, v4, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    .line 1574
    .local v3, "family":I
    new-instance v4, Ljava/net/InetAddress$InetAddressHolder;

    invoke-direct {v4, v1, v2, v3}, Ljava/net/InetAddress$InetAddressHolder;-><init>(Ljava/lang/String;II)V

    iput-object v4, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    .line 1575
    return-void

    .line 1568
    .end local v0    # "gf":Ljava/io/ObjectInputStream$GetField;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "address":I
    .end local v3    # "family":I
    :cond_2e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "invalid address type"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o readObjectNoData(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1556
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    if-ne v0, v1, :cond_d

    .line 1559
    return-void

    .line 1557
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "invalid address type"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/net/Inet4Address;

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1593
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    if-ne v0, v1, :cond_38

    .line 1596
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1597
    .local v0, "pf":Ljava/io/ObjectOutputStream$PutField;
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iget-object v1, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    const-string v2, "hostName"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1598
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iget v1, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1599
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iget v1, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    const-string v2, "family"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1600
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1601
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 1602
    return-void

    .line 1594
    .end local v0    # "pf":Ljava/io/ObjectOutputStream$PutField;
    :cond_38
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "invalid address type"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getAddress()[B
    .registers 2

    .line 691
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getCanonicalHostName()Ljava/lang/String;
    .registers 2

    .line 626
    iget-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 627
    invoke-static {p0}, Ljava/net/InetAddress;->getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    .line 629
    :cond_a
    iget-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getHostAddress()Ljava/lang/String;
    .registers 2

    .line 701
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getHostName()Ljava/lang/String;
    .registers 3

    .line 564
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 565
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-static {p0}, Ljava/net/InetAddress;->getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 567
    :cond_14
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 710
    const/4 v0, -0x1

    return v0
.end method

.method greylist holder()Ljava/net/InetAddress$InetAddressHolder;
    .registers 2

    .line 269
    iget-object v0, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    return-object v0
.end method

.method public whitelist test-api isAnyLocalAddress()Z
    .registers 2

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isLinkLocalAddress()Z
    .registers 2

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isLoopbackAddress()Z
    .registers 2

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isMCGlobal()Z
    .registers 2

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isMCLinkLocal()Z
    .registers 2

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isMCNodeLocal()Z
    .registers 2

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isMCOrgLocal()Z
    .registers 2

    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isMCSiteLocal()Z
    .registers 2

    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isMulticastAddress()Z
    .registers 2

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isReachable(I)Z
    .registers 4
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isReachable(Ljava/net/NetworkInterface;II)Z
    .registers 6
    .param p1, "netif"    # Ljava/net/NetworkInterface;
    .param p2, "ttl"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    if-ltz p2, :cond_13

    .line 522
    if-ltz p3, :cond_b

    .line 525
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, p3, p1, p2}, Ljava/net/InetAddressImpl;->isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z

    move-result v0

    return v0

    .line 523
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ttl can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isReachableByICMP(I)Z
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    check-cast v0, Ljava/net/Inet6AddressImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Ljava/net/Inet6AddressImpl;->icmpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSiteLocalAddress()Z
    .registers 2

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 744
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "hostName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_11

    move-object v2, v0

    goto :goto_13

    :cond_11
    const-string v2, ""

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 746
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    return-object v1
.end method
