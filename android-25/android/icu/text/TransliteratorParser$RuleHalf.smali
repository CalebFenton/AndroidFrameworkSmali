.class Landroid/icu/text/TransliteratorParser$RuleHalf;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleHalf"
.end annotation


# instance fields
.field public anchorEnd:Z

.field public anchorStart:Z

.field public ante:I

.field public cursor:I

.field public cursorOffset:I

.field private cursorOffsetPos:I

.field private nextSegmentNumber:I

.field public post:I

.field public text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 369
    iput v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@7
    .line 370
    iput v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@9
    .line 371
    iput v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@b
    .line 382
    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@d
    .line 386
    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    #@f
    .line 388
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    #@11
    .line 389
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    #@13
    .line 395
    const/4 v0, 0x1

    #@14
    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    #@16
    .line 365
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/TransliteratorParser$RuleHalf;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>()V

    #@3
    return-void
.end method

.method private parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I
    .locals 37
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "parser"    # Landroid/icu/text/TransliteratorParser;
    .param p5, "buf"    # Ljava/lang/StringBuffer;
    .param p6, "illegal"    # Landroid/icu/text/UnicodeSet;
    .param p7, "isSegment"    # Z

    #@0
    .prologue
    .line 445
    move/from16 v33, p2

    #@2
    .line 446
    .local v33, "start":I
    const/16 v25, 0x0

    #@4
    .line 447
    .local v25, "pp":Ljava/text/ParsePosition;
    const/16 v28, -0x1

    #@6
    .line 448
    .local v28, "quoteStart":I
    const/16 v27, -0x1

    #@8
    .line 449
    .local v27, "quoteLimit":I
    const/16 v36, -0x1

    #@a
    .line 450
    .local v36, "varStart":I
    const/16 v35, -0x1

    #@c
    .line 451
    .local v35, "varLimit":I
    const/4 v4, 0x1

    #@d
    new-array v0, v4, [I

    #@f
    move-object/from16 v17, v0

    #@11
    .line 452
    .local v17, "iref":[I
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@14
    move-result v12

    #@15
    .local v12, "bufStart":I
    move/from16 v23, p2

    #@17
    .line 455
    .end local v25    # "pp":Ljava/text/ParsePosition;
    .end local p2    # "pos":I
    .local v23, "pos":I
    :goto_0
    move/from16 v0, v23

    #@19
    move/from16 v1, p3

    #@1b
    if-ge v0, v1, :cond_2b

    #@1d
    .line 458
    add-int/lit8 p2, v23, 0x1

    #@1f
    .end local v23    # "pos":I
    .restart local p2    # "pos":I
    move-object/from16 v0, p1

    #@21
    move/from16 v1, v23

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v13

    #@27
    .line 459
    .local v13, "c":C
    invoke-static {v13}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_0

    #@2d
    move/from16 v23, p2

    #@2f
    .line 460
    .end local p2    # "pos":I
    .restart local v23    # "pos":I
    goto :goto_0

    #@30
    .line 463
    .end local v23    # "pos":I
    .restart local p2    # "pos":I
    :cond_0
    const-string/jumbo v4, "=><\u2190\u2192\u2194;"

    #@33
    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(I)I

    #@36
    move-result v4

    #@37
    if-ltz v4, :cond_2

    #@39
    .line 466
    if-eqz p7, :cond_1

    #@3b
    .line 467
    const-string/jumbo v4, "Unclosed segment"

    #@3e
    move-object/from16 v0, p1

    #@40
    move/from16 v1, v33

    #@42
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@45
    .line 809
    .end local v13    # "c":C
    :cond_1
    :goto_1
    :sswitch_0
    return p2

    #@46
    .line 472
    .restart local v13    # "c":C
    :cond_2
    move-object/from16 v0, p0

    #@48
    iget-boolean v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    #@4a
    if-eqz v4, :cond_3

    #@4c
    .line 474
    const-string/jumbo v4, "Malformed variable reference"

    #@4f
    move-object/from16 v0, p1

    #@51
    move/from16 v1, v33

    #@53
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@56
    .line 476
    :cond_3
    add-int/lit8 v4, p2, -0x1

    #@58
    move-object/from16 v0, p1

    #@5a
    invoke-static {v0, v4}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_5

    #@60
    .line 477
    if-nez v25, :cond_4

    #@62
    .line 478
    new-instance v25, Ljava/text/ParsePosition;

    #@64
    const/4 v4, 0x0

    #@65
    move-object/from16 v0, v25

    #@67
    invoke-direct {v0, v4}, Ljava/text/ParsePosition;-><init>(I)V

    #@6a
    .line 480
    :cond_4
    add-int/lit8 v4, p2, -0x1

    #@6c
    move-object/from16 v0, v25

    #@6e
    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    #@71
    .line 481
    move-object/from16 v0, p4

    #@73
    move-object/from16 v1, p1

    #@75
    move-object/from16 v2, v25

    #@77
    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->-wrap0(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/text/ParsePosition;)C

    #@7a
    move-result v4

    #@7b
    move-object/from16 v0, p5

    #@7d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@80
    .line 482
    invoke-virtual/range {v25 .. v25}, Ljava/text/ParsePosition;->getIndex()I

    #@83
    move-result p2

    #@84
    move/from16 v23, p2

    #@86
    .line 483
    .end local p2    # "pos":I
    .restart local v23    # "pos":I
    goto :goto_0

    #@87
    .line 486
    .end local v23    # "pos":I
    .restart local p2    # "pos":I
    :cond_5
    const/16 v4, 0x5c

    #@89
    if-ne v13, v4, :cond_8

    #@8b
    .line 487
    move/from16 v0, p2

    #@8d
    move/from16 v1, p3

    #@8f
    if-ne v0, v1, :cond_6

    #@91
    .line 488
    const-string/jumbo v4, "Trailing backslash"

    #@94
    move-object/from16 v0, p1

    #@96
    move/from16 v1, v33

    #@98
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@9b
    .line 490
    :cond_6
    const/4 v4, 0x0

    #@9c
    aput p2, v17, v4

    #@9e
    .line 491
    move-object/from16 v0, p1

    #@a0
    move-object/from16 v1, v17

    #@a2
    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    #@a5
    move-result v15

    #@a6
    .line 492
    .local v15, "escaped":I
    const/4 v4, 0x0

    #@a7
    aget p2, v17, v4

    #@a9
    .line 493
    const/4 v4, -0x1

    #@aa
    if-ne v15, v4, :cond_7

    #@ac
    .line 494
    const-string/jumbo v4, "Malformed escape"

    #@af
    move-object/from16 v0, p1

    #@b1
    move/from16 v1, v33

    #@b3
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@b6
    .line 496
    :cond_7
    move-object/from16 v0, p4

    #@b8
    move-object/from16 v1, p1

    #@ba
    move/from16 v2, v33

    #@bc
    invoke-static {v0, v15, v1, v2}, Landroid/icu/text/TransliteratorParser;->-wrap2(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    #@bf
    .line 497
    move-object/from16 v0, p5

    #@c1
    invoke-static {v0, v15}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@c4
    move/from16 v23, p2

    #@c6
    .line 498
    .end local p2    # "pos":I
    .restart local v23    # "pos":I
    goto/16 :goto_0

    #@c8
    .line 501
    .end local v15    # "escaped":I
    .end local v23    # "pos":I
    .restart local p2    # "pos":I
    :cond_8
    const/16 v4, 0x27

    #@ca
    if-ne v13, v4, :cond_d

    #@cc
    .line 502
    const/16 v4, 0x27

    #@ce
    move-object/from16 v0, p1

    #@d0
    move/from16 v1, p2

    #@d2
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    #@d5
    move-result v16

    #@d6
    .line 503
    .local v16, "iq":I
    move/from16 v0, v16

    #@d8
    move/from16 v1, p2

    #@da
    if-ne v0, v1, :cond_a

    #@dc
    .line 504
    move-object/from16 v0, p5

    #@de
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@e1
    .line 505
    add-int/lit8 p2, p2, 0x1

    #@e3
    :cond_9
    move/from16 v23, p2

    #@e5
    .line 534
    .end local p2    # "pos":I
    .restart local v23    # "pos":I
    goto/16 :goto_0

    #@e7
    .line 513
    .end local v23    # "pos":I
    .restart local p2    # "pos":I
    :cond_a
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@ea
    move-result v28

    #@eb
    .line 515
    :goto_2
    if-gez v16, :cond_b

    #@ed
    .line 516
    const-string/jumbo v4, "Unterminated quote"

    #@f0
    move-object/from16 v0, p1

    #@f2
    move/from16 v1, v33

    #@f4
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@f7
    .line 518
    :cond_b
    move-object/from16 v0, p1

    #@f9
    move/from16 v1, p2

    #@fb
    move/from16 v2, v16

    #@fd
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@100
    move-result-object v4

    #@101
    move-object/from16 v0, p5

    #@103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@106
    .line 519
    add-int/lit8 p2, v16, 0x1

    #@108
    .line 520
    move/from16 v0, p2

    #@10a
    move/from16 v1, p3

    #@10c
    if-ge v0, v1, :cond_c

    #@10e
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    #@111
    move-result v4

    #@112
    const/16 v7, 0x27

    #@114
    if-ne v4, v7, :cond_c

    #@116
    .line 522
    const/16 v4, 0x27

    #@118
    add-int/lit8 v7, p2, 0x1

    #@11a
    move-object/from16 v0, p1

    #@11c
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(II)I

    #@11f
    move-result v16

    #@120
    goto :goto_2

    #@121
    .line 528
    :cond_c
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@124
    move-result v27

    #@125
    .line 530
    move/from16 v16, v28

    #@127
    :goto_3
    move/from16 v0, v16

    #@129
    move/from16 v1, v27

    #@12b
    if-ge v0, v1, :cond_9

    #@12d
    .line 531
    move-object/from16 v0, p5

    #@12f
    move/from16 v1, v16

    #@131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@134
    move-result v4

    #@135
    move-object/from16 v0, p4

    #@137
    move-object/from16 v1, p1

    #@139
    move/from16 v2, v33

    #@13b
    invoke-static {v0, v4, v1, v2}, Landroid/icu/text/TransliteratorParser;->-wrap2(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    #@13e
    .line 530
    add-int/lit8 v16, v16, 0x1

    #@140
    goto :goto_3

    #@141
    .line 537
    .end local v16    # "iq":I
    :cond_d
    move-object/from16 v0, p4

    #@143
    move-object/from16 v1, p1

    #@145
    move/from16 v2, v33

    #@147
    invoke-static {v0, v13, v1, v2}, Landroid/icu/text/TransliteratorParser;->-wrap2(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    #@14a
    .line 539
    move-object/from16 v0, p6

    #@14c
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@14f
    move-result v4

    #@150
    if-eqz v4, :cond_e

    #@152
    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    #@154
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@157
    const-string/jumbo v7, "Illegal character \'"

    #@15a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v4

    #@15e
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@161
    move-result-object v4

    #@162
    const/16 v7, 0x27

    #@164
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@167
    move-result-object v4

    #@168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v4

    #@16c
    move-object/from16 v0, p1

    #@16e
    move/from16 v1, v33

    #@170
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@173
    .line 543
    :cond_e
    sparse-switch v13, :sswitch_data_0

    #@176
    .line 799
    const/16 v4, 0x21

    #@178
    if-lt v13, v4, :cond_12

    #@17a
    const/16 v4, 0x7e

    #@17c
    if-gt v13, v4, :cond_12

    #@17e
    .line 800
    const/16 v4, 0x30

    #@180
    if-lt v13, v4, :cond_f

    #@182
    const/16 v4, 0x39

    #@184
    if-le v13, v4, :cond_12

    #@186
    .line 801
    :cond_f
    const/16 v4, 0x41

    #@188
    if-lt v13, v4, :cond_10

    #@18a
    const/16 v4, 0x5a

    #@18c
    if-le v13, v4, :cond_12

    #@18e
    .line 802
    :cond_10
    const/16 v4, 0x61

    #@190
    if-lt v13, v4, :cond_11

    #@192
    const/16 v4, 0x7a

    #@194
    if-le v13, v4, :cond_12

    #@196
    .line 803
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    #@198
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19b
    const-string/jumbo v7, "Unquoted "

    #@19e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v4

    #@1a2
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v4

    #@1a6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v4

    #@1aa
    move-object/from16 v0, p1

    #@1ac
    move/from16 v1, v33

    #@1ae
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@1b1
    .line 805
    :cond_12
    move-object/from16 v0, p5

    #@1b3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1b6
    :goto_4
    move/from16 v23, p2

    #@1b8
    .end local p2    # "pos":I
    .restart local v23    # "pos":I
    goto/16 :goto_0

    #@1ba
    .line 549
    .end local v23    # "pos":I
    .restart local p2    # "pos":I
    :sswitch_1
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@1bd
    move-result v4

    #@1be
    if-nez v4, :cond_13

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iget-boolean v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    #@1c4
    if-eqz v4, :cond_14

    #@1c6
    .line 552
    :cond_13
    const-string/jumbo v4, "Misplaced anchor start"

    #@1c9
    move-object/from16 v0, p1

    #@1cb
    move/from16 v1, v33

    #@1cd
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@1d0
    goto :goto_4

    #@1d1
    .line 550
    :cond_14
    const/4 v4, 0x1

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    iput-boolean v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    #@1d6
    goto :goto_4

    #@1d7
    .line 560
    :sswitch_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@1da
    move-result v11

    #@1db
    .line 565
    .local v11, "bufSegStart":I
    move-object/from16 v0, p0

    #@1dd
    iget v0, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    #@1df
    move/from16 v31, v0

    #@1e1
    add-int/lit8 v4, v31, 0x1

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    #@1e7
    .line 568
    .local v31, "segmentNumber":I
    invoke-static {}, Landroid/icu/text/TransliteratorParser;->-get1()Landroid/icu/text/UnicodeSet;

    #@1ea
    move-result-object v9

    #@1eb
    const/4 v10, 0x1

    #@1ec
    move-object/from16 v3, p0

    #@1ee
    move-object/from16 v4, p1

    #@1f0
    move/from16 v5, p2

    #@1f2
    move/from16 v6, p3

    #@1f4
    move-object/from16 v7, p4

    #@1f6
    move-object/from16 v8, p5

    #@1f8
    invoke-direct/range {v3 .. v10}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I

    #@1fb
    move-result p2

    #@1fc
    .line 575
    new-instance v18, Landroid/icu/text/StringMatcher;

    #@1fe
    move-object/from16 v0, p5

    #@200
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    #@203
    move-result-object v4

    #@204
    .line 576
    invoke-static/range {p4 .. p4}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    #@207
    move-result-object v7

    #@208
    .line 575
    move-object/from16 v0, v18

    #@20a
    move/from16 v1, v31

    #@20c
    invoke-direct {v0, v4, v1, v7}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    #@20f
    .line 579
    .local v18, "m":Landroid/icu/text/StringMatcher;
    move-object/from16 v0, p4

    #@211
    move/from16 v1, v31

    #@213
    move-object/from16 v2, v18

    #@215
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->setSegmentObject(ILandroid/icu/text/StringMatcher;)V

    #@218
    .line 580
    move-object/from16 v0, p5

    #@21a
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    #@21d
    .line 581
    move-object/from16 v0, p4

    #@21f
    move/from16 v1, v31

    #@221
    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    #@224
    move-result v4

    #@225
    move-object/from16 v0, p5

    #@227
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22a
    goto :goto_4

    #@22b
    .line 587
    .end local v11    # "bufSegStart":I
    .end local v18    # "m":Landroid/icu/text/StringMatcher;
    .end local v31    # "segmentNumber":I
    :sswitch_3
    const/4 v4, 0x0

    #@22c
    aput p2, v17, v4

    #@22e
    .line 588
    move-object/from16 v0, p1

    #@230
    move-object/from16 v1, v17

    #@232
    invoke-static {v0, v1}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@235
    move-result-object v32

    #@236
    .line 590
    .local v32, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    if-eqz v32, :cond_16

    #@238
    .line 591
    const/16 v4, 0x28

    #@23a
    move-object/from16 v0, p1

    #@23c
    move-object/from16 v1, v17

    #@23e
    invoke-static {v0, v1, v4}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@241
    move-result v4

    #@242
    if-eqz v4, :cond_16

    #@244
    .line 595
    :goto_5
    invoke-virtual/range {v32 .. v32}, Landroid/icu/text/TransliteratorIDParser$SingleID;->getInstance()Landroid/icu/text/Transliterator;

    #@247
    move-result-object v34

    #@248
    .line 596
    .local v34, "t":Landroid/icu/text/Transliterator;
    if-nez v34, :cond_15

    #@24a
    .line 597
    const-string/jumbo v4, "Invalid function ID"

    #@24d
    move-object/from16 v0, p1

    #@24f
    move/from16 v1, v33

    #@251
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@254
    .line 602
    :cond_15
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@257
    move-result v11

    #@258
    .line 605
    .restart local v11    # "bufSegStart":I
    const/4 v4, 0x0

    #@259
    aget v5, v17, v4

    #@25b
    invoke-static {}, Landroid/icu/text/TransliteratorParser;->-get0()Landroid/icu/text/UnicodeSet;

    #@25e
    move-result-object v9

    #@25f
    const/4 v10, 0x1

    #@260
    move-object/from16 v3, p0

    #@262
    move-object/from16 v4, p1

    #@264
    move/from16 v6, p3

    #@266
    move-object/from16 v7, p4

    #@268
    move-object/from16 v8, p5

    #@26a
    invoke-direct/range {v3 .. v10}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I

    #@26d
    move-result p2

    #@26e
    .line 610
    new-instance v30, Landroid/icu/text/FunctionReplacer;

    #@270
    .line 611
    new-instance v4, Landroid/icu/text/StringReplacer;

    #@272
    move-object/from16 v0, p5

    #@274
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    #@277
    move-result-object v7

    #@278
    invoke-static/range {p4 .. p4}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    #@27b
    move-result-object v8

    #@27c
    invoke-direct {v4, v7, v8}, Landroid/icu/text/StringReplacer;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;)V

    #@27f
    .line 610
    move-object/from16 v0, v30

    #@281
    move-object/from16 v1, v34

    #@283
    invoke-direct {v0, v1, v4}, Landroid/icu/text/FunctionReplacer;-><init>(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeReplacer;)V

    #@286
    .line 614
    .local v30, "r":Landroid/icu/text/FunctionReplacer;
    move-object/from16 v0, p5

    #@288
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    #@28b
    .line 615
    move-object/from16 v0, p4

    #@28d
    move-object/from16 v1, v30

    #@28f
    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    #@292
    move-result v4

    #@293
    move-object/from16 v0, p5

    #@295
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@298
    goto/16 :goto_4

    #@29a
    .line 592
    .end local v11    # "bufSegStart":I
    .end local v30    # "r":Landroid/icu/text/FunctionReplacer;
    .end local v34    # "t":Landroid/icu/text/Transliterator;
    :cond_16
    const-string/jumbo v4, "Invalid function"

    #@29d
    move-object/from16 v0, p1

    #@29f
    move/from16 v1, v33

    #@2a1
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@2a4
    goto :goto_5

    #@2a5
    .line 625
    .end local v32    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :sswitch_4
    move/from16 v0, p2

    #@2a7
    move/from16 v1, p3

    #@2a9
    if-ne v0, v1, :cond_17

    #@2ab
    .line 628
    const/4 v4, 0x1

    #@2ac
    move-object/from16 v0, p0

    #@2ae
    iput-boolean v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    #@2b0
    goto/16 :goto_4

    #@2b2
    .line 632
    :cond_17
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    #@2b5
    move-result v13

    #@2b6
    .line 633
    const/16 v4, 0xa

    #@2b8
    invoke-static {v13, v4}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@2bb
    move-result v29

    #@2bc
    .line 634
    .local v29, "r":I
    const/4 v4, 0x1

    #@2bd
    move/from16 v0, v29

    #@2bf
    if-lt v0, v4, :cond_19

    #@2c1
    const/16 v4, 0x9

    #@2c3
    move/from16 v0, v29

    #@2c5
    if-gt v0, v4, :cond_19

    #@2c7
    .line 635
    const/4 v4, 0x0

    #@2c8
    aput p2, v17, v4

    #@2ca
    .line 636
    const/16 v4, 0xa

    #@2cc
    move-object/from16 v0, p1

    #@2ce
    move-object/from16 v1, v17

    #@2d0
    invoke-static {v0, v1, v4}, Landroid/icu/impl/Utility;->parseNumber(Ljava/lang/String;[II)I

    #@2d3
    move-result v29

    #@2d4
    .line 637
    if-gez v29, :cond_18

    #@2d6
    .line 638
    const-string/jumbo v4, "Undefined segment reference"

    #@2d9
    move-object/from16 v0, p1

    #@2db
    move/from16 v1, v33

    #@2dd
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@2e0
    .line 641
    :cond_18
    const/4 v4, 0x0

    #@2e1
    aget p2, v17, v4

    #@2e3
    .line 642
    move-object/from16 v0, p4

    #@2e5
    move/from16 v1, v29

    #@2e7
    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    #@2ea
    move-result v4

    #@2eb
    move-object/from16 v0, p5

    #@2ed
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2f0
    goto/16 :goto_4

    #@2f2
    .line 644
    :cond_19
    if-nez v25, :cond_1a

    #@2f4
    .line 645
    new-instance v25, Ljava/text/ParsePosition;

    #@2f6
    const/4 v4, 0x0

    #@2f7
    move-object/from16 v0, v25

    #@2f9
    invoke-direct {v0, v4}, Ljava/text/ParsePosition;-><init>(I)V

    #@2fc
    .line 647
    :cond_1a
    move-object/from16 v0, v25

    #@2fe
    move/from16 v1, p2

    #@300
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@303
    .line 648
    invoke-static/range {p4 .. p4}, Landroid/icu/text/TransliteratorParser;->-get4(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;

    #@306
    move-result-object v4

    #@307
    move-object/from16 v0, p1

    #@309
    move-object/from16 v1, v25

    #@30b
    move/from16 v2, p3

    #@30d
    invoke-virtual {v4, v0, v1, v2}, Landroid/icu/text/TransliteratorParser$ParseData;->parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;

    #@310
    move-result-object v22

    #@311
    .line 650
    .local v22, "name":Ljava/lang/String;
    if-nez v22, :cond_1b

    #@313
    .line 656
    const/4 v4, 0x1

    #@314
    move-object/from16 v0, p0

    #@316
    iput-boolean v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    #@318
    goto/16 :goto_4

    #@31a
    .line 659
    :cond_1b
    invoke-virtual/range {v25 .. v25}, Ljava/text/ParsePosition;->getIndex()I

    #@31d
    move-result p2

    #@31e
    .line 664
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@321
    move-result v36

    #@322
    .line 665
    move-object/from16 v0, p4

    #@324
    move-object/from16 v1, v22

    #@326
    move-object/from16 v2, p5

    #@328
    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->-wrap1(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    #@32b
    .line 666
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@32e
    move-result v35

    #@32f
    goto/16 :goto_4

    #@331
    .line 671
    .end local v22    # "name":Ljava/lang/String;
    .end local v29    # "r":I
    :sswitch_5
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/TransliteratorParser;->getDotStandIn()C

    #@334
    move-result v4

    #@335
    move-object/from16 v0, p5

    #@337
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33a
    goto/16 :goto_4

    #@33c
    .line 685
    :sswitch_6
    if-eqz p7, :cond_1c

    #@33e
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@341
    move-result v4

    #@342
    if-ne v4, v12, :cond_1c

    #@344
    .line 687
    const-string/jumbo v4, "Misplaced quantifier"

    #@347
    move-object/from16 v0, p1

    #@349
    move/from16 v1, v33

    #@34b
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@34e
    goto/16 :goto_4

    #@350
    .line 695
    :cond_1c
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@353
    move-result v4

    #@354
    move/from16 v0, v27

    #@356
    if-ne v4, v0, :cond_1d

    #@358
    .line 697
    move/from16 v5, v28

    #@35a
    .line 698
    .local v5, "qstart":I
    move/from16 v6, v27

    #@35c
    .line 712
    .local v6, "qlimit":I
    :goto_6
    :try_start_0
    new-instance v3, Landroid/icu/text/StringMatcher;

    #@35e
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@361
    move-result-object v4

    #@362
    .line 713
    invoke-static/range {p4 .. p4}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    #@365
    move-result-object v8

    #@366
    const/4 v7, 0x0

    #@367
    .line 712
    invoke-direct/range {v3 .. v8}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;IIILandroid/icu/text/RuleBasedTransliterator$Data;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@36a
    .line 721
    .local v3, "m":Landroid/icu/text/UnicodeMatcher;
    const/16 v21, 0x0

    #@36c
    .line 722
    .local v21, "min":I
    const v20, 0x7fffffff

    #@36f
    .line 723
    .local v20, "max":I
    sparse-switch v13, :sswitch_data_1

    #@372
    .line 734
    :goto_7
    new-instance v19, Landroid/icu/text/Quantifier;

    #@374
    move-object/from16 v0, v19

    #@376
    move/from16 v1, v21

    #@378
    move/from16 v2, v20

    #@37a
    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/Quantifier;-><init>(Landroid/icu/text/UnicodeMatcher;II)V

    #@37d
    .line 735
    .end local v3    # "m":Landroid/icu/text/UnicodeMatcher;
    .local v19, "m":Landroid/icu/text/UnicodeMatcher;
    move-object/from16 v0, p5

    #@37f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    #@382
    .line 736
    move-object/from16 v0, p4

    #@384
    move-object/from16 v1, v19

    #@386
    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    #@389
    move-result v4

    #@38a
    move-object/from16 v0, p5

    #@38c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@38f
    goto/16 :goto_4

    #@391
    .line 699
    .end local v5    # "qstart":I
    .end local v6    # "qlimit":I
    .end local v19    # "m":Landroid/icu/text/UnicodeMatcher;
    .end local v20    # "max":I
    .end local v21    # "min":I
    :cond_1d
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@394
    move-result v4

    #@395
    move/from16 v0, v35

    #@397
    if-ne v4, v0, :cond_1e

    #@399
    .line 701
    move/from16 v5, v36

    #@39b
    .line 702
    .restart local v5    # "qstart":I
    move/from16 v6, v35

    #@39d
    .restart local v6    # "qlimit":I
    goto :goto_6

    #@39e
    .line 706
    .end local v5    # "qstart":I
    .end local v6    # "qlimit":I
    :cond_1e
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@3a1
    move-result v4

    #@3a2
    add-int/lit8 v5, v4, -0x1

    #@3a4
    .line 707
    .restart local v5    # "qstart":I
    add-int/lit8 v6, v5, 0x1

    #@3a6
    .restart local v6    # "qlimit":I
    goto :goto_6

    #@3a7
    .line 714
    :catch_0
    move-exception v14

    #@3a8
    .line 715
    .local v14, "e":Ljava/lang/RuntimeException;
    const/16 v4, 0x32

    #@3aa
    move/from16 v0, p2

    #@3ac
    if-ge v0, v4, :cond_1f

    #@3ae
    const/4 v4, 0x0

    #@3af
    move-object/from16 v0, p1

    #@3b1
    move/from16 v1, p2

    #@3b3
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3b6
    move-result-object v26

    #@3b7
    .line 716
    .local v26, "precontext":Ljava/lang/String;
    :goto_8
    sub-int v4, p3, p2

    #@3b9
    const/16 v7, 0x32

    #@3bb
    if-gt v4, v7, :cond_20

    #@3bd
    invoke-virtual/range {p1 .. p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c0
    move-result-object v24

    #@3c1
    .line 718
    .local v24, "postContext":Ljava/lang/String;
    :goto_9
    new-instance v4, Landroid/icu/impl/IllegalIcuArgumentException;

    #@3c3
    new-instance v7, Ljava/lang/StringBuilder;

    #@3c5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3c8
    const-string/jumbo v8, "Failure in rule: "

    #@3cb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ce
    move-result-object v7

    #@3cf
    move-object/from16 v0, v26

    #@3d1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d4
    move-result-object v7

    #@3d5
    const-string/jumbo v8, "$$$"

    #@3d8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3db
    move-result-object v7

    #@3dc
    move-object/from16 v0, v24

    #@3de
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e1
    move-result-object v7

    #@3e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e5
    move-result-object v7

    #@3e6
    invoke-direct {v4, v7}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@3e9
    invoke-virtual {v4, v14}, Landroid/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;

    #@3ec
    move-result-object v4

    #@3ed
    .line 717
    throw v4

    #@3ee
    .line 715
    .end local v24    # "postContext":Ljava/lang/String;
    .end local v26    # "precontext":Ljava/lang/String;
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3f3
    const-string/jumbo v7, "..."

    #@3f6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f9
    move-result-object v4

    #@3fa
    add-int/lit8 v7, p2, -0x32

    #@3fc
    move-object/from16 v0, p1

    #@3fe
    move/from16 v1, p2

    #@400
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@403
    move-result-object v7

    #@404
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@407
    move-result-object v4

    #@408
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40b
    move-result-object v26

    #@40c
    .restart local v26    # "precontext":Ljava/lang/String;
    goto :goto_8

    #@40d
    .line 716
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    #@40f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@412
    add-int/lit8 v7, p2, 0x32

    #@414
    move-object/from16 v0, p1

    #@416
    move/from16 v1, p2

    #@418
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@41b
    move-result-object v7

    #@41c
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41f
    move-result-object v4

    #@420
    const-string/jumbo v7, "..."

    #@423
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@426
    move-result-object v4

    #@427
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42a
    move-result-object v24

    #@42b
    .restart local v24    # "postContext":Ljava/lang/String;
    goto :goto_9

    #@42c
    .line 725
    .end local v14    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "postContext":Ljava/lang/String;
    .end local v26    # "precontext":Ljava/lang/String;
    .restart local v3    # "m":Landroid/icu/text/UnicodeMatcher;
    .restart local v20    # "max":I
    .restart local v21    # "min":I
    :sswitch_7
    const/16 v21, 0x1

    #@42e
    .line 726
    goto/16 :goto_7

    #@430
    .line 728
    :sswitch_8
    const/16 v21, 0x0

    #@432
    .line 729
    const/16 v20, 0x1

    #@434
    .line 730
    goto/16 :goto_7

    #@436
    .line 752
    .end local v3    # "m":Landroid/icu/text/UnicodeMatcher;
    .end local v5    # "qstart":I
    .end local v6    # "qlimit":I
    .end local v20    # "max":I
    .end local v21    # "min":I
    :sswitch_9
    move-object/from16 v0, p0

    #@438
    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@43a
    if-ltz v4, :cond_21

    #@43c
    .line 753
    const-string/jumbo v4, "Multiple ante contexts"

    #@43f
    move-object/from16 v0, p1

    #@441
    move/from16 v1, v33

    #@443
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@446
    .line 755
    :cond_21
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@449
    move-result v4

    #@44a
    move-object/from16 v0, p0

    #@44c
    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@44e
    goto/16 :goto_4

    #@450
    .line 758
    :sswitch_a
    move-object/from16 v0, p0

    #@452
    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@454
    if-ltz v4, :cond_22

    #@456
    .line 759
    const-string/jumbo v4, "Multiple post contexts"

    #@459
    move-object/from16 v0, p1

    #@45b
    move/from16 v1, v33

    #@45d
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@460
    .line 761
    :cond_22
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@463
    move-result v4

    #@464
    move-object/from16 v0, p0

    #@466
    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@468
    goto/16 :goto_4

    #@46a
    .line 764
    :sswitch_b
    move-object/from16 v0, p0

    #@46c
    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@46e
    if-ltz v4, :cond_23

    #@470
    .line 765
    const-string/jumbo v4, "Multiple cursors"

    #@473
    move-object/from16 v0, p1

    #@475
    move/from16 v1, v33

    #@477
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@47a
    .line 767
    :cond_23
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@47d
    move-result v4

    #@47e
    move-object/from16 v0, p0

    #@480
    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@482
    goto/16 :goto_4

    #@484
    .line 770
    :sswitch_c
    move-object/from16 v0, p0

    #@486
    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@488
    if-gez v4, :cond_25

    #@48a
    .line 771
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@48d
    move-result v4

    #@48e
    if-lez v4, :cond_24

    #@490
    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    #@492
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@495
    const-string/jumbo v7, "Misplaced "

    #@498
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49b
    move-result-object v4

    #@49c
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49f
    move-result-object v4

    #@4a0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a3
    move-result-object v4

    #@4a4
    move-object/from16 v0, p1

    #@4a6
    move/from16 v1, v33

    #@4a8
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@4ab
    .line 774
    :cond_24
    move-object/from16 v0, p0

    #@4ad
    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@4af
    add-int/lit8 v4, v4, -0x1

    #@4b1
    move-object/from16 v0, p0

    #@4b3
    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@4b5
    goto/16 :goto_4

    #@4b7
    .line 775
    :cond_25
    move-object/from16 v0, p0

    #@4b9
    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@4bb
    if-lez v4, :cond_28

    #@4bd
    .line 776
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@4c0
    move-result v4

    #@4c1
    move-object/from16 v0, p0

    #@4c3
    iget v7, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    #@4c5
    if-ne v4, v7, :cond_26

    #@4c7
    move-object/from16 v0, p0

    #@4c9
    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@4cb
    if-ltz v4, :cond_27

    #@4cd
    .line 777
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    #@4cf
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d2
    const-string/jumbo v7, "Misplaced "

    #@4d5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d8
    move-result-object v4

    #@4d9
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4dc
    move-result-object v4

    #@4dd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e0
    move-result-object v4

    #@4e1
    move-object/from16 v0, p1

    #@4e3
    move/from16 v1, v33

    #@4e5
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@4e8
    .line 779
    :cond_27
    move-object/from16 v0, p0

    #@4ea
    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@4ec
    add-int/lit8 v4, v4, 0x1

    #@4ee
    move-object/from16 v0, p0

    #@4f0
    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@4f2
    goto/16 :goto_4

    #@4f4
    .line 781
    :cond_28
    move-object/from16 v0, p0

    #@4f6
    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@4f8
    if-nez v4, :cond_29

    #@4fa
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@4fd
    move-result v4

    #@4fe
    if-nez v4, :cond_29

    #@500
    .line 782
    const/4 v4, -0x1

    #@501
    move-object/from16 v0, p0

    #@503
    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@505
    goto/16 :goto_4

    #@507
    .line 783
    :cond_29
    move-object/from16 v0, p0

    #@509
    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@50b
    if-gez v4, :cond_2a

    #@50d
    .line 784
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    #@510
    move-result v4

    #@511
    move-object/from16 v0, p0

    #@513
    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    #@515
    .line 785
    const/4 v4, 0x1

    #@516
    move-object/from16 v0, p0

    #@518
    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@51a
    goto/16 :goto_4

    #@51c
    .line 787
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@51e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@521
    const-string/jumbo v7, "Misplaced "

    #@524
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@527
    move-result-object v4

    #@528
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52b
    move-result-object v4

    #@52c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52f
    move-result-object v4

    #@530
    move-object/from16 v0, p1

    #@532
    move/from16 v1, v33

    #@534
    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@537
    goto/16 :goto_4

    #@539
    .end local v13    # "c":C
    .end local p2    # "pos":I
    .restart local v23    # "pos":I
    :cond_2b
    move/from16 p2, v23

    #@53b
    .end local v23    # "pos":I
    .restart local p2    # "pos":I
    goto/16 :goto_1

    #@53d
    .line 543
    nop

    #@53e
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_4
        0x26 -> :sswitch_3
        0x28 -> :sswitch_2
        0x29 -> :sswitch_0
        0x2a -> :sswitch_6
        0x2b -> :sswitch_6
        0x2e -> :sswitch_5
        0x3f -> :sswitch_6
        0x40 -> :sswitch_c
        0x5e -> :sswitch_1
        0x7b -> :sswitch_9
        0x7c -> :sswitch_b
        0x7d -> :sswitch_a
        0x2206 -> :sswitch_3
    .end sparse-switch

    #@578
    .line 723
    :sswitch_data_1
    .sparse-switch
        0x2b -> :sswitch_7
        0x3f -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public isValidInput(Landroid/icu/text/TransliteratorParser;)Z
    .locals 3
    .param p1, "parser"    # Landroid/icu/text/TransliteratorParser;

    #@0
    .prologue
    .line 842
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :cond_0
    iget-object v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 843
    iget-object v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@b
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    .line 844
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@12
    move-result v2

    #@13
    add-int/2addr v1, v2

    #@14
    .line 845
    invoke-static {p1}, Landroid/icu/text/TransliteratorParser;->-get4(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Landroid/icu/text/TransliteratorParser$ParseData;->isMatcher(I)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 846
    const/4 v2, 0x0

    #@1f
    return v2

    #@20
    .line 849
    .end local v0    # "c":I
    :cond_1
    const/4 v2, 0x1

    #@21
    return v2
.end method

.method public isValidOutput(Landroid/icu/text/TransliteratorParser;)Z
    .locals 3
    .param p1, "parser"    # Landroid/icu/text/TransliteratorParser;

    #@0
    .prologue
    .line 827
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :cond_0
    iget-object v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 828
    iget-object v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@b
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    .line 829
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@12
    move-result v2

    #@13
    add-int/2addr v1, v2

    #@14
    .line 830
    invoke-static {p1}, Landroid/icu/text/TransliteratorParser;->-get4(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Landroid/icu/text/TransliteratorParser$ParseData;->isReplacer(I)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 831
    const/4 v2, 0x0

    #@1f
    return v2

    #@20
    .line 834
    .end local v0    # "c":I
    :cond_1
    const/4 v2, 0x1

    #@21
    return v2
.end method

.method public parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I
    .locals 9
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "parser"    # Landroid/icu/text/TransliteratorParser;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 405
    move v8, p2

    #@2
    .line 406
    .local v8, "start":I
    new-instance v5, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 407
    .local v5, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Landroid/icu/text/TransliteratorParser;->-get2()Landroid/icu/text/UnicodeSet;

    #@a
    move-result-object v6

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    move v2, p2

    #@e
    move v3, p3

    #@f
    move-object v4, p4

    #@10
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I

    #@13
    move-result p2

    #@14
    .line 408
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@1a
    .line 410
    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@1c
    if-lez v0, :cond_0

    #@1e
    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@20
    iget v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    #@22
    if-eq v0, v1, :cond_0

    #@24
    .line 411
    const-string/jumbo v0, "Misplaced |"

    #@27
    invoke-static {v0, p1, v8}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@2a
    .line 414
    :cond_0
    return p2
.end method

.method removeContext()V
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 816
    iget-object v3, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@4
    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@6
    if-gez v0, :cond_0

    #@8
    move v0, v1

    #@9
    .line 817
    :goto_0
    iget v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@b
    if-gez v2, :cond_1

    #@d
    iget-object v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@12
    move-result v2

    #@13
    .line 816
    :goto_1
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@19
    .line 818
    iput v4, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@1b
    iput v4, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@1d
    .line 819
    iput-boolean v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    #@1f
    iput-boolean v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    #@21
    .line 815
    return-void

    #@22
    .line 816
    :cond_0
    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@24
    goto :goto_0

    #@25
    .line 817
    :cond_1
    iget v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@27
    goto :goto_1
.end method
