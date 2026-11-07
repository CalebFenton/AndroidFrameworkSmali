.class public Landroid/net/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-string v0, "framework-connectivity-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist attachDropAllBPFFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static greylist-max-o bindProcessToNetwork(I)Z
    .registers 3
    .param p0, "netId"    # I

    .line 74
    new-instance v0, Landroid/net/Network;

    invoke-direct {v0, p0}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->bindProcessToNetworkHandle(J)Z

    move-result v0

    return v0
.end method

.method public static native greylist-max-o bindProcessToNetworkForHostResolution(I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native blacklist bindProcessToNetworkHandle(J)Z
.end method

.method public static blacklist bindSocketToNetwork(Ljava/io/FileDescriptor;I)I
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "netId"    # I

    .line 106
    new-instance v0, Landroid/net/Network;

    invoke-direct {v0, p1}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/NetworkUtils;->bindSocketToNetworkHandle(Ljava/io/FileDescriptor;J)I

    move-result v0

    return v0
.end method

.method private static native blacklist bindSocketToNetworkHandle(Ljava/io/FileDescriptor;J)I
.end method

.method private static greylist-max-o deduplicatePrefixSet(Ljava/util/TreeSet;)Ljava/util/TreeSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/TreeSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 369
    .local p0, "src":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 378
    .local v0, "dst":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 379
    .local v2, "newPrefix":Landroid/net/IpPrefix;
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpPrefix;

    .line 380
    .local v4, "existingPrefix":Landroid/net/IpPrefix;
    invoke-virtual {v4, v2}, Landroid/net/IpPrefix;->containsPrefix(Landroid/net/IpPrefix;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 381
    goto :goto_d

    .line 383
    .end local v4    # "existingPrefix":Landroid/net/IpPrefix;
    :cond_30
    goto :goto_1d

    .line 384
    :cond_31
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v2    # "newPrefix":Landroid/net/IpPrefix;
    goto :goto_d

    .line 386
    :cond_35
    return-object v0
.end method

.method public static native blacklist detachBPFFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static greylist-max-o getBoundNetworkForProcess()I
    .registers 4

    .line 84
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkHandleForProcess()J

    move-result-wide v0

    .line 85
    .local v0, "netHandle":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_14

    :cond_c
    invoke-static {v0, v1}, Landroid/net/Network;->fromNetworkHandle(J)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    move-result v2

    :goto_14
    return v2
.end method

.method private static native blacklist getBoundNetworkHandleForProcess()J
.end method

.method public static native blacklist getDnsNetwork()Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static greylist-max-r getImplicitNetmask(Ljava/net/Inet4Address;)I
    .registers 2
    .param p0, "address"    # Ljava/net/Inet4Address;

    .line 258
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/Inet4AddressUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    move-result v0

    return v0
.end method

.method public static native blacklist getSocketCookie(Ljava/io/FileDescriptor;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static native blacklist getTcpRepairWindow(Ljava/io/FileDescriptor;)Landroid/net/connectivity/android/net/TcpRepairWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static greylist-max-o hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 13
    .param p0, "addrHexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 336
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s:%s:%s:%s:%s:%s:%s:%s"

    .line 337
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 338
    const/16 v2, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 339
    const/16 v2, 0x14

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v3, 0x18

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 340
    const/16 v2, 0x1c

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v2

    .line 336
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    return-object v0

    .line 341
    :catch_41
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in hexToInet6Address("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static greylist-max-o inetAddressToInt(Ljava/net/Inet4Address;)I
    .registers 2
    .param p0, "inetAddr"    # Ljava/net/Inet4Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/Inet4AddressUtils;->inet4AddressToIntHTL(Ljava/net/Inet4Address;)I

    move-result v0

    return v0
.end method

.method public static greylist intToInetAddress(I)Ljava/net/InetAddress;
    .registers 2
    .param p0, "hostAddress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static native blacklist isKernel64Bit()Z
.end method

.method public static native blacklist isKernelX86()Z
.end method

.method public static blacklist legacyParseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .param p0, "ipAndMaskString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "address":Ljava/net/InetAddress;
    const/4 v1, -0x1

    .line 297
    .local v1, "prefixLength":I
    const/4 v2, -0x1

    :try_start_3
    const-string v3, "/"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "pieces":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 299
    const/4 v5, 0x0

    aget-object v6, v3, v5

    if-eqz v6, :cond_55

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_55

    .line 306
    :cond_20
    aget-object v6, v3, v5

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    aget-object v6, v3, v5

    const-string v7, "]"

    .line 307
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    aget-object v6, v3, v5

    .line 308
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v2, :cond_4d

    .line 309
    aget-object v6, v3, v5

    aget-object v7, v3, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 311
    :cond_4d
    aget-object v4, v3, v5

    invoke-static {v4}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, v4

    .end local v3    # "pieces":[Ljava/lang/String;
    goto :goto_76

    .line 300
    .restart local v3    # "pieces":[Ljava/lang/String;
    :cond_55
    :goto_55
    const/16 v6, 0x10

    new-array v6, v6, [B

    .line 301
    .local v6, "bytes":[B
    const/16 v7, 0xf

    aput-byte v4, v6, v7

    .line 302
    new-instance v4, Landroid/util/Pair;

    const-string v7, "ip6-localhost"

    invoke-static {v7, v6, v5}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v5

    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_6c} :catch_75
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_6c} :catch_73
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6c} :catch_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_6c} :catch_6f
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_6c} :catch_6d

    .line 302
    return-object v4

    .line 316
    .end local v3    # "pieces":[Ljava/lang/String;
    .end local v6    # "bytes":[B
    :catch_6d
    move-exception v3

    goto :goto_77

    .line 315
    :catch_6f
    move-exception v3

    goto :goto_76

    .line 314
    :catch_71
    move-exception v3

    goto :goto_76

    .line 313
    :catch_73
    move-exception v3

    goto :goto_76

    .line 312
    :catch_75
    move-exception v3

    .line 317
    :goto_76
    nop

    .line 319
    :goto_77
    if-eqz v0, :cond_85

    if-eq v1, v2, :cond_85

    .line 323
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 320
    :cond_85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid IP address and mask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o netmaskIntToPrefixLength(I)I
    .registers 2
    .param p0, "netmask"    # I

    .line 217
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-r netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    .registers 2
    .param p0, "netmask"    # Ljava/net/Inet4Address;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/Inet4AddressUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-p numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 2
    .param p0, "addrString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;
    .registers 6
    .param p0, "ipAndMaskString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "address":Ljava/net/InetAddress;
    const/4 v1, -0x1

    .line 269
    .local v1, "prefixLength":I
    :try_start_2
    const-string v2, "/"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "pieces":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 271
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_18} :catch_20
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_18} :catch_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_18} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_18} :catch_1a

    move-object v0, v3

    .end local v2    # "pieces":[Ljava/lang/String;
    goto :goto_21

    .line 275
    :catch_1a
    move-exception v2

    goto :goto_22

    .line 274
    :catch_1c
    move-exception v2

    goto :goto_21

    .line 273
    :catch_1e
    move-exception v2

    goto :goto_21

    .line 272
    :catch_20
    move-exception v2

    .line 276
    :goto_21
    nop

    .line 278
    :goto_22
    if-eqz v0, :cond_31

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    .line 282
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 279
    :cond_31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid IP address and mask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist prefixLengthToNetmaskInt(I)I
    .registers 2
    .param p0, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/Inet4AddressUtils;->prefixLengthToV4NetmaskIntHTL(I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o queryUserAccess(II)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "netId"    # I

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public static native blacklist resNetworkCancel(Ljava/io/FileDescriptor;)V
.end method

.method public static blacklist resNetworkQuery(ILjava/lang/String;III)Ljava/io/FileDescriptor;
    .registers 12
    .param p0, "netId"    # I
    .param p1, "dname"    # Ljava/lang/String;
    .param p2, "nsClass"    # I
    .param p3, "nsType"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/net/Network;

    invoke-direct {v0, p0}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "dname":Ljava/lang/String;
    .end local p2    # "nsClass":I
    .end local p3    # "nsType":I
    .end local p4    # "flags":I
    .local v3, "dname":Ljava/lang/String;
    .local v4, "nsClass":I
    .local v5, "nsType":I
    .local v6, "flags":I
    invoke-static/range {v1 .. v6}, Landroid/net/NetworkUtils;->resNetworkQuery(JLjava/lang/String;III)Ljava/io/FileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method private static native blacklist resNetworkQuery(JLjava/lang/String;III)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static native blacklist resNetworkResult(Ljava/io/FileDescriptor;)Landroid/net/DnsResolver$DnsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static blacklist resNetworkSend(I[BII)Ljava/io/FileDescriptor;
    .registers 6
    .param p0, "netId"    # I
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 129
    new-instance v0, Landroid/net/Network;

    invoke-direct {v0, p0}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/net/NetworkUtils;->resNetworkSend(J[BII)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist resNetworkSend(J[BII)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static greylist-max-o routedIPv4AddressCount(Ljava/util/TreeSet;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Landroid/net/IpPrefix;",
            ">;)J"
        }
    .end annotation

    .line 399
    .local p0, "prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    const-wide/16 v0, 0x0

    .line 400
    .local v0, "routedIPCount":J
    invoke-static {p0}, Landroid/net/NetworkUtils;->deduplicatePrefixSet(Ljava/util/TreeSet;)Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    .line 401
    .local v3, "prefix":Landroid/net/IpPrefix;
    invoke-virtual {v3}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v4

    if-nez v4, :cond_23

    .line 402
    const-string v4, "NetworkUtils"

    const-string v5, "Non-IPv4 prefix in routedIPv4AddressCount"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_23
    invoke-virtual {v3}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x20

    .line 405
    .local v4, "rank":I
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    add-long/2addr v0, v5

    .line 406
    .end local v3    # "prefix":Landroid/net/IpPrefix;
    .end local v4    # "rank":I
    goto :goto_a

    .line 407
    :cond_2e
    return-wide v0
.end method

.method public static greylist-max-o routedIPv6AddressCount(Ljava/util/TreeSet;)Ljava/math/BigInteger;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .line 418
    .local p0, "prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 419
    .local v0, "routedIPCount":Ljava/math/BigInteger;
    invoke-static {p0}, Landroid/net/NetworkUtils;->deduplicatePrefixSet(Ljava/util/TreeSet;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 420
    .local v2, "prefix":Landroid/net/IpPrefix;
    invoke-virtual {v2}, Landroid/net/IpPrefix;->isIPv6()Z

    move-result v3

    if-nez v3, :cond_23

    .line 421
    const-string v3, "NetworkUtils"

    const-string v4, "Non-IPv6 prefix in routedIPv6AddressCount"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_23
    invoke-virtual {v2}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v3

    rsub-int v3, v3, 0x80

    .line 424
    .local v3, "rank":I
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 425
    .end local v2    # "prefix":Landroid/net/IpPrefix;
    .end local v3    # "rank":I
    goto :goto_a

    .line 426
    :cond_34
    return-object v0
.end method

.method public static native blacklist setsockoptBytes(Ljava/io/FileDescriptor;II[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static greylist trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "addr"    # Ljava/lang/String;

    .line 358
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/Inet4AddressUtils;->trimAddressZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
