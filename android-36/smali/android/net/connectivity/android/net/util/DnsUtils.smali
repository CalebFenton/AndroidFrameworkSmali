.class public Landroid/net/connectivity/android/net/util/DnsUtils;
.super Ljava/lang/Object;
.source "DnsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;,
        Landroid/net/connectivity/android/net/util/DnsUtils$Rfc6724Comparator;
    }
.end annotation


# static fields
.field private static final blacklist CHAR_BIT:I = 0x8

.field public static final blacklist IPV6_ADDR_SCOPE_GLOBAL:I = 0xe

.field public static final blacklist IPV6_ADDR_SCOPE_LINKLOCAL:I = 0x2

.field public static final blacklist IPV6_ADDR_SCOPE_NODELOCAL:I = 0x1

.field public static final blacklist IPV6_ADDR_SCOPE_SITELOCAL:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "DnsUtils"

.field private static final blacklist sRfc6724Comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcompareIpv6PrefixMatchLen(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .registers 2

    invoke-static {p0, p1}, Landroid/net/connectivity/android/net/util/DnsUtils;->compareIpv6PrefixMatchLen(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfindLabel(Ljava/net/InetAddress;)I
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->findLabel(Ljava/net/InetAddress;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfindPrecedence(Ljava/net/InetAddress;)I
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->findPrecedence(Ljava/net/InetAddress;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfindScope(Ljava/net/InetAddress;)I
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->findScope(Ljava/net/InetAddress;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisIpv6Address(Ljava/net/InetAddress;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/net/connectivity/android/net/util/DnsUtils$Rfc6724Comparator;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/util/DnsUtils$Rfc6724Comparator;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/util/DnsUtils;->sRfc6724Comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkConnectivity(Landroid/net/Network;ILjava/net/SocketAddress;)Z
    .registers 6
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "domain"    # I
    .param p2, "addr"    # Ljava/net/SocketAddress;

    .line 363
    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {p1, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_9} :catch_23

    .line 366
    .local v1, "socket":Ljava/io/FileDescriptor;
    nop

    .line 368
    if-eqz p0, :cond_f

    :try_start_c
    invoke-virtual {p0, v1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 369
    :cond_f
    invoke-static {v1, p2}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_1d
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_12} :catch_1d
    .catchall {:try_start_c .. :try_end_12} :catchall_18

    .line 373
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 374
    nop

    .line 375
    const/4 v0, 0x1

    return v0

    .line 373
    :catchall_18
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 374
    throw v0

    .line 370
    :catch_1d
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 373
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 371
    return v0

    .line 364
    .end local v1    # "socket":Ljava/io/FileDescriptor;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_23
    move-exception v1

    .line 365
    .local v1, "e":Landroid/system/ErrnoException;
    return v0
.end method

.method private static blacklist compareIpv6PrefixMatchLen(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .registers 8
    .param p0, "srcAddr"    # Ljava/net/InetAddress;
    .param p1, "dstAddr"    # Ljava/net/InetAddress;

    .line 323
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 324
    .local v0, "srcByte":[B
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 327
    .local v1, "dstByte":[B
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_e

    const/4 v2, 0x0

    return v2

    .line 329
    :cond_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_2f

    .line 330
    aget-byte v3, v0, v2

    aget-byte v4, v1, v2

    if-ne v3, v4, :cond_1c

    .line 331
    nop

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 333
    :cond_1c
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    .line 334
    .local v3, "x":I
    mul-int/lit8 v4, v2, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x18

    add-int/2addr v4, v5

    return v4

    .line 336
    .end local v2    # "i":I
    .end local v3    # "x":I
    :cond_2f
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    return v2
.end method

.method private static blacklist findLabel(Ljava/net/InetAddress;)I
    .registers 3
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 192
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv4Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 193
    const/4 v0, 0x4

    return v0

    .line 194
    :cond_8
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4e

    .line 195
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 196
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_17
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address6To4(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 198
    const/4 v0, 0x2

    return v0

    .line 199
    :cond_1f
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6AddressTeredo(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 200
    const/4 v0, 0x5

    return v0

    .line 201
    :cond_27
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6AddressULA(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 202
    const/16 v0, 0xd

    return v0

    .line 203
    :cond_30
    move-object v0, p0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 204
    const/4 v0, 0x3

    return v0

    .line 205
    :cond_3b
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 206
    const/16 v0, 0xb

    return v0

    .line 207
    :cond_44
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address6Bone(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 208
    const/16 v0, 0xc

    return v0

    .line 211
    :cond_4d
    return v1

    .line 215
    :cond_4e
    return v1
.end method

.method private static blacklist findPrecedence(Ljava/net/InetAddress;)I
    .registers 3
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 295
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv4Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 296
    const/16 v0, 0x23

    return v0

    .line 297
    :cond_9
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4c

    .line 298
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 299
    const/16 v0, 0x32

    return v0

    .line 300
    :cond_19
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address6To4(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 301
    const/16 v0, 0x1e

    return v0

    .line 302
    :cond_22
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6AddressTeredo(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 303
    const/4 v0, 0x5

    return v0

    .line 304
    :cond_2a
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6AddressULA(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 305
    const/4 v0, 0x3

    return v0

    .line 306
    :cond_32
    move-object v0, p0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 307
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address6Bone(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_4b

    .line 311
    :cond_48
    const/16 v0, 0x28

    return v0

    .line 308
    :cond_4b
    :goto_4b
    return v1

    .line 314
    :cond_4c
    return v1
.end method

.method private static blacklist findScope(Ljava/net/InetAddress;)I
    .registers 4
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 255
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x2

    if-eqz v0, :cond_2b

    .line 256
    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 257
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->getIpv6MulticastScope(Ljava/net/InetAddress;)I

    move-result v0

    return v0

    .line 258
    :cond_14
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2a

    .line 264
    :cond_21
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 265
    const/4 v0, 0x5

    return v0

    .line 267
    :cond_29
    return v1

    .line 263
    :cond_2a
    :goto_2a
    return v2

    .line 269
    :cond_2b
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv4Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 270
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_3f

    .line 277
    :cond_3e
    return v1

    .line 271
    :cond_3f
    :goto_3f
    return v2

    .line 284
    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist findSrcAddress(Landroid/net/Network;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 7
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "addr"    # Ljava/net/InetAddress;

    .line 160
    invoke-static {p1}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv4Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 161
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    .local v0, "domain":I
    goto :goto_12

    .line 162
    .end local v0    # "domain":I
    :cond_a
    invoke-static {p1}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 163
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    .line 169
    .restart local v0    # "domain":I
    :goto_12
    :try_start_12
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v0, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_12 .. :try_end_1a} :catch_42

    .line 173
    .local v2, "socket":Ljava/io/FileDescriptor;
    nop

    .line 175
    if-eqz p0, :cond_20

    :try_start_1d
    invoke-virtual {p0, v2}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 176
    :cond_20
    new-instance v3, Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {v2, v3}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 177
    invoke-static {v2}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_33} :catch_3c
    .catch Landroid/system/ErrnoException; {:try_start_1d .. :try_end_33} :catch_3c
    .catchall {:try_start_1d .. :try_end_33} :catchall_37

    .line 181
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 177
    return-object v1

    .line 181
    :catchall_37
    move-exception v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 182
    throw v1

    .line 178
    :catch_3c
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 181
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 179
    return-object v1

    .line 170
    .end local v2    # "socket":Ljava/io/FileDescriptor;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_42
    move-exception v2

    .line 171
    .local v2, "e":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findSrcAddress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DnsUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-object v1

    .line 165
    .end local v0    # "domain":I
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_60
    return-object v1
.end method

.method private static blacklist getIpv6MulticastScope(Ljava/net/InetAddress;)I
    .registers 3
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 251
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_11

    :cond_8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    :goto_11
    return v0
.end method

.method public static blacklist haveIpv4(Landroid/net/Network;)Z
    .registers 4
    .param p0, "network"    # Landroid/net/Network;

    .line 344
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 345
    const-string v1, "8.8.8.8"

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 346
    .local v0, "addrIpv4":Ljava/net/SocketAddress;
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    invoke-static {p0, v1, v0}, Landroid/net/connectivity/android/net/util/DnsUtils;->checkConnectivity(Landroid/net/Network;ILjava/net/SocketAddress;)Z

    move-result v1

    return v1
.end method

.method public static blacklist haveIpv6(Landroid/net/Network;)Z
    .registers 4
    .param p0, "network"    # Landroid/net/Network;

    .line 354
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 355
    const-string v1, "2000::"

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 356
    .local v0, "addrIpv6":Ljava/net/SocketAddress;
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-static {p0, v1, v0}, Landroid/net/connectivity/android/net/util/DnsUtils;->checkConnectivity(Landroid/net/Network;ILjava/net/SocketAddress;)Z

    move-result v1

    return v1
.end method

.method private static blacklist isIpv4Address(Ljava/net/InetAddress;)Z
    .registers 2
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 224
    instance-of v0, p0, Ljava/net/Inet4Address;

    return v0
.end method

.method private static blacklist isIpv6Address(Ljava/net/InetAddress;)Z
    .registers 2
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 220
    instance-of v0, p0, Ljava/net/Inet6Address;

    return v0
.end method

.method private static blacklist isIpv6Address6Bone(Ljava/net/InetAddress;)Z
    .registers 6
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 245
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 246
    :cond_8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 247
    .local v0, "byteAddr":[B
    aget-byte v2, v0, v1

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_19

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    const/4 v4, -0x2

    if-ne v3, v4, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method private static blacklist isIpv6Address6To4(Ljava/net/InetAddress;)Z
    .registers 6
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 228
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 229
    :cond_8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 230
    .local v0, "byteAddr":[B
    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_19

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method private static blacklist isIpv6AddressTeredo(Ljava/net/InetAddress;)Z
    .registers 5
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 234
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 235
    :cond_8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 236
    .local v0, "byteAddr":[B
    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_22

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    if-ne v3, v2, :cond_22

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_22

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_22

    move v1, v2

    :cond_22
    return v1
.end method

.method private static blacklist isIpv6AddressULA(Ljava/net/InetAddress;)Z
    .registers 4
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 241
    invoke-static {p0}, Landroid/net/connectivity/android/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xfe

    const/16 v2, 0xfc

    if-ne v0, v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public static blacklist rfc6724Sort(Landroid/net/Network;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .param p0, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 142
    .local p1, "answers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "sortableAnswerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 144
    .local v2, "addr":Ljava/net/InetAddress;
    new-instance v3, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;

    invoke-static {p0, v2}, Landroid/net/connectivity/android/net/util/DnsUtils;->findSrcAddress(Landroid/net/Network;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v2    # "addr":Ljava/net/InetAddress;
    goto :goto_9

    .line 147
    :cond_22
    sget-object v1, Landroid/net/connectivity/android/net/util/DnsUtils;->sRfc6724Comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "sortedAnswers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;

    .line 151
    .local v3, "ans":Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;
    iget-object v4, v3, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->address:Ljava/net/InetAddress;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3    # "ans":Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;
    goto :goto_30

    .line 154
    :cond_42
    return-object v1
.end method
