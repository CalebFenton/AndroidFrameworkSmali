.class Ljava/util/Properties$LineReader;
.super Ljava/lang/Object;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineReader"
.end annotation


# instance fields
.field private greylist-max-o inByteBuf:[B

.field private greylist-max-o inCharBuf:[C

.field private greylist-max-o inLimit:I

.field private greylist-max-o inOff:I

.field private greylist-max-o inStream:Ljava/io/InputStream;

.field greylist-max-o lineBuf:[C

.field private greylist-max-o reader:Ljava/io/Reader;


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 485
    iput v0, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 472
    iput-object p1, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    .line 473
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    .line 474
    return-void
.end method

.method constructor blacklist <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "reader"    # Ljava/io/Reader;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 485
    iput v0, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 477
    iput-object p1, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    .line 478
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    .line 479
    return-void
.end method


# virtual methods
.method greylist-max-o readLine()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 492
    .local v1, "len":I
    iget v2, v0, Ljava/util/Properties$LineReader;->inOff:I

    .line 493
    .local v2, "off":I
    iget v3, v0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 495
    .local v3, "limit":I
    const/4 v4, 0x1

    .line 496
    .local v4, "skipWhiteSpace":Z
    const/4 v5, 0x0

    .line 497
    .local v5, "appendedLineBegin":Z
    const/4 v6, 0x0

    .line 498
    .local v6, "precedingBackslash":Z
    iget-object v7, v0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    const/4 v9, 0x1

    if-eqz v7, :cond_11

    move v7, v9

    goto :goto_12

    :cond_11
    const/4 v7, 0x0

    .line 499
    .local v7, "fromStream":Z
    :goto_12
    iget-object v10, v0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    .line 500
    .local v10, "byteBuf":[B
    iget-object v11, v0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    .line 501
    .local v11, "charBuf":[C
    iget-object v12, v0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 505
    .local v12, "lineBuf":[C
    :goto_18
    const/4 v13, -0x1

    if-lt v2, v3, :cond_3a

    .line 506
    if-eqz v7, :cond_24

    iget-object v14, v0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    invoke-virtual {v14, v10}, Ljava/io/InputStream;->read([B)I

    move-result v14

    goto :goto_2a

    .line 507
    :cond_24
    iget-object v14, v0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    invoke-virtual {v14, v11}, Ljava/io/Reader;->read([C)I

    move-result v14

    :goto_2a
    move v3, v14

    iput v14, v0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 508
    if-gtz v3, :cond_39

    .line 509
    if-nez v1, :cond_32

    .line 510
    return v13

    .line 512
    :cond_32
    if-eqz v6, :cond_37

    add-int/lit8 v8, v1, -0x1

    goto :goto_38

    :cond_37
    move v8, v1

    :goto_38
    return v8

    .line 514
    :cond_39
    const/4 v2, 0x0

    .line 518
    :cond_3a
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "off":I
    .local v14, "off":I
    if-eqz v7, :cond_44

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    goto :goto_46

    :cond_44
    aget-char v2, v11, v2

    .line 520
    .local v2, "c":C
    :goto_46
    const/16 v15, 0xa

    move/from16 v16, v13

    const/16 v13, 0xd

    if-eqz v4, :cond_60

    .line 523
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v17

    if-eqz v17, :cond_55

    .line 524
    goto :goto_5c

    .line 526
    :cond_55
    if-nez v5, :cond_5e

    if-eq v2, v13, :cond_5c

    if-ne v2, v15, :cond_5e

    .line 527
    nop

    .line 505
    .end local v2    # "c":C
    :cond_5c
    :goto_5c
    move v2, v14

    goto :goto_18

    .line 529
    .restart local v2    # "c":C
    :cond_5e
    const/4 v4, 0x0

    .line 530
    const/4 v5, 0x0

    .line 533
    :cond_60
    if-nez v1, :cond_ae

    .line 534
    const/16 v8, 0x23

    if-eq v2, v8, :cond_6a

    const/16 v8, 0x21

    if-ne v2, v8, :cond_ae

    .line 541
    :cond_6a
    :goto_6a
    if-eqz v7, :cond_8b

    .line 543
    :goto_6c
    if-ge v14, v3, :cond_7b

    .line 544
    add-int/lit8 v8, v14, 0x1

    .end local v14    # "off":I
    .local v8, "off":I
    aget-byte v14, v10, v14

    .line 545
    .local v14, "b":B
    if-gt v14, v13, :cond_79

    if-eq v14, v13, :cond_98

    if-ne v14, v15, :cond_79

    .line 546
    goto :goto_98

    .line 543
    .end local v14    # "b":B
    :cond_79
    move v14, v8

    goto :goto_6c

    .line 548
    .end local v8    # "off":I
    .local v14, "off":I
    :cond_7b
    if-ne v14, v3, :cond_6a

    .line 549
    iget-object v8, v0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v3, v8

    iput v8, v0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 550
    if-gtz v3, :cond_89

    .line 551
    return v16

    .line 553
    :cond_89
    const/4 v14, 0x0

    goto :goto_6a

    .line 556
    :cond_8b
    :goto_8b
    if-ge v14, v3, :cond_9e

    .line 557
    add-int/lit8 v8, v14, 0x1

    .end local v14    # "off":I
    .restart local v8    # "off":I
    aget-char v2, v11, v14

    .line 558
    if-gt v2, v13, :cond_9c

    if-eq v2, v13, :cond_98

    if-ne v2, v15, :cond_9c

    .line 559
    nop

    .line 570
    :cond_98
    :goto_98
    const/4 v4, 0x1

    .line 571
    move v2, v8

    goto/16 :goto_18

    .line 556
    :cond_9c
    move v14, v8

    goto :goto_8b

    .line 561
    .end local v8    # "off":I
    .restart local v14    # "off":I
    :cond_9e
    if-ne v14, v3, :cond_6a

    .line 562
    iget-object v8, v0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    invoke-virtual {v8, v11}, Ljava/io/Reader;->read([C)I

    move-result v8

    move v3, v8

    iput v8, v0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 563
    if-gtz v3, :cond_ac

    .line 564
    return v16

    .line 566
    :cond_ac
    const/4 v14, 0x0

    goto :goto_6a

    .line 575
    :cond_ae
    if-eq v2, v15, :cond_d8

    if-eq v2, v13, :cond_d8

    .line 576
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "len":I
    .local v8, "len":I
    aput-char v2, v12, v1

    .line 577
    array-length v1, v12

    if-ne v8, v1, :cond_c9

    .line 578
    invoke-static {v8, v9, v8}, Ljdk/internal/util/ArraysSupport;->newLength(III)I

    move-result v1

    new-array v1, v1, [C

    .line 579
    .end local v12    # "lineBuf":[C
    .local v1, "lineBuf":[C
    iget-object v12, v0, Ljava/util/Properties$LineReader;->lineBuf:[C

    const/4 v13, 0x0

    invoke-static {v12, v13, v1, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 580
    iput-object v1, v0, Ljava/util/Properties$LineReader;->lineBuf:[C

    move-object v12, v1

    goto :goto_ca

    .line 577
    .end local v1    # "lineBuf":[C
    .restart local v12    # "lineBuf":[C
    :cond_c9
    const/4 v13, 0x0

    .line 583
    :goto_ca
    const/16 v1, 0x5c

    if-ne v2, v1, :cond_d2

    if-nez v6, :cond_d2

    move v1, v9

    goto :goto_d3

    :cond_d2
    move v1, v13

    :goto_d3
    move v6, v1

    move v1, v8

    move v2, v14

    goto/16 :goto_18

    .line 575
    .end local v8    # "len":I
    .local v1, "len":I
    :cond_d8
    const/16 v17, 0x0

    .line 586
    if-nez v1, :cond_e0

    .line 587
    const/4 v4, 0x1

    .line 588
    move v2, v14

    goto/16 :goto_18

    .line 590
    :cond_e0
    if-lt v14, v3, :cond_fe

    .line 591
    if-eqz v7, :cond_eb

    iget-object v8, v0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_f1

    .line 592
    :cond_eb
    iget-object v8, v0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    invoke-virtual {v8, v11}, Ljava/io/Reader;->read([C)I

    move-result v8

    :goto_f1
    move v3, v8

    iput v8, v0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 593
    const/4 v8, 0x0

    .line 594
    .end local v14    # "off":I
    .local v8, "off":I
    if-gtz v3, :cond_ff

    .line 595
    if-eqz v6, :cond_fc

    add-int/lit8 v9, v1, -0x1

    goto :goto_fd

    :cond_fc
    move v9, v1

    :goto_fd
    return v9

    .line 590
    .end local v8    # "off":I
    .restart local v14    # "off":I
    :cond_fe
    move v8, v14

    .line 598
    .end local v14    # "off":I
    .restart local v8    # "off":I
    :cond_ff
    if-eqz v6, :cond_11f

    .line 600
    add-int/lit8 v1, v1, -0x1

    .line 602
    const/4 v4, 0x1

    .line 603
    const/4 v5, 0x1

    .line 604
    const/4 v6, 0x0

    .line 606
    if-ne v2, v13, :cond_11c

    .line 607
    if-eqz v7, :cond_113

    .line 608
    aget-byte v13, v10, v8

    if-ne v13, v15, :cond_11c

    .line 609
    add-int/lit8 v8, v8, 0x1

    move v2, v8

    goto/16 :goto_18

    .line 612
    :cond_113
    aget-char v13, v11, v8

    if-ne v13, v15, :cond_11c

    .line 613
    add-int/lit8 v8, v8, 0x1

    move v2, v8

    goto/16 :goto_18

    .line 505
    .end local v2    # "c":C
    :cond_11c
    move v2, v8

    goto/16 :goto_18

    .line 618
    .restart local v2    # "c":C
    :cond_11f
    iput v8, v0, Ljava/util/Properties$LineReader;->inOff:I

    .line 619
    return v1
.end method
