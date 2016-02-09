.class public Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/16 v0, 0x10

    #@2
    .line 37
    new-array v0, v0, [C

    #@4
    const/4 v1, 0x0

    #@5
    const/16 v2, 0x30

    #@7
    aput-char v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    const/16 v2, 0x31

    #@c
    aput-char v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    const/16 v2, 0x32

    #@11
    aput-char v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    const/16 v2, 0x33

    #@16
    aput-char v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    const/16 v2, 0x34

    #@1b
    aput-char v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    const/16 v2, 0x35

    #@20
    aput-char v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    const/16 v2, 0x36

    #@25
    aput-char v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    const/16 v2, 0x37

    #@2a
    aput-char v2, v0, v1

    #@2c
    const/16 v1, 0x8

    #@2e
    const/16 v2, 0x38

    #@30
    aput-char v2, v0, v1

    #@32
    const/16 v1, 0x9

    #@34
    const/16 v2, 0x39

    #@36
    aput-char v2, v0, v1

    #@38
    const/16 v1, 0xa

    #@3a
    const/16 v2, 0x41

    #@3c
    aput-char v2, v0, v1

    #@3e
    const/16 v1, 0xb

    #@40
    const/16 v2, 0x42

    #@42
    aput-char v2, v0, v1

    #@44
    const/16 v1, 0xc

    #@46
    const/16 v2, 0x43

    #@48
    aput-char v2, v0, v1

    #@4a
    const/16 v1, 0xd

    #@4c
    const/16 v2, 0x44

    #@4e
    aput-char v2, v0, v1

    #@50
    const/16 v1, 0xe

    #@52
    const/16 v2, 0x45

    #@54
    aput-char v2, v0, v1

    #@56
    const/16 v1, 0xf

    #@58
    const/16 v2, 0x46

    #@5a
    aput-char v2, v0, v1

    #@5c
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->HEX_DIGITS:[C

    #@5e
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    return-void
.end method

.method public static createDataInputFromBytes([B)Ljava/io/DataInput;
    .locals 1
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 941
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;

    #@2
    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;-><init>([B)V

    #@5
    return-object v0
.end method

.method public static decodeUtf8([BIIZ)Ljava/lang/String;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tolerant"    # Z

    #@0
    .prologue
    .line 545
    new-instance v9, Ljava/lang/StringBuffer;

    #@2
    sub-int v10, p2, p1

    #@4
    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    .line 546
    .local v9, "sb":Ljava/lang/StringBuffer;
    move v7, p1

    #@8
    .local v7, "pos":I
    move v8, v7

    #@9
    .line 548
    .end local v7    # "pos":I
    .local v8, "pos":I
    :goto_0
    if-lt v8, p2, :cond_0

    #@b
    .line 599
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@e
    move-result-object v10

    #@f
    return-object v10

    #@10
    .line 549
    :cond_0
    add-int/lit8 v7, v8, 0x1

    #@12
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget-byte v10, p0, v8

    #@14
    and-int/lit16 v0, v10, 0xff

    #@16
    .local v0, "b":I
    const/16 v10, 0x7f

    #@18
    .line 550
    if-le v0, v10, :cond_2

    #@1a
    const/16 v10, 0xf5

    #@1c
    .line 552
    if-ge v0, v10, :cond_3

    #@1e
    const/16 v1, 0xe0

    #@20
    .local v1, "border":I
    const/4 v3, 0x1

    #@21
    .local v3, "count":I
    const/16 v6, 0x80

    #@23
    .local v6, "minCode":I
    const/16 v5, 0x1f

    #@25
    .line 562
    .local v5, "mask":I
    :goto_1
    if-ge v0, v1, :cond_5

    #@27
    .line 568
    and-int v2, v0, v5

    #@29
    .local v2, "code":I
    const/4 v4, 0x0

    #@2a
    .local v4, "i":I
    move v8, v7

    #@2b
    .line 570
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :goto_2
    if-lt v4, v3, :cond_7

    #@2d
    .line 586
    if-eqz p3, :cond_c

    #@2f
    :cond_1
    const v10, 0xd800

    #@32
    if-ge v2, v10, :cond_e

    #@34
    :goto_3
    const v10, 0xffff

    #@37
    .line 590
    if-le v2, v10, :cond_f

    #@39
    const/high16 v10, 0x10000

    #@3b
    .line 593
    sub-int/2addr v2, v10

    #@3c
    .line 594
    shr-int/lit8 v10, v2, 0xa

    #@3e
    const v11, 0xd800

    #@41
    or-int/2addr v10, v11

    #@42
    int-to-char v10, v10

    #@43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@46
    .line 595
    and-int/lit16 v10, v2, 0x3ff

    #@48
    const v11, 0xdc00

    #@4b
    or-int/2addr v10, v11

    #@4c
    int-to-char v10, v10

    #@4d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@50
    move v7, v8

    #@51
    .end local v1    # "border":I
    .end local v2    # "code":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "mask":I
    .end local v6    # "minCode":I
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :goto_4
    move v8, v7

    #@52
    .line 598
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_0

    #@53
    .line 551
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :cond_2
    int-to-char v10, v0

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@57
    goto :goto_4

    #@58
    .line 553
    :cond_3
    if-eqz p3, :cond_4

    #@5a
    .line 556
    int-to-char v10, v0

    #@5b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5e
    goto :goto_4

    #@5f
    .line 554
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@61
    const-string/jumbo v11, "Invalid UTF8"

    #@64
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v10

    #@68
    .line 563
    .restart local v1    # "border":I
    .restart local v3    # "count":I
    .restart local v5    # "mask":I
    .restart local v6    # "minCode":I
    :cond_5
    shr-int/lit8 v10, v1, 0x1

    #@6a
    or-int/lit16 v1, v10, 0x80

    #@6c
    const/4 v10, 0x1

    #@6d
    .line 564
    if-eq v3, v10, :cond_6

    #@6f
    const/4 v10, 0x5

    #@70
    :goto_5
    shl-int/2addr v6, v10

    #@71
    .line 565
    add-int/lit8 v3, v3, 0x1

    #@73
    .line 566
    shr-int/lit8 v5, v5, 0x1

    #@75
    goto :goto_1

    #@76
    :cond_6
    const/4 v10, 0x4

    #@77
    .line 564
    goto :goto_5

    #@78
    .line 571
    .end local v7    # "pos":I
    .restart local v2    # "code":I
    .restart local v4    # "i":I
    .restart local v8    # "pos":I
    :cond_7
    shl-int/lit8 v2, v2, 0x6

    #@7a
    .line 572
    if-ge v8, p2, :cond_9

    #@7c
    .line 578
    if-eqz p3, :cond_b

    #@7e
    .line 581
    :cond_8
    add-int/lit8 v7, v8, 0x1

    #@80
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget-byte v10, p0, v8

    #@82
    and-int/lit8 v10, v10, 0x3f

    #@84
    or-int/2addr v2, v10

    #@85
    .line 570
    :goto_6
    add-int/lit8 v4, v4, 0x1

    #@87
    move v8, v7

    #@88
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_2

    #@89
    .line 573
    :cond_9
    if-eqz p3, :cond_a

    #@8b
    move v7, v8

    #@8c
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_6

    #@8d
    .line 574
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@8f
    const-string/jumbo v11, "Invalid UTF8"

    #@92
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@95
    throw v10

    #@96
    .line 578
    :cond_b
    aget-byte v10, p0, v8

    #@98
    and-int/lit16 v10, v10, 0xc0

    #@9a
    const/16 v11, 0x80

    #@9c
    if-eq v10, v11, :cond_8

    #@9e
    .line 579
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@a0
    const-string/jumbo v11, "Invalid UTF8"

    #@a3
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v10

    #@a7
    .line 586
    :cond_c
    if-ge v2, v6, :cond_1

    #@a9
    .line 587
    :cond_d
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@ab
    const-string/jumbo v11, "Invalid UTF8"

    #@ae
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b1
    throw v10

    #@b2
    :cond_e
    const v10, 0xdfff

    #@b5
    .line 586
    if-le v2, v10, :cond_d

    #@b7
    goto/16 :goto_3

    #@b9
    .line 591
    :cond_f
    int-to-char v10, v2

    #@ba
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@bd
    move v7, v8

    #@be
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_4
.end method

.method public static encodeUtf8(Ljava/lang/String;[BI)I
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    const v8, 0xd800

    #@3
    const v7, 0xfc00

    #@6
    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v4

    #@a
    .local v4, "len":I
    const/4 v3, 0x0

    #@b
    .line 473
    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    #@d
    .line 528
    return p2

    #@e
    .line 474
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 477
    .local v0, "code":I
    if-ge v0, v8, :cond_2

    #@14
    :cond_1
    :goto_1
    const/16 v5, 0x7f

    #@16
    .line 497
    if-le v0, v5, :cond_4

    #@18
    const/16 v5, 0x7ff

    #@1a
    .line 502
    if-le v0, v5, :cond_6

    #@1c
    const v5, 0xffff

    #@1f
    .line 509
    if-le v0, v5, :cond_8

    #@21
    .line 518
    if-nez p1, :cond_a

    #@23
    .line 524
    :goto_2
    add-int/lit8 p2, p2, 0x4

    #@25
    .line 473
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    :cond_2
    const v5, 0xdfff

    #@2b
    .line 477
    if-gt v0, v5, :cond_1

    #@2d
    add-int/lit8 v5, v3, 0x1

    #@2f
    if-ge v5, v4, :cond_1

    #@31
    .line 478
    add-int/lit8 v5, v3, 0x1

    #@33
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v2

    #@37
    .line 483
    .local v2, "codeLo":I
    and-int v5, v2, v7

    #@39
    and-int v6, v0, v7

    #@3b
    xor-int/2addr v5, v6

    #@3c
    const/16 v6, 0x400

    #@3e
    if-ne v5, v6, :cond_1

    #@40
    .line 485
    add-int/lit8 v3, v3, 0x1

    #@42
    .line 488
    and-int v5, v2, v7

    #@44
    if-eq v5, v8, :cond_3

    #@46
    .line 492
    move v1, v0

    #@47
    .line 494
    .local v1, "codeHi":I
    :goto_4
    and-int/lit16 v5, v1, 0x3ff

    #@49
    shl-int/lit8 v5, v5, 0xa

    #@4b
    and-int/lit16 v6, v2, 0x3ff

    #@4d
    or-int/2addr v5, v6

    #@4e
    const/high16 v6, 0x10000

    #@50
    add-int v0, v5, v6

    #@52
    goto :goto_1

    #@53
    .line 489
    .end local v1    # "codeHi":I
    :cond_3
    move v1, v2

    #@54
    .line 490
    .restart local v1    # "codeHi":I
    move v2, v0

    #@55
    goto :goto_4

    #@56
    .line 498
    .end local v1    # "codeHi":I
    .end local v2    # "codeLo":I
    :cond_4
    if-nez p1, :cond_5

    #@58
    .line 501
    :goto_5
    add-int/lit8 p2, p2, 0x1

    #@5a
    goto :goto_3

    #@5b
    .line 499
    :cond_5
    int-to-byte v5, v0

    #@5c
    int-to-byte v5, v5

    #@5d
    aput-byte v5, p1, p2

    #@5f
    goto :goto_5

    #@60
    .line 504
    :cond_6
    if-nez p1, :cond_7

    #@62
    .line 508
    :goto_6
    add-int/lit8 p2, p2, 0x2

    #@64
    goto :goto_3

    #@65
    .line 505
    :cond_7
    shr-int/lit8 v5, v0, 0x6

    #@67
    or-int/lit16 v5, v5, 0xc0

    #@69
    int-to-byte v5, v5

    #@6a
    int-to-byte v5, v5

    #@6b
    aput-byte v5, p1, p2

    #@6d
    .line 506
    add-int/lit8 v5, p2, 0x1

    #@6f
    and-int/lit8 v6, v0, 0x3f

    #@71
    or-int/lit16 v6, v6, 0x80

    #@73
    int-to-byte v6, v6

    #@74
    int-to-byte v6, v6

    #@75
    aput-byte v6, p1, v5

    #@77
    goto :goto_6

    #@78
    .line 511
    :cond_8
    if-nez p1, :cond_9

    #@7a
    .line 516
    :goto_7
    add-int/lit8 p2, p2, 0x3

    #@7c
    goto :goto_3

    #@7d
    .line 512
    :cond_9
    shr-int/lit8 v5, v0, 0xc

    #@7f
    or-int/lit16 v5, v5, 0xe0

    #@81
    int-to-byte v5, v5

    #@82
    int-to-byte v5, v5

    #@83
    aput-byte v5, p1, p2

    #@85
    .line 513
    add-int/lit8 v5, p2, 0x1

    #@87
    shr-int/lit8 v6, v0, 0x6

    #@89
    and-int/lit8 v6, v6, 0x3f

    #@8b
    or-int/lit16 v6, v6, 0x80

    #@8d
    int-to-byte v6, v6

    #@8e
    int-to-byte v6, v6

    #@8f
    aput-byte v6, p1, v5

    #@91
    .line 514
    add-int/lit8 v5, p2, 0x2

    #@93
    and-int/lit8 v6, v0, 0x3f

    #@95
    or-int/lit16 v6, v6, 0x80

    #@97
    int-to-byte v6, v6

    #@98
    int-to-byte v6, v6

    #@99
    aput-byte v6, p1, v5

    #@9b
    goto :goto_7

    #@9c
    .line 519
    :cond_a
    shr-int/lit8 v5, v0, 0x12

    #@9e
    or-int/lit16 v5, v5, 0xf0

    #@a0
    int-to-byte v5, v5

    #@a1
    int-to-byte v5, v5

    #@a2
    aput-byte v5, p1, p2

    #@a4
    .line 520
    add-int/lit8 v5, p2, 0x1

    #@a6
    shr-int/lit8 v6, v0, 0xc

    #@a8
    and-int/lit8 v6, v6, 0x3f

    #@aa
    or-int/lit16 v6, v6, 0x80

    #@ac
    int-to-byte v6, v6

    #@ad
    int-to-byte v6, v6

    #@ae
    aput-byte v6, p1, v5

    #@b0
    .line 521
    add-int/lit8 v5, p2, 0x2

    #@b2
    shr-int/lit8 v6, v0, 0x6

    #@b4
    and-int/lit8 v6, v6, 0x3f

    #@b6
    or-int/lit16 v6, v6, 0x80

    #@b8
    int-to-byte v6, v6

    #@b9
    int-to-byte v6, v6

    #@ba
    aput-byte v6, p1, v5

    #@bc
    .line 522
    add-int/lit8 v5, p2, 0x3

    #@be
    and-int/lit8 v6, v0, 0x3f

    #@c0
    or-int/lit16 v6, v6, 0x80

    #@c2
    int-to-byte v6, v6

    #@c3
    int-to-byte v6, v6

    #@c4
    aput-byte v6, p1, v5

    #@c6
    goto/16 :goto_2
.end method

.method public static encodeUtf8(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 456
    invoke-static {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    #@5
    move-result v0

    #@6
    .line 457
    .local v0, "len":I
    new-array v1, v0, [B

    #@8
    .line 458
    .local v1, "result":[B
    invoke-static {p0, v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    #@b
    .line 459
    return-object v1
.end method

.method public static inflate([BIII)[B
    .locals 10
    .param p0, "deflatedData"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "inflatedDataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 958
    add-int/lit8 v6, p2, 0x1

    #@3
    new-array v0, v6, [B

    #@5
    .line 959
    .local v0, "compressedDataWithDummyByte":[B
    invoke-static {p0, p1, v0, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8
    .line 960
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@b
    move-result-object v6

    #@c
    new-instance v7, Ljava/io/ByteArrayInputStream;

    #@e
    add-int/lit8 v8, p2, 0x1

    #@10
    invoke-direct {v7, v0, v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@13
    invoke-virtual {v6, v7}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@16
    move-result-object v3

    #@17
    .line 964
    .local v3, "is":Ljava/io/InputStream;
    new-array v2, p3, [B

    #@19
    .line 966
    .local v2, "decompressedData":[B
    move v5, p3

    #@1a
    .local v5, "numBytesRemaining":I
    const/4 v4, 0x0

    #@1b
    .line 971
    .local v4, "numBytesRead":I
    :goto_0
    if-gtz v5, :cond_1

    #@1d
    .line 975
    :cond_0
    if-nez v5, :cond_2

    #@1f
    .line 980
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    #@22
    .line 982
    return-object v2

    #@23
    .line 971
    :cond_1
    :try_start_0
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    #@26
    move-result v1

    #@27
    .local v1, "currentReadCount":I
    const/4 v6, -0x1

    #@28
    if-eq v1, v6, :cond_0

    #@2a
    .line 972
    sub-int/2addr v5, v1

    #@2b
    .line 973
    add-int/2addr v4, v1

    #@2c
    goto :goto_0

    #@2d
    .line 976
    .end local v1    # "currentReadCount":I
    :cond_2
    new-instance v6, Ljava/io/IOException;

    #@2f
    new-instance v7, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v8, "Failed to read ["

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    const-string/jumbo v8, "] bytes, but only read ["

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    const-string/jumbo v8, "]"

    #@4d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@58
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    .line 981
    :catchall_0
    move-exception v6

    #@5a
    .line 980
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    #@5d
    throw v6
.end method
