.class public final Landroid/net/ipsec/ike/IkeTrafficSelector;
.super Ljava/lang/Object;
.source "IkeTrafficSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/IkeTrafficSelector$TrafficSelectorType;,
        Landroid/net/ipsec/ike/IkeTrafficSelector$IpProtocolId;
    }
.end annotation


# static fields
.field private static final blacklist END_ADDRESS_KEY:Ljava/lang/String; = "endingAddress"

.field private static final blacklist END_PORT_KEY:Ljava/lang/String; = "endPort"

.field private static final blacklist IPV4_ADDR_LEN:I = 0x4

.field private static final blacklist IPV6_ADDR_LEN:I = 0x10

.field static final blacklist IP_PROTOCOL_ID_ICMP:I = 0x1

.field private static final blacklist IP_PROTOCOL_ID_SET:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist IP_PROTOCOL_ID_TCP:I = 0x6

.field static final blacklist IP_PROTOCOL_ID_UDP:I = 0x11

.field static final blacklist IP_PROTOCOL_ID_UNSPEC:I = 0x0

.field public static final blacklist PORT_NUMBER_MAX:I = 0xffff

.field public static final blacklist PORT_NUMBER_MIN:I = 0x0

.field private static final blacklist START_ADDRESS_KEY:Ljava/lang/String; = "startingAddress"

.field private static final blacklist START_PORT_KEY:Ljava/lang/String; = "startPort"

.field static final blacklist TRAFFIC_SELECTOR_IPV4_LEN:I = 0x10

.field static final blacklist TRAFFIC_SELECTOR_IPV6_LEN:I = 0x28

.field public static final blacklist TRAFFIC_SELECTOR_TYPE_IPV4_ADDR_RANGE:I = 0x7

.field public static final blacklist TRAFFIC_SELECTOR_TYPE_IPV6_ADDR_RANGE:I = 0x8


# instance fields
.field public final whitelist endPort:I

.field public final whitelist endingAddress:Ljava/net/InetAddress;

.field public final blacklist ipProtocolId:I

.field public final blacklist selectorLength:I

.field public final whitelist startPort:I

.field public final whitelist startingAddress:Ljava/net/InetAddress;

