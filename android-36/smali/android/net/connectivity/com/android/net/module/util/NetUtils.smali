.class public final Landroid/net/connectivity/com/android/net/module/util/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .registers 3
    .param p0, "left"    # Ljava/net/InetAddress;
    .param p1, "right"    # Ljava/net/InetAddress;

    .line 41
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_8

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_10

    :cond_8
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_12

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static blacklist getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .registers 8
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .line 86
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 87
    .local v0, "array":[B
    invoke-static {v0, p1}, Landroid/net/connectivity/com/android/net/module/util/NetUtils;->maskRawAddress([BI)V

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "netPart":Ljava/net/InetAddress;
    :try_start_8
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_c} :catch_e

    .line 94
    .end local v1    # "netPart":Ljava/net/InetAddress;
    .local v2, "netPart":Ljava/net/InetAddress;
    nop

    .line 95
    return-object v2

    .line 92
    .end local v2    # "netPart":Ljava/net/InetAddress;
    .restart local v1    # "netPart":Ljava/net/InetAddress;
    :catch_e
    move-exception v2

    .line 93
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkPart error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist maskRawAddress([BI)V
    .registers 6
    .param p0, "array"    # [B
    .param p1, "prefixLength"    # I

    .line 102
    if-ltz p1, :cond_27

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-gt p1, v0, :cond_27

    .line 107
    div-int/lit8 v0, p1, 0x8

    .line 108
    .local v0, "offset":I
    rem-int/lit8 v1, p1, 0x8

    .line 109
    .local v1, "remainder":I
    rsub-int/lit8 v2, v1, 0x8

    const/16 v3, 0xff

    shl-int v2, v3, v2

    int-to-byte v2, v2

    .line 111
    .local v2, "mask":B
    array-length v3, p0

    if-ge v0, v3, :cond_1b

    aget-byte v3, p0, v0

    and-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 113
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 115
    :goto_1d
    array-length v3, p0

    if-ge v0, v3, :cond_26

    .line 116
    const/4 v3, 0x0

    aput-byte v3, p0, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 118
    :cond_26
    return-void

    .line 103
    .end local v0    # "offset":I
    .end local v1    # "remainder":I
    .end local v2    # "mask":B
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP address with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes has invalid prefix length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;
    .registers 8
    .param p1, "dest"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")",
            "Landroid/net/RouteInfo;"
        }
    .end annotation

    .line 57
    .local p0, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_4d

    if-nez p1, :cond_6

    goto :goto_4d

    .line 59
    :cond_6
    const/4 v1, 0x0

    .line 62
    .local v1, "bestRoute":Landroid/net/RouteInfo;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 63
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/net/connectivity/com/android/net/module/util/NetUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 64
    if-eqz v1, :cond_3a

    .line 65
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v4

    .line 66
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v5

    if-lt v4, v5, :cond_3a

    .line 67
    goto :goto_b

    .line 69
    :cond_3a
    invoke-virtual {v3, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_41

    move-object v1, v3

    .line 71
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_41
    goto :goto_b

    .line 73
    :cond_42
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4c

    .line 74
    return-object v1

    .line 76
    :cond_4c
    return-object v0

    .line 57
    .end local v1    # "bestRoute":Landroid/net/RouteInfo;
    :cond_4d
    :goto_4d
    return-object v0
.end method
