.class Ljava/util/Properties$LineReader;
.super Ljava/lang/Object;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineReader"
.end annotation


# instance fields
.field inByteBuf:[B

.field inCharBuf:[C

.field inLimit:I

.field inOff:I

.field inStream:Ljava/io/InputStream;

.field lineBuf:[C

.field reader:Ljava/io/Reader;

.field final synthetic this$0:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "this$0"    # Ljava/util/Properties;
    .param p2, "inStream"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 404
    iput-object p1, p0, Ljava/util/Properties$LineReader;->this$0:Ljava/util/Properties;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 416
    const/16 v0, 0x400

    #@8
    new-array v0, v0, [C

    #@a
    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@c
    .line 417
    iput v1, p0, Ljava/util/Properties$LineReader;->inLimit:I

    #@e
    .line 418
    iput v1, p0, Ljava/util/Properties$LineReader;->inOff:I

    #@10
    .line 405
    iput-object p2, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    #@12
    .line 406
    const/16 v0, 0x2000

    #@14
    new-array v0, v0, [B

    #@16
    iput-object v0, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    #@18
    .line 404
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/io/Reader;)V
    .locals 2
    .param p1, "this$0"    # Ljava/util/Properties;
    .param p2, "reader"    # Ljava/io/Reader;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 409
    iput-object p1, p0, Ljava/util/Properties$LineReader;->this$0:Ljava/util/Properties;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 416
    const/16 v0, 0x400

    #@8
    new-array v0, v0, [C

    #@a
    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@c
    .line 417
    iput v1, p0, Ljava/util/Properties$LineReader;->inLimit:I

    #@e
    .line 418
    iput v1, p0, Ljava/util/Properties$LineReader;->inOff:I

    #@10
    .line 410
    iput-object p2, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    #@12
    .line 411
    const/16 v0, 0x2000

    #@14
    new-array v0, v0, [C

    #@16
    iput-object v0, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    #@18
    .line 409
    return-void
.end method


# virtual methods
.method readLine()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 423
    const/4 v5, 0x0

    #@1
    .line 424
    .local v5, "len":I
    const/4 v2, 0x0

    #@2
    .line 426
    .local v2, "c":C
    const/4 v10, 0x1

    #@3
    .line 427
    .local v10, "skipWhiteSpace":Z
    const/4 v3, 0x0

    #@4
    .line 428
    .local v3, "isCommentLine":Z
    const/4 v4, 0x1

    #@5
    .line 429
    .local v4, "isNewLine":Z
    const/4 v0, 0x0

    #@6
    .line 430
    .local v0, "appendedLineBegin":Z
    const/4 v8, 0x0

    #@7
    .line 431
    .local v8, "precedingBackslash":Z
    const/4 v9, 0x0

    #@8
    .line 434
    .end local v2    # "c":C
    .local v9, "skipLF":Z
    :cond_0
    :goto_0
    iget v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    #@a
    iget v12, p0, Ljava/util/Properties$LineReader;->inLimit:I

    #@c
    if-lt v11, v12, :cond_4

    #@e
    .line 435
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    #@10
    if-nez v11, :cond_2

    #@12
    iget-object v11, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    #@14
    iget-object v12, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    #@16
    invoke-virtual {v11, v12}, Ljava/io/Reader;->read([C)I

    #@19
    move-result v11

    #@1a
    :goto_1
    iput v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    #@1c
    .line 437
    const/4 v11, 0x0

    #@1d
    iput v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    #@1f
    .line 438
    iget v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    #@21
    if-gtz v11, :cond_4

    #@23
    .line 439
    if-eqz v5, :cond_1

    #@25
    if-eqz v3, :cond_3

    #@27
    .line 440
    :cond_1
    const/4 v11, -0x1

    #@28
    return v11

    #@29
    .line 436
    :cond_2
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    #@2b
    iget-object v12, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    #@2d
    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    #@30
    move-result v11

    #@31
    goto :goto_1

    #@32
    .line 442
    :cond_3
    return v5

    #@33
    .line 445
    :cond_4
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    #@35
    if-eqz v11, :cond_9

    #@37
    .line 448
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    #@39
    iget v12, p0, Ljava/util/Properties$LineReader;->inOff:I

    #@3b
    add-int/lit8 v13, v12, 0x1

    #@3d
    iput v13, p0, Ljava/util/Properties$LineReader;->inOff:I

    #@3f
    aget-byte v11, v11, v12

    #@41
    and-int/lit16 v11, v11, 0xff

    #@43
    int-to-char v2, v11

    #@44
    .line 452
    .local v2, "c":C
    :goto_2
    if-eqz v9, :cond_5

    #@46
    .line 453
    const/4 v9, 0x0

    #@47
    .line 454
    const/16 v11, 0xa

    #@49
    if-eq v2, v11, :cond_0

    #@4b
    .line 458
    :cond_5
    if-eqz v10, :cond_7

    #@4d
    .line 459
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    #@50
    move-result v11

    #@51
    if-nez v11, :cond_0

    #@53
    .line 462
    if-nez v0, :cond_6

    #@55
    const/16 v11, 0xd

    #@57
    if-eq v2, v11, :cond_0

    #@59
    const/16 v11, 0xa

    #@5b
    if-eq v2, v11, :cond_0

    #@5d
    .line 465
    :cond_6
    const/4 v10, 0x0

    #@5e
    .line 466
    const/4 v0, 0x0

    #@5f
    .line 468
    :cond_7
    if-eqz v4, :cond_a

    #@61
    .line 469
    const/4 v4, 0x0

    #@62
    .line 470
    const/16 v11, 0x23

    #@64
    if-eq v2, v11, :cond_8

    #@66
    const/16 v11, 0x21

    #@68
    if-ne v2, v11, :cond_a

    #@6a
    .line 471
    :cond_8
    const/4 v3, 0x1

    #@6b
    .line 472
    goto :goto_0

    #@6c
    .line 450
    .end local v2    # "c":C
    :cond_9
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    #@6e
    iget v12, p0, Ljava/util/Properties$LineReader;->inOff:I

    #@70
    add-int/lit8 v13, v12, 0x1

    #@72
    iput v13, p0, Ljava/util/Properties$LineReader;->inOff:I

    #@74
    aget-char v2, v11, v12

    #@76
    .restart local v2    # "c":C
    goto :goto_2

    #@77
    .line 476
    :cond_a
    const/16 v11, 0xa

    #@79
    if-eq v2, v11, :cond_f

    #@7b
    const/16 v11, 0xd

    #@7d
    if-eq v2, v11, :cond_f

    #@7f
    .line 477
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@81
    add-int/lit8 v6, v5, 0x1

    #@83
    .end local v5    # "len":I
    .local v6, "len":I
    aput-char v2, v11, v5

    #@85
    .line 478
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@87
    array-length v11, v11

    #@88
    if-ne v6, v11, :cond_c

    #@8a
    .line 479
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@8c
    array-length v11, v11

    #@8d
    mul-int/lit8 v7, v11, 0x2

    #@8f
    .line 480
    .local v7, "newLength":I
    if-gez v7, :cond_b

    #@91
    .line 481
    const v7, 0x7fffffff

    #@94
    .line 483
    :cond_b
    new-array v1, v7, [C

    #@96
    .line 484
    .local v1, "buf":[C
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@98
    iget-object v12, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@9a
    array-length v12, v12

    #@9b
    const/4 v13, 0x0

    #@9c
    const/4 v14, 0x0

    #@9d
    invoke-static {v11, v13, v1, v14, v12}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@a0
    .line 485
    iput-object v1, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@a2
    .line 488
    .end local v1    # "buf":[C
    .end local v7    # "newLength":I
    :cond_c
    const/16 v11, 0x5c

    #@a4
    if-ne v2, v11, :cond_e

    #@a6
    .line 489
    if-eqz v8, :cond_d

    #@a8
    const/4 v8, 0x0

    #@a9
    :goto_3
    move v5, v6

    #@aa
    .line 476
    .end local v6    # "len":I
    .restart local v5    # "len":I
    goto/16 :goto_0

    #@ac
    .line 489
    .end local v5    # "len":I
    .restart local v6    # "len":I
    :cond_d
    const/4 v8, 0x1

    #@ad
    goto :goto_3

    #@ae
    .line 491
    :cond_e
    const/4 v8, 0x0

    #@af
    goto :goto_3

    #@b0
    .line 496
    .end local v6    # "len":I
    .restart local v5    # "len":I
    :cond_f
    if-nez v3, :cond_10

    #@b2
    if-nez v5, :cond_11

    #@b4
    .line 497
    :cond_10
    const/4 v3, 0x0

    #@b5
    .line 498
    const/4 v4, 0x1

    #@b6
    .line 499
    const/4 v10, 0x1

    #@b7
    .line 500
    const/4 v5, 0x0

    #@b8
    .line 501
    goto/16 :goto_0

    #@ba
    .line 503
    :cond_11
    iget v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    #@bc
    iget v12, p0, Ljava/util/Properties$LineReader;->inLimit:I

    #@be
    if-lt v11, v12, :cond_13

    #@c0
    .line 504
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    #@c2
    if-nez v11, :cond_12

    #@c4
    .line 505
    iget-object v11, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    #@c6
    iget-object v12, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    #@c8
    invoke-virtual {v11, v12}, Ljava/io/Reader;->read([C)I

    #@cb
    move-result v11

    #@cc
    .line 504
    :goto_4
    iput v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    #@ce
    .line 507
    const/4 v11, 0x0

    #@cf
    iput v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    #@d1
    .line 508
    iget v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    #@d3
    if-gtz v11, :cond_13

    #@d5
    .line 509
    return v5

    #@d6
    .line 506
    :cond_12
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    #@d8
    iget-object v12, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    #@da
    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    #@dd
    move-result v11

    #@de
    goto :goto_4

    #@df
    .line 512
    :cond_13
    if-eqz v8, :cond_14

    #@e1
    .line 513
    add-int/lit8 v5, v5, -0x1

    #@e3
    .line 515
    const/4 v10, 0x1

    #@e4
    .line 516
    const/4 v0, 0x1

    #@e5
    .line 517
    const/4 v8, 0x0

    #@e6
    .line 518
    const/16 v11, 0xd

    #@e8
    if-ne v2, v11, :cond_0

    #@ea
    .line 519
    const/4 v9, 0x1

    #@eb
    goto/16 :goto_0

    #@ed
    .line 522
    :cond_14
    return v5
.end method
