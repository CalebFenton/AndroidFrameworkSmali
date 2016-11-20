.class public Landroid/net/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "left"    # Ljava/net/InetAddress;
    .param p1, "right"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 303
    instance-of v0, p0, Ljava/net/Inet4Address;

    #@2
    if-eqz v0, :cond_0

    #@4
    instance-of v0, p1, Ljava/net/Inet4Address;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 304
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    #@a
    if-eqz v0, :cond_2

    #@c
    instance-of v0, p1, Ljava/net/Inet6Address;

    #@e
    .line 303
    :goto_0
    return v0

    #@f
    :cond_1
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 304
    :cond_2
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public static native attachDhcpFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native attachRaFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native bindProcessToNetwork(I)Z
.end method

.method public static native bindProcessToNetworkForHostResolution(I)Z
.end method

.method public static native bindSocketToNetwork(II)I
.end method

.method public static native getBoundNetworkForProcess()I
.end method

.method public static getImplicitNetmask(Ljava/net/Inet4Address;)I
    .locals 3
    .param p0, "address"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    aget-byte v1, v1, v2

    #@7
    and-int/lit16 v0, v1, 0xff

    #@9
    .line 263
    .local v0, "firstByte":I
    const/16 v1, 0x80

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 264
    const/16 v1, 0x8

    #@f
    return v1

    #@10
    .line 265
    :cond_0
    const/16 v1, 0xc0

    #@12
    if-ge v0, v1, :cond_1

    #@14
    .line 266
    const/16 v1, 0x10

    #@16
    return v1

    #@17
    .line 267
    :cond_1
    const/16 v1, 0xe0

    #@19
    if-ge v0, v1, :cond_2

    #@1b
    .line 268
    const/16 v1, 0x18

    #@1d
    return v1

    #@1e
    .line 270
    :cond_2
    const/16 v1, 0x20

    #@20
    return v1
.end method

