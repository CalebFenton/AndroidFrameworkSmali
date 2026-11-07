.class public final Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;
.super Ljava/lang/Object;
.source "MacAddressUtils.java"


# static fields
.field private static final blacklist DEFAULT_MAC_ADDRESS:Landroid/net/MacAddress;

.field private static final blacklist ETHER_ADDR_LEN:I = 0x6

.field private static final blacklist LOCALLY_ASSIGNED_MASK:J

.field private static final blacklist MULTICAST_MASK:J

.field private static final blacklist NIC_MASK:J

.field private static final blacklist OUI_MASK:J

.field private static final blacklist VALID_LONG_MASK:J = 0xffffffffffffL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 35
    nop

    .line 36
    const-string v0, "2:0:0:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->LOCALLY_ASSIGNED_MASK:J

    .line 37
    nop

    .line 38
    const-string v0, "1:0:0:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->MULTICAST_MASK:J

    .line 39
    nop

    .line 40
    const-string v0, "ff:ff:ff:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->OUI_MASK:J

    .line 41
    nop

    .line 42
    const-string v0, "0:0:0:ff:ff:ff"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->NIC_MASK:J

    .line 44
    nop

    .line 45
    const-string v0, "02:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->DEFAULT_MAC_ADDRESS:Landroid/net/MacAddress;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist byteAddrFromLongAddr(J)[B
    .registers 5
    .param p0, "addr"    # J

    .line 118
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 119
    .local v0, "bytes":[B
    const/4 v1, 0x6

    .line 120
    .local v1, "index":I
    :goto_4
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "index":I
    .local v2, "index":I
    if-lez v1, :cond_11

    .line 121
    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 122
    const/16 v1, 0x8

    shr-long/2addr p0, v1

    move v1, v2

    goto :goto_4

    .line 124
    :cond_11
    return-object v0
.end method

.method public static blacklist createRandomUnicastAddress()Landroid/net/MacAddress;
    .registers 2

    .line 64
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;
    .registers 8
    .param p0, "base"    # Landroid/net/MacAddress;
    .param p1, "r"    # Ljava/util/Random;

    .line 82
    if-nez p0, :cond_d

    .line 83
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    .local v0, "addr":J
    goto :goto_20

    .line 85
    .end local v0    # "addr":J
    :cond_d
    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sget-wide v2, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->OUI_MASK:J

    and-long/2addr v0, v2

    sget-wide v2, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->NIC_MASK:J

    .line 86
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 88
    .restart local v0    # "addr":J
    :goto_20
    sget-wide v2, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->LOCALLY_ASSIGNED_MASK:J

    or-long/2addr v0, v2

    .line 89
    sget-wide v2, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->MULTICAST_MASK:J

    not-long v2, v2

    and-long/2addr v0, v2

    .line 90
    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->byteAddrFromLongAddr(J)[B

    move-result-object v2

    invoke-static {v2}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v2

    .line 91
    .local v2, "mac":Landroid/net/MacAddress;
    sget-object v3, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->DEFAULT_MAC_ADDRESS:Landroid/net/MacAddress;

    invoke-virtual {v2, v3}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 92
    invoke-static {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;

    move-result-object v3

    return-object v3

    .line 94
    :cond_3c
    return-object v2
.end method

.method public static blacklist isMacAddress([B)Z
    .registers 3
    .param p0, "addr"    # [B

    .line 136
    if-eqz p0, :cond_8

    array-length v0, p0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist isMulticastAddress(Landroid/net/MacAddress;)Z
    .registers 5
    .param p0, "address"    # Landroid/net/MacAddress;

    .line 52
    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sget-wide v2, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->MULTICAST_MASK:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public static blacklist longAddrFromByteAddr([B)J
    .registers 11
    .param p0, "addr"    # [B

    .line 101
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->isMacAddress([B)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 106
    const-wide/16 v0, 0x0

    .line 107
    .local v0, "longAddr":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1d

    aget-byte v4, p0, v3

    .line 108
    .local v4, "b":B
    and-int/lit16 v5, v4, 0xff

    .line 109
    .local v5, "uint8Byte":I
    const/16 v6, 0x8

    shl-long v6, v0, v6

    int-to-long v8, v5

    add-long v0, v6, v8

    .line 107
    .end local v4    # "b":B
    .end local v5    # "uint8Byte":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 111
    :cond_1d
    return-wide v0

    .line 103
    .end local v0    # "longAddr":J
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not a valid MAC address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