.field public final blacklist tsType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->IP_PROTOCOL_ID_SET:Landroid/util/ArraySet;

    .line 70
    sget-object v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->IP_PROTOCOL_ID_SET:Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->IP_PROTOCOL_ID_SET:Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->IP_PROTOCOL_ID_SET:Landroid/util/ArraySet;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->IP_PROTOCOL_ID_SET:Landroid/util/ArraySet;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method private constructor blacklist <init>(IIIIILjava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 8
    .param p1, "tsType"    # I
    .param p2, "ipProtocolId"    # I
    .param p3, "selectorLength"    # I
    .param p4, "startPort"    # I
    .param p5, "endPort"    # I
    .param p6, "startingAddress"    # Ljava/net/InetAddress;
    .param p7, "endingAddress"    # Ljava/net/InetAddress;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->tsType:I

    .line 134
    iput p2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->ipProtocolId:I

    .line 135
    iput p3, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->selectorLength:I

    .line 138
    iput p4, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startPort:I

    .line 139
    iput p5, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endPort:I

    .line 140
    iput-object p6, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    .line 141
    iput-object p7, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    .line 142
    return-void
.end method

.method public constructor blacklist <init>(IIILjava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 9
    .param p1, "tsType"    # I
    .param p2, "startPort"    # I
    .param p3, "endPort"    # I
    .param p4, "startingAddress"    # Ljava/net/InetAddress;
    .param p5, "endingAddress"    # Ljava/net/InetAddress;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->tsType:I

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->ipProtocolId:I

    .line 190
    packed-switch p1, :pswitch_data_7c

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized Traffic Selector type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :pswitch_13
    const/16 v0, 0x28

    iput v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->selectorLength:I

    .line 204
    instance-of v0, p4, Ljava/net/Inet6Address;

    if-eqz v0, :cond_20

    instance-of v0, p5, Ljava/net/Inet6Address;

    if-eqz v0, :cond_20

    goto :goto_34

    .line 206
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid address range: TS_IPV6_ADDR_RANGE requires IPv6 addresses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :pswitch_28
    const/16 v0, 0x10

    iput v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->selectorLength:I

    .line 194
    instance-of v0, p4, Ljava/net/Inet4Address;

    if-eqz v0, :cond_74

    instance-of v0, p5, Ljava/net/Inet4Address;

    if-eqz v0, :cond_74

    .line 214
    :goto_34
    invoke-static {p4, p5}, Landroid/net/ipsec/ike/IkeTrafficSelector;->compareInetAddressTo(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v0

    if-gtz v0, :cond_6c

    .line 218
    invoke-static {p2, p3}, Landroid/net/ipsec/ike/IkeTrafficSelector;->isPortRangeValid(II)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 223
    iput p2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startPort:I

    .line 224
    iput p3, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endPort:I

    .line 225
    iput-object p4, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    .line 226
    iput-object p5, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    .line 227
    return-void

    .line 219
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port range. startPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received invalid address range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid address range: TS_IPV4_ADDR_RANGE requires IPv4 addresses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_7c
    .packed-switch 0x7
        :pswitch_28
        :pswitch_13
    .end packed-switch
.end method

.method public constructor whitelist <init>(IILjava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 11
    .param p1, "startPort"    # I
    .param p2, "endPort"    # I
    .param p3, "startingAddress"    # Ljava/net/InetAddress;
    .param p4, "endingAddress"    # Ljava/net/InetAddress;

    .line 160
    invoke-static {p3}, Landroid/net/ipsec/ike/IkeTrafficSelector;->getTsType(Ljava/net/InetAddress;)I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "startPort":I
    .end local p2    # "endPort":I
    .end local p3    # "startingAddress":Ljava/net/InetAddress;
    .end local p4    # "endingAddress":Ljava/net/InetAddress;
    .local v2, "startPort":I
    .local v3, "endPort":I
    .local v4, "startingAddress":Ljava/net/InetAddress;
    .local v5, "endingAddress":Ljava/net/InetAddress;
    invoke-direct/range {v0 .. v5}, Landroid/net/ipsec/ike/IkeTrafficSelector;-><init>(IIILjava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 161
    return-void
.end method

.method private static blacklist compareInetAddressTo(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .registers 8
    .param p0, "leftAddress"    # Ljava/net/InetAddress;
    .param p1, "rightAddress"    # Ljava/net/InetAddress;

    .line 390
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 391
    .local v0, "leftAddrBytes":[B
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 393
    .local v1, "rightAddrBytes":[B
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_28

    .line 397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v0

    if-ge v2, v3, :cond_26

    .line 398
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    .line 399
    .local v3, "unsignedByteLeft":I
    aget-byte v4, v1, v2

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    .line 401
    .local v4, "unsignedByteRight":I
    invoke-static {v3, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v5

    .line 402
    .local v5, "result":I
    if-eqz v5, :cond_23

    return v5

    .line 397
    .end local v3    # "unsignedByteLeft":I
    .end local v4    # "unsignedByteRight":I
    .end local v5    # "result":I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 404
    .end local v2    # "i":I
    :cond_26
    const/4 v2, 0x0

    return v2

    .line 394
    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Two addresses are different types."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist decodeIkeTrafficSelectors(I[B)[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .registers 9
    .param p0, "numTs"    # I
    .param p1, "tsBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 281
    new-array v0, p0, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 282
    .local v0, "tsArray":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 285
    .local v1, "inputBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, p0, :cond_49

    .line 286
    :try_start_9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    .line 287
    .local v3, "tsType":I
    packed-switch v3, :pswitch_data_5a

    .line 297
    new-instance v4, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    goto :goto_2b

    .line 293
    :pswitch_17
    const/16 v4, 0x8

    invoke-static {v1, v4}, Landroid/net/ipsec/ike/IkeTrafficSelector;->decodeTrafficSelector(Ljava/nio/ByteBuffer;I)Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v4

    aput-object v4, v0, v2

    .line 295
    goto :goto_28

    .line 289
    :pswitch_20
    const/4 v4, 0x7

    invoke-static {v1, v4}, Landroid/net/ipsec/ike/IkeTrafficSelector;->decodeTrafficSelector(Ljava/nio/ByteBuffer;I)Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v4

    aput-object v4, v0, v2

    .line 291
    nop

    .line 285
    .end local v3    # "tsType":I
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 297
    .restart local v3    # "tsType":I
    :goto_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Traffic Selector type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tsArray":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local v1    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local p0    # "numTs":I
    .end local p1    # "tsBytes":[B
    throw v4
    :try_end_42
    .catch Ljava/nio/BufferOverflowException; {:try_start_9 .. :try_end_42} :catch_42

    .line 301
    .end local v2    # "i":I
    .end local v3    # "tsType":I
    .restart local v0    # "tsArray":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .restart local v1    # "inputBuffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "numTs":I
    .restart local p1    # "tsBytes":[B
    :catch_42
    move-exception v2

    .line 303
    .local v2, "e":Ljava/nio/BufferOverflowException;
    new-instance v3, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    invoke-direct {v3, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 304
    .end local v2    # "e":Ljava/nio/BufferOverflowException;
    :cond_49
    nop

    .line 306
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_51

    .line 311
    return-object v0

    .line 307
    :cond_51
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v3, "Unexpected trailing characters of Traffic Selectors."

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_5a
    .packed-switch 0x7
        :pswitch_20
        :pswitch_17
    .end packed-switch
.end method

.method private static blacklist decodeTrafficSelector(Ljava/nio/ByteBuffer;I)Landroid/net/ipsec/ike/IkeTrafficSelector;
    .registers 18
    .param p0, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "tsType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 319
    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    .line 320
    .local v4, "ipProtocolId":I
    sget-object v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->IP_PROTOCOL_ID_SET:Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 325
    const/4 v0, 0x7

    move/from16 v3, p1

    if-ne v3, v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    move v10, v0

    .line 326
    .local v10, "isTsIpv4":Z
    const/16 v0, 0x10

    if-eqz v10, :cond_25

    move v5, v0

    goto :goto_28

    :cond_25
    const/16 v2, 0x28

    move v5, v2

    .line 327
    .local v5, "expectedTsLen":I
    :goto_28
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v11

    .line 328
    .local v11, "tsLength":I
    if-ne v5, v11, :cond_ad

    .line 333
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v6

    .line 334
    .local v6, "startPort":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v7

    .line 335
    .local v7, "endPort":I
    invoke-static {v6, v7}, Landroid/net/ipsec/ike/IkeTrafficSelector;->isPortRangeValid(II)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 344
    if-eqz v10, :cond_4b

    const/4 v0, 0x4

    :cond_4b
    move v12, v0

    .line 345
    .local v12, "expectedAddrLen":I
    new-array v13, v12, [B

    .line 346
    .local v13, "startAddressBytes":[B
    new-array v14, v12, [B

    .line 347
    .local v14, "endAddressBytes":[B
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 348
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 350
    :try_start_56
    invoke-static {v13}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    .line 351
    .local v8, "startAddress":Ljava/net/InetAddress;
    invoke-static {v14}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v9

    .line 353
    .local v9, "endAddress":Ljava/net/InetAddress;
    instance-of v0, v8, Ljava/net/Inet4Address;

    .line 354
    .local v0, "isStartAddrIpv4":Z
    instance-of v2, v9, Ljava/net/Inet4Address;

    move v15, v2

    .line 355
    .local v15, "isEndAddrIpv4":Z
    if-ne v10, v0, :cond_7b

    if-ne v10, v15, :cond_7b

    .line 360
    invoke-static {v8, v9}, Landroid/net/ipsec/ike/IkeTrafficSelector;->compareInetAddressTo(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v2

    if-gtz v2, :cond_73

    .line 364
    new-instance v2, Landroid/net/ipsec/ike/IkeTrafficSelector;

    invoke-direct/range {v2 .. v9}, Landroid/net/ipsec/ike/IkeTrafficSelector;-><init>(IIIIILjava/net/InetAddress;Ljava/net/InetAddress;)V

    return-object v2

    .line 361
    :cond_73
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v3, "Received invalid IP address range."

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    .end local v4    # "ipProtocolId":I
    .end local v5    # "expectedTsLen":I
    .end local v6    # "startPort":I
    .end local v7    # "endPort":I
    .end local v10    # "isTsIpv4":Z
    .end local v11    # "tsLength":I
    .end local v12    # "expectedAddrLen":I
    .end local v13    # "startAddressBytes":[B
    .end local v14    # "endAddressBytes":[B
    .end local p0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "tsType":I
    throw v2

    .line 356
    .restart local v4    # "ipProtocolId":I
    .restart local v5    # "expectedTsLen":I
    .restart local v6    # "startPort":I
    .restart local v7    # "endPort":I
    .restart local v10    # "isTsIpv4":Z
    .restart local v11    # "tsLength":I
    .restart local v12    # "expectedAddrLen":I
    .restart local v13    # "startAddressBytes":[B
    .restart local v14    # "endAddressBytes":[B
    .restart local p0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "tsType":I
    :cond_7b
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v3, "Invalid IP address family"

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    .end local v4    # "ipProtocolId":I
    .end local v5    # "expectedTsLen":I
    .end local v6    # "startPort":I
    .end local v7    # "endPort":I
    .end local v10    # "isTsIpv4":Z
    .end local v11    # "tsLength":I
    .end local v12    # "expectedAddrLen":I
    .end local v13    # "startAddressBytes":[B
    .end local v14    # "endAddressBytes":[B
    .end local p0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "tsType":I
    throw v2
    :try_end_83
    .catch Ljava/lang/ClassCastException; {:try_start_56 .. :try_end_83} :catch_83
    .catch Ljava/net/UnknownHostException; {:try_start_56 .. :try_end_83} :catch_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_83} :catch_83

    .line 372
    .end local v0    # "isStartAddrIpv4":Z
    .end local v8    # "startAddress":Ljava/net/InetAddress;
    .end local v9    # "endAddress":Ljava/net/InetAddress;
    .end local v15    # "isEndAddrIpv4":Z
    .restart local v4    # "ipProtocolId":I
    .restart local v5    # "expectedTsLen":I
    .restart local v6    # "startPort":I
    .restart local v7    # "endPort":I
    .restart local v10    # "isTsIpv4":Z
    .restart local v11    # "tsLength":I
    .restart local v12    # "expectedAddrLen":I
    .restart local v13    # "startAddressBytes":[B
    .restart local v14    # "endAddressBytes":[B
    .restart local p0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "tsType":I
    :catch_83
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    invoke-direct {v2, v0}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "expectedAddrLen":I
    .end local v13    # "startAddressBytes":[B
    .end local v14    # "endAddressBytes":[B
    :cond_8a
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received invalid port range. startPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    .end local v6    # "startPort":I
    .end local v7    # "endPort":I
    :cond_ad
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Invalid Traffic Selector Length."

    invoke-direct {v0, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    .end local v5    # "expectedTsLen":I
    .end local v10    # "isTsIpv4":Z
    .end local v11    # "tsLength":I
    :cond_b5
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Invalid IP Protocol ID."

    invoke-direct {v0, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTrafficSelector;
    .registers 6
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 236
    const-string v0, "PersistableBundle not provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    const-string v0, "startPort"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "startPort":I
    const-string v1, "endPort"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "endPort":I
    nop

    .line 242
    const-string v2, "startingAddress"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 243
    .local v2, "startingAddress":Ljava/net/InetAddress;
    const-string v3, "startAddress not provided"

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    nop

    .line 245
    const-string v3, "endingAddress"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 246
    .local v3, "endingAddress":Ljava/net/InetAddress;
    const-string v4, "endAddress not provided"

    invoke-static {p0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    new-instance v4, Landroid/net/ipsec/ike/IkeTrafficSelector;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/net/ipsec/ike/IkeTrafficSelector;-><init>(IILjava/net/InetAddress;Ljava/net/InetAddress;)V

    return-object v4
.end method

.method private static blacklist getTsType(Ljava/net/InetAddress;)I
    .registers 2
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 164
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_6

    .line 165
    const/4 v0, 0x7

    return v0

    .line 167
    :cond_6
    const/16 v0, 0x8

    return v0
.end method

.method private static blacklist isPortRangeValid(II)Z
    .registers 3
    .param p0, "startPort"    # I
    .param p1, "endPort"    # I

    .line 379
    if-ltz p0, :cond_f

    const v0, 0xffff

    if-gt p0, v0, :cond_f

    if-ltz p1, :cond_f

    if-gt p1, v0, :cond_f

    if-gt p0, p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method


# virtual methods
.method public blacklist contains(Landroid/net/ipsec/ike/IkeTrafficSelector;)Z
    .registers 4
    .param p1, "ts"    # Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 415
    iget v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->tsType:I

    iget v1, p1, Landroid/net/ipsec/ike/IkeTrafficSelector;->tsType:I

    if-ne v0, v1, :cond_2e

    iget v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->ipProtocolId:I

    iget v1, p1, Landroid/net/ipsec/ike/IkeTrafficSelector;->ipProtocolId:I

    if-ne v0, v1, :cond_2e

    iget v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startPort:I

    iget v1, p1, Landroid/net/ipsec/ike/IkeTrafficSelector;->startPort:I

    if-gt v0, v1, :cond_2e

    iget v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endPort:I

    iget v1, p1, Landroid/net/ipsec/ike/IkeTrafficSelector;->endPort:I

    if-lt v0, v1, :cond_2e

    iget-object v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    iget-object v1, p1, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    .line 419
    invoke-static {v0, v1}, Landroid/net/ipsec/ike/IkeTrafficSelector;->compareInetAddressTo(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v0

    if-gtz v0, :cond_2e

    iget-object v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    iget-object v1, p1, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    .line 420
    invoke-static {v0, v1}, Landroid/net/ipsec/ike/IkeTrafficSelector;->compareInetAddressTo(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v0

    if-ltz v0, :cond_2e

    .line 421
    const/4 v0, 0x1

    return v0

    .line 423
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist encodeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 478
    iget v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->tsType:I

    int-to-byte v0, v0

    .line 479
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->ipProtocolId:I

    int-to-byte v1, v1

    .line 480
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->selectorLength:I

    int-to-short v1, v1

    .line 481
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startPort:I

    int-to-short v1, v1

    .line 482
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endPort:I

    int-to-short v1, v1

    .line 483
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    .line 484
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    .line 485
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 486
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 442
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeTrafficSelector;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 444
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 446
    .local v0, "other":Landroid/net/ipsec/ike/IkeTrafficSelector;
    iget v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->tsType:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->tsType:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->ipProtocolId:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->ipProtocolId:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startPort:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startPort:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endPort:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endPort:I

    if-eq v2, v3, :cond_22

    goto :goto_70

    .line 453
    :cond_22
    iget v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->tsType:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_72

    .line 465
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unrecognized TS type"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :pswitch_30
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    check-cast v2, Ljava/net/Inet6Address;

    iget-object v4, v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    check-cast v4, Ljava/net/Inet6Address;

    .line 461
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    check-cast v2, Ljava/net/Inet6Address;

    iget-object v4, v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    check-cast v4, Ljava/net/Inet6Address;

    .line 463
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    move v1, v3

    goto :goto_4f

    :cond_4e
    nop

    .line 460
    :goto_4f
    return v1

    .line 455
    :pswitch_50
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    check-cast v2, Ljava/net/Inet4Address;

    iget-object v4, v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    check-cast v4, Ljava/net/Inet4Address;

    .line 456
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    check-cast v2, Ljava/net/Inet4Address;

    iget-object v4, v0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    check-cast v4, Ljava/net/Inet4Address;

    .line 458
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    move v1, v3

    goto :goto_6f

    :cond_6e
    nop

    .line 455
    :goto_6f
    return v1

    .line 450
    :cond_70
    :goto_70
    return v1

    nop

    :pswitch_data_72
    .packed-switch 0x7
        :pswitch_50
        :pswitch_30
    .end packed-switch
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 429
    iget v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->tsType:I

    .line 430
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->ipProtocolId:I

    .line 431
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->selectorLength:I

    .line 432
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startPort:I

    .line 433
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endPort:I

    .line 434
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    iget-object v7, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 429
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 258
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 260
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "startPort"

    iget v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v1, "endPort"

    iget v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 262
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startingAddress"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endingAddress"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-object v0
.end method
