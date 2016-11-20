.class Landroid/net/apf/ApfFilter$Ra;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ra"
.end annotation


# static fields
.field private static final ICMP6_4_BYTE_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_4_BYTE_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_DNSSL_OPTION_TYPE:I = 0x1f

.field private static final ICMP6_PREFIX_OPTION_LEN:I = 0x20

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_OFFSET:I = 0x8

.field private static final ICMP6_PREFIX_OPTION_TYPE:I = 0x3

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_RA_CHECKSUM_LEN:I = 0x2

.field private static final ICMP6_RA_CHECKSUM_OFFSET:I = 0x38

.field private static final ICMP6_RA_HEADER_LEN:I = 0x10

.field private static final ICMP6_RA_OPTION_OFFSET:I = 0x46

.field private static final ICMP6_RA_ROUTER_LIFETIME_LEN:I = 0x2

.field private static final ICMP6_RA_ROUTER_LIFETIME_OFFSET:I = 0x3c

.field private static final ICMP6_RDNSS_OPTION_TYPE:I = 0x19

.field private static final ICMP6_ROUTE_INFO_OPTION_TYPE:I = 0x18


# instance fields
.field mLastSeen:J

.field mMinLifetime:J

.field private final mNonLifetimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mPrefixOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRdnssOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field seenCount:I

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfFilter;[BI)V
    .locals 11
    .param p1, "this$0"    # Landroid/net/apf/ApfFilter;
    .param p2, "packet"    # [B
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x4

    #@2
    const/4 v8, 0x0

    #@3
    .line 378
    iput-object p1, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    #@5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 256
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 255
    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@f
    .line 263
    new-instance v3, Ljava/util/ArrayList;

    #@11
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    #@16
    .line 266
    new-instance v3, Ljava/util/ArrayList;

    #@18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    #@1d
    .line 269
    iput v8, p0, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    #@1f
    .line 379
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@22
    move-result-object v3

    #@23
    invoke-static {p2, v8, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@2a
    move-result-object v3

    #@2b
    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@2d
    .line 380
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@2f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@32
    .line 381
    invoke-static {}, Landroid/net/apf/ApfFilter;->-wrap0()J

    #@35
    move-result-wide v4

    #@36
    iput-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    #@38
    .line 385
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@3a
    const/16 v4, 0xc

    #@3c
    invoke-direct {p0, v3, v4}, Landroid/net/apf/ApfFilter$Ra;->getUint16(Ljava/nio/ByteBuffer;I)J

    #@3f
    move-result-wide v4

    #@40
    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    #@42
    int-to-long v6, v3

    #@43
    cmp-long v3, v4, v6

    #@45
    if-nez v3, :cond_0

    #@47
    .line 386
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@49
    const/16 v4, 0x14

    #@4b
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@4e
    move-result v3

    #@4f
    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter$Ra;->uint8(B)I

    #@52
    move-result v3

    #@53
    sget v4, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    #@55
    if-eq v3, v4, :cond_1

    #@57
    .line 388
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@59
    const-string/jumbo v4, "Not an ICMP6 router advertisement"

    #@5c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v3

    #@60
    .line 387
    :cond_1
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@62
    const/16 v4, 0x36

    #@64
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@67
    move-result v3

    #@68
    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter$Ra;->uint8(B)I

    #@6b
    move-result v3

    #@6c
    const/16 v4, 0x86

    #@6e
    if-ne v3, v4, :cond_0

    #@70
    .line 394
    const/16 v3, 0x38

    #@72
    .line 393
    invoke-direct {p0, v8, v3, v10}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@75
    move-result v0

    #@76
    .line 399
    .local v0, "lastNonLifetimeStart":I
    const/16 v3, 0x3c

    #@78
    .line 398
    invoke-direct {p0, v0, v3, v10}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@7b
    move-result v0

    #@7c
    .line 403
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@7e
    const/16 v4, 0x46

    #@80
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@83
    .line 404
    :goto_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@85
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@88
    move-result v3

    #@89
    if-eqz v3, :cond_3

    #@8b
    .line 405
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@8d
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@8f
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@92
    move-result v4

    #@93
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@96
    move-result v3

    #@97
    and-int/lit16 v2, v3, 0xff

    #@99
    .line 406
    .local v2, "optionType":I
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@9b
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@9d
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@a0
    move-result v4

    #@a1
    add-int/lit8 v4, v4, 0x1

    #@a3
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@a6
    move-result v3

    #@a7
    and-int/lit16 v3, v3, 0xff

    #@a9
    mul-int/lit8 v1, v3, 0x8

    #@ab
    .line 407
    .local v1, "optionLength":I
    sparse-switch v2, :sswitch_data_0

    #@ae
    .line 436
    :goto_1
    if-gtz v1, :cond_2

    #@b0
    .line 437
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b2
    .line 438
    const-string/jumbo v4, "Invalid option length opt=%d len=%d"

    #@b5
    .line 437
    new-array v5, v10, [Ljava/lang/Object;

    #@b7
    .line 438
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ba
    move-result-object v6

    #@bb
    aput-object v6, v5, v8

    #@bd
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c0
    move-result-object v6

    #@c1
    const/4 v7, 0x1

    #@c2
    aput-object v6, v5, v7

    #@c4
    .line 437
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c7
    move-result-object v4

    #@c8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v3

    #@cc
    .line 410
    :sswitch_0
    invoke-direct {p0, v0, v9, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@cf
    move-result v0

    #@d0
    .line 415
    const/16 v3, 0x8

    #@d2
    .line 414
    invoke-direct {p0, v0, v3, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@d5
    move-result v0

    #@d6
    .line 417
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    #@d8
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@da
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@dd
    move-result v4

    #@de
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e1
    move-result-object v4

    #@e2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e5
    goto :goto_1

    #@e6
    .line 422
    :sswitch_1
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    #@e8
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@ea
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@ed
    move-result v4

    #@ee
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f1
    move-result-object v4

    #@f2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f5
    .line 427
    :sswitch_2
    invoke-direct {p0, v0, v9, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@f8
    move-result v0

    #@f9
    goto :goto_1

    #@fa
    .line 440
    :cond_2
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@fc
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@fe
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@101
    move-result v4

    #@102
    add-int/2addr v4, v1

    #@103
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@106
    goto/16 :goto_0

    #@108
    .line 443
    .end local v1    # "optionLength":I
    .end local v2    # "optionType":I
    :cond_3
    invoke-direct {p0, v0, v8, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@10b
    .line 444
    invoke-virtual {p0, p2, p3}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    #@10e
    move-result-wide v4

    #@10f
    iput-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    #@111
    .line 378
    return-void

    #@112
    .line 407
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch
.end method

.method private IPv6AddresstoString(I)Ljava/lang/String;
    .locals 7
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 281
    :try_start_0
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    #@5
    move-result-object v2

    #@6
    .line 284
    .local v2, "array":[B
    if-ltz p1, :cond_0

    #@8
    add-int/lit8 v5, p1, 0x10

    #@a
    array-length v6, v2

    #@b
    if-le v5, v6, :cond_1

    #@d
    .line 285
    :cond_0
    const-string/jumbo v5, "???"

    #@10
    return-object v5

    #@11
    .line 284
    :cond_1
    add-int/lit8 v5, p1, 0x10

    #@13
    if-lt v5, p1, :cond_0

    #@15
    .line 287
    add-int/lit8 v5, p1, 0x10

    #@17
    invoke-static {v2, p1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@1a
    move-result-object v1

    #@1b
    .line 288
    .local v1, "addressBytes":[B
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/net/Inet6Address;

    #@21
    .line 289
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v5

    #@25
    return-object v5

    #@26
    .line 293
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addressBytes":[B
    .end local v2    # "array":[B
    :catch_0
    move-exception v3

    #@27
    .line 295
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "???"

    #@2a
    return-object v5

    #@2b
    .line 290
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    #@2c
    .line 292
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v5, "???"

    #@2f
    return-object v5
.end method

.method private addNonLifetime(III)I
    .locals 4
    .param p1, "lastNonLifetimeStart"    # I
    .param p2, "lifetimeOffset"    # I
    .param p3, "lifetimeLength"    # I

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    add-int/2addr p2, v0

    #@7
    .line 369
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@9
    new-instance v1, Landroid/util/Pair;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    .line 370
    sub-int v3, p2, p1

    #@11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    .line 369
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 371
    add-int v0, p2, p3

    #@1d
    return v0
.end method

.method private getUint16(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # I

    #@0
    .prologue
    .line 314
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter$Ra;->uint16(S)I

    #@7
    move-result v0

    #@8
    int-to-long v0, v0

    #@9
    return-wide v0
.end method

.method private prefixOptionToString(Ljava/lang/StringBuffer;I)V
    .locals 10
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 318
    add-int/lit8 v6, p2, 0x10

    #@2
    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 319
    .local v1, "prefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@8
    add-int/lit8 v7, p2, 0x2

    #@a
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    #@d
    move-result v6

    #@e
    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->uint8(B)I

    #@11
    move-result v0

    #@12
    .line 320
    .local v0, "length":I
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@14
    add-int/lit8 v7, p2, 0x4

    #@16
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@19
    move-result v6

    #@1a
    int-to-long v4, v6

    #@1b
    .line 321
    .local v4, "valid":J
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@1d
    add-int/lit8 v7, p2, 0x8

    #@1f
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@22
    move-result v6

    #@23
    int-to-long v2, v6

    #@24
    .line 322
    .local v2, "preferred":J
    const-string/jumbo v6, "%s/%d %ds/%ds "

    #@27
    const/4 v7, 0x4

    #@28
    new-array v7, v7, [Ljava/lang/Object;

    #@2a
    const/4 v8, 0x0

    #@2b
    aput-object v1, v7, v8

    #@2d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v8

    #@31
    const/4 v9, 0x1

    #@32
    aput-object v8, v7, v9

    #@34
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@37
    move-result-object v8

    #@38
    const/4 v9, 0x2

    #@39
    aput-object v8, v7, v9

    #@3b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3e
    move-result-object v8

    #@3f
    const/4 v9, 0x3

    #@40
    aput-object v8, v7, v9

    #@42
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 317
    return-void
.end method

.method private rdnssOptionToString(Ljava/lang/StringBuffer;I)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 326
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@2
    add-int/lit8 v6, p2, 0x1

    #@4
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    #@7
    move-result v5

    #@8
    invoke-direct {p0, v5}, Landroid/net/apf/ApfFilter$Ra;->uint8(B)I

    #@b
    move-result v5

    #@c
    mul-int/lit8 v3, v5, 0x8

    #@e
    .line 327
    .local v3, "optLen":I
    const/16 v5, 0x18

    #@10
    if-ge v3, v5, :cond_0

    #@12
    return-void

    #@13
    .line 328
    :cond_0
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@15
    add-int/lit8 v6, p2, 0x4

    #@17
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@1a
    move-result v5

    #@1b
    invoke-direct {p0, v5}, Landroid/net/apf/ApfFilter$Ra;->uint32(I)J

    #@1e
    move-result-wide v0

    #@1f
    .line 329
    .local v0, "lifetime":J
    add-int/lit8 v5, v3, -0x8

    #@21
    div-int/lit8 v2, v5, 0x10

    #@23
    .line 330
    .local v2, "numServers":I
    const-string/jumbo v5, "DNS "

    #@26
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@2d
    move-result-object v5

    #@2e
    const-string/jumbo v6, "s"

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    .line 331
    const/4 v4, 0x0

    #@35
    .local v4, "server":I
    :goto_0
    if-ge v4, v2, :cond_1

    #@37
    .line 332
    const-string/jumbo v5, " "

    #@3a
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    move-result-object v5

    #@3e
    add-int/lit8 v6, p2, 0x8

    #@40
    mul-int/lit8 v7, v4, 0x10

    #@42
    add-int/2addr v6, v7

    #@43
    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    .line 331
    add-int/lit8 v4, v4, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 325
    :cond_1
    return-void
.end method

.method private uint16(S)I
    .locals 1
    .param p1, "s"    # S

    #@0
    .prologue
    .line 306
    const v0, 0xffff

    #@3
    and-int/2addr v0, p1

    #@4
    return v0
.end method

.method private uint32(I)J
    .locals 4
    .param p1, "s"    # I

    #@0
    .prologue
    .line 310
    int-to-long v0, p1

    #@1
    const-wide v2, 0xffffffffL

    #@6
    and-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method private uint8(B)I
    .locals 1
    .param p1, "b"    # B

    #@0
    .prologue
    .line 302
    and-int/lit16 v0, p1, 0xff

    #@2
    return v0
.end method


# virtual methods
.method currentLifetime()J
    .locals 6

    #@0
    .prologue
    .line 490
    iget-wide v0, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    #@2
    invoke-static {}, Landroid/net/apf/ApfFilter;->-wrap0()J

    #@5
    move-result-wide v2

    #@6
    iget-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    #@8
    sub-long/2addr v2, v4

    #@9
    sub-long/2addr v0, v2

    #@a
    return-wide v0
.end method

.method generateFilterLocked(Landroid/net/apf/ApfGenerator;)J
    .locals 12
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ApfFilter.this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    .line 503
    new-instance v7, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v8, "Ra"

    #@8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v7

    #@c
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    #@e
    invoke-static {v8}, Landroid/net/apf/ApfFilter;->-wrap1(Landroid/net/apf/ApfFilter;)J

    #@11
    move-result-wide v8

    #@12
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 505
    .local v3, "nextFilterLabel":Ljava/lang/String;
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@1c
    const/16 v8, 0xe

    #@1e
    invoke-virtual {p1, v7, v8}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@21
    .line 506
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@23
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    #@26
    move-result v7

    #@27
    invoke-virtual {p1, v7, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@2a
    .line 507
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    #@2d
    move-result-wide v8

    #@2e
    const-wide/16 v10, 0x6

    #@30
    div-long/2addr v8, v10

    #@31
    long-to-int v0, v8

    #@32
    .line 509
    .local v0, "filterLifetime":I
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@34
    const/16 v8, 0xf

    #@36
    invoke-virtual {p1, v7, v8}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@39
    .line 510
    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@3c
    .line 511
    const/4 v1, 0x0

    #@3d
    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v7

    #@43
    if-ge v1, v7, :cond_3

    #@45
    .line 513
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v5

    #@4b
    check-cast v5, Landroid/util/Pair;

    #@4d
    .line 518
    .local v5, "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@4f
    check-cast v7, Ljava/lang/Integer;

    #@51
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_0

    #@57
    .line 519
    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@59
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@5b
    check-cast v7, Ljava/lang/Integer;

    #@5d
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@60
    move-result v7

    #@61
    invoke-virtual {p1, v8, v7}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@64
    .line 520
    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@66
    .line 521
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@68
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    #@6b
    move-result-object v9

    #@6c
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@6e
    check-cast v7, Ljava/lang/Integer;

    #@70
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@73
    move-result v10

    #@74
    .line 522
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@76
    check-cast v7, Ljava/lang/Integer;

    #@78
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@7b
    move-result v11

    #@7c
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@7e
    check-cast v7, Ljava/lang/Integer;

    #@80
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@83
    move-result v7

    #@84
    add-int/2addr v7, v11

    #@85
    .line 521
    invoke-static {v9, v10, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@88
    move-result-object v7

    #@89
    .line 520
    invoke-virtual {p1, v8, v7, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@8c
    .line 526
    :cond_0
    add-int/lit8 v7, v1, 0x1

    #@8e
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@90
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@93
    move-result v8

    #@94
    if-ge v7, v8, :cond_1

    #@96
    .line 527
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@98
    add-int/lit8 v8, v1, 0x1

    #@9a
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9d
    move-result-object v4

    #@9e
    check-cast v4, Landroid/util/Pair;

    #@a0
    .line 528
    .local v4, "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@a2
    check-cast v7, Ljava/lang/Integer;

    #@a4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@a7
    move-result v8

    #@a8
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@aa
    check-cast v7, Ljava/lang/Integer;

    #@ac
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@af
    move-result v7

    #@b0
    add-int v6, v8, v7

    #@b2
    .line 530
    .local v6, "offset":I
    const/16 v7, 0x38

    #@b4
    if-ne v6, v7, :cond_2

    #@b6
    .line 511
    .end local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "offset":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@b8
    goto :goto_0

    #@b9
    .line 533
    .restart local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v6    # "offset":I
    :cond_2
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@bb
    check-cast v7, Ljava/lang/Integer;

    #@bd
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@c0
    move-result v7

    #@c1
    sub-int v2, v7, v6

    #@c3
    .line 534
    .local v2, "length":I
    packed-switch v2, :pswitch_data_0

    #@c6
    .line 537
    :pswitch_0
    new-instance v7, Ljava/lang/IllegalStateException;

    #@c8
    new-instance v8, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v9, "bogus lifetime size "

    #@d0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v8

    #@d4
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v8

    #@d8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v8

    #@dc
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@df
    throw v7

    #@e0
    .line 535
    :pswitch_1
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@e2
    invoke-virtual {p1, v7, v6}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@e5
    .line 539
    :goto_2
    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@e8
    goto :goto_1

    #@e9
    .line 536
    :pswitch_2
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@eb
    invoke-virtual {p1, v7, v6}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@ee
    goto :goto_2

    #@ef
    .line 542
    .end local v2    # "length":I
    .end local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "offset":I
    :cond_3
    const-string/jumbo v7, "__DROP__"

    #@f2
    invoke-virtual {p1, v7}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@f5
    .line 543
    invoke-virtual {p1, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@f8
    .line 544
    int-to-long v8, v0

    #@f9
    return-wide v8

    #@fa
    .line 534
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getLastMatchingPacket()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 273
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@6
    move-result-object v0

    #@7
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    #@c
    move-result v1

    #@d
    invoke-static {v0, v2, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method isExpired()Z
    .locals 4

    #@0
    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gtz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method matches([BI)Z
    .locals 7
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 449
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@3
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    #@6
    move-result v4

    #@7
    if-eq p2, v4, :cond_0

    #@9
    return v6

    #@a
    .line 450
    :cond_0
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    #@f
    move-result-object v3

    #@10
    .line 451
    .local v3, "referencePacket":[B
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v2

    #@16
    .local v2, "nonLifetime$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_3

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/util/Pair;

    #@22
    .line 452
    .local v1, "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@24
    check-cast v4, Ljava/lang/Integer;

    #@26
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@29
    move-result v0

    #@2a
    .local v0, "i":I
    :goto_0
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2c
    check-cast v4, Ljava/lang/Integer;

    #@2e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@31
    move-result v5

    #@32
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@34
    check-cast v4, Ljava/lang/Integer;

    #@36
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@39
    move-result v4

    #@3a
    add-int/2addr v4, v5

    #@3b
    if-ge v0, v4, :cond_1

    #@3d
    .line 453
    aget-byte v4, p1, v0

    #@3f
    aget-byte v5, v3, v0

    #@41
    if-eq v4, v5, :cond_2

    #@43
    return v6

    #@44
    .line 452
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 456
    .end local v0    # "i":I
    .end local v1    # "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    const/4 v4, 0x1

    #@48
    return v4
.end method

.method minLifetime([BI)J
    .locals 12
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    const-wide/16 v10, 0x1

    #@2
    .line 462
    const-wide v4, 0x7fffffffffffffffL

    #@7
    .line 464
    .local v4, "minLifetime":J
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v0

    #@b
    .line 465
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    add-int/lit8 v8, v1, 0x1

    #@e
    iget-object v9, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v9

    #@14
    if-ge v8, v9, :cond_1

    #@16
    .line 466
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v8

    #@1c
    check-cast v8, Landroid/util/Pair;

    #@1e
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@20
    check-cast v8, Ljava/lang/Integer;

    #@22
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@25
    move-result v9

    #@26
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v8

    #@2c
    check-cast v8, Landroid/util/Pair;

    #@2e
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@30
    check-cast v8, Ljava/lang/Integer;

    #@32
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@35
    move-result v8

    #@36
    add-int v3, v9, v8

    #@38
    .line 469
    .local v3, "offset":I
    const/16 v8, 0x38

    #@3a
    if-ne v3, v8, :cond_0

    #@3c
    .line 465
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 473
    :cond_0
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@41
    add-int/lit8 v9, v1, 0x1

    #@43
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v8

    #@47
    check-cast v8, Landroid/util/Pair;

    #@49
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@4b
    check-cast v8, Ljava/lang/Integer;

    #@4d
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@50
    move-result v8

    #@51
    sub-int v2, v8, v3

    #@53
    .line 475
    .local v2, "lifetimeLength":I
    packed-switch v2, :pswitch_data_0

    #@56
    .line 478
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalStateException;

    #@58
    new-instance v9, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v10, "bogus lifetime size "

    #@60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v8

    #@70
    .line 476
    :pswitch_1
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@73
    move-result v8

    #@74
    int-to-long v6, v8

    #@75
    .line 481
    .local v6, "val":J
    :goto_2
    mul-int/lit8 v8, v2, 0x8

    #@77
    shl-long v8, v10, v8

    #@79
    sub-long/2addr v8, v10

    #@7a
    and-long/2addr v6, v8

    #@7b
    .line 482
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@7e
    move-result-wide v4

    #@7f
    goto :goto_1

    #@80
    .line 477
    .end local v6    # "val":J
    :pswitch_2
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@83
    move-result v8

    #@84
    int-to-long v6, v8

    #@85
    .restart local v6    # "val":J
    goto :goto_2

    #@86
    .line 484
    .end local v2    # "lifetimeLength":I
    .end local v3    # "offset":I
    .end local v6    # "val":J
    :cond_1
    return-wide v4

    #@87
    .line 475
    nop

    #@88
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 338
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 339
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "RA %s -> %s %ds "

    #@8
    const/4 v5, 0x3

    #@9
    new-array v5, v5, [Ljava/lang/Object;

    #@b
    .line 340
    const/16 v6, 0x16

    #@d
    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    const/4 v7, 0x0

    #@12
    aput-object v6, v5, v7

    #@14
    .line 341
    const/16 v6, 0x26

    #@16
    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    const/4 v7, 0x1

    #@1b
    aput-object v6, v5, v7

    #@1d
    .line 342
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@1f
    const/16 v7, 0x3c

    #@21
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@24
    move-result v6

    #@25
    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->uint16(S)I

    #@28
    move-result v6

    #@29
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v6

    #@2d
    const/4 v7, 0x2

    #@2e
    aput-object v6, v5, v7

    #@30
    .line 339
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 343
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    #@39
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v2

    #@3d
    .local v2, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_0

    #@43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Ljava/lang/Integer;

    #@49
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@4c
    move-result v1

    #@4d
    .line 344
    .local v1, "i":I
    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfFilter$Ra;->prefixOptionToString(Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    goto :goto_0

    #@51
    .line 350
    .end local v1    # "i":I
    .end local v2    # "i$iterator":Ljava/util/Iterator;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    #@52
    .line 351
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "<Malformed RA>"

    #@55
    return-object v4

    #@56
    .line 346
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "i$iterator":Ljava/util/Iterator;
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    #@58
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v2

    #@5c
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_1

    #@62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v4

    #@66
    check-cast v4, Ljava/lang/Integer;

    #@68
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@6b
    move-result v1

    #@6c
    .line 347
    .restart local v1    # "i":I
    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfFilter$Ra;->rdnssOptionToString(Ljava/lang/StringBuffer;I)V

    #@6f
    goto :goto_1

    #@70
    .line 349
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@73
    move-result-object v4

    #@74
    return-object v4
.end method
