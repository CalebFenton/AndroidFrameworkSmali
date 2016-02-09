.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static final SYS_CLASS_NET:Ljava/io/File;


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceIndex:I

.field private final name:Ljava/lang/String;

.field private parent:Ljava/net/NetworkInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/sys/class/net"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/net/NetworkInterface;->SYS_CLASS_NET:Ljava/io/File;

    #@a
    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interfaceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p3, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p4, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    #@a
    .line 50
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    #@d
    .line 54
    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@f
    .line 55
    iput p2, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    #@11
    .line 56
    iput-object p3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    #@13
    .line 57
    iput-object p4, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    #@15
    .line 53
    return-void
.end method

.method private static collectIpv4Address(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p0, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p2, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    const/4 v4, 0x0

    #@1
    .line 193
    .local v4, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3
    sget v7, Landroid/system/OsConstants;->AF_INET:I

    #@5
    sget v8, Landroid/system/OsConstants;->SOCK_DGRAM:I

    #@7
    const/4 v9, 0x0

    #@8
    invoke-interface {v6, v7, v8, v9}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    #@b
    move-result-object v4

    #@c
    .line 194
    .local v4, "fd":Ljava/io/FileDescriptor;
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@e
    sget v7, Landroid/system/OsConstants;->SIOCGIFADDR:I

    #@10
    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    #@13
    move-result-object v0

    #@14
    .line 195
    .local v0, "address":Ljava/net/InetAddress;
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@16
    sget v7, Landroid/system/OsConstants;->SIOCGIFBRDADDR:I

    #@18
    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    #@1b
    move-result-object v1

    #@1c
    .line 196
    .local v1, "broadcast":Ljava/net/InetAddress;
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@1e
    sget v7, Landroid/system/OsConstants;->SIOCGIFNETMASK:I

    #@20
    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    #@23
    move-result-object v5

    #@24
    .line 197
    .local v5, "netmask":Ljava/net/InetAddress;
    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@26
    invoke-virtual {v1, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_0

    #@2c
    .line 198
    const/4 v1, 0x0

    #@2d
    .line 201
    .end local v1    # "broadcast":Ljava/net/InetAddress;
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    .line 202
    new-instance v6, Ljava/net/InterfaceAddress;

    #@32
    check-cast v0, Ljava/net/Inet4Address;

    #@34
    .line 203
    .end local v0    # "address":Ljava/net/InetAddress;
    check-cast v1, Ljava/net/Inet4Address;

    #@36
    check-cast v5, Ljava/net/Inet4Address;

    #@38
    .line 202
    .end local v5    # "netmask":Ljava/net/InetAddress;
    invoke-direct {v6, v0, v1, v5}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)V

    #@3b
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 213
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@41
    .line 190
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    :goto_0
    return-void

    #@42
    .line 210
    :catch_0
    move-exception v3

    #@43
    .line 211
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    #@46
    move-result-object v6

    #@47
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .line 212
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    #@49
    .line 213
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@4c
    .line 212
    throw v6

    #@4d
    .line 204
    :catch_1
    move-exception v2

    #@4e
    .line 205
    .local v2, "errnoException":Landroid/system/ErrnoException;
    :try_start_2
    iget v6, v2, Landroid/system/ErrnoException;->errno:I

    #@50
    sget v7, Landroid/system/OsConstants;->EADDRNOTAVAIL:I

    #@52
    if-eq v6, v7, :cond_1

    #@54
    .line 208
    invoke-static {v2}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    #@57
    move-result-object v6

    #@58
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    .line 213
    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@5c
    goto :goto_0
.end method

.method public static collectIpv6Addresses(Ljava/lang/String;ILjava/util/List;Ljava/util/List;[Ljava/lang/String;)V
    .locals 14
    .param p0, "interfaceName"    # Ljava/lang/String;
    .param p1, "interfaceIndex"    # I
    .param p4, "ifInet6Lines"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p3, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v11, " "

    #@8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v10

    #@c
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v10

    #@10
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v9

    #@14
    .line 161
    .local v9, "suffix":Ljava/lang/String;
    const/4 v10, 0x0

    #@15
    :try_start_0
    move-object/from16 v0, p4

    #@17
    array-length v11, v0

    #@18
    :goto_0
    if-ge v10, v11, :cond_2

    #@1a
    aget-object v5, p4, v10

    #@1c
    .line 162
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1f
    move-result v12

    #@20
    if-nez v12, :cond_0

    #@22
    .line 161
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@24
    goto :goto_0

    #@25
    .line 167
    :cond_0
    const/16 v12, 0x10

    #@27
    new-array v1, v12, [B

    #@29
    .line 168
    .local v1, "addressBytes":[B
    const/4 v3, 0x0

    #@2a
    .local v3, "i":I
    :goto_2
    array-length v12, v1

    #@2b
    if-ge v3, v12, :cond_1

    #@2d
    .line 169
    mul-int/lit8 v12, v3, 0x2

    #@2f
    mul-int/lit8 v13, v3, 0x2

    #@31
    add-int/lit8 v13, v13, 0x2

    #@33
    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v12

    #@37
    const/16 v13, 0x10

    #@39
    invoke-static {v12, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@3c
    move-result v12

    #@3d
    int-to-byte v12, v12

    #@3e
    aput-byte v12, v1, v3

    #@40
    .line 168
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_2

    #@43
    .line 174
    :cond_1
    const/16 v8, 0x21

    #@45
    .line 176
    .local v8, "prefixLengthStart":I
    const/16 v12, 0x20

    #@47
    invoke-virtual {v5, v12, v8}, Ljava/lang/String;->indexOf(II)I

    #@4a
    move-result v12

    #@4b
    add-int/lit8 v8, v12, 0x1

    #@4d
    .line 177
    const/16 v12, 0x20

    #@4f
    invoke-virtual {v5, v12, v8}, Ljava/lang/String;->indexOf(II)I

    #@52
    move-result v7

    #@53
    .line 178
    .local v7, "prefixLengthEnd":I
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v12

    #@57
    const/16 v13, 0x10

    #@59
    invoke-static {v12, v13}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    #@5c
    move-result v6

    #@5d
    .line 180
    .local v6, "prefixLength":S
    new-instance v4, Ljava/net/Inet6Address;

    #@5f
    const/4 v12, 0x0

    #@60
    invoke-direct {v4, v1, v12, p1}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    #@63
    .line 181
    .local v4, "inet6Address":Ljava/net/Inet6Address;
    move-object/from16 v0, p2

    #@65
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@68
    .line 182
    new-instance v12, Ljava/net/InterfaceAddress;

    #@6a
    invoke-direct {v12, v4, v6}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/Inet6Address;S)V

    #@6d
    move-object/from16 v0, p3

    #@6f
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    goto :goto_1

    #@73
    .line 184
    .end local v1    # "addressBytes":[B
    .end local v3    # "i":I
    .end local v4    # "inet6Address":Ljava/net/Inet6Address;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "prefixLength":S
    .end local v7    # "prefixLengthEnd":I
    .end local v8    # "prefixLengthStart":I
    :catch_0
    move-exception v2

    #@74
    .line 185
    .local v2, "ex":Ljava/lang/NumberFormatException;
    invoke-static {v2}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    #@77
    move-result-object v10

    #@78
    throw v10

    #@79
    .line 147
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    return-void
.end method

.method static forUnboundMulticastSocket()Ljava/net/NetworkInterface;
    .locals 5

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/net/NetworkInterface;

    #@2
    .line 64
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/net/InetAddress;

    #@5
    sget-object v2, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    .line 63
    const/4 v3, 0x0

    #@13
    const/4 v4, -0x1

    #@14
    invoke-direct {v0, v3, v4, v1, v2}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    #@17
    return-object v0
.end method

.method public static getByIndex(I)Ljava/net/NetworkInterface;
    .locals 3
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 280
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3
    invoke-interface {v1, p0}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 281
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    .line 282
    return-object v2

    #@a
    .line 284
    :cond_0
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 261
    if-nez p0, :cond_0

    #@3
    .line 262
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "address == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 264
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "networkInterface$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_2

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/net/NetworkInterface;

    #@20
    .line 265
    .local v0, "networkInterface":Ljava/net/NetworkInterface;
    iget-object v2, v0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    #@22
    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 266
    return-object v0

    #@29
    .line 269
    .end local v0    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_2
    return-object v3
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 2
    .param p0, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 105
    if-nez p0, :cond_0

    #@3
    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "interfaceName == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 108
    :cond_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->isValidInterfaceName(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 109
    return-object v1

    #@13
    .line 112
    :cond_1
    invoke-static {}, Ljava/net/NetworkInterface;->readIfInet6Lines()[Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-static {p0, v0}, Ljava/net/NetworkInterface;->getByNameInternal(Ljava/lang/String;[Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method private static getByNameInternal(Ljava/lang/String;[Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 5
    .param p0, "interfaceName"    # Ljava/lang/String;
    .param p1, "ifInet6Lines"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "/sys/class/net/"

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, "/ifindex"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v3}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    #@1e
    move-result v2

    #@1f
    .line 122
    .local v2, "interfaceIndex":I
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    .line 123
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@29
    .line 125
    .local v1, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-static {p0, v2, v0, v1, p1}, Ljava/net/NetworkInterface;->collectIpv6Addresses(Ljava/lang/String;ILjava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    #@2c
    .line 127
    invoke-static {p0, v0, v1}, Ljava/net/NetworkInterface;->collectIpv4Address(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    #@2f
    .line 129
    new-instance v3, Ljava/net/NetworkInterface;

    #@31
    invoke-direct {v3, p0, v2, v0, v1}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    #@34
    return-object v3
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getNetworkInterfacesList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 303
    sget-object v8, Ljava/net/NetworkInterface;->SYS_CLASS_NET:Ljava/io/File;

    #@3
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    #@6
    move-result-object v5

    #@7
    .line 304
    .local v5, "interfaceNames":[Ljava/lang/String;
    array-length v8, v5

    #@8
    new-array v6, v8, [Ljava/net/NetworkInterface;

    #@a
    .line 305
    .local v6, "interfaces":[Ljava/net/NetworkInterface;
    array-length v8, v6

    #@b
    new-array v2, v8, [Z

    #@d
    .line 307
    .local v2, "done":[Z
    invoke-static {}, Ljava/net/NetworkInterface;->readIfInet6Lines()[Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 308
    .local v4, "ifInet6Lines":[Ljava/lang/String;
    const/4 v3, 0x0

    #@12
    .local v3, "i":I
    :goto_0
    array-length v8, v5

    #@13
    if-ge v3, v8, :cond_1

    #@15
    .line 309
    aget-object v8, v5, v3

    #@17
    invoke-static {v8, v4}, Ljava/net/NetworkInterface;->getByNameInternal(Ljava/lang/String;[Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@1a
    move-result-object v8

    #@1b
    aput-object v8, v6, v3

    #@1d
    .line 312
    aget-object v8, v6, v3

    #@1f
    if-nez v8, :cond_0

    #@21
    .line 313
    aput-boolean v11, v2, v3

    #@23
    .line 308
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 317
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    #@28
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@2b
    .line 318
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    const/4 v0, 0x0

    #@2c
    .local v0, "counter":I
    :goto_1
    array-length v8, v6

    #@2d
    if-ge v0, v8, :cond_6

    #@2f
    .line 320
    aget-boolean v8, v2, v0

    #@31
    if-eqz v8, :cond_2

    #@33
    .line 318
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_1

    #@36
    .line 325
    :cond_2
    move v1, v0

    #@37
    .local v1, "counter2":I
    :goto_3
    array-length v8, v6

    #@38
    if-ge v1, v8, :cond_5

    #@3a
    .line 326
    aget-boolean v8, v2, v1

    #@3c
    if-eqz v8, :cond_4

    #@3e
    .line 325
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_3

    #@41
    .line 329
    :cond_4
    aget-object v8, v6, v1

    #@43
    iget-object v8, v8, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@45
    new-instance v9, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    aget-object v10, v6, v0

    #@4c
    iget-object v10, v10, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@4e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v9

    #@52
    const-string/jumbo v10, ":"

    #@55
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@60
    move-result v8

    #@61
    if-eqz v8, :cond_3

    #@63
    .line 330
    aget-object v8, v6, v0

    #@65
    iget-object v8, v8, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    #@67
    aget-object v9, v6, v1

    #@69
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6c
    .line 331
    aget-object v8, v6, v1

    #@6e
    aget-object v9, v6, v0

    #@70
    iput-object v9, v8, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    #@72
    .line 332
    aget-object v8, v6, v0

    #@74
    iget-object v8, v8, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    #@76
    aget-object v9, v6, v1

    #@78
    iget-object v9, v9, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    #@7a
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@7d
    .line 333
    aput-boolean v11, v2, v1

    #@7f
    goto :goto_4

    #@80
    .line 336
    :cond_5
    aget-object v8, v6, v0

    #@82
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@85
    .line 337
    aput-boolean v11, v2, v0

    #@87
    goto :goto_2

    #@88
    .line 339
    .end local v1    # "counter2":I
    :cond_6
    return-object v7
.end method

.method private hasFlag(I)Z
    .locals 4
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v3, "/sys/class/net/"

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, "/flags"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v2}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    .line 476
    .local v0, "flags":I
    and-int v2, v0, p1

    #@24
    if-eqz v2, :cond_0

    #@26
    const/4 v1, 0x1

    #@27
    :cond_0
    return v1
.end method

.method private static isValidInterfaceName(Ljava/lang/String;)Z
    .locals 6
    .param p0, "interfaceName"    # Ljava/lang/String;
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 219
    sget-object v2, Ljava/net/NetworkInterface;->SYS_CLASS_NET:Ljava/io/File;

    #@3
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 221
    .local v0, "interfaceList":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    .line 222
    return v3

    #@a
    .line 226
    :cond_0
    array-length v4, v0

    #@b
    move v2, v3

    #@c
    :goto_0
    if-ge v2, v4, :cond_2

    #@e
    aget-object v1, v0, v2

    #@10
    .line 227
    .local v1, "validName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    .line 228
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 226
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 231
    .end local v1    # "validName":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private static readIfInet6Lines()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    :try_start_0
    const-string/jumbo v1, "/proc/net/if_inet6"

    #@3
    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "\n"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 135
    :catch_0
    move-exception v0

    #@10
    .line 136
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    #@13
    move-result-object v1

    #@14
    throw v1
.end method

.method private static readIntFile(Ljava/lang/String;)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 237
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v2, "0x"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 238
    const/4 v2, 0x2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    const/16 v3, 0x10

    #@18
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@1b
    move-result v2

    #@1c
    return v2

    #@1d
    .line 240
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v2

    #@21
    return v2

    #@22
    .line 242
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@23
    .line 243
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    #@26
    move-result-object v2

    #@27
    throw v2
.end method

.method private static rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;
    .locals 1
    .param p0, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    new-instance v0, Ljava/net/SocketException;

    #@2
    invoke-direct {v0}, Ljava/net/SocketException;-><init>()V

    #@5
    .line 249
    .local v0, "result":Ljava/net/SocketException;
    invoke-virtual {v0, p0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8
    .line 250
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 356
    if-ne p1, p0, :cond_0

    #@3
    .line 357
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 359
    :cond_0
    instance-of v2, p1, Ljava/net/NetworkInterface;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 360
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 362
    check-cast v0, Ljava/net/NetworkInterface;

    #@d
    .line 364
    .local v0, "rhs":Ljava/net/NetworkInterface;
    iget v2, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    #@f
    iget v3, v0, Ljava/net/NetworkInterface;->interfaceIndex:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 365
    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@15
    iget-object v3, v0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    .line 364
    if-eqz v2, :cond_2

    #@1d
    .line 366
    iget-object v1, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    #@1f
    iget-object v2, v0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    #@21
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    .line 364
    :cond_2
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHardwareAddress()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "/sys/class/net/"

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    iget-object v5, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    const-string/jumbo v5, "/address"

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 489
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@24
    move-result v4

    #@25
    div-int/lit8 v4, v4, 0x3

    #@27
    new-array v2, v4, [B

    #@29
    .line 490
    .local v2, "result":[B
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    #@2b
    if-ge v1, v4, :cond_0

    #@2d
    .line 491
    mul-int/lit8 v4, v1, 0x3

    #@2f
    mul-int/lit8 v5, v1, 0x3

    #@31
    add-int/lit8 v5, v5, 0x2

    #@33
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    const/16 v5, 0x10

    #@39
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@3c
    move-result v4

    #@3d
    int-to-byte v4, v4

    #@3e
    aput-byte v4, v2, v1

    #@40
    .line 490
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_0

    #@43
    .line 494
    :cond_0
    const/4 v1, 0x0

    #@44
    :goto_1
    array-length v4, v2

    #@45
    if-ge v1, v4, :cond_2

    #@47
    .line 495
    aget-byte v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    if-eqz v4, :cond_1

    #@4b
    .line 496
    return-object v2

    #@4c
    .line 494
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 499
    :cond_2
    const/4 v4, 0x0

    #@50
    return-object v4

    #@51
    .line 500
    .end local v1    # "i":I
    .end local v2    # "result":[B
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@52
    .line 501
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    #@55
    move-result-object v4

    #@56
    throw v4
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    #@2
    return v0
.end method

.method public getInetAddresses()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInterfaceAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMTU()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "/sys/class/net/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "/mtu"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v0}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    #@20
    move-result v0

    #@21
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParent()Ljava/net/NetworkInterface;
    .locals 1

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    #@2
    return-object v0
.end method

.method public getSubInterfaces()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isLoopback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 449
    sget v0, Landroid/system/OsConstants;->IFF_LOOPBACK:I

    #@2
    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPointToPoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    sget v0, Landroid/system/OsConstants;->IFF_POINTOPOINT:I

    #@2
    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isUp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    sget v0, Landroid/system/OsConstants;->IFF_UP:I

    #@2
    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVirtual()Z
    .locals 1

    #@0
    .prologue
    .line 529
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public supportsMulticast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 471
    sget v0, Landroid/system/OsConstants;->IFF_MULTICAST:I

    #@2
    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const/16 v3, 0x19

    #@4
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 385
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "["

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 386
    iget-object v3, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 387
    const-string/jumbo v3, "]["

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 388
    iget v3, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 389
    const-string/jumbo v3, "]"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 390
    iget-object v3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    #@25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    .local v1, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Ljava/net/InetAddress;

    #@35
    .line 391
    .local v0, "address":Ljava/net/InetAddress;
    const-string/jumbo v3, "["

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 392
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 393
    const-string/jumbo v3, "]"

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    goto :goto_0

    #@49
    .line 395
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    return-object v3
.end method