.method public static getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 6
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    #@0
    .prologue
    .line 246
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    #@3
    move-result-object v0

    #@4
    .line 247
    .local v0, "array":[B
    invoke-static {v0, p1}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    #@7
    .line 249
    const/4 v2, 0x0

    #@8
    .line 251
    .local v2, "netPart":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    .line 255
    .local v2, "netPart":Ljava/net/InetAddress;
    return-object v2

    #@d
    .line 252
    .local v2, "netPart":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    #@e
    .line 253
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "getNetworkPart error - "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3
.end method

.method public static hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6
    .param p0, "addrHexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    const-string/jumbo v2, "%s:%s:%s:%s:%s:%s:%s:%s"

    #@5
    const/16 v3, 0x8

    #@7
    new-array v3, v3, [Ljava/lang/Object;

    #@9
    .line 318
    const/4 v4, 0x0

    #@a
    const/4 v5, 0x4

    #@b
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    const/4 v5, 0x0

    #@10
    aput-object v4, v3, v5

    #@12
    const/4 v4, 0x4

    #@13
    const/16 v5, 0x8

    #@15
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    const/4 v5, 0x1

    #@1a
    aput-object v4, v3, v5

    #@1c
    .line 319
    const/16 v4, 0x8

    #@1e
    const/16 v5, 0xc

    #@20
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    const/4 v5, 0x2

    #@25
    aput-object v4, v3, v5

    #@27
    const/16 v4, 0xc

    #@29
    const/16 v5, 0x10

    #@2b
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    const/4 v5, 0x3

    #@30
    aput-object v4, v3, v5

    #@32
    .line 320
    const/16 v4, 0x10

    #@34
    const/16 v5, 0x14

    #@36
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    const/4 v5, 0x4

    #@3b
    aput-object v4, v3, v5

    #@3d
    const/16 v4, 0x14

    #@3f
    const/16 v5, 0x18

    #@41
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    const/4 v5, 0x5

    #@46
    aput-object v4, v3, v5

    #@48
    .line 321
    const/16 v4, 0x18

    #@4a
    const/16 v5, 0x1c

    #@4c
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    const/4 v5, 0x6

    #@51
    aput-object v4, v3, v5

    #@53
    const/16 v4, 0x1c

    #@55
    const/16 v5, 0x20

    #@57
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    const/4 v5, 0x7

    #@5c
    aput-object v4, v3, v5

    #@5e
    .line 317
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@65
    move-result-object v1

    #@66
    return-object v1

    #@67
    .line 322
    :catch_0
    move-exception v0

    #@68
    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NetworkUtils"

    #@6b
    new-instance v2, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v3, "error in hexToInet6Address("

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    const-string/jumbo v3, "): "

    #@7e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8f
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@92
    throw v1
.end method

.method public static inetAddressToInt(Ljava/net/Inet4Address;)I
    .locals 3
    .param p0, "inetAddr"    # Ljava/net/Inet4Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    #@3
    move-result-object v0

    #@4
    .line 133
    .local v0, "addr":[B
    const/4 v1, 0x3

    #@5
    aget-byte v1, v0, v1

    #@7
    and-int/lit16 v1, v1, 0xff

    #@9
    shl-int/lit8 v1, v1, 0x18

    #@b
    const/4 v2, 0x2

    #@c
    aget-byte v2, v0, v2

    #@e
    and-int/lit16 v2, v2, 0xff

    #@10
    shl-int/lit8 v2, v2, 0x10

    #@12
    or-int/2addr v1, v2

    #@13
    .line 134
    const/4 v2, 0x1

    #@14
    aget-byte v2, v0, v2

    #@16
    and-int/lit16 v2, v2, 0xff

    #@18
    shl-int/lit8 v2, v2, 0x8

    #@1a
    .line 133
    or-int/2addr v1, v2

    #@1b
    .line 134
    const/4 v2, 0x0

    #@1c
    aget-byte v2, v0, v2

    #@1e
    and-int/lit16 v2, v2, 0xff

    #@20
    .line 133
    or-int/2addr v1, v2

    #@21
    return v1
.end method

.method public static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 4
    .param p0, "hostAddress"    # I

    #@0
    .prologue
    .line 113
    const/4 v2, 0x4

    #@1
    new-array v0, v2, [B

    #@3
    and-int/lit16 v2, p0, 0xff

    #@5
    int-to-byte v2, v2

    #@6
    const/4 v3, 0x0

    #@7
    aput-byte v2, v0, v3

    #@9
    .line 114
    shr-int/lit8 v2, p0, 0x8

    #@b
    and-int/lit16 v2, v2, 0xff

    #@d
    int-to-byte v2, v2

    #@e
    const/4 v3, 0x1

    #@f
    aput-byte v2, v0, v3

    #@11
    .line 115
    shr-int/lit8 v2, p0, 0x10

    #@13
    and-int/lit16 v2, v2, 0xff

    #@15
    int-to-byte v2, v2

    #@16
    const/4 v3, 0x2

    #@17
    aput-byte v2, v0, v3

    #@19
    .line 116
    shr-int/lit8 v2, p0, 0x18

    #@1b
    and-int/lit16 v2, v2, 0xff

    #@1d
    int-to-byte v2, v2

    #@1e
    const/4 v3, 0x3

    #@1f
    aput-byte v2, v0, v3

    #@21
    .line 119
    .local v0, "addressBytes":[B
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 120
    :catch_0
    move-exception v1

    #@27
    .line 121
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    #@29
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2c
    throw v2
.end method

.method public static makeStrings(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 334
    .local p0, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@3
    move-result v5

    #@4
    new-array v4, v5, [Ljava/lang/String;

    #@6
    .line 335
    .local v4, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    #@7
    .line 336
    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/net/InetAddress;

    #@17
    .line 337
    .local v0, "addr":Ljava/net/InetAddress;
    add-int/lit8 v3, v2, 0x1

    #@19
    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    aput-object v5, v4, v2

    #@1f
    move v2, v3

    #@20
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@21
    .line 339
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    return-object v4
.end method

.method public static maskRawAddress([BI)V
    .locals 6
    .param p0, "array"    # [B
    .param p1, "prefixLength"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 222
    if-ltz p1, :cond_0

    #@3
    array-length v3, p0

    #@4
    mul-int/lit8 v3, v3, 0x8

    #@6
    if-le p1, v3, :cond_1

    #@8
    .line 223
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "IP address with "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    array-length v5, p0

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    .line 224
    const-string/jumbo v5, " bytes has invalid prefix length "

    #@1e
    .line 223
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v3

    #@2e
    .line 227
    :cond_1
    div-int/lit8 v1, p1, 0x8

    #@30
    .line 228
    .local v1, "offset":I
    rem-int/lit8 v2, p1, 0x8

    #@32
    .line 229
    .local v2, "remainder":I
    rsub-int/lit8 v3, v2, 0x8

    #@34
    const/16 v4, 0xff

    #@36
    shl-int v3, v4, v3

    #@38
    int-to-byte v0, v3

    #@39
    .line 231
    .local v0, "mask":B
    array-length v3, p0

    #@3a
    if-ge v1, v3, :cond_2

    #@3c
    aget-byte v3, p0, v1

    #@3e
    and-int/2addr v3, v0

    #@3f
    int-to-byte v3, v3

    #@40
    aput-byte v3, p0, v1

    #@42
    .line 233
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@44
    .line 235
    :goto_0
    array-length v3, p0

    #@45
    if-ge v1, v3, :cond_3

    #@47
    .line 236
    aput-byte v5, p0, v1

    #@49
    .line 235
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 221
    :cond_3
    return-void
.end method

.method public static netmaskIntToPrefixLength(I)I
    .locals 1
    .param p0, "netmask"    # I

    #@0
    .prologue
    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    .locals 6
    .param p0, "netmask"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    .line 169
    invoke-static {p0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@3
    move-result v3

    #@4
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    #@7
    move-result v0

    #@8
    .line 170
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    #@b
    move-result v1

    #@c
    .line 171
    .local v1, "prefixLength":I
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@f
    move-result v2

    #@10
    .line 172
    .local v2, "trailingZeros":I
    rsub-int/lit8 v3, v1, 0x20

    #@12
    if-eq v2, v3, :cond_0

    #@14
    .line 173
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "Non-contiguous netmask: "

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 175
    :cond_0
    return v1
.end method

.method public static numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "addrString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected static parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 197
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    #@6
    move-result-object v0

    #@7
    .line 198
    .local v0, "addressArray":[B
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@a
    .line 196
    return-void
.end method

.method public static parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .param p0, "ipAndMaskString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 279
    const/4 v0, 0x0

    #@1
    .line 280
    .local v0, "address":Ljava/net/InetAddress;
    const/4 v6, -0x1

    #@2
    .line 282
    .local v6, "prefixLength":I
    :try_start_0
    const-string/jumbo v7, "/"

    #@5
    const/4 v8, 0x2

    #@6
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    .line 283
    .local v5, "pieces":[Ljava/lang/String;
    const/4 v7, 0x1

    #@b
    aget-object v7, v5, v7

    #@d
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10
    move-result v6

    #@11
    .line 284
    const/4 v7, 0x0

    #@12
    aget-object v7, v5, v7

    #@14
    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    move-result-object v0

    #@18
    .line 291
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v5    # "pieces":[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    #@1a
    const/4 v7, -0x1

    #@1b
    if-ne v6, v7, :cond_1

    #@1d
    .line 292
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v8, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v9, "Invalid IP address and mask "

    #@27
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v7

    #@37
    .line 295
    :cond_1
    new-instance v7, Landroid/util/Pair;

    #@39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v8

    #@3d
    invoke-direct {v7, v0, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@40
    return-object v7

    #@41
    .line 285
    .restart local v0    # "address":Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    #@42
    .local v3, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    #@43
    .line 286
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@44
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    #@45
    .line 287
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v4

    #@46
    .local v4, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    #@47
    .line 288
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    #@48
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static prefixLengthToNetmaskInt(I)I
    .locals 3
    .param p0, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    if-ltz p0, :cond_0

    #@2
    const/16 v1, 0x20

    #@4
    if-le p0, v1, :cond_1

    #@6
    .line 145
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Invalid prefix length (0 <= prefix <= 32)"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 147
    :cond_1
    rsub-int/lit8 v1, p0, 0x20

    #@11
    const/4 v2, -0x1

    #@12
    shl-int v0, v2, v1

    #@14
    .line 148
    .local v0, "value":I
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    #@17
    move-result v1

    #@18
    return v1
.end method

.method public static native protectFromVpn(I)Z
.end method

.method public static protectFromVpn(Ljava/io/FileDescriptor;)Z
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static native queryUserAccess(II)Z
.end method

.method public static trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x4

    #@2
    const/4 v6, 0x3

    #@3
    .line 352
    if-nez p0, :cond_0

    #@5
    return-object v5

    #@6
    .line 353
    :cond_0
    const-string/jumbo v5, "\\."

    #@9
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 354
    .local v3, "octets":[Ljava/lang/String;
    array-length v5, v3

    #@e
    if-eq v5, v7, :cond_1

    #@10
    return-object p0

    #@11
    .line 355
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    const/16 v5, 0x10

    #@15
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@18
    .line 356
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@19
    .line 357
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_4

    #@1c
    .line 359
    :try_start_0
    aget-object v5, v3, v2

    #@1e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@21
    move-result v5

    #@22
    if-le v5, v6, :cond_2

    #@24
    return-object p0

    #@25
    .line 360
    :cond_2
    aget-object v5, v3, v2

    #@27
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a
    move-result v5

    #@2b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 364
    if-ge v2, v6, :cond_3

    #@30
    const/16 v5, 0x2e

    #@32
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 357
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 361
    :catch_0
    move-exception v1

    #@39
    .line 362
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-object p0

    #@3a
    .line 366
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    .line 367
    .local v4, "result":Ljava/lang/String;
    return-object v4
.end method

.method protected static unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 206
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@4
    move-result-object v0

    #@5
    .line 207
    .local v0, "addressArray":[B
    if-nez v0, :cond_0

    #@7
    .line 208
    return-object v2

    #@8
    .line 211
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 212
    :catch_0
    move-exception v1

    #@e
    .line 213
    .local v1, "e":Ljava/net/UnknownHostException;
    return-object v2
.end method
