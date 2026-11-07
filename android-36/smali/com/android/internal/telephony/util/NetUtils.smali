.class public final Lcom/android/internal/telephony/util/NetUtils;
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

    .line 41
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_8

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_10

    :cond_8
    instance-of p0, p0, Ljava/net/Inet6Address;

    if-eqz p0, :cond_12

    instance-of p0, p1, Ljava/net/Inet6Address;

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .registers 4

    .line 86
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 87
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/NetUtils;->maskRawAddress([BI)V

    .line 91
    :try_start_7
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 93
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkPart error - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist maskRawAddress([BI)V
    .registers 5

    if-ltz p1, :cond_25

    .line 102
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-gt p1, v0, :cond_25

    .line 107
    div-int/lit8 v0, p1, 0x8

    .line 108
    rem-int/lit8 p1, p1, 0x8

    const/16 v1, 0xff

    rsub-int/lit8 p1, p1, 0x8

    shl-int p1, v1, p1

    int-to-byte p1, p1

    .line 111
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    aget-byte v1, p0, v0

    and-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    :cond_1b
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    .line 115
    array-length p1, p0

    if-ge v0, p1, :cond_24

    const/4 p1, 0x0

    .line 116
    aput-byte p1, p0, v0

    goto :goto_1b

    :cond_24
    return-void

    .line 103
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP address with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes has invalid prefix length "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;
    .registers 7
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

    const/4 v0, 0x0

    if-eqz p0, :cond_4c

    if-nez p1, :cond_6

    goto :goto_4c

    .line 62
    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 63
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/util/NetUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_3a

    .line 65
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v3

    .line 66
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v4

    if-lt v3, v4, :cond_3a

    goto :goto_b

    .line 69
    :cond_3a
    invoke-virtual {v2, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v1, v2

    goto :goto_b

    :cond_42
    if-eqz v1, :cond_4c

    .line 73
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4c

    return-object v1

    :cond_4c
    :goto_4c
    return-object v0
.end method
