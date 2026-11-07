.class public Lcom/android/internal/telephony/util/Inet4AddressUtils;
.super Ljava/lang/Object;
.source "Inet4AddressUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBroadcastAddress(Ljava/net/Inet4Address;I)Ljava/net/Inet4Address;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 152
    invoke-static {p0}, Lcom/android/internal/telephony/util/Inet4AddressUtils;->inet4AddressToIntHTH(Ljava/net/Inet4Address;)I

    move-result p0

    .line 153
    invoke-static {p1}, Lcom/android/internal/telephony/util/Inet4AddressUtils;->prefixLengthToV4NetmaskIntHTH(I)I

    move-result p1

    not-int p1, p1

    or-int/2addr p0, p1

    .line 154
    invoke-static {p0}, Lcom/android/internal/telephony/util/Inet4AddressUtils;->intToInet4AddressHTH(I)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getImplicitNetmask(Ljava/net/Inet4Address;)I
    .registers 2

    .line 133
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    const/16 p0, 0x8

    return p0

    :cond_10
    const/16 v0, 0xc0

    if-ge p0, v0, :cond_17

    const/16 p0, 0x10

    return p0

    :cond_17
    const/16 v0, 0xe0

    if-ge p0, v0, :cond_1e

    const/16 p0, 0x18

    return p0

    :cond_1e
    const/16 p0, 0x20

    return p0
.end method

.method public static blacklist getPrefixMaskAsInet4Address(I)Ljava/net/Inet4Address;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 164
    invoke-static {p0}, Lcom/android/internal/telephony/util/Inet4AddressUtils;->prefixLengthToV4NetmaskIntHTH(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/util/Inet4AddressUtils;->intToInet4AddressHTH(I)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist inet4AddressToIntHTH(Ljava/net/Inet4Address;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 70
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static blacklist inet4AddressToIntHTL(Ljava/net/Inet4Address;)I
    .registers 1

    .line 83
    invoke-static {p0}, Lcom/android/internal/telephony/util/Inet4AddressUtils;->inet4AddressToIntHTH(Ljava/net/Inet4Address;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static blacklist intToInet4AddressHTH(I)Ljava/net/Inet4Address;
    .registers 6

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x4

    .line 46
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    .line 52
    :try_start_21
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_27} :catch_28

    return-object p0

    .line 54
    :catch_28
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static blacklist intToInet4AddressHTL(I)Ljava/net/Inet4Address;
    .registers 1

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/util/Inet4AddressUtils;->intToInet4AddressHTH(I)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    .registers 4

    .line 120
    invoke-static {p0}, Lcom/android/internal/telephony/util/Inet4AddressUtils;->inet4AddressToIntHTH(Ljava/net/Inet4Address;)I

    move-result p0

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v2, v0, 0x20

    if-ne v1, v2, :cond_11

    return v0

    .line 124
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-contiguous netmask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist prefixLengthToV4NetmaskIntHTH(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p0, :cond_f

    const/16 v0, 0x20

    if-gt p0, v0, :cond_f

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 v1, -0x1

    sub-int/2addr v0, p0

    shl-int p0, v1, v0

    return p0

    .line 93
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid prefix length (0 <= prefix <= 32)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist prefixLengthToV4NetmaskIntHTL(I)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/android/internal/telephony/util/Inet4AddressUtils;->prefixLengthToV4NetmaskIntHTH(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static blacklist trimAddressZeros(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_4
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 177
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_f

    goto :goto_36

    .line 178
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_37

    .line 182
    :try_start_19
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_23

    goto :goto_36

    .line 183
    :cond_23
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_2c} :catch_36

    if-ge v3, v5, :cond_33

    const/16 v4, 0x2e

    .line 187
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :catch_36
    :goto_36
    return-object p0

    .line 189
    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
