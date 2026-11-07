.class public final Lcom/android/internal/telephony/util/MacAddressUtils;
.super Ljava/lang/Object;
.source "MacAddressUtils.java"


# static fields
.field private static final blacklist DEFAULT_MAC_ADDRESS:Landroid/net/MacAddress;

.field private static final blacklist LOCALLY_ASSIGNED_MASK:J

.field private static final blacklist MULTICAST_MASK:J

.field private static final blacklist NIC_MASK:J

.field private static final blacklist OUI_MASK:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 35
    const-string v0, "2:0:0:0:0:0"

    .line 36
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/android/internal/telephony/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/util/MacAddressUtils;->LOCALLY_ASSIGNED_MASK:J

    .line 37
    const-string v0, "1:0:0:0:0:0"

    .line 38
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/android/internal/telephony/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/util/MacAddressUtils;->MULTICAST_MASK:J

    .line 39
    const-string v0, "ff:ff:ff:0:0:0"

    .line 40
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/android/internal/telephony/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/util/MacAddressUtils;->OUI_MASK:J

    .line 41
    const-string v0, "0:0:0:ff:ff:ff"

    .line 42
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/android/internal/telephony/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/util/MacAddressUtils;->NIC_MASK:J

    .line 44
    const-string v0, "02:00:00:00:00:00"

    .line 45
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/util/MacAddressUtils;->DEFAULT_MAC_ADDRESS:Landroid/net/MacAddress;

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

    const/4 v0, 0x6

    .line 118
    new-array v1, v0, [B

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_10

    long-to-int v0, p0

    int-to-byte v0, v0

    .line 121
    aput-byte v0, v1, v2

    const/16 v0, 0x8

    shr-long/2addr p0, v0

    move v0, v2

    goto :goto_3

    :cond_10
    return-object v1
.end method

.method public static blacklist createRandomUnicastAddress()Landroid/net/MacAddress;
    .registers 2

    .line 64
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/util/MacAddressUtils;->createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;
    .registers 8

    if-nez p0, :cond_d

    .line 83
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    goto :goto_20

    .line 85
    :cond_d
    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sget-wide v2, Lcom/android/internal/telephony/util/MacAddressUtils;->OUI_MASK:J

    and-long/2addr v0, v2

    sget-wide v2, Lcom/android/internal/telephony/util/MacAddressUtils;->NIC_MASK:J

    .line 86
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 88
    :goto_20
    sget-wide v2, Lcom/android/internal/telephony/util/MacAddressUtils;->LOCALLY_ASSIGNED_MASK:J

    or-long/2addr v0, v2

    .line 89
    sget-wide v2, Lcom/android/internal/telephony/util/MacAddressUtils;->MULTICAST_MASK:J

    not-long v2, v2

    and-long/2addr v0, v2

    .line 90
    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/MacAddressUtils;->byteAddrFromLongAddr(J)[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/android/internal/telephony/util/MacAddressUtils;->DEFAULT_MAC_ADDRESS:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 92
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/MacAddressUtils;->createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;

    move-result-object p0

    return-object p0

    :cond_3c
    return-object v0
.end method

.method public static blacklist isMacAddress([B)Z
    .registers 2

    if-eqz p0, :cond_8

    .line 136
    array-length p0, p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isMulticastAddress(Landroid/net/MacAddress;)Z
    .registers 5

    .line 52
    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sget-wide v2, Lcom/android/internal/telephony/util/MacAddressUtils;->MULTICAST_MASK:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist longAddrFromByteAddr([B)J
    .registers 7

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-static {p0}, Lcom/android/internal/telephony/util/MacAddressUtils;->isMacAddress([B)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 107
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_1b

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-long/2addr v1, v5

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1b
    return-wide v1

    .line 103
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was not a valid MAC address"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
