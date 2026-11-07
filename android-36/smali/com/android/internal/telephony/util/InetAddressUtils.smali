.class public Lcom/android/internal/telephony/util/InetAddressUtils;
.super Ljava/lang/Object;
.source "InetAddressUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InetAddressUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V
    .registers 3

    if-eqz p1, :cond_7

    .line 45
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    .line 46
    :goto_8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 47
    instance-of p2, p1, Ljava/net/Inet6Address;

    if-eqz p2, :cond_26

    .line 48
    check-cast p1, Ljava/net/Inet6Address;

    .line 49
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p2

    if-eqz p2, :cond_19

    const/4 p2, 0x1

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    .line 50
    :goto_1a
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz p2, :cond_26

    .line 51
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_26
    return-void
.end method

.method public static blacklist unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .registers 5

    .line 62
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 68
    :cond_8
    :try_start_8
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1e

    .line 69
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 70
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 71
    :goto_19
    invoke-static {v1, v0, p0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0

    return-object p0

    .line 74
    :cond_1e
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_22
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v1
.end method

.method public static blacklist v4MappedV6Address(Ljava/net/Inet4Address;)Ljava/net/Inet6Address;
    .registers 7

    const/16 v0, 0x10

    .line 105
    new-array v0, v0, [B

    const/16 v1, 0xa

    const/4 v2, -0x1

    .line 106
    aput-byte v2, v0, v1

    const/16 v1, 0xb

    .line 107
    aput-byte v2, v0, v1

    .line 108
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v1

    const/16 v3, 0xc

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    .line 113
    :try_start_19
    invoke-static {v1, v0, v2}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception v0

    .line 117
    sget-object v2, Lcom/android/internal/telephony/util/InetAddressUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to generate v4-mapped v6 address from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static blacklist withScopeId(Ljava/net/Inet6Address;I)Ljava/net/Inet6Address;
    .registers 6

    .line 85
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    .line 89
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    invoke-static {v0, v1, p1}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p1

    .line 92
    sget-object v1, Lcom/android/internal/telephony/util/InetAddressUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot construct scoped Inet6Address with Inet6Address.getAddress("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {v1, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
