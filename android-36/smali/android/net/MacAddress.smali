.class public final Landroid/net/MacAddress;
.super Ljava/lang/Object;
.source "MacAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MacAddress$MacAddressType;
    }
.end annotation


# static fields
.field public static final greylist-max-r ALL_ZEROS_ADDRESS:Landroid/net/MacAddress;

.field private static final greylist-max-o BASE_GOOGLE_MAC:Landroid/net/MacAddress;

.field public static final whitelist BROADCAST_ADDRESS:Landroid/net/MacAddress;

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_MAC_ADDRESS:Landroid/net/MacAddress;

.field private static final greylist-max-o ETHER_ADDR_BROADCAST:[B

.field private static final greylist-max-o ETHER_ADDR_LEN:I = 0x6

.field private static final greylist-max-o LOCALLY_ASSIGNED_MASK:J

.field private static final greylist-max-o MULTICAST_MASK:J

.field private static final greylist-max-o NIC_MASK:J

.field private static final greylist-max-o OUI_MASK:J

.field public static final whitelist TYPE_BROADCAST:I = 0x3

.field public static final whitelist TYPE_MULTICAST:I = 0x2

.field public static final whitelist TYPE_UNICAST:I = 0x1

.field public static final greylist-max-o TYPE_UNKNOWN:I = 0x0

.field private static final greylist-max-o VALID_LONG_MASK:J = 0xffffffffffffL


# instance fields
.field private final greylist-max-o mAddr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_5e

    invoke-static {v0}, Landroid/net/MacAddress;->addr([I)[B

    move-result-object v0

    sput-object v0, Landroid/net/MacAddress;->ETHER_ADDR_BROADCAST:[B

    .line 54
    sget-object v0, Landroid/net/MacAddress;->ETHER_ADDR_BROADCAST:[B

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    .line 63
    new-instance v0, Landroid/net/MacAddress;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/MacAddress;-><init>(J)V

    sput-object v0, Landroid/net/MacAddress;->ALL_ZEROS_ADDRESS:Landroid/net/MacAddress;

    .line 85
    const-string v0, "2:0:0:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/MacAddress;->mAddr:J

    sput-wide v0, Landroid/net/MacAddress;->LOCALLY_ASSIGNED_MASK:J

    .line 86
    const-string v0, "1:0:0:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/MacAddress;->mAddr:J

    sput-wide v0, Landroid/net/MacAddress;->MULTICAST_MASK:J

    .line 87
    const-string v0, "ff:ff:ff:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/MacAddress;->mAddr:J

    sput-wide v0, Landroid/net/MacAddress;->OUI_MASK:J

    .line 88
    const-string v0, "0:0:0:ff:ff:ff"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/MacAddress;->mAddr:J

    sput-wide v0, Landroid/net/MacAddress;->NIC_MASK:J

    .line 89
    const-string v0, "da:a1:19:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/MacAddress;->BASE_GOOGLE_MAC:Landroid/net/MacAddress;

    .line 91
    nop

    .line 92
    const-string v0, "02:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/MacAddress;->DEFAULT_MAC_ADDRESS:Landroid/net/MacAddress;

    .line 178
    new-instance v0, Landroid/net/MacAddress$1;

    invoke-direct {v0}, Landroid/net/MacAddress$1;-><init>()V

    sput-object v0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_5e
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method private constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "addr"    # J

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p1

    iput-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/net/MacAddress-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/MacAddress;-><init>(J)V

    return-void
.end method

.method private static varargs blacklist addr([I)[B
    .registers 5
    .param p0, "in"    # [I

    .line 347
    array-length v0, p0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    .line 351
    new-array v0, v1, [B

    .line 352
    .local v0, "out":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_11

    .line 353
    aget v3, p0, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 355
    .end local v2    # "i":I
    :cond_11
    return-object v0

    .line 348
    .end local v0    # "out":[B
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not an array with length equal to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o byteAddrFromLongAddr(J)[B
    .registers 3
    .param p0, "addr"    # J

    .line 268
    invoke-static {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->byteAddrFromLongAddr(J)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o byteAddrFromStringAddr(Ljava/lang/String;)[B
    .registers 8
    .param p0, "addr"    # Ljava/lang/String;

    .line 232
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_44

    .line 237
    new-array v1, v2, [B

    .line 238
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_43

    .line 239
    aget-object v4, v0, v3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 240
    .local v4, "x":I
    if-ltz v4, :cond_2a

    const/16 v5, 0xff

    if-lt v5, v4, :cond_2a

    .line 243
    int-to-byte v5, v4

    aput-byte v5, v1, v3

    .line 238
    .end local v4    # "x":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 241
    .restart local v4    # "x":I
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "was not a valid MAC address"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v3    # "i":I
    .end local v4    # "x":I
    :cond_43
    return-object v1

    .line 235
    .end local v1    # "bytes":[B
    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not a valid MAC address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o createRandomUnicastAddressWithGoogleBase()Landroid/net/MacAddress;
    .registers 2

    .line 342
    sget-object v0, Landroid/net/MacAddress;->BASE_GOOGLE_MAC:Landroid/net/MacAddress;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist fromBytes([B)Landroid/net/MacAddress;
    .registers 4
    .param p0, "addr"    # [B

    .line 328
    new-instance v0, Landroid/net/MacAddress;

    invoke-static {p0}, Landroid/net/MacAddress;->longAddrFromByteAddr([B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/net/MacAddress;-><init>(J)V

    return-object v0
.end method

.method public static whitelist fromString(Ljava/lang/String;)Landroid/net/MacAddress;
    .registers 4
    .param p0, "addr"    # Ljava/lang/String;

    .line 316
    new-instance v0, Landroid/net/MacAddress;

    invoke-static {p0}, Landroid/net/MacAddress;->longAddrFromStringAddr(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/net/MacAddress;-><init>(J)V

    return-object v0
.end method

.method public static greylist-max-o isMacAddress([B)Z
    .registers 2
    .param p0, "addr"    # [B

    .line 199
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->isMacAddress([B)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o longAddrFromByteAddr([B)J
    .registers 3
    .param p0, "addr"    # [B

    .line 272
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private static greylist-max-o longAddrFromStringAddr(Ljava/lang/String;)J
    .registers 10
    .param p0, "addr"    # Ljava/lang/String;

    .line 278
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_49

    .line 283
    const-wide/16 v1, 0x0

    .line 284
    .local v1, "longAddr":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v0

    if-ge v3, v4, :cond_48

    .line 285
    aget-object v4, v0, v3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 286
    .local v4, "x":I
    if-ltz v4, :cond_2f

    const/16 v5, 0xff

    if-lt v5, v4, :cond_2f

    .line 289
    int-to-long v5, v4

    const/16 v7, 0x8

    shl-long v7, v1, v7

    add-long v1, v5, v7

    .line 284
    .end local v4    # "x":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 287
    .restart local v4    # "x":I
    :cond_2f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "was not a valid MAC address"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 291
    .end local v3    # "i":I
    .end local v4    # "x":I
    :cond_48
    return-wide v1

    .line 281
    .end local v1    # "longAddr":J
    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not a valid MAC address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o macAddressType([B)I
    .registers 2
    .param p0, "addr"    # [B

    .line 214
    invoke-static {p0}, Landroid/net/MacAddress;->isMacAddress([B)Z

    move-result v0

    if-nez v0, :cond_8

    .line 215
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_8
    invoke-static {p0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->getAddressType()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o stringAddrFromByteAddr([B)Ljava/lang/String;
    .registers 8
    .param p0, "addr"    # [B

    .line 260
    invoke-static {p0}, Landroid/net/MacAddress;->isMacAddress([B)Z

    move-result v0

    if-nez v0, :cond_8

    .line 261
    const/4 v0, 0x0

    return-object v0

    .line 263
    :cond_8
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 264
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 263
    const-string v1, "%02x:%02x:%02x:%02x:%02x:%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o stringAddrFromLongAddr(J)Ljava/lang/String;
    .registers 12
    .param p0, "addr"    # J

    .line 297
    const/16 v0, 0x28

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    .line 298
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    .line 299
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v0, 0x18

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    .line 300
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v0, 0x10

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    .line 301
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v0, 0x8

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    .line 302
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    and-long v0, p0, v2

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 297
    const-string v1, "%02x:%02x:%02x:%02x:%02x:%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 165
    instance-of v0, p1, Landroid/net/MacAddress;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Landroid/net/MacAddress;

    iget-wide v0, v0, Landroid/net/MacAddress;->mAddr:J

    iget-wide v2, p0, Landroid/net/MacAddress;->mAddr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public whitelist getAddressType()I
    .registers 5

    .line 111
    sget-object v0, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    invoke-virtual {p0, v0}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 112
    const/4 v0, 0x3

    return v0

    .line 114
    :cond_a
    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    sget-wide v2, Landroid/net/MacAddress;->MULTICAST_MASK:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 115
    const/4 v0, 0x2

    return v0

    .line 117
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getLinkLocalIpv6FromEui48Mac()Ljava/net/Inet6Address;
    .registers 9

    .line 380
    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 381
    .local v0, "macEui48Bytes":[B
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 383
    .local v1, "addr":[B
    const/4 v2, 0x0

    const/4 v3, -0x2

    aput-byte v3, v1, v2

    .line 384
    const/16 v4, -0x80

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    .line 385
    aget-byte v4, v0, v2

    const/4 v6, 0x2

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    const/16 v7, 0x8

    aput-byte v4, v1, v7

    .line 386
    const/16 v4, 0x9

    aget-byte v5, v0, v5

    aput-byte v5, v1, v4

    .line 387
    const/16 v4, 0xa

    aget-byte v5, v0, v6

    aput-byte v5, v1, v4

    .line 388
    const/16 v4, 0xb

    const/4 v5, -0x1

    aput-byte v5, v1, v4

    .line 389
    const/16 v4, 0xc

    aput-byte v3, v1, v4

    .line 390
    const/4 v3, 0x3

    aget-byte v3, v0, v3

    const/16 v4, 0xd

    aput-byte v3, v1, v4

    .line 391
    const/4 v3, 0x4

    aget-byte v3, v0, v3

    const/16 v4, 0xe

    aput-byte v3, v1, v4

    .line 392
    const/4 v3, 0x5

    aget-byte v3, v0, v3

    const/16 v4, 0xf

    aput-byte v3, v1, v4

    .line 395
    const/4 v3, 0x0

    :try_start_45
    invoke-static {v3, v1, v2}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v2
    :try_end_49
    .catch Ljava/net/UnknownHostException; {:try_start_45 .. :try_end_49} :catch_4a

    return-object v2

    .line 396
    :catch_4a
    move-exception v2

    .line 397
    .local v2, "e":Ljava/net/UnknownHostException;
    return-object v3
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 160
    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/MacAddress;->mAddr:J

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist isLocallyAssigned()Z
    .registers 5

    .line 124
    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    sget-wide v2, Landroid/net/MacAddress;->LOCALLY_ASSIGNED_MASK:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist matches(Landroid/net/MacAddress;Landroid/net/MacAddress;)Z
    .registers 9
    .param p1, "baseAddress"    # Landroid/net/MacAddress;
    .param p2, "mask"    # Landroid/net/MacAddress;

    .line 367
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    iget-wide v2, p2, Landroid/net/MacAddress;->mAddr:J

    and-long/2addr v0, v2

    iget-wide v2, p1, Landroid/net/MacAddress;->mAddr:J

    iget-wide v4, p2, Landroid/net/MacAddress;->mAddr:J

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public whitelist toByteArray()[B
    .registers 3

    .line 136
    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    invoke-static {v0, v1}, Landroid/net/MacAddress;->byteAddrFromLongAddr(J)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist toOuiString()Ljava/lang/String;
    .registers 8

    .line 154
    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v4, p0, Landroid/net/MacAddress;->mAddr:J

    const/16 v1, 0x20

    shr-long/2addr v4, v1

    and-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v4, p0, Landroid/net/MacAddress;->mAddr:J

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 154
    const-string v1, "%02x:%02x:%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 146
    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    invoke-static {v0, v1}, Landroid/net/MacAddress;->stringAddrFromLongAddr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 170
    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    return-void
.end method
