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
    .locals 12
    .param p1, "this$0"    # Landroid/net/apf/ApfFilter;
    .param p2, "packet"    # [B
    .param p3, "length"    # I

    #@0
    .prologue
    .line 439
    iput-object p1, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 328
    new-instance v7, Ljava/util/ArrayList;

    #@7
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 327
    iput-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@c
    .line 335
    new-instance v7, Ljava/util/ArrayList;

    #@e
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    #@13
    .line 338
    new-instance v7, Ljava/util/ArrayList;

    #@15
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    #@1a
    .line 341
    const/4 v7, 0x0

    #@1b
    iput v7, p0, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    #@1d
    .line 440
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    #@20
    move-result-object v7

    #@21
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@24
    move-result-object v7

    #@25
    iput-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@27
    .line 441
    invoke-static {}, Landroid/net/apf/ApfFilter;->-wrap3()J

    #@2a
    move-result-wide v8

    #@2b
    iput-wide v8, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    #@2d
    .line 445
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@2f
    const/16 v8, 0xc

    #@31
    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap4(Ljava/nio/ByteBuffer;I)J

    #@34
    move-result-wide v8

    #@35
    sget v7, Landroid/system/OsConstants;->ETH_P_IPV6:I

    #@37
    int-to-long v10, v7

    #@38
    cmp-long v7, v8, v10

    #@3a
    if-nez v7, :cond_0

    #@3c
    .line 446
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@3e
    const/16 v8, 0x14

    #@40
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    #@43
    move-result v7

    #@44
    invoke-static {v7}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    #@47
    move-result v7

    #@48
    sget v8, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    #@4a
    if-eq v7, v8, :cond_1

    #@4c
    .line 448
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@4e
    const-string/jumbo v8, "Not an ICMP6 router advertisement"

    #@51
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@54
    throw v7

    #@55
    .line 447
    :cond_1
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@57
    const/16 v8, 0x36

    #@59
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    #@5c
    move-result v7

    #@5d
    invoke-static {v7}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    #@60
    move-result v7

    #@61
    const/16 v8, 0x86

    #@63
    if-ne v7, v8, :cond_0

    #@65
    .line 452
    new-instance v0, Landroid/net/metrics/RaEvent$Builder;

    #@67
    invoke-direct {v0}, Landroid/net/metrics/RaEvent$Builder;-><init>()V

    #@6a
    .line 455
    .local v0, "builder":Landroid/net/metrics/RaEvent$Builder;
    const/4 v7, 0x0

    #@6b
    .line 456
    const/16 v8, 0x38

    #@6d
    .line 457
    const/4 v9, 0x2

    #@6e
    .line 455
    invoke-direct {p0, v7, v8, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@71
    move-result v1

    #@72
    .line 461
    .local v1, "lastNonLifetimeStart":I
    const/16 v7, 0x3c

    #@74
    .line 462
    const/4 v8, 0x2

    #@75
    .line 460
    invoke-direct {p0, v1, v7, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@78
    move-result v1

    #@79
    .line 463
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@7b
    const/16 v8, 0x3c

    #@7d
    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap4(Ljava/nio/ByteBuffer;I)J

    #@80
    move-result-wide v8

    #@81
    invoke-virtual {v0, v8, v9}, Landroid/net/metrics/RaEvent$Builder;->updateRouterLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    #@84
    .line 466
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@86
    const/16 v8, 0x46

    #@88
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@8b
    .line 467
    :goto_0
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@8d
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@90
    move-result v7

    #@91
    if-eqz v7, :cond_3

    #@93
    .line 468
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@95
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    #@98
    move-result v6

    #@99
    .line 469
    .local v6, "position":I
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@9b
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->get(I)B

    #@9e
    move-result v7

    #@9f
    invoke-static {v7}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    #@a2
    move-result v5

    #@a3
    .line 470
    .local v5, "optionType":I
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@a5
    add-int/lit8 v8, v6, 0x1

    #@a7
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    #@aa
    move-result v7

    #@ab
    invoke-static {v7}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    #@ae
    move-result v7

    #@af
    mul-int/lit8 v4, v7, 0x8

    #@b1
    .line 472
    .local v4, "optionLength":I
    sparse-switch v5, :sswitch_data_0

    #@b4
    .line 513
    :goto_1
    if-gtz v4, :cond_2

    #@b6
    .line 514
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@b8
    .line 515
    const-string/jumbo v8, "Invalid option length opt=%d len=%d"

    #@bb
    .line 514
    const/4 v9, 0x2

    #@bc
    new-array v9, v9, [Ljava/lang/Object;

    #@be
    .line 515
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c1
    move-result-object v10

    #@c2
    const/4 v11, 0x0

    #@c3
    aput-object v10, v9, v11

    #@c5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c8
    move-result-object v10

    #@c9
    const/4 v11, 0x1

    #@ca
    aput-object v10, v9, v11

    #@cc
    .line 514
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@cf
    move-result-object v8

    #@d0
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v7

    #@d4
    .line 476
    :sswitch_0
    const/4 v7, 0x4

    #@d5
    .line 477
    const/4 v8, 0x4

    #@d6
    .line 475
    invoke-direct {p0, v1, v7, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@d9
    move-result v1

    #@da
    .line 478
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@dc
    .line 479
    add-int/lit8 v8, v6, 0x4

    #@de
    .line 478
    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap5(Ljava/nio/ByteBuffer;I)J

    #@e1
    move-result-wide v2

    #@e2
    .line 480
    .local v2, "lifetime":J
    invoke-virtual {v0, v2, v3}, Landroid/net/metrics/RaEvent$Builder;->updatePrefixValidLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    #@e5
    .line 483
    const/16 v7, 0x8

    #@e7
    .line 484
    const/4 v8, 0x4

    #@e8
    .line 482
    invoke-direct {p0, v1, v7, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@eb
    move-result v1

    #@ec
    .line 485
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@ee
    .line 486
    add-int/lit8 v8, v6, 0x8

    #@f0
    .line 485
    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap5(Ljava/nio/ByteBuffer;I)J

    #@f3
    move-result-wide v2

    #@f4
    .line 487
    invoke-virtual {v0, v2, v3}, Landroid/net/metrics/RaEvent$Builder;->updatePrefixPreferredLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    #@f7
    .line 488
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    #@f9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fc
    move-result-object v8

    #@fd
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@100
    goto :goto_1

    #@101
    .line 493
    .end local v2    # "lifetime":J
    :sswitch_1
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    #@103
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@106
    move-result-object v8

    #@107
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10a
    .line 494
    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    #@10d
    move-result v1

    #@10e
    .line 495
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@110
    add-int/lit8 v8, v6, 0x4

    #@112
    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap5(Ljava/nio/ByteBuffer;I)J

    #@115
    move-result-wide v2

    #@116
    .line 496
    .restart local v2    # "lifetime":J
    invoke-virtual {v0, v2, v3}, Landroid/net/metrics/RaEvent$Builder;->updateRdnssLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    #@119
    goto :goto_1

    #@11a
    .line 499
    .end local v2    # "lifetime":J
    :sswitch_2
    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    #@11d
    move-result v1

    #@11e
    .line 500
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@120
    add-int/lit8 v8, v6, 0x4

    #@122
    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap5(Ljava/nio/ByteBuffer;I)J

    #@125
    move-result-wide v2

    #@126
    .line 501
    .restart local v2    # "lifetime":J
    invoke-virtual {v0, v2, v3}, Landroid/net/metrics/RaEvent$Builder;->updateRouteInfoLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    #@129
    goto :goto_1

    #@12a
    .line 504
    .end local v2    # "lifetime":J
    :sswitch_3
    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    #@12d
    move-result v1

    #@12e
    .line 505
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@130
    add-int/lit8 v8, v6, 0x4

    #@132
    invoke-static {v7, v8}, Landroid/net/apf/ApfFilter;->-wrap5(Ljava/nio/ByteBuffer;I)J

    #@135
    move-result-wide v2

    #@136
    .line 506
    .restart local v2    # "lifetime":J
    invoke-virtual {v0, v2, v3}, Landroid/net/metrics/RaEvent$Builder;->updateDnsslLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    #@139
    goto/16 :goto_1

    #@13b
    .line 517
    .end local v2    # "lifetime":J
    :cond_2
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@13d
    add-int v8, v6, v4

    #@13f
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@142
    goto/16 :goto_0

    #@144
    .line 520
    .end local v4    # "optionLength":I
    .end local v5    # "optionType":I
    .end local v6    # "position":I
    :cond_3
    const/4 v7, 0x0

    #@145
    const/4 v8, 0x0

    #@146
    invoke-direct {p0, v1, v7, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@149
    .line 521
    invoke-virtual {p0, p2, p3}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    #@14c
    move-result-wide v8

    #@14d
    iput-wide v8, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    #@14f
    .line 522
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->-get1(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;

    #@152
    move-result-object v7

    #@153
    invoke-virtual {v0}, Landroid/net/metrics/RaEvent$Builder;->build()Landroid/net/metrics/RaEvent;

    #@156
    move-result-object v8

    #@157
    invoke-virtual {v7, v8}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@15a
    .line 439
    return-void

    #@15b
    .line 472
    nop

    #@15c
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1f -> :sswitch_3
    .end sparse-switch
.end method

.method private IPv6AddresstoString(I)Ljava/lang/String;
    .locals 7
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 353
    :try_start_0
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    #@5
    move-result-object v2

    #@6
    .line 356
    .local v2, "array":[B
    if-ltz p1, :cond_0

    #@8
    add-int/lit8 v5, p1, 0x10

    #@a
    array-length v6, v2

    #@b
    if-le v5, v6, :cond_1

    #@d
    .line 357
    :cond_0
    const-string/jumbo v5, "???"

    #@10
    return-object v5

    #@11
    .line 356
    :cond_1
    add-int/lit8 v5, p1, 0x10

    #@13
    if-lt v5, p1, :cond_0

    #@15
    .line 359
    add-int/lit8 v5, p1, 0x10

    #@17
    invoke-static {v2, p1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@1a
    move-result-object v1

    #@1b
    .line 360
    .local v1, "addressBytes":[B
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/net/Inet6Address;

    #@21
    .line 361
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
    .line 365
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addressBytes":[B
    .end local v2    # "array":[B
    :catch_0
    move-exception v3

    #@27
    .line 367
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "???"

    #@2a
    return-object v5

    #@2b
    .line 362
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    #@2c
    .line 364
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
    .line 424
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    add-int/2addr p2, v0

    #@7
    .line 425
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@9
    new-instance v1, Landroid/util/Pair;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    .line 426
    sub-int v3, p2, p1

    #@11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    .line 425
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 427
    add-int v0, p2, p3

    #@1d
    return v0
.end method

.method private addNonLifetimeU32(I)I
    .locals 1
    .param p1, "lastNonLifetimeStart"    # I

    #@0
    .prologue
    const/4 v0, 0x4

    #@1
    .line 431
    invoke-direct {p0, p1, v0, v0}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private prefixOptionToString(Ljava/lang/StringBuffer;I)V
    .locals 10
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 374
    add-int/lit8 v6, p2, 0x10

    #@2
    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 375
    .local v1, "prefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@8
    add-int/lit8 v7, p2, 0x2

    #@a
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    #@d
    move-result v6

    #@e
    invoke-static {v6}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    #@11
    move-result v0

    #@12
    .line 376
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
    .line 377
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
    .line 378
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
    .line 373
    return-void
.end method

.method private rdnssOptionToString(Ljava/lang/StringBuffer;I)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 382
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@2
    add-int/lit8 v6, p2, 0x1

    #@4
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    #@7
    move-result v5

    #@8
    invoke-static {v5}, Landroid/net/apf/ApfFilter;->-wrap2(B)I

    #@b
    move-result v5

    #@c
    mul-int/lit8 v3, v5, 0x8

    #@e
    .line 383
    .local v3, "optLen":I
    const/16 v5, 0x18

    #@10
    if-ge v3, v5, :cond_0

    #@12
    return-void

    #@13
    .line 384
    :cond_0
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@15
    add-int/lit8 v6, p2, 0x4

    #@17
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@1a
    move-result v5

    #@1b
    invoke-static {v5}, Landroid/net/apf/ApfFilter;->-wrap7(I)J

    #@1e
    move-result-wide v0

    #@1f
    .line 385
    .local v0, "lifetime":J
    add-int/lit8 v5, v3, -0x8

    #@21
    div-int/lit8 v2, v5, 0x10

    #@23
    .line 386
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
    .line 387
    const/4 v4, 0x0

    #@35
    .local v4, "server":I
    :goto_0
    if-ge v4, v2, :cond_1

    #@37
    .line 388
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
    .line 387
    add-int/lit8 v4, v4, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 381
    :cond_1
    return-void
.end method


# virtual methods
.method currentLifetime()J
    .locals 6

    #@0
    .prologue
    .line 571
    iget-wide v0, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    #@2
    invoke-static {}, Landroid/net/apf/ApfFilter;->-wrap3()J

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
    .line 584
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
    invoke-static {v8}, Landroid/net/apf/ApfFilter;->-wrap6(Landroid/net/apf/ApfFilter;)J

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
    .line 586
    .local v3, "nextFilterLabel":Ljava/lang/String;
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@1c
    const/16 v8, 0xe

    #@1e
    invoke-virtual {p1, v7, v8}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@21
    .line 587
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@23
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    #@26
    move-result v7

    #@27
    invoke-virtual {p1, v7, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@2a
    .line 588
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
    .line 590
    .local v0, "filterLifetime":I
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@34
    const/16 v8, 0xf

    #@36
    invoke-virtual {p1, v7, v8}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@39
    .line 591
    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@3c
    .line 592
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
    .line 594
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v5

    #@4b
    check-cast v5, Landroid/util/Pair;

    #@4d
    .line 599
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
    .line 600
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
    .line 601
    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@66
    .line 602
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
    .line 603
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
    .line 602
    invoke-static {v9, v10, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@88
    move-result-object v7

    #@89
    .line 601
    invoke-virtual {p1, v8, v7, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@8c
    .line 607
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
    .line 608
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
    .line 609
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
    .line 611
    .local v6, "offset":I
    const/16 v7, 0x38

    #@b4
    if-ne v6, v7, :cond_2

    #@b6
    .line 592
    .end local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "offset":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@b8
    goto :goto_0

    #@b9
    .line 614
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
    .line 615
    .local v2, "length":I
    packed-switch v2, :pswitch_data_0

    #@c6
    .line 618
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
    .line 616
    :pswitch_1
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@e2
    invoke-virtual {p1, v7, v6}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@e5
    .line 620
    :goto_2
    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@e8
    goto :goto_1

    #@e9
    .line 617
    :pswitch_2
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@eb
    invoke-virtual {p1, v7, v6}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    #@ee
    goto :goto_2

    #@ef
    .line 623
    .end local v2    # "length":I
    .end local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "offset":I
    :cond_3
    const-string/jumbo v7, "__DROP__"

    #@f2
    invoke-virtual {p1, v7}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@f5
    .line 624
    invoke-virtual {p1, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    #@f8
    .line 625
    int-to-long v8, v0

    #@f9
    return-wide v8

    #@fa
    .line 615
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
    .line 345
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
    .line 577
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
    .line 527
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
    .line 528
    :cond_0
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    #@f
    move-result-object v3

    #@10
    .line 529
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
    .line 530
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
    .line 531
    aget-byte v4, p1, v0

    #@3f
    aget-byte v5, v3, v0

    #@41
    if-eq v4, v5, :cond_2

    #@43
    return v6

    #@44
    .line 530
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 534
    .end local v0    # "i":I
    .end local v1    # "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    const/4 v4, 0x1

    #@48
    return v4
.end method

.method minLifetime([BI)J
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    .line 540
    const-wide v4, 0x7fffffffffffffffL

    #@5
    .line 542
    .local v4, "minLifetime":J
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v0

    #@9
    .line 543
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    add-int/lit8 v8, v1, 0x1

    #@c
    iget-object v9, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v9

    #@12
    if-ge v8, v9, :cond_1

    #@14
    .line 544
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v8

    #@1a
    check-cast v8, Landroid/util/Pair;

    #@1c
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1e
    check-cast v8, Ljava/lang/Integer;

    #@20
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v9

    #@24
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v8

    #@2a
    check-cast v8, Landroid/util/Pair;

    #@2c
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2e
    check-cast v8, Ljava/lang/Integer;

    #@30
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@33
    move-result v8

    #@34
    add-int v3, v9, v8

    #@36
    .line 547
    .local v3, "offset":I
    const/16 v8, 0x38

    #@38
    if-ne v3, v8, :cond_0

    #@3a
    .line 543
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 551
    :cond_0
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    #@3f
    add-int/lit8 v9, v1, 0x1

    #@41
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v8

    #@45
    check-cast v8, Landroid/util/Pair;

    #@47
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@49
    check-cast v8, Ljava/lang/Integer;

    #@4b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@4e
    move-result v8

    #@4f
    sub-int v2, v8, v3

    #@51
    .line 553
    .local v2, "lifetimeLength":I
    packed-switch v2, :pswitch_data_0

    #@54
    .line 561
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalStateException;

    #@56
    new-instance v9, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v10, "bogus lifetime size "

    #@5e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v8

    #@6e
    .line 555
    :pswitch_1
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@71
    move-result v8

    #@72
    invoke-static {v8}, Landroid/net/apf/ApfFilter;->-wrap1(S)I

    #@75
    move-result v8

    #@76
    int-to-long v6, v8

    #@77
    .line 563
    .local v6, "optionLifetime":J
    :goto_2
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@7a
    move-result-wide v4

    #@7b
    goto :goto_1

    #@7c
    .line 558
    .end local v6    # "optionLifetime":J
    :pswitch_2
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@7f
    move-result v8

    #@80
    invoke-static {v8}, Landroid/net/apf/ApfFilter;->-wrap7(I)J

    #@83
    move-result-wide v6

    #@84
    .restart local v6    # "optionLifetime":J
    goto :goto_2

    #@85
    .line 565
    .end local v2    # "lifetimeLength":I
    .end local v3    # "offset":I
    .end local v6    # "optionLifetime":J
    :cond_1
    return-wide v4

    #@86
    .line 553
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
    .line 394
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 395
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "RA %s -> %s %ds "

    #@8
    const/4 v5, 0x3

    #@9
    new-array v5, v5, [Ljava/lang/Object;

    #@b
    .line 396
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
    .line 397
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
    .line 398
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    #@1f
    const/16 v7, 0x3c

    #@21
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@24
    move-result v6

    #@25
    invoke-static {v6}, Landroid/net/apf/ApfFilter;->-wrap1(S)I

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
    .line 395
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 399
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
    .line 400
    .local v1, "i":I
    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfFilter$Ra;->prefixOptionToString(Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    goto :goto_0

    #@51
    .line 406
    .end local v1    # "i":I
    .end local v2    # "i$iterator":Ljava/util/Iterator;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    #@52
    .line 407
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "<Malformed RA>"

    #@55
    return-object v4

    #@56
    .line 402
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
    .line 403
    .restart local v1    # "i":I
    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfFilter$Ra;->rdnssOptionToString(Ljava/lang/StringBuffer;I)V

    #@6f
    goto :goto_1

    #@70
    .line 405
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
