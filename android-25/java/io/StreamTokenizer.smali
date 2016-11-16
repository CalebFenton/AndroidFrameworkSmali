.class public Ljava/io/StreamTokenizer;
.super Ljava/lang/Object;
.source "StreamTokenizer.java"


# static fields
.field private static final CT_ALPHA:B = 0x4t

.field private static final CT_COMMENT:B = 0x10t

.field private static final CT_DIGIT:B = 0x2t

.field private static final CT_QUOTE:B = 0x8t

.field private static final CT_WHITESPACE:B = 0x1t

.field private static final NEED_CHAR:I = 0x7fffffff

.field private static final SKIP_LF:I = 0x7ffffffe

.field public static final TT_EOF:I = -0x1

.field public static final TT_EOL:I = 0xa

.field private static final TT_NOTHING:I = -0x4

.field public static final TT_NUMBER:I = -0x2

.field public static final TT_WORD:I = -0x3


# instance fields
.field private LINENO:I

.field private buf:[C

.field private ctype:[B

.field private eolIsSignificantP:Z

.field private forceLower:Z

.field private input:Ljava/io/InputStream;

.field public nval:D

.field private peekc:I

.field private pushedBack:Z

.field private reader:Ljava/io/Reader;

.field private slashSlashCommentsP:Z

.field private slashStarCommentsP:Z

.field public sval:Ljava/lang/String;

.field public ttype:I


# direct methods
.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 68
    iput-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    #@7
    .line 69
    iput-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    #@9
    .line 71
    const/16 v0, 0x14

    #@b
    new-array v0, v0, [C

    #@d
    iput-object v0, p0, Ljava/io/StreamTokenizer;->buf:[C

    #@f
    .line 80
    const v0, 0x7fffffff

    #@12
    iput v0, p0, Ljava/io/StreamTokenizer;->peekc:I

    #@14
    .line 88
    const/4 v0, 0x1

    #@15
    iput v0, p0, Ljava/io/StreamTokenizer;->LINENO:I

    #@17
    .line 90
    iput-boolean v2, p0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    #@19
    .line 91
    iput-boolean v2, p0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    #@1b
    .line 92
    iput-boolean v2, p0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    #@1d
    .line 94
    const/16 v0, 0x100

    #@1f
    new-array v0, v0, [B

    #@21
    iput-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@23
    .line 128
    const/4 v0, -0x4

    #@24
    iput v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@26
    .line 189
    const/16 v0, 0x61

    #@28
    const/16 v1, 0x7a

    #@2a
    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@2d
    .line 190
    const/16 v0, 0x41

    #@2f
    const/16 v1, 0x5a

    #@31
    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@34
    .line 191
    const/16 v0, 0xa0

    #@36
    const/16 v1, 0xff

    #@38
    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@3b
    .line 192
    const/16 v0, 0x20

    #@3d
    invoke-virtual {p0, v2, v0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    #@40
    .line 193
    const/16 v0, 0x2f

    #@42
    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->commentChar(I)V

    #@45
    .line 194
    const/16 v0, 0x22

    #@47
    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    #@4a
    .line 195
    const/16 v0, 0x27

    #@4c
    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    #@4f
    .line 196
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->parseNumbers()V

    #@52
    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    #@3
    .line 233
    if-nez p1, :cond_0

    #@5
    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 236
    :cond_0
    iput-object p1, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    #@d
    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "r"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 246
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    #@3
    .line 247
    if-nez p1, :cond_0

    #@5
    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 250
    :cond_0
    iput-object p1, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    #@d
    .line 245
    return-void
.end method

.method private read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 499
    iget-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 500
    iget-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    #@6
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 501
    :cond_0
    iget-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 502
    iget-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    #@11
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 504
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1b
    throw v0
.end method


# virtual methods
.method public commentChar(I)V
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 356
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 357
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@9
    const/16 v1, 0x10

    #@b
    aput-byte v1, v0, p1

    #@d
    .line 355
    :cond_0
    return-void
.end method

.method public eolIsSignificant(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 440
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    #@2
    .line 439
    return-void
.end method

.method public lineno()I
    .locals 1

    #@0
    .prologue
    .line 776
    iget v0, p0, Ljava/io/StreamTokenizer;->LINENO:I

    #@2
    return v0
.end method

.method public lowerCaseMode(Z)V
    .locals 0
    .param p1, "fl"    # Z

    #@0
    .prologue
    .line 494
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->forceLower:Z

    #@2
    .line 493
    return-void
.end method

.method public nextToken()I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 526
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->pushedBack:Z

    #@4
    move/from16 v20, v0

    #@6
    if-eqz v20, :cond_0

    #@8
    .line 527
    const/16 v20, 0x0

    #@a
    move/from16 v0, v20

    #@c
    move-object/from16 v1, p0

    #@e
    iput-boolean v0, v1, Ljava/io/StreamTokenizer;->pushedBack:Z

    #@10
    .line 528
    move-object/from16 v0, p0

    #@12
    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@14
    move/from16 v20, v0

    #@16
    return v20

    #@17
    .line 530
    :cond_0
    move-object/from16 v0, p0

    #@19
    iget-object v6, v0, Ljava/io/StreamTokenizer;->ctype:[B

    #@1b
    .line 531
    .local v6, "ct":[B
    const/16 v20, 0x0

    #@1d
    move-object/from16 v0, v20

    #@1f
    move-object/from16 v1, p0

    #@21
    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@23
    .line 533
    move-object/from16 v0, p0

    #@25
    iget v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    #@27
    .line 534
    .local v4, "c":I
    if-gez v4, :cond_1

    #@29
    .line 535
    const v4, 0x7fffffff

    #@2c
    .line 536
    :cond_1
    const v20, 0x7ffffffe

    #@2f
    move/from16 v0, v20

    #@31
    if-ne v4, v0, :cond_3

    #@33
    .line 537
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@36
    move-result v4

    #@37
    .line 538
    if-gez v4, :cond_2

    #@39
    .line 539
    const/16 v20, -0x1

    #@3b
    const/16 v21, -0x1

    #@3d
    move/from16 v0, v21

    #@3f
    move-object/from16 v1, p0

    #@41
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@43
    return v20

    #@44
    .line 540
    :cond_2
    const/16 v20, 0xa

    #@46
    move/from16 v0, v20

    #@48
    if-ne v4, v0, :cond_3

    #@4a
    .line 541
    const v4, 0x7fffffff

    #@4d
    .line 543
    :cond_3
    const v20, 0x7fffffff

    #@50
    move/from16 v0, v20

    #@52
    if-ne v4, v0, :cond_4

    #@54
    .line 544
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@57
    move-result v4

    #@58
    .line 545
    if-gez v4, :cond_4

    #@5a
    .line 546
    const/16 v20, -0x1

    #@5c
    const/16 v21, -0x1

    #@5e
    move/from16 v0, v21

    #@60
    move-object/from16 v1, p0

    #@62
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@64
    return v20

    #@65
    .line 548
    :cond_4
    move-object/from16 v0, p0

    #@67
    iput v4, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@69
    .line 553
    const v20, 0x7fffffff

    #@6c
    move/from16 v0, v20

    #@6e
    move-object/from16 v1, p0

    #@70
    iput v0, v1, Ljava/io/StreamTokenizer;->peekc:I

    #@72
    .line 555
    const/16 v20, 0x100

    #@74
    move/from16 v0, v20

    #@76
    if-ge v4, v0, :cond_5

    #@78
    aget-byte v7, v6, v4

    #@7a
    .line 556
    .local v7, "ctype":I
    :goto_0
    and-int/lit8 v20, v7, 0x1

    #@7c
    if-eqz v20, :cond_c

    #@7e
    .line 557
    const/16 v20, 0xd

    #@80
    move/from16 v0, v20

    #@82
    if-ne v4, v0, :cond_8

    #@84
    .line 558
    move-object/from16 v0, p0

    #@86
    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    #@88
    move/from16 v20, v0

    #@8a
    add-int/lit8 v20, v20, 0x1

    #@8c
    move/from16 v0, v20

    #@8e
    move-object/from16 v1, p0

    #@90
    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    #@92
    .line 559
    move-object/from16 v0, p0

    #@94
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    #@96
    move/from16 v20, v0

    #@98
    if-eqz v20, :cond_6

    #@9a
    .line 560
    const v20, 0x7ffffffe

    #@9d
    move/from16 v0, v20

    #@9f
    move-object/from16 v1, p0

    #@a1
    iput v0, v1, Ljava/io/StreamTokenizer;->peekc:I

    #@a3
    .line 561
    const/16 v20, 0xa

    #@a5
    const/16 v21, 0xa

    #@a7
    move/from16 v0, v21

    #@a9
    move-object/from16 v1, p0

    #@ab
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@ad
    return v20

    #@ae
    .line 555
    .end local v7    # "ctype":I
    :cond_5
    const/4 v7, 0x4

    #@af
    goto :goto_0

    #@b0
    .line 563
    .restart local v7    # "ctype":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@b3
    move-result v4

    #@b4
    .line 564
    const/16 v20, 0xa

    #@b6
    move/from16 v0, v20

    #@b8
    if-ne v4, v0, :cond_7

    #@ba
    .line 565
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@bd
    move-result v4

    #@be
    .line 575
    :cond_7
    :goto_1
    if-gez v4, :cond_a

    #@c0
    .line 576
    const/16 v20, -0x1

    #@c2
    const/16 v21, -0x1

    #@c4
    move/from16 v0, v21

    #@c6
    move-object/from16 v1, p0

    #@c8
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@ca
    return v20

    #@cb
    .line 567
    :cond_8
    const/16 v20, 0xa

    #@cd
    move/from16 v0, v20

    #@cf
    if-ne v4, v0, :cond_9

    #@d1
    .line 568
    move-object/from16 v0, p0

    #@d3
    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    #@d5
    move/from16 v20, v0

    #@d7
    add-int/lit8 v20, v20, 0x1

    #@d9
    move/from16 v0, v20

    #@db
    move-object/from16 v1, p0

    #@dd
    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    #@df
    .line 569
    move-object/from16 v0, p0

    #@e1
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    #@e3
    move/from16 v20, v0

    #@e5
    if-eqz v20, :cond_9

    #@e7
    .line 570
    const/16 v20, 0xa

    #@e9
    const/16 v21, 0xa

    #@eb
    move/from16 v0, v21

    #@ed
    move-object/from16 v1, p0

    #@ef
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@f1
    return v20

    #@f2
    .line 573
    :cond_9
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@f5
    move-result v4

    #@f6
    goto :goto_1

    #@f7
    .line 577
    :cond_a
    const/16 v20, 0x100

    #@f9
    move/from16 v0, v20

    #@fb
    if-ge v4, v0, :cond_b

    #@fd
    aget-byte v7, v6, v4

    #@ff
    :goto_2
    goto/16 :goto_0

    #@101
    :cond_b
    const/4 v7, 0x4

    #@102
    goto :goto_2

    #@103
    .line 580
    :cond_c
    and-int/lit8 v20, v7, 0x2

    #@105
    if-eqz v20, :cond_15

    #@107
    .line 581
    const/4 v15, 0x0

    #@108
    .line 582
    .local v15, "neg":Z
    const/16 v20, 0x2d

    #@10a
    move/from16 v0, v20

    #@10c
    if-ne v4, v0, :cond_f

    #@10e
    .line 583
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@111
    move-result v4

    #@112
    .line 584
    const/16 v20, 0x2e

    #@114
    move/from16 v0, v20

    #@116
    if-eq v4, v0, :cond_e

    #@118
    const/16 v20, 0x30

    #@11a
    move/from16 v0, v20

    #@11c
    if-lt v4, v0, :cond_d

    #@11e
    const/16 v20, 0x39

    #@120
    move/from16 v0, v20

    #@122
    if-le v4, v0, :cond_e

    #@124
    .line 585
    :cond_d
    move-object/from16 v0, p0

    #@126
    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    #@128
    .line 586
    const/16 v20, 0x2d

    #@12a
    move/from16 v0, v20

    #@12c
    move-object/from16 v1, p0

    #@12e
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@130
    const/16 v20, 0x2d

    #@132
    return v20

    #@133
    .line 588
    :cond_e
    const/4 v15, 0x1

    #@134
    .line 590
    :cond_f
    const-wide/16 v18, 0x0

    #@136
    .line 591
    .local v18, "v":D
    const/4 v9, 0x0

    #@137
    .line 592
    .local v9, "decexp":I
    const/16 v17, 0x0

    #@139
    .line 594
    .local v17, "seendot":I
    :goto_3
    const/16 v20, 0x2e

    #@13b
    move/from16 v0, v20

    #@13d
    if-ne v4, v0, :cond_10

    #@13f
    if-nez v17, :cond_10

    #@141
    .line 595
    const/16 v17, 0x1

    #@143
    .line 601
    :goto_4
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@146
    move-result v4

    #@147
    goto :goto_3

    #@148
    .line 596
    :cond_10
    const/16 v20, 0x30

    #@14a
    move/from16 v0, v20

    #@14c
    if-gt v0, v4, :cond_11

    #@14e
    const/16 v20, 0x39

    #@150
    move/from16 v0, v20

    #@152
    if-gt v4, v0, :cond_11

    #@154
    .line 597
    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    #@156
    mul-double v20, v20, v18

    #@158
    add-int/lit8 v22, v4, -0x30

    #@15a
    move/from16 v0, v22

    #@15c
    int-to-double v0, v0

    #@15d
    move-wide/from16 v22, v0

    #@15f
    add-double v18, v20, v22

    #@161
    .line 598
    add-int v9, v9, v17

    #@163
    .line 596
    goto :goto_4

    #@164
    .line 603
    :cond_11
    move-object/from16 v0, p0

    #@166
    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    #@168
    .line 604
    if-eqz v9, :cond_13

    #@16a
    .line 605
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    #@16c
    .line 606
    .local v10, "denom":D
    add-int/lit8 v9, v9, -0x1

    #@16e
    .line 607
    :goto_5
    if-lez v9, :cond_12

    #@170
    .line 608
    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    #@172
    mul-double v10, v10, v20

    #@174
    .line 609
    add-int/lit8 v9, v9, -0x1

    #@176
    goto :goto_5

    #@177
    .line 612
    :cond_12
    div-double v18, v18, v10

    #@179
    .line 614
    .end local v10    # "denom":D
    :cond_13
    if-eqz v15, :cond_14

    #@17b
    move-wide/from16 v0, v18

    #@17d
    neg-double v0, v0

    #@17e
    move-wide/from16 v18, v0

    #@180
    .end local v18    # "v":D
    :cond_14
    move-wide/from16 v0, v18

    #@182
    move-object/from16 v2, p0

    #@184
    iput-wide v0, v2, Ljava/io/StreamTokenizer;->nval:D

    #@186
    .line 615
    const/16 v20, -0x2

    #@188
    const/16 v21, -0x2

    #@18a
    move/from16 v0, v21

    #@18c
    move-object/from16 v1, p0

    #@18e
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@190
    return v20

    #@191
    .line 618
    .end local v9    # "decexp":I
    .end local v15    # "neg":Z
    .end local v17    # "seendot":I
    :cond_15
    and-int/lit8 v20, v7, 0x4

    #@193
    if-eqz v20, :cond_1b

    #@195
    .line 619
    const/4 v13, 0x0

    #@196
    .line 621
    .local v13, "i":I
    :goto_6
    move-object/from16 v0, p0

    #@198
    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    #@19a
    move-object/from16 v20, v0

    #@19c
    move-object/from16 v0, v20

    #@19e
    array-length v0, v0

    #@19f
    move/from16 v20, v0

    #@1a1
    move/from16 v0, v20

    #@1a3
    if-lt v13, v0, :cond_16

    #@1a5
    .line 622
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    #@1a9
    move-object/from16 v20, v0

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    #@1af
    move-object/from16 v21, v0

    #@1b1
    move-object/from16 v0, v21

    #@1b3
    array-length v0, v0

    #@1b4
    move/from16 v21, v0

    #@1b6
    mul-int/lit8 v21, v21, 0x2

    #@1b8
    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->copyOf([CI)[C

    #@1bb
    move-result-object v20

    #@1bc
    move-object/from16 v0, v20

    #@1be
    move-object/from16 v1, p0

    #@1c0
    iput-object v0, v1, Ljava/io/StreamTokenizer;->buf:[C

    #@1c2
    .line 624
    :cond_16
    move-object/from16 v0, p0

    #@1c4
    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    #@1c6
    move-object/from16 v20, v0

    #@1c8
    add-int/lit8 v14, v13, 0x1

    #@1ca
    .end local v13    # "i":I
    .local v14, "i":I
    int-to-char v0, v4

    #@1cb
    move/from16 v21, v0

    #@1cd
    aput-char v21, v20, v13

    #@1cf
    .line 625
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@1d2
    move-result v4

    #@1d3
    .line 626
    if-gez v4, :cond_17

    #@1d5
    const/4 v7, 0x1

    #@1d6
    .line 627
    :goto_7
    and-int/lit8 v20, v7, 0x6

    #@1d8
    if-eqz v20, :cond_19

    #@1da
    move v13, v14

    #@1db
    .end local v14    # "i":I
    .restart local v13    # "i":I
    goto :goto_6

    #@1dc
    .line 626
    .end local v13    # "i":I
    .restart local v14    # "i":I
    :cond_17
    const/16 v20, 0x100

    #@1de
    move/from16 v0, v20

    #@1e0
    if-ge v4, v0, :cond_18

    #@1e2
    aget-byte v7, v6, v4

    #@1e4
    goto :goto_7

    #@1e5
    :cond_18
    const/4 v7, 0x4

    #@1e6
    goto :goto_7

    #@1e7
    .line 628
    :cond_19
    move-object/from16 v0, p0

    #@1e9
    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    #@1eb
    .line 629
    move-object/from16 v0, p0

    #@1ed
    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    #@1ef
    move-object/from16 v20, v0

    #@1f1
    const/16 v21, 0x0

    #@1f3
    move-object/from16 v0, v20

    #@1f5
    move/from16 v1, v21

    #@1f7
    invoke-static {v0, v1, v14}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    #@1fa
    move-result-object v20

    #@1fb
    move-object/from16 v0, v20

    #@1fd
    move-object/from16 v1, p0

    #@1ff
    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@201
    .line 630
    move-object/from16 v0, p0

    #@203
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->forceLower:Z

    #@205
    move/from16 v20, v0

    #@207
    if-eqz v20, :cond_1a

    #@209
    .line 631
    move-object/from16 v0, p0

    #@20b
    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@20d
    move-object/from16 v20, v0

    #@20f
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@212
    move-result-object v20

    #@213
    move-object/from16 v0, v20

    #@215
    move-object/from16 v1, p0

    #@217
    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@219
    .line 632
    :cond_1a
    const/16 v20, -0x3

    #@21b
    const/16 v21, -0x3

    #@21d
    move/from16 v0, v21

    #@21f
    move-object/from16 v1, p0

    #@221
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@223
    return v20

    #@224
    .line 635
    .end local v14    # "i":I
    :cond_1b
    and-int/lit8 v20, v7, 0x8

    #@226
    if-eqz v20, :cond_23

    #@228
    .line 636
    move-object/from16 v0, p0

    #@22a
    iput v4, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@22c
    .line 637
    const/4 v13, 0x0

    #@22d
    .line 642
    .restart local v13    # "i":I
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@230
    move-result v8

    #@231
    .local v8, "d":I
    move v14, v13

    #@232
    .line 643
    .end local v13    # "i":I
    .restart local v14    # "i":I
    :goto_8
    if-ltz v8, :cond_21

    #@234
    move-object/from16 v0, p0

    #@236
    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@238
    move/from16 v20, v0

    #@23a
    move/from16 v0, v20

    #@23c
    if-eq v8, v0, :cond_21

    #@23e
    const/16 v20, 0xa

    #@240
    move/from16 v0, v20

    #@242
    if-eq v8, v0, :cond_21

    #@244
    const/16 v20, 0xd

    #@246
    move/from16 v0, v20

    #@248
    if-eq v8, v0, :cond_21

    #@24a
    .line 644
    const/16 v20, 0x5c

    #@24c
    move/from16 v0, v20

    #@24e
    if-ne v8, v0, :cond_20

    #@250
    .line 645
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@253
    move-result v4

    #@254
    .line 646
    move v12, v4

    #@255
    .line 647
    .local v12, "first":I
    const/16 v20, 0x30

    #@257
    move/from16 v0, v20

    #@259
    if-lt v4, v0, :cond_1f

    #@25b
    const/16 v20, 0x37

    #@25d
    move/from16 v0, v20

    #@25f
    if-gt v4, v0, :cond_1f

    #@261
    .line 648
    add-int/lit8 v4, v4, -0x30

    #@263
    .line 649
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@266
    move-result v5

    #@267
    .line 650
    .local v5, "c2":I
    const/16 v20, 0x30

    #@269
    move/from16 v0, v20

    #@26b
    if-gt v0, v5, :cond_1e

    #@26d
    const/16 v20, 0x37

    #@26f
    move/from16 v0, v20

    #@271
    if-gt v5, v0, :cond_1e

    #@273
    .line 651
    shl-int/lit8 v20, v4, 0x3

    #@275
    add-int/lit8 v21, v5, -0x30

    #@277
    add-int v4, v20, v21

    #@279
    .line 652
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@27c
    move-result v5

    #@27d
    .line 653
    const/16 v20, 0x30

    #@27f
    move/from16 v0, v20

    #@281
    if-gt v0, v5, :cond_1d

    #@283
    const/16 v20, 0x37

    #@285
    move/from16 v0, v20

    #@287
    if-gt v5, v0, :cond_1d

    #@289
    const/16 v20, 0x33

    #@28b
    move/from16 v0, v20

    #@28d
    if-gt v12, v0, :cond_1d

    #@28f
    .line 654
    shl-int/lit8 v20, v4, 0x3

    #@291
    add-int/lit8 v21, v5, -0x30

    #@293
    add-int v4, v20, v21

    #@295
    .line 655
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@298
    move-result v8

    #@299
    .line 690
    .end local v5    # "c2":I
    .end local v12    # "first":I
    :goto_9
    move-object/from16 v0, p0

    #@29b
    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    #@29d
    move-object/from16 v20, v0

    #@29f
    move-object/from16 v0, v20

    #@2a1
    array-length v0, v0

    #@2a2
    move/from16 v20, v0

    #@2a4
    move/from16 v0, v20

    #@2a6
    if-lt v14, v0, :cond_1c

    #@2a8
    .line 691
    move-object/from16 v0, p0

    #@2aa
    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    #@2ac
    move-object/from16 v20, v0

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    #@2b2
    move-object/from16 v21, v0

    #@2b4
    move-object/from16 v0, v21

    #@2b6
    array-length v0, v0

    #@2b7
    move/from16 v21, v0

    #@2b9
    mul-int/lit8 v21, v21, 0x2

    #@2bb
    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->copyOf([CI)[C

    #@2be
    move-result-object v20

    #@2bf
    move-object/from16 v0, v20

    #@2c1
    move-object/from16 v1, p0

    #@2c3
    iput-object v0, v1, Ljava/io/StreamTokenizer;->buf:[C

    #@2c5
    .line 693
    :cond_1c
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    #@2c9
    move-object/from16 v20, v0

    #@2cb
    add-int/lit8 v13, v14, 0x1

    #@2cd
    .end local v14    # "i":I
    .restart local v13    # "i":I
    int-to-char v0, v4

    #@2ce
    move/from16 v21, v0

    #@2d0
    aput-char v21, v20, v14

    #@2d2
    move v14, v13

    #@2d3
    .end local v13    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_8

    #@2d5
    .line 657
    .restart local v5    # "c2":I
    .restart local v12    # "first":I
    :cond_1d
    move v8, v5

    #@2d6
    goto :goto_9

    #@2d7
    .line 659
    :cond_1e
    move v8, v5

    #@2d8
    goto :goto_9

    #@2d9
    .line 661
    .end local v5    # "c2":I
    :cond_1f
    sparse-switch v4, :sswitch_data_0

    #@2dc
    .line 684
    :goto_a
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@2df
    move-result v8

    #@2e0
    goto :goto_9

    #@2e1
    .line 663
    :sswitch_0
    const/4 v4, 0x7

    #@2e2
    .line 664
    goto :goto_a

    #@2e3
    .line 666
    :sswitch_1
    const/16 v4, 0x8

    #@2e5
    .line 667
    goto :goto_a

    #@2e6
    .line 669
    :sswitch_2
    const/16 v4, 0xc

    #@2e8
    .line 670
    goto :goto_a

    #@2e9
    .line 672
    :sswitch_3
    const/16 v4, 0xa

    #@2eb
    .line 673
    goto :goto_a

    #@2ec
    .line 675
    :sswitch_4
    const/16 v4, 0xd

    #@2ee
    .line 676
    goto :goto_a

    #@2ef
    .line 678
    :sswitch_5
    const/16 v4, 0x9

    #@2f1
    .line 679
    goto :goto_a

    #@2f2
    .line 681
    :sswitch_6
    const/16 v4, 0xb

    #@2f4
    .line 682
    goto :goto_a

    #@2f5
    .line 687
    .end local v12    # "first":I
    :cond_20
    move v4, v8

    #@2f6
    .line 688
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@2f9
    move-result v8

    #@2fa
    goto :goto_9

    #@2fb
    .line 700
    :cond_21
    move-object/from16 v0, p0

    #@2fd
    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@2ff
    move/from16 v20, v0

    #@301
    move/from16 v0, v20

    #@303
    if-ne v8, v0, :cond_22

    #@305
    const v8, 0x7fffffff

    #@308
    .end local v8    # "d":I
    :cond_22
    move-object/from16 v0, p0

    #@30a
    iput v8, v0, Ljava/io/StreamTokenizer;->peekc:I

    #@30c
    .line 702
    move-object/from16 v0, p0

    #@30e
    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    #@310
    move-object/from16 v20, v0

    #@312
    const/16 v21, 0x0

    #@314
    move-object/from16 v0, v20

    #@316
    move/from16 v1, v21

    #@318
    invoke-static {v0, v1, v14}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    #@31b
    move-result-object v20

    #@31c
    move-object/from16 v0, v20

    #@31e
    move-object/from16 v1, p0

    #@320
    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@322
    .line 703
    move-object/from16 v0, p0

    #@324
    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@326
    move/from16 v20, v0

    #@328
    return v20

    #@329
    .line 706
    .end local v14    # "i":I
    :cond_23
    const/16 v20, 0x2f

    #@32b
    move/from16 v0, v20

    #@32d
    if-ne v4, v0, :cond_31

    #@32f
    move-object/from16 v0, p0

    #@331
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    #@333
    move/from16 v20, v0

    #@335
    if-nez v20, :cond_24

    #@337
    move-object/from16 v0, p0

    #@339
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    #@33b
    move/from16 v20, v0

    #@33d
    if-eqz v20, :cond_31

    #@33f
    .line 707
    :cond_24
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@342
    move-result v4

    #@343
    .line 708
    const/16 v20, 0x2a

    #@345
    move/from16 v0, v20

    #@347
    if-ne v4, v0, :cond_2a

    #@349
    move-object/from16 v0, p0

    #@34b
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    #@34d
    move/from16 v20, v0

    #@34f
    if-eqz v20, :cond_2a

    #@351
    .line 709
    const/16 v16, 0x0

    #@353
    .line 710
    .local v16, "prevc":I
    :goto_b
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@356
    move-result v4

    #@357
    const/16 v20, 0x2f

    #@359
    move/from16 v0, v20

    #@35b
    if-ne v4, v0, :cond_25

    #@35d
    const/16 v20, 0x2a

    #@35f
    move/from16 v0, v16

    #@361
    move/from16 v1, v20

    #@363
    if-eq v0, v1, :cond_29

    #@365
    .line 711
    :cond_25
    const/16 v20, 0xd

    #@367
    move/from16 v0, v20

    #@369
    if-ne v4, v0, :cond_27

    #@36b
    .line 712
    move-object/from16 v0, p0

    #@36d
    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    #@36f
    move/from16 v20, v0

    #@371
    add-int/lit8 v20, v20, 0x1

    #@373
    move/from16 v0, v20

    #@375
    move-object/from16 v1, p0

    #@377
    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    #@379
    .line 713
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@37c
    move-result v4

    #@37d
    .line 714
    const/16 v20, 0xa

    #@37f
    move/from16 v0, v20

    #@381
    if-ne v4, v0, :cond_26

    #@383
    .line 715
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@386
    move-result v4

    #@387
    .line 723
    :cond_26
    :goto_c
    if-gez v4, :cond_28

    #@389
    .line 724
    const/16 v20, -0x1

    #@38b
    const/16 v21, -0x1

    #@38d
    move/from16 v0, v21

    #@38f
    move-object/from16 v1, p0

    #@391
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@393
    return v20

    #@394
    .line 718
    :cond_27
    const/16 v20, 0xa

    #@396
    move/from16 v0, v20

    #@398
    if-ne v4, v0, :cond_26

    #@39a
    .line 719
    move-object/from16 v0, p0

    #@39c
    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    #@39e
    move/from16 v20, v0

    #@3a0
    add-int/lit8 v20, v20, 0x1

    #@3a2
    move/from16 v0, v20

    #@3a4
    move-object/from16 v1, p0

    #@3a6
    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    #@3a8
    .line 720
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@3ab
    move-result v4

    #@3ac
    goto :goto_c

    #@3ad
    .line 725
    :cond_28
    move/from16 v16, v4

    #@3af
    goto :goto_b

    #@3b0
    .line 727
    :cond_29
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    #@3b3
    move-result v20

    #@3b4
    return v20

    #@3b5
    .line 728
    .end local v16    # "prevc":I
    :cond_2a
    const/16 v20, 0x2f

    #@3b7
    move/from16 v0, v20

    #@3b9
    if-ne v4, v0, :cond_2d

    #@3bb
    move-object/from16 v0, p0

    #@3bd
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    #@3bf
    move/from16 v20, v0

    #@3c1
    if-eqz v20, :cond_2d

    #@3c3
    .line 729
    :cond_2b
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@3c6
    move-result v4

    #@3c7
    const/16 v20, 0xa

    #@3c9
    move/from16 v0, v20

    #@3cb
    if-eq v4, v0, :cond_2c

    #@3cd
    const/16 v20, 0xd

    #@3cf
    move/from16 v0, v20

    #@3d1
    if-eq v4, v0, :cond_2c

    #@3d3
    if-gez v4, :cond_2b

    #@3d5
    .line 730
    :cond_2c
    move-object/from16 v0, p0

    #@3d7
    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    #@3d9
    .line 731
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    #@3dc
    move-result v20

    #@3dd
    return v20

    #@3de
    .line 734
    :cond_2d
    const/16 v20, 0x2f

    #@3e0
    aget-byte v20, v6, v20

    #@3e2
    and-int/lit8 v20, v20, 0x10

    #@3e4
    if-eqz v20, :cond_30

    #@3e6
    .line 735
    :cond_2e
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@3e9
    move-result v4

    #@3ea
    const/16 v20, 0xa

    #@3ec
    move/from16 v0, v20

    #@3ee
    if-eq v4, v0, :cond_2f

    #@3f0
    const/16 v20, 0xd

    #@3f2
    move/from16 v0, v20

    #@3f4
    if-eq v4, v0, :cond_2f

    #@3f6
    if-gez v4, :cond_2e

    #@3f8
    .line 736
    :cond_2f
    move-object/from16 v0, p0

    #@3fa
    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    #@3fc
    .line 737
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    #@3ff
    move-result v20

    #@400
    return v20

    #@401
    .line 739
    :cond_30
    move-object/from16 v0, p0

    #@403
    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    #@405
    .line 740
    const/16 v20, 0x2f

    #@407
    move/from16 v0, v20

    #@409
    move-object/from16 v1, p0

    #@40b
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@40d
    const/16 v20, 0x2f

    #@40f
    return v20

    #@410
    .line 745
    :cond_31
    and-int/lit8 v20, v7, 0x10

    #@412
    if-eqz v20, :cond_34

    #@414
    .line 746
    :cond_32
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@417
    move-result v4

    #@418
    const/16 v20, 0xa

    #@41a
    move/from16 v0, v20

    #@41c
    if-eq v4, v0, :cond_33

    #@41e
    const/16 v20, 0xd

    #@420
    move/from16 v0, v20

    #@422
    if-eq v4, v0, :cond_33

    #@424
    if-gez v4, :cond_32

    #@426
    .line 747
    :cond_33
    move-object/from16 v0, p0

    #@428
    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    #@42a
    .line 748
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    #@42d
    move-result v20

    #@42e
    return v20

    #@42f
    .line 751
    :cond_34
    move-object/from16 v0, p0

    #@431
    iput v4, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@433
    return v4

    #@434
    .line 661
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method public ordinaryChar(I)V
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 342
    if-ltz p1, :cond_0

    #@3
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@5
    array-length v0, v0

    #@6
    if-ge p1, v0, :cond_0

    #@8
    .line 343
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@a
    aput-byte v1, v0, p1

    #@c
    .line 341
    :cond_0
    return-void
.end method

.method public ordinaryChars(II)V
    .locals 3
    .param p1, "low"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 316
    if-gez p1, :cond_0

    #@3
    .line 317
    const/4 p1, 0x0

    #@4
    .line 318
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@6
    array-length v1, v1

    #@7
    if-lt p2, v1, :cond_1

    #@9
    .line 319
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@b
    array-length v1, v1

    #@c
    add-int/lit8 p2, v1, -0x1

    #@e
    move v0, p1

    #@f
    .line 320
    .end local p1    # "low":I
    .local v0, "low":I
    :goto_0
    if-gt v0, p2, :cond_2

    #@11
    .line 321
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@13
    add-int/lit8 p1, v0, 0x1

    #@15
    .end local v0    # "low":I
    .restart local p1    # "low":I
    aput-byte v2, v1, v0

    #@17
    :cond_1
    move v0, p1

    #@18
    .end local p1    # "low":I
    .restart local v0    # "low":I
    goto :goto_0

    #@19
    .line 315
    :cond_2
    return-void
.end method

.method public parseNumbers()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x2e

    #@2
    const/16 v3, 0x2d

    #@4
    .line 410
    const/16 v0, 0x30

    #@6
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    #@8
    if-gt v0, v1, :cond_0

    #@a
    .line 411
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@c
    aget-byte v2, v1, v0

    #@e
    or-int/lit8 v2, v2, 0x2

    #@10
    int-to-byte v2, v2

    #@11
    aput-byte v2, v1, v0

    #@13
    .line 410
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 412
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@18
    aget-byte v2, v1, v4

    #@1a
    or-int/lit8 v2, v2, 0x2

    #@1c
    int-to-byte v2, v2

    #@1d
    aput-byte v2, v1, v4

    #@1f
    .line 413
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@21
    aget-byte v2, v1, v3

    #@23
    or-int/lit8 v2, v2, 0x2

    #@25
    int-to-byte v2, v2

    #@26
    aput-byte v2, v1, v3

    #@28
    .line 409
    return-void
.end method

.method public pushBack()V
    .locals 2

    #@0
    .prologue
    .line 766
    iget v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@2
    const/4 v1, -0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 767
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->pushedBack:Z

    #@8
    .line 765
    :cond_0
    return-void
.end method

.method public quoteChar(I)V
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 385
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 386
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@9
    const/16 v1, 0x8

    #@b
    aput-byte v1, v0, p1

    #@d
    .line 384
    :cond_0
    return-void
.end method

.method public resetSyntax()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 261
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@3
    array-length v0, v1

    #@4
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 262
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@a
    aput-byte v2, v1, v0

    #@c
    goto :goto_0

    #@d
    .line 260
    :cond_0
    return-void
.end method

.method public slashSlashComments(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 473
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    #@2
    .line 472
    return-void
.end method

.method public slashStarComments(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 456
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    #@2
    .line 455
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x27

    #@2
    const/4 v4, 0x0

    #@3
    .line 795
    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@5
    sparse-switch v2, :sswitch_data_0

    #@8
    .line 818
    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@a
    const/16 v3, 0x100

    #@c
    if-ge v2, v3, :cond_0

    #@e
    .line 819
    iget-object v2, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@10
    iget v3, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@12
    aget-byte v2, v2, v3

    #@14
    and-int/lit8 v2, v2, 0x8

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 820
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@1a
    .line 831
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Token["

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "], line "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    iget v3, p0, Ljava/io/StreamTokenizer;->LINENO:I

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2

    #@3c
    .line 797
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "EOF"

    #@3f
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    #@40
    .line 800
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "EOL"

    #@43
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    #@44
    .line 803
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_2
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@46
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    #@47
    .line 806
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v3, "n="

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    iget-wide v4, p0, Ljava/io/StreamTokenizer;->nval:D

    #@55
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    #@5e
    .line 809
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "NOTHING"

    #@61
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    #@62
    .line 824
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x3

    #@63
    new-array v1, v2, [C

    #@65
    .line 825
    .local v1, "s":[C
    const/4 v2, 0x2

    #@66
    aput-char v5, v1, v2

    #@68
    aput-char v5, v1, v4

    #@6a
    .line 826
    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@6c
    int-to-char v2, v2

    #@6d
    const/4 v3, 0x1

    #@6e
    aput-char v2, v1, v3

    #@70
    .line 827
    new-instance v0, Ljava/lang/String;

    #@72
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@75
    .line 828
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    #@76
    .line 795
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public whitespaceChars(II)V
    .locals 3
    .param p1, "low"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    .line 296
    if-gez p1, :cond_0

    #@2
    .line 297
    const/4 p1, 0x0

    #@3
    .line 298
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@5
    array-length v1, v1

    #@6
    if-lt p2, v1, :cond_1

    #@8
    .line 299
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@a
    array-length v1, v1

    #@b
    add-int/lit8 p2, v1, -0x1

    #@d
    move v0, p1

    #@e
    .line 300
    .end local p1    # "low":I
    .local v0, "low":I
    :goto_0
    if-gt v0, p2, :cond_2

    #@10
    .line 301
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@12
    add-int/lit8 p1, v0, 0x1

    #@14
    .end local v0    # "low":I
    .restart local p1    # "low":I
    const/4 v2, 0x1

    #@15
    aput-byte v2, v1, v0

    #@17
    :cond_1
    move v0, p1

    #@18
    .end local p1    # "low":I
    .restart local v0    # "low":I
    goto :goto_0

    #@19
    .line 295
    :cond_2
    return-void
.end method

.method public wordChars(II)V
    .locals 3
    .param p1, "low"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    .line 275
    if-gez p1, :cond_0

    #@2
    .line 276
    const/4 p1, 0x0

    #@3
    .line 277
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@5
    array-length v1, v1

    #@6
    if-lt p2, v1, :cond_1

    #@8
    .line 278
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@a
    array-length v1, v1

    #@b
    add-int/lit8 p2, v1, -0x1

    #@d
    move v0, p1

    #@e
    .line 279
    .end local p1    # "low":I
    .local v0, "low":I
    :goto_0
    if-gt v0, p2, :cond_2

    #@10
    .line 280
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    #@12
    add-int/lit8 p1, v0, 0x1

    #@14
    .end local v0    # "low":I
    .restart local p1    # "low":I
    aget-byte v2, v1, v0

    #@16
    or-int/lit8 v2, v2, 0x4

    #@18
    int-to-byte v2, v2

    #@19
    aput-byte v2, v1, v0

    #@1b
    :cond_1
    move v0, p1

    #@1c
    .end local p1    # "low":I
    .restart local v0    # "low":I
    goto :goto_0

    #@1d
    .line 274
    :cond_2
    return-void
.end method
