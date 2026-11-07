.class public Ljava/io/StreamTokenizer;
.super Ljava/lang/Object;
.source "StreamTokenizer.java"


# static fields
.field private static final greylist-max-o CT_ALPHA:B = 0x4t

.field private static final greylist-max-o CT_COMMENT:B = 0x10t

.field private static final greylist-max-o CT_DIGIT:B = 0x2t

.field private static final greylist-max-o CT_QUOTE:B = 0x8t

.field private static final greylist-max-o CT_WHITESPACE:B = 0x1t

.field private static final greylist-max-o NEED_CHAR:I = 0x7fffffff

.field private static final greylist-max-o SKIP_LF:I = 0x7ffffffe

.field public static final whitelist test-api TT_EOF:I = -0x1

.field public static final whitelist test-api TT_EOL:I = 0xa

.field private static final greylist-max-o TT_NOTHING:I = -0x4

.field public static final whitelist test-api TT_NUMBER:I = -0x2

.field public static final whitelist test-api TT_WORD:I = -0x3


# instance fields
.field private greylist-max-o LINENO:I

.field private greylist-max-o buf:[C

.field private greylist-max-o ctype:[B

.field private greylist-max-o eolIsSignificantP:Z

.field private greylist-max-o forceLower:Z

.field private greylist-max-o input:Ljava/io/InputStream;

.field public whitelist test-api nval:D

.field private greylist-max-o peekc:I

.field private greylist-max-o pushedBack:Z

.field private greylist-max-o reader:Ljava/io/Reader;

.field private greylist-max-o slashSlashCommentsP:Z

.field private greylist-max-o slashStarCommentsP:Z

.field public whitelist test-api sval:Ljava/lang/String;

.field public whitelist test-api ttype:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 4

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    .line 69
    iput-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    .line 71
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/StreamTokenizer;->buf:[C

    .line 80
    const v0, 0x7fffffff

    iput v0, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Ljava/io/StreamTokenizer;->LINENO:I

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    .line 91
    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    .line 92
    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    .line 94
    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    .line 128
    const/4 v1, -0x4

    iput v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 189
    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {p0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 190
    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 191
    const/16 v1, 0xa0

    const/16 v2, 0xff

    invoke-virtual {p0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 192
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 193
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->commentChar(I)V

    .line 194
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 195
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 196
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->parseNumbers()V

    .line 197
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    .line 233
    if-eqz p1, :cond_8

    .line 236
    iput-object p1, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    .line 237
    return-void

    .line 234
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "r"    # Ljava/io/Reader;

    .line 246
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    .line 247
    if-eqz p1, :cond_8

    .line 250
    iput-object p1, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    .line 251
    return-void

    .line 248
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_b

    .line 500
    iget-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0

    .line 501
    :cond_b
    iget-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_16

    .line 502
    iget-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 504
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api commentChar(I)V
    .registers 4
    .param p1, "ch"    # I

    .line 356
    if-ltz p1, :cond_d

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-ge p1, v0, :cond_d

    .line 357
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/16 v1, 0x10

    aput-byte v1, v0, p1

    .line 358
    :cond_d
    return-void
.end method

.method public whitelist test-api eolIsSignificant(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 440
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    .line 441
    return-void
.end method

.method public whitelist test-api lineno()I
    .registers 2

    .line 776
    iget v0, p0, Ljava/io/StreamTokenizer;->LINENO:I

    return v0
.end method

.method public whitelist test-api lowerCaseMode(Z)V
    .registers 2
    .param p1, "fl"    # Z

    .line 494
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->forceLower:Z

    .line 495
    return-void
.end method

.method public whitelist test-api nextToken()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    iget-boolean v0, p0, Ljava/io/StreamTokenizer;->pushedBack:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 527
    iput-boolean v1, p0, Ljava/io/StreamTokenizer;->pushedBack:Z

    .line 528
    iget v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v0

    .line 530
    :cond_a
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    .line 531
    .local v0, "ct":[B
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 533
    iget v2, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 534
    .local v2, "c":I
    if-gez v2, :cond_16

    .line 535
    const v2, 0x7fffffff

    .line 536
    :cond_16
    const v3, 0x7ffffffe

    const/4 v4, -0x1

    const/16 v5, 0xa

    if-ne v2, v3, :cond_2c

    .line 537
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 538
    if-gez v2, :cond_27

    .line 539
    iput v4, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v4

    .line 540
    :cond_27
    if-ne v2, v5, :cond_2c

    .line 541
    const v2, 0x7fffffff

    .line 543
    :cond_2c
    const v6, 0x7fffffff

    if-ne v2, v6, :cond_3a

    .line 544
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 545
    if-gez v2, :cond_3a

    .line 546
    iput v4, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v4

    .line 548
    :cond_3a
    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 553
    iput v6, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 555
    const/16 v7, 0x100

    const/4 v8, 0x4

    if-ge v2, v7, :cond_46

    aget-byte v9, v0, v2

    goto :goto_47

    :cond_46
    move v9, v8

    .line 556
    .local v9, "ctype":I
    :goto_47
    and-int/lit8 v10, v9, 0x1

    const/16 v11, 0xd

    const/4 v12, 0x1

    if-eqz v10, :cond_88

    .line 557
    if-ne v2, v11, :cond_69

    .line 558
    iget v10, p0, Ljava/io/StreamTokenizer;->LINENO:I

    add-int/2addr v10, v12

    iput v10, p0, Ljava/io/StreamTokenizer;->LINENO:I

    .line 559
    iget-boolean v10, p0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    if-eqz v10, :cond_5e

    .line 560
    iput v3, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 561
    iput v5, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v5

    .line 563
    :cond_5e
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 564
    if-ne v2, v5, :cond_7b

    .line 565
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    goto :goto_7b

    .line 567
    :cond_69
    if-ne v2, v5, :cond_77

    .line 568
    iget v10, p0, Ljava/io/StreamTokenizer;->LINENO:I

    add-int/2addr v10, v12

    iput v10, p0, Ljava/io/StreamTokenizer;->LINENO:I

    .line 569
    iget-boolean v10, p0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    if-eqz v10, :cond_77

    .line 570
    iput v5, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v5

    .line 573
    :cond_77
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 575
    :cond_7b
    :goto_7b
    if-gez v2, :cond_80

    .line 576
    iput v4, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v4

    .line 577
    :cond_80
    if-ge v2, v7, :cond_85

    aget-byte v10, v0, v2

    goto :goto_86

    :cond_85
    move v10, v8

    :goto_86
    move v9, v10

    goto :goto_47

    .line 580
    :cond_88
    and-int/lit8 v3, v9, 0x2

    const/16 v10, 0x30

    if-eqz v3, :cond_dd

    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "neg":Z
    const/16 v3, 0x39

    const/16 v4, 0x2e

    const/16 v5, 0x2d

    if-ne v2, v5, :cond_a7

    .line 583
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 584
    if-eq v2, v4, :cond_a6

    if-lt v2, v10, :cond_a1

    if-le v2, v3, :cond_a6

    .line 585
    :cond_a1
    iput v2, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 586
    iput v5, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v5

    .line 588
    :cond_a6
    const/4 v1, 0x1

    .line 590
    :cond_a7
    const-wide/16 v5, 0x0

    .line 591
    .local v5, "v":D
    const/4 v7, 0x0

    .line 592
    .local v7, "decexp":I
    const/4 v8, 0x0

    .line 594
    .local v8, "seendot":I
    :goto_ab
    if-ne v2, v4, :cond_b1

    if-nez v8, :cond_b1

    .line 595
    const/4 v8, 0x1

    goto :goto_be

    .line 596
    :cond_b1
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    if-gt v10, v2, :cond_c3

    if-gt v2, v3, :cond_c3

    .line 597
    mul-double/2addr v11, v5

    add-int/lit8 v13, v2, -0x30

    int-to-double v13, v13

    add-double/2addr v11, v13

    .line 598
    .end local v5    # "v":D
    .local v11, "v":D
    add-int/2addr v7, v8

    move-wide v5, v11

    .line 601
    .end local v11    # "v":D
    .restart local v5    # "v":D
    :goto_be
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    goto :goto_ab

    .line 603
    :cond_c3
    iput v2, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 604
    if-eqz v7, :cond_d2

    .line 605
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 606
    .local v3, "denom":D
    add-int/lit8 v7, v7, -0x1

    .line 607
    :goto_cb
    if-lez v7, :cond_d1

    .line 608
    mul-double/2addr v3, v11

    .line 609
    add-int/lit8 v7, v7, -0x1

    goto :goto_cb

    .line 612
    :cond_d1
    div-double/2addr v5, v3

    .line 614
    .end local v3    # "denom":D
    :cond_d2
    if-eqz v1, :cond_d6

    neg-double v3, v5

    goto :goto_d7

    :cond_d6
    move-wide v3, v5

    :goto_d7
    iput-wide v3, p0, Ljava/io/StreamTokenizer;->nval:D

    .line 615
    const/4 v3, -0x2

    iput v3, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v3

    .line 618
    .end local v1    # "neg":Z
    .end local v5    # "v":D
    .end local v7    # "decexp":I
    .end local v8    # "seendot":I
    :cond_dd
    and-int/lit8 v3, v9, 0x4

    if-eqz v3, :cond_12a

    .line 619
    const/4 v3, 0x0

    .line 621
    .local v3, "i":I
    :goto_e2
    iget-object v4, p0, Ljava/io/StreamTokenizer;->buf:[C

    array-length v4, v4

    if-lt v3, v4, :cond_f4

    .line 622
    iget-object v4, p0, Ljava/io/StreamTokenizer;->buf:[C

    iget-object v5, p0, Ljava/io/StreamTokenizer;->buf:[C

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v4

    iput-object v4, p0, Ljava/io/StreamTokenizer;->buf:[C

    .line 624
    :cond_f4
    iget-object v4, p0, Ljava/io/StreamTokenizer;->buf:[C

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    int-to-char v6, v2

    aput-char v6, v4, v3

    .line 625
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 626
    if-gez v2, :cond_103

    move v3, v12

    goto :goto_109

    :cond_103
    if-ge v2, v7, :cond_108

    aget-byte v3, v0, v2

    goto :goto_109

    :cond_108
    move v3, v8

    :goto_109
    move v9, v3

    .line 627
    and-int/lit8 v3, v9, 0x6

    if-nez v3, :cond_128

    .line 628
    iput v2, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 629
    iget-object v3, p0, Ljava/io/StreamTokenizer;->buf:[C

    invoke-static {v3, v1, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 630
    iget-boolean v1, p0, Ljava/io/StreamTokenizer;->forceLower:Z

    if-eqz v1, :cond_124

    .line 631
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 632
    :cond_124
    const/4 v1, -0x3

    iput v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v1

    .line 627
    :cond_128
    move v3, v5

    goto :goto_e2

    .line 635
    .end local v5    # "i":I
    :cond_12a
    and-int/lit8 v3, v9, 0x8

    if-eqz v3, :cond_1ca

    .line 636
    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 637
    const/4 v3, 0x0

    .line 642
    .restart local v3    # "i":I
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 643
    .local v4, "d":I
    :goto_135
    if-ltz v4, :cond_1b7

    iget v7, p0, Ljava/io/StreamTokenizer;->ttype:I

    if-eq v4, v7, :cond_1b7

    if-eq v4, v5, :cond_1b7

    if-eq v4, v11, :cond_1b7

    .line 644
    const/16 v7, 0x5c

    if-ne v4, v7, :cond_196

    .line 645
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 646
    move v7, v2

    .line 647
    .local v7, "first":I
    if-lt v2, v10, :cond_179

    const/16 v8, 0x37

    if-gt v2, v8, :cond_179

    .line 648
    add-int/lit8 v2, v2, -0x30

    .line 649
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v12

    .line 650
    .local v12, "c2":I
    if-gt v10, v12, :cond_177

    if-gt v12, v8, :cond_177

    .line 651
    shl-int/lit8 v13, v2, 0x3

    add-int/lit8 v14, v12, -0x30

    add-int v2, v13, v14

    .line 652
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v12

    .line 653
    if-gt v10, v12, :cond_175

    if-gt v12, v8, :cond_175

    const/16 v8, 0x33

    if-gt v7, v8, :cond_175

    .line 654
    shl-int/lit8 v8, v2, 0x3

    add-int/lit8 v13, v12, -0x30

    add-int v2, v8, v13

    .line 655
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    goto :goto_178

    .line 657
    :cond_175
    move v4, v12

    goto :goto_178

    .line 659
    :cond_177
    move v4, v12

    .line 660
    .end local v12    # "c2":I
    :goto_178
    goto :goto_195

    .line 661
    :cond_179
    sparse-switch v2, :sswitch_data_268

    goto :goto_191

    .line 681
    :sswitch_17d
    const/16 v2, 0xb

    goto :goto_191

    .line 678
    :sswitch_180
    const/16 v2, 0x9

    .line 679
    goto :goto_191

    .line 675
    :sswitch_183
    const/16 v2, 0xd

    .line 676
    goto :goto_191

    .line 672
    :sswitch_186
    const/16 v2, 0xa

    .line 673
    goto :goto_191

    .line 669
    :sswitch_189
    const/16 v2, 0xc

    .line 670
    goto :goto_191

    .line 666
    :sswitch_18c
    const/16 v2, 0x8

    .line 667
    goto :goto_191

    .line 663
    :sswitch_18f
    const/4 v2, 0x7

    .line 664
    nop

    .line 684
    :goto_191
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 686
    .end local v7    # "first":I
    :goto_195
    goto :goto_19b

    .line 687
    :cond_196
    move v2, v4

    .line 688
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 690
    :goto_19b
    iget-object v7, p0, Ljava/io/StreamTokenizer;->buf:[C

    array-length v7, v7

    if-lt v3, v7, :cond_1ad

    .line 691
    iget-object v7, p0, Ljava/io/StreamTokenizer;->buf:[C

    iget-object v8, p0, Ljava/io/StreamTokenizer;->buf:[C

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v7

    iput-object v7, p0, Ljava/io/StreamTokenizer;->buf:[C

    .line 693
    :cond_1ad
    iget-object v7, p0, Ljava/io/StreamTokenizer;->buf:[C

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "i":I
    .local v8, "i":I
    int-to-char v12, v2

    aput-char v12, v7, v3

    move v3, v8

    goto/16 :goto_135

    .line 700
    .end local v8    # "i":I
    .restart local v3    # "i":I
    :cond_1b7
    iget v5, p0, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v4, v5, :cond_1bc

    goto :goto_1bd

    :cond_1bc
    move v6, v4

    :goto_1bd
    iput v6, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 702
    iget-object v5, p0, Ljava/io/StreamTokenizer;->buf:[C

    invoke-static {v5, v1, v3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 703
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v1

    .line 706
    .end local v3    # "i":I
    .end local v4    # "d":I
    :cond_1ca
    const/16 v1, 0x2f

    if-ne v2, v1, :cond_24d

    iget-boolean v3, p0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    if-nez v3, :cond_1d6

    iget-boolean v3, p0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    if-eqz v3, :cond_24d

    .line 707
    :cond_1d6
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 708
    const/16 v3, 0x2a

    if-ne v2, v3, :cond_216

    iget-boolean v6, p0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    if-eqz v6, :cond_216

    .line 709
    const/4 v6, 0x0

    .line 710
    .local v6, "prevc":I
    :goto_1e3
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v7

    move v2, v7

    if-ne v7, v1, :cond_1f2

    if-eq v6, v3, :cond_1ed

    goto :goto_1f2

    .line 727
    :cond_1ed
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    return v1

    .line 711
    :cond_1f2
    :goto_1f2
    if-ne v2, v11, :cond_204

    .line 712
    iget v7, p0, Ljava/io/StreamTokenizer;->LINENO:I

    add-int/2addr v7, v12

    iput v7, p0, Ljava/io/StreamTokenizer;->LINENO:I

    .line 713
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 714
    if-ne v2, v5, :cond_20f

    .line 715
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    goto :goto_20f

    .line 718
    :cond_204
    if-ne v2, v5, :cond_20f

    .line 719
    iget v7, p0, Ljava/io/StreamTokenizer;->LINENO:I

    add-int/2addr v7, v12

    iput v7, p0, Ljava/io/StreamTokenizer;->LINENO:I

    .line 720
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 723
    :cond_20f
    :goto_20f
    if-gez v2, :cond_214

    .line 724
    iput v4, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v4

    .line 725
    :cond_214
    move v6, v2

    goto :goto_1e3

    .line 728
    .end local v6    # "prevc":I
    :cond_216
    if-ne v2, v1, :cond_22f

    iget-boolean v3, p0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    if-eqz v3, :cond_22f

    .line 729
    :goto_21c
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v1

    move v2, v1

    if-eq v1, v5, :cond_228

    if-eq v2, v11, :cond_228

    if-ltz v2, :cond_228

    goto :goto_21c

    .line 730
    :cond_228
    iput v2, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 731
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    return v1

    .line 734
    :cond_22f
    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_248

    .line 735
    :goto_235
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v1

    move v2, v1

    if-eq v1, v5, :cond_241

    if-eq v2, v11, :cond_241

    if-ltz v2, :cond_241

    goto :goto_235

    .line 736
    :cond_241
    iput v2, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 737
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    return v1

    .line 739
    :cond_248
    iput v2, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 740
    iput v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v1

    .line 745
    :cond_24d
    and-int/lit8 v1, v9, 0x10

    if-eqz v1, :cond_264

    .line 746
    :goto_251
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v1

    move v2, v1

    if-eq v1, v5, :cond_25d

    if-eq v2, v11, :cond_25d

    if-ltz v2, :cond_25d

    goto :goto_251

    .line 747
    :cond_25d
    iput v2, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 748
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    return v1

    .line 751
    :cond_264
    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    return v2

    nop

    :sswitch_data_268
    .sparse-switch
        0x61 -> :sswitch_18f
        0x62 -> :sswitch_18c
        0x66 -> :sswitch_189
        0x6e -> :sswitch_186
        0x72 -> :sswitch_183
        0x74 -> :sswitch_180
        0x76 -> :sswitch_17d
    .end sparse-switch
.end method

.method public whitelist test-api ordinaryChar(I)V
    .registers 4
    .param p1, "ch"    # I

    .line 342
    if-ltz p1, :cond_c

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 343
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/4 v1, 0x0

    aput-byte v1, v0, p1

    .line 344
    :cond_c
    return-void
.end method

.method public whitelist test-api ordinaryChars(II)V
    .registers 6
    .param p1, "low"    # I
    .param p2, "hi"    # I

    .line 316
    if-gez p1, :cond_3

    .line 317
    const/4 p1, 0x0

    .line 318
    :cond_3
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-lt p2, v0, :cond_d

    .line 319
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    add-int/lit8 p2, v0, -0x1

    .line 320
    :cond_d
    :goto_d
    if-gt p1, p2, :cond_18

    .line 321
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "low":I
    .local v1, "low":I
    const/4 v2, 0x0

    aput-byte v2, v0, p1

    move p1, v1

    goto :goto_d

    .line 322
    .end local v1    # "low":I
    .restart local p1    # "low":I
    :cond_18
    return-void
.end method

.method public whitelist test-api parseNumbers()V
    .registers 4

    .line 410
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_12

    .line 411
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 412
    .end local v0    # "i":I
    :cond_12
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/16 v1, 0x2e

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 413
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/16 v1, 0x2d

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 414
    return-void
.end method

.method public whitelist test-api pushBack()V
    .registers 3

    .line 766
    iget v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_8

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->pushedBack:Z

    .line 768
    :cond_8
    return-void
.end method

.method public whitelist test-api quoteChar(I)V
    .registers 4
    .param p1, "ch"    # I

    .line 385
    if-ltz p1, :cond_d

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-ge p1, v0, :cond_d

    .line 386
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/16 v1, 0x8

    aput-byte v1, v0, p1

    .line 387
    :cond_d
    return-void
.end method

.method public whitelist test-api resetSyntax()V
    .registers 4

    .line 261
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    .local v0, "i":I
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_d

    .line 262
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    goto :goto_3

    .line 263
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method public whitelist test-api slashSlashComments(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 473
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    .line 474
    return-void
.end method

.method public whitelist test-api slashStarComments(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 456
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    .line 457
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 795
    iget v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v0, :sswitch_data_72

    .line 818
    iget v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_3a

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3a

    .line 820
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 821
    .local v0, "ret":Ljava/lang/String;
    goto :goto_51

    .line 800
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_18
    const-string v0, "EOL"

    .line 801
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_51

    .line 797
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_1b
    const-string v0, "EOF"

    .line 798
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_51

    .line 806
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/io/StreamTokenizer;->nval:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_51

    .line 803
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_34
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 804
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_51

    .line 809
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_37
    const-string v0, "NOTHING"

    .line 810
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_51

    .line 824
    .end local v0    # "ret":Ljava/lang/String;
    :cond_3a
    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 825
    .local v0, "s":[C
    const/4 v1, 0x2

    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/4 v1, 0x0

    aput-char v2, v0, v1

    .line 826
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v1, v1

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 827
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 828
    .local v1, "ret":Ljava/lang/String;
    move-object v0, v1

    .line 831
    .end local v1    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/io/StreamTokenizer;->LINENO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_72
    .sparse-switch
        -0x4 -> :sswitch_37
        -0x3 -> :sswitch_34
        -0x2 -> :sswitch_1e
        -0x1 -> :sswitch_1b
        0xa -> :sswitch_18
    .end sparse-switch
.end method

.method public whitelist test-api whitespaceChars(II)V
    .registers 6
    .param p1, "low"    # I
    .param p2, "hi"    # I

    .line 296
    if-gez p1, :cond_3

    .line 297
    const/4 p1, 0x0

    .line 298
    :cond_3
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-lt p2, v0, :cond_e

    .line 299
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    add-int/lit8 p2, v0, -0x1

    .line 300
    :cond_e
    :goto_e
    if-gt p1, p2, :cond_18

    .line 301
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "low":I
    .local v2, "low":I
    aput-byte v1, v0, p1

    move p1, v2

    goto :goto_e

    .line 302
    .end local v2    # "low":I
    .restart local p1    # "low":I
    :cond_18
    return-void
.end method

.method public whitelist test-api wordChars(II)V
    .registers 6
    .param p1, "low"    # I
    .param p2, "hi"    # I

    .line 275
    if-gez p1, :cond_3

    .line 276
    const/4 p1, 0x0

    .line 277
    :cond_3
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-lt p2, v0, :cond_d

    .line 278
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    add-int/lit8 p2, v0, -0x1

    .line 279
    :cond_d
    :goto_d
    if-gt p1, p2, :cond_1c

    .line 280
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "low":I
    .local v1, "low":I
    aget-byte v2, v0, p1

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    move p1, v1

    goto :goto_d

    .line 281
    .end local v1    # "low":I
    .restart local p1    # "low":I
    :cond_1c
    return-void
.end method
