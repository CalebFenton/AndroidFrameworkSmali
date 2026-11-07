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
.field public blacklist anchorEnd:Z

.field public blacklist anchorStart:Z

.field public blacklist ante:I

.field public blacklist cursor:I

.field public blacklist cursorOffset:I

.field private blacklist cursorOffsetPos:I

.field private blacklist nextSegmentNumber:I

.field public blacklist post:I

.field public blacklist text:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    .line 377
    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    .line 378
    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    .line 393
    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    .line 395
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    .line 396
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    .line 402
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/TransliteratorParser-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>()V

    return-void
.end method

.method private blacklist parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I
    .registers 34
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "parser"    # Landroid/icu/text/TransliteratorParser;
    .param p5, "buf"    # Ljava/lang/StringBuffer;
    .param p6, "illegal"    # Landroid/icu/text/UnicodeSet;
    .param p7, "isSegment"    # Z

    .line 452
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v9, p2

    .line 453
    .local v9, "start":I
    const/4 v0, 0x0

    .line 454
    .local v0, "pp":Ljava/text/ParsePosition;
    const/4 v3, -0x1

    .line 455
    .local v3, "quoteStart":I
    const/4 v7, -0x1

    .line 456
    .local v7, "quoteLimit":I
    const/4 v8, -0x1

    .line 457
    .local v8, "varStart":I
    const/4 v10, -0x1

    .line 458
    .local v10, "varLimit":I
    const/4 v11, 0x1

    new-array v12, v11, [I

    .line 459
    .local v12, "iref":[I
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    move v14, v3

    move v15, v7

    move/from16 v16, v8

    move v3, v10

    move-object v10, v0

    move/from16 v0, p2

    .line 462
    .end local v7    # "quoteLimit":I
    .end local v8    # "varStart":I
    .end local p2    # "pos":I
    .local v0, "pos":I
    .local v3, "varLimit":I
    .local v10, "pp":Ljava/text/ParsePosition;
    .local v13, "bufStart":I
    .local v14, "quoteStart":I
    .local v15, "quoteLimit":I
    .local v16, "varStart":I
    :goto_20
    if-ge v0, v4, :cond_4b6

    .line 465
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "pos":I
    .local v7, "pos":I
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 466
    .local v8, "c":C
    invoke-static {v8}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 467
    move v0, v7

    goto :goto_20

    .line 470
    :cond_30
    const-string v0, "=><\u2190\u2192\u2194;"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4b

    .line 473
    if-eqz p7, :cond_45

    .line 474
    const-string v0, "Unclosed segment"

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    move/from16 v20, v3

    move-object/from16 v19, v10

    goto/16 :goto_355

    .line 473
    :cond_45
    move/from16 v20, v3

    move-object/from16 v19, v10

    goto/16 :goto_355

    .line 479
    :cond_4b
    iget-boolean v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-eqz v0, :cond_54

    .line 481
    const-string v0, "Malformed variable reference"

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 483
    :cond_54
    add-int/lit8 v0, v7, -0x1

    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_77

    .line 484
    if-nez v10, :cond_65

    .line 485
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v11}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v10, v0

    .line 487
    :cond_65
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v10, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 488
    invoke-static {v5, v2, v10}, Landroid/icu/text/TransliteratorParser;->-$$Nest$mparseSet(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 489
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 490
    .end local v7    # "pos":I
    .restart local v0    # "pos":I
    const/4 v11, 0x1

    goto :goto_20

    .line 493
    .end local v0    # "pos":I
    .restart local v7    # "pos":I
    :cond_77
    const/16 v0, 0x5c

    if-ne v8, v0, :cond_a0

    .line 494
    if-ne v7, v4, :cond_82

    .line 495
    const-string v0, "Trailing backslash"

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 497
    :cond_82
    invoke-static {v2, v7}, Landroid/icu/impl/Utility;->unescapeAndLengthAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 498
    .local v0, "cpAndLength":I
    if-gez v0, :cond_8d

    .line 499
    const-string v11, "Malformed escape"

    invoke-static {v11, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 501
    :cond_8d
    invoke-static {v0}, Landroid/icu/impl/Utility;->cpFromCodePointAndLength(I)I

    move-result v11

    .line 502
    .local v11, "escaped":I
    invoke-static {v0}, Landroid/icu/impl/Utility;->lengthFromCodePointAndLength(I)I

    move-result v18

    add-int v7, v7, v18

    .line 503
    invoke-static {v5, v11, v2, v9}, Landroid/icu/text/TransliteratorParser;->-$$Nest$mcheckVariableRange(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    .line 504
    invoke-static {v6, v11}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 505
    move v0, v7

    const/4 v11, 0x1

    goto :goto_20

    .line 508
    .end local v0    # "cpAndLength":I
    .end local v11    # "escaped":I
    :cond_a0
    const/16 v0, 0x27

    if-ne v8, v0, :cond_f4

    .line 509
    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 510
    .local v11, "iq":I
    if-ne v11, v7, :cond_b2

    .line 511
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 512
    add-int/lit8 v0, v7, 0x1

    const/4 v11, 0x1

    .end local v7    # "pos":I
    .local v0, "pos":I
    goto/16 :goto_20

    .line 520
    .end local v0    # "pos":I
    .restart local v7    # "pos":I
    :cond_b2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    .line 522
    :goto_b6
    if-gez v11, :cond_bd

    .line 523
    const-string v0, "Unterminated quote"

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 525
    :cond_bd
    invoke-virtual {v2, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    add-int/lit8 v7, v11, 0x1

    .line 527
    if-ge v7, v4, :cond_dc

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move/from16 v18, v7

    const/16 v7, 0x27

    .end local v7    # "pos":I
    .local v18, "pos":I
    if-ne v0, v7, :cond_de

    .line 529
    add-int/lit8 v0, v18, 0x1

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    move v0, v7

    move/from16 v7, v18

    goto :goto_b6

    .line 527
    .end local v18    # "pos":I
    .restart local v7    # "pos":I
    :cond_dc
    move/from16 v18, v7

    .line 535
    .end local v7    # "pos":I
    .restart local v18    # "pos":I
    :cond_de
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    .line 537
    move v0, v14

    .end local v11    # "iq":I
    .local v0, "iq":I
    :goto_e3
    if-ge v0, v15, :cond_ef

    .line 538
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-static {v5, v7, v2, v9}, Landroid/icu/text/TransliteratorParser;->-$$Nest$mcheckVariableRange(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_e3

    :cond_ef
    move/from16 v0, v18

    const/4 v11, 0x1

    goto/16 :goto_20

    .line 544
    .end local v0    # "iq":I
    .end local v18    # "pos":I
    .restart local v7    # "pos":I
    :cond_f4
    invoke-static {v5, v8, v2, v9}, Landroid/icu/text/TransliteratorParser;->-$$Nest$mcheckVariableRange(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    .line 546
    move-object/from16 v11, p6

    invoke-virtual {v11, v8}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v10

    .end local v10    # "pp":Ljava/text/ParsePosition;
    .local v19, "pp":Ljava/text/ParsePosition;
    const-string v10, "Illegal character \'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0x27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_120

    .line 546
    .end local v19    # "pp":Ljava/text/ParsePosition;
    .restart local v10    # "pp":Ljava/text/ParsePosition;
    :cond_11e
    move-object/from16 v19, v10

    .line 550
    .end local v10    # "pp":Ljava/text/ParsePosition;
    .restart local v19    # "pp":Ljava/text/ParsePosition;
    :goto_120
    sparse-switch v8, :sswitch_data_4be

    .line 805
    move/from16 v20, v3

    move v10, v7

    move v11, v8

    move/from16 v21, v13

    const/4 v13, 0x1

    .end local v3    # "varLimit":I
    .end local v7    # "pos":I
    .end local v8    # "c":C
    .end local v13    # "bufStart":I
    .local v10, "pos":I
    .local v11, "c":C
    .local v20, "varLimit":I
    .local v21, "bufStart":I
    const/16 v0, 0x21

    if-lt v11, v0, :cond_4a9

    const/16 v0, 0x7e

    if-gt v11, v0, :cond_4a9

    const/16 v0, 0x30

    if-lt v11, v0, :cond_483

    const/16 v0, 0x39

    if-le v11, v0, :cond_4a9

    goto/16 :goto_483

    .line 764
    .end local v10    # "pos":I
    .end local v11    # "c":C
    .end local v20    # "varLimit":I
    .end local v21    # "bufStart":I
    .restart local v3    # "varLimit":I
    .restart local v7    # "pos":I
    .restart local v8    # "c":C
    .restart local v13    # "bufStart":I
    :sswitch_13c
    iget v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-ltz v0, :cond_145

    .line 765
    const-string v0, "Multiple post contexts"

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 767
    :cond_145
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    .line 768
    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 770
    :sswitch_153
    iget v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-ltz v0, :cond_15c

    .line 771
    const-string v0, "Multiple cursors"

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 773
    :cond_15c
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    .line 774
    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 758
    :sswitch_16a
    iget v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-ltz v0, :cond_173

    .line 759
    const-string v0, "Multiple ante contexts"

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 761
    :cond_173
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    .line 762
    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 556
    :sswitch_181
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_196

    iget-boolean v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v0, :cond_196

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    move v13, v0

    goto/16 :goto_4ac

    .line 559
    :cond_196
    const-string v0, "Misplaced anchor start"

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 562
    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 776
    :sswitch_1a3
    iget v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    const-string v10, "Misplaced "

    if-gez v0, :cond_1d3

    .line 777
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1c3

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 780
    :cond_1c3
    iget v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 781
    :cond_1d3
    iget v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    if-lez v0, :cond_207

    .line 782
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v11, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    if-ne v0, v11, :cond_1e3

    iget v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-ltz v0, :cond_1f7

    .line 783
    :cond_1e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 785
    :cond_1f7
    iget v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 787
    :cond_207
    iget v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-nez v0, :cond_21c

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_21c

    .line 788
    const/4 v0, -0x1

    iput v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 789
    :cond_21c
    iget v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-gez v0, :cond_231

    .line 790
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    .line 791
    const/4 v0, 0x1

    iput v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    move v13, v0

    goto/16 :goto_4ac

    .line 793
    :cond_231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 796
    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 678
    :sswitch_24d
    invoke-virtual {v5}, Landroid/icu/text/TransliteratorParser;->getDotStandIn()C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 679
    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 692
    :sswitch_25c
    if-eqz p7, :cond_271

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ne v0, v13, :cond_271

    .line 694
    const-string v0, "Misplaced quantifier"

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 695
    move/from16 v20, v3

    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 702
    :cond_271
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ne v0, v15, :cond_27e

    .line 704
    move v0, v14

    .line 705
    .local v0, "qstart":I
    move v10, v15

    move/from16 v22, v0

    move/from16 v23, v10

    .local v10, "qlimit":I
    goto :goto_29a

    .line 706
    .end local v0    # "qstart":I
    .end local v10    # "qlimit":I
    :cond_27e
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ne v0, v3, :cond_28c

    .line 708
    move/from16 v0, v16

    .line 709
    .restart local v0    # "qstart":I
    move v10, v3

    move/from16 v22, v0

    move/from16 v23, v10

    .restart local v10    # "qlimit":I
    goto :goto_29a

    .line 713
    .end local v0    # "qstart":I
    .end local v10    # "qlimit":I
    :cond_28c
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 714
    .restart local v0    # "qstart":I
    add-int/lit8 v10, v0, 0x1

    move/from16 v22, v0

    move/from16 v23, v10

    .line 719
    .end local v0    # "qstart":I
    .local v22, "qstart":I
    .local v23, "qlimit":I
    :goto_29a
    :try_start_29a
    new-instance v20, Landroid/icu/text/StringMatcher;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static {v5}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetcurData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v25

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v25}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;IIILandroid/icu/text/RuleBasedTransliterator$Data;)V
    :try_end_2a9
    .catch Ljava/lang/RuntimeException; {:try_start_29a .. :try_end_2a9} :catch_2de

    move/from16 v10, v22

    .end local v22    # "qstart":I
    .local v10, "qstart":I
    move-object/from16 v0, v20

    .line 726
    .local v0, "m":Landroid/icu/text/UnicodeMatcher;
    nop

    .line 727
    const/4 v11, 0x0

    .line 728
    .local v11, "min":I
    const v18, 0x7fffffff

    .line 729
    .local v18, "max":I
    sparse-switch v8, :sswitch_data_4f8

    move/from16 v20, v3

    move/from16 v3, v18

    goto :goto_2c7

    .line 734
    :sswitch_2ba
    const/4 v11, 0x0

    .line 735
    const/16 v18, 0x1

    move/from16 v20, v3

    move/from16 v3, v18

    goto :goto_2c7

    .line 731
    :sswitch_2c2
    const/4 v11, 0x1

    .line 732
    move/from16 v20, v3

    move/from16 v3, v18

    .line 740
    .end local v18    # "max":I
    .local v3, "max":I
    .restart local v20    # "varLimit":I
    :goto_2c7
    move/from16 p2, v8

    .end local v8    # "c":C
    .local p2, "c":C
    new-instance v8, Landroid/icu/text/Quantifier;

    invoke-direct {v8, v0, v11, v3}, Landroid/icu/text/Quantifier;-><init>(Landroid/icu/text/UnicodeMatcher;II)V

    .line 741
    .end local v0    # "m":Landroid/icu/text/UnicodeMatcher;
    .local v8, "m":Landroid/icu/text/UnicodeMatcher;
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 742
    invoke-virtual {v5, v8}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 744
    .end local v3    # "max":I
    .end local v8    # "m":Landroid/icu/text/UnicodeMatcher;
    .end local v10    # "qstart":I
    .end local v11    # "min":I
    .end local v23    # "qlimit":I
    move v10, v7

    move/from16 v21, v13

    const/4 v13, 0x1

    goto/16 :goto_4ac

    .line 721
    .end local v20    # "varLimit":I
    .end local p2    # "c":C
    .local v3, "varLimit":I
    .local v8, "c":C
    .restart local v22    # "qstart":I
    .restart local v23    # "qlimit":I
    :catch_2de
    move-exception v0

    move/from16 v20, v3

    move/from16 p2, v8

    move/from16 v10, v22

    .line 722
    .end local v3    # "varLimit":I
    .end local v8    # "c":C
    .end local v22    # "qstart":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v10    # "qstart":I
    .restart local v20    # "varLimit":I
    .restart local p2    # "c":C
    const-string v3, "..."

    const/16 v8, 0x32

    if-ge v7, v8, :cond_2f1

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_308

    :cond_2f1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v8, v7, -0x32

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 723
    .local v11, "precontext":Ljava/lang/String;
    :goto_308
    sub-int v8, v4, v7

    const/16 v5, 0x32

    if-gt v8, v5, :cond_313

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_32a

    :cond_313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v7, 0x32

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, "postContext":Ljava/lang/String;
    :goto_32a
    new-instance v5, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure in rule: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "$$$"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v5, v0}, Landroid/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;

    move-result-object v2

    throw v2

    .line 752
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "qstart":I
    .end local v11    # "precontext":Ljava/lang/String;
    .end local v20    # "varLimit":I
    .end local v23    # "qlimit":I
    .end local p2    # "c":C
    .local v3, "varLimit":I
    .restart local v8    # "c":C
    :sswitch_351
    move/from16 v20, v3

    move/from16 p2, v8

    .line 815
    .end local v8    # "c":C
    .end local v19    # "pp":Ljava/text/ParsePosition;
    .local v10, "pp":Ljava/text/ParsePosition;
    :goto_355
    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move v0, v7

    move/from16 v21, v13

    .end local v3    # "varLimit":I
    .end local v10    # "pp":Ljava/text/ParsePosition;
    .restart local v19    # "pp":Ljava/text/ParsePosition;
    .restart local v20    # "varLimit":I
    goto/16 :goto_4bc

    .line 567
    .end local v20    # "varLimit":I
    .restart local v3    # "varLimit":I
    .restart local v8    # "c":C
    :sswitch_35e
    move/from16 v20, v3

    move/from16 p2, v8

    .end local v3    # "varLimit":I
    .end local v8    # "c":C
    .restart local v20    # "varLimit":I
    .restart local p2    # "c":C
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 572
    .local v0, "bufSegStart":I
    iget v2, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    move v10, v2

    .line 575
    .local v10, "segmentNumber":I
    move v3, v7

    .end local v7    # "pos":I
    .local v3, "pos":I
    invoke-static {}, Landroid/icu/text/TransliteratorParser;->-$$Nest$sfgetILLEGAL_SEG()Landroid/icu/text/UnicodeSet;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v11, p2

    move-object/from16 v5, p4

    .end local p2    # "c":C
    .local v11, "c":C
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I

    move-result v3

    .line 581
    new-instance v1, Landroid/icu/text/StringMatcher;

    .line 582
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetcurData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v7

    invoke-direct {v1, v4, v10, v7}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    .line 586
    .local v1, "m":Landroid/icu/text/StringMatcher;
    invoke-virtual {v5, v10, v1}, Landroid/icu/text/TransliteratorParser;->setSegmentObject(ILandroid/icu/text/StringMatcher;)V

    .line 587
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 588
    invoke-virtual {v5, v10}, Landroid/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 590
    .end local v0    # "bufSegStart":I
    .end local v1    # "m":Landroid/icu/text/StringMatcher;
    .end local v10    # "segmentNumber":I
    move-object/from16 v1, p0

    move/from16 v4, p3

    move v0, v3

    move/from16 v21, v13

    move-object/from16 v10, v19

    move/from16 v3, v20

    const/4 v13, 0x1

    goto/16 :goto_4b1

    .line 594
    .end local v11    # "c":C
    .end local v20    # "varLimit":I
    .local v3, "varLimit":I
    .restart local v7    # "pos":I
    .restart local v8    # "c":C
    :sswitch_3a5
    move/from16 v20, v3

    move v10, v7

    move v11, v8

    .end local v3    # "varLimit":I
    .end local v7    # "pos":I
    .end local v8    # "c":C
    .local v10, "pos":I
    .restart local v11    # "c":C
    .restart local v20    # "varLimit":I
    const/16 v18, 0x0

    aput v10, v12, v18

    .line 595
    invoke-static {v2, v12}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v0

    .line 597
    .local v0, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    if-eqz v0, :cond_3bb

    .line 598
    const/16 v1, 0x28

    invoke-static {v2, v12, v1}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v1

    if-nez v1, :cond_3c0

    .line 599
    :cond_3bb
    const-string v1, "Invalid function"

    invoke-static {v1, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 602
    :cond_3c0
    invoke-virtual {v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;->getInstance()Landroid/icu/text/Transliterator;

    move-result-object v1

    .line 603
    .local v1, "t":Landroid/icu/text/Transliterator;
    if-nez v1, :cond_3cb

    .line 604
    const-string v3, "Invalid function ID"

    invoke-static {v3, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 609
    :cond_3cb
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 612
    .local v3, "bufSegStart":I
    const/16 v18, 0x0

    aget v4, v12, v18

    invoke-static {}, Landroid/icu/text/TransliteratorParser;->-$$Nest$sfgetILLEGAL_FUNC()Landroid/icu/text/UnicodeSet;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 p2, v0

    move-object v0, v1

    move/from16 v21, v13

    move-object/from16 v1, p0

    move v13, v3

    move v3, v4

    move/from16 v4, p3

    .end local v1    # "t":Landroid/icu/text/Transliterator;
    .end local v3    # "bufSegStart":I
    .local v0, "t":Landroid/icu/text/Transliterator;
    .local v13, "bufSegStart":I
    .restart local v21    # "bufStart":I
    .local p2, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I

    move-result v3

    .line 616
    .end local v10    # "pos":I
    .local v3, "pos":I
    new-instance v7, Landroid/icu/text/FunctionReplacer;

    new-instance v8, Landroid/icu/text/StringReplacer;

    .line 618
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v18, v3

    .end local v3    # "pos":I
    .local v18, "pos":I
    invoke-static {v5}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetcurData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v3

    invoke-direct {v8, v10, v3}, Landroid/icu/text/StringReplacer;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;)V

    invoke-direct {v7, v0, v8}, Landroid/icu/text/FunctionReplacer;-><init>(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeReplacer;)V

    .line 621
    .local v7, "r":Landroid/icu/text/FunctionReplacer;
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 622
    invoke-virtual {v5, v7}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 624
    .end local v0    # "t":Landroid/icu/text/Transliterator;
    .end local v7    # "r":Landroid/icu/text/FunctionReplacer;
    .end local v13    # "bufSegStart":I
    .end local p2    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    move/from16 v0, v18

    move-object/from16 v10, v19

    move/from16 v3, v20

    const/4 v13, 0x1

    goto/16 :goto_4b1

    .line 632
    .end local v11    # "c":C
    .end local v18    # "pos":I
    .end local v20    # "varLimit":I
    .end local v21    # "bufStart":I
    .local v3, "varLimit":I
    .local v7, "pos":I
    .restart local v8    # "c":C
    .local v13, "bufStart":I
    :sswitch_40e
    move/from16 v20, v3

    move v10, v7

    move v11, v8

    move/from16 v21, v13

    .end local v3    # "varLimit":I
    .end local v7    # "pos":I
    .end local v8    # "c":C
    .end local v13    # "bufStart":I
    .restart local v10    # "pos":I
    .restart local v11    # "c":C
    .restart local v20    # "varLimit":I
    .restart local v21    # "bufStart":I
    if-ne v10, v4, :cond_41c

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    .line 636
    move v13, v0

    goto/16 :goto_4ac

    .line 639
    :cond_41c
    const/4 v0, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 640
    .end local v11    # "c":C
    .local v3, "c":C
    const/16 v7, 0xa

    invoke-static {v3, v7}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v8

    .line 641
    .local v8, "r":I
    if-lt v8, v0, :cond_44d

    const/16 v0, 0x9

    if-gt v8, v0, :cond_44d

    .line 642
    const/16 v18, 0x0

    aput v10, v12, v18

    .line 643
    invoke-static {v2, v12, v7}, Landroid/icu/impl/Utility;->parseNumber(Ljava/lang/String;[II)I

    move-result v0

    .line 644
    .end local v8    # "r":I
    .local v0, "r":I
    if-gez v0, :cond_43c

    .line 645
    const-string v7, "Undefined segment reference"

    invoke-static {v7, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 648
    :cond_43c
    const/16 v18, 0x0

    aget v7, v12, v18

    .line 649
    .end local v10    # "pos":I
    .restart local v7    # "pos":I
    invoke-virtual {v5, v0}, Landroid/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v10, v19

    move/from16 v11, v20

    const/4 v13, 0x1

    goto :goto_480

    .line 651
    .end local v0    # "r":I
    .end local v7    # "pos":I
    .restart local v8    # "r":I
    .restart local v10    # "pos":I
    :cond_44d
    if-nez v19, :cond_456

    .line 652
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v11, 0x0

    invoke-direct {v0, v11}, Ljava/text/ParsePosition;-><init>(I)V

    .end local v19    # "pp":Ljava/text/ParsePosition;
    .local v0, "pp":Ljava/text/ParsePosition;
    goto :goto_458

    .line 651
    .end local v0    # "pp":Ljava/text/ParsePosition;
    .restart local v19    # "pp":Ljava/text/ParsePosition;
    :cond_456
    move-object/from16 v0, v19

    .line 654
    .end local v19    # "pp":Ljava/text/ParsePosition;
    .restart local v0    # "pp":Ljava/text/ParsePosition;
    :goto_458
    invoke-virtual {v0, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 655
    invoke-static {v5}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetparseData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;

    move-result-object v7

    .line 656
    invoke-virtual {v7, v2, v0, v4}, Landroid/icu/text/TransliteratorParser$ParseData;->parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;

    move-result-object v7

    .line 657
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_46e

    .line 663
    const/4 v13, 0x1

    iput-boolean v13, v1, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    .line 664
    move v3, v10

    move-object v10, v0

    move v0, v3

    move/from16 v3, v20

    goto :goto_4b1

    .line 666
    :cond_46e
    const/4 v13, 0x1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    .line 671
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    .line 672
    invoke-static {v5, v7, v6}, Landroid/icu/text/TransliteratorParser;->-$$Nest$mappendVariableDef(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 673
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    move v7, v10

    move-object v10, v0

    .line 676
    .end local v0    # "pp":Ljava/text/ParsePosition;
    .end local v8    # "r":I
    .end local v20    # "varLimit":I
    .local v7, "pos":I
    .local v10, "pp":Ljava/text/ParsePosition;
    .local v11, "varLimit":I
    :goto_480
    move v0, v7

    move v3, v11

    goto :goto_4b1

    .line 805
    .end local v3    # "c":C
    .end local v7    # "pos":I
    .local v10, "pos":I
    .local v11, "c":C
    .restart local v19    # "pp":Ljava/text/ParsePosition;
    .restart local v20    # "varLimit":I
    :cond_483
    :goto_483
    const/16 v0, 0x41

    if-lt v11, v0, :cond_48b

    const/16 v0, 0x5a

    if-le v11, v0, :cond_4a9

    :cond_48b
    const/16 v0, 0x61

    if-lt v11, v0, :cond_493

    const/16 v0, 0x7a

    if-le v11, v0, :cond_4a9

    .line 809
    :cond_493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unquoted "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v9}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 811
    :cond_4a9
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 814
    .end local v10    # "pos":I
    .end local v11    # "c":C
    .end local v20    # "varLimit":I
    .end local v21    # "bufStart":I
    .local v3, "varLimit":I
    .restart local v7    # "pos":I
    .restart local v13    # "bufStart":I
    :goto_4ac
    move v0, v10

    move-object/from16 v10, v19

    move/from16 v3, v20

    .end local v7    # "pos":I
    .end local v13    # "bufStart":I
    .end local v19    # "pp":Ljava/text/ParsePosition;
    .local v0, "pos":I
    .local v10, "pp":Ljava/text/ParsePosition;
    .restart local v21    # "bufStart":I
    :goto_4b1
    move v11, v13

    move/from16 v13, v21

    goto/16 :goto_20

    .line 462
    .end local v21    # "bufStart":I
    .restart local v13    # "bufStart":I
    :cond_4b6
    move/from16 v20, v3

    move-object/from16 v19, v10

    move/from16 v21, v13

    .line 815
    .end local v3    # "varLimit":I
    .end local v10    # "pp":Ljava/text/ParsePosition;
    .end local v13    # "bufStart":I
    .restart local v19    # "pp":Ljava/text/ParsePosition;
    .restart local v20    # "varLimit":I
    .restart local v21    # "bufStart":I
    :goto_4bc
    return v0

    nop

    :sswitch_data_4be
    .sparse-switch
        0x24 -> :sswitch_40e
        0x26 -> :sswitch_3a5
        0x28 -> :sswitch_35e
        0x29 -> :sswitch_351
        0x2a -> :sswitch_25c
        0x2b -> :sswitch_25c
        0x2e -> :sswitch_24d
        0x3f -> :sswitch_25c
        0x40 -> :sswitch_1a3
        0x5e -> :sswitch_181
        0x7b -> :sswitch_16a
        0x7c -> :sswitch_153
        0x7d -> :sswitch_13c
        0x2206 -> :sswitch_3a5
    .end sparse-switch

    :sswitch_data_4f8
    .sparse-switch
        0x2b -> :sswitch_2c2
        0x3f -> :sswitch_2ba
    .end sparse-switch
.end method


# virtual methods
.method public blacklist isValidInput(Landroid/icu/text/TransliteratorParser;)Z
    .registers 5
    .param p1, "parser"    # Landroid/icu/text/TransliteratorParser;

    .line 848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 849
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 850
    .local v1, "c":I
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 851
    invoke-static {p1}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetparseData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/icu/text/TransliteratorParser$ParseData;->isMatcher(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 852
    const/4 v2, 0x0

    return v2

    .line 854
    .end local v1    # "c":I
    :cond_20
    goto :goto_1

    .line 855
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isValidOutput(Landroid/icu/text/TransliteratorParser;)Z
    .registers 5
    .param p1, "parser"    # Landroid/icu/text/TransliteratorParser;

    .line 833
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 834
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 835
    .local v1, "c":I
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 836
    invoke-static {p1}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetparseData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/icu/text/TransliteratorParser$ParseData;->isReplacer(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 837
    const/4 v2, 0x0

    return v2

    .line 839
    .end local v1    # "c":I
    :cond_20
    goto :goto_1

    .line 840
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I
    .registers 15
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "parser"    # Landroid/icu/text/TransliteratorParser;

    .line 412
    move v0, p2

    .line 413
    .local v0, "start":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v1

    .line 414
    .local v7, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Landroid/icu/text/TransliteratorParser;->-$$Nest$sfgetILLEGAL_TOP()Landroid/icu/text/UnicodeSet;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "rule":Ljava/lang/String;
    .end local p2    # "pos":I
    .end local p3    # "limit":I
    .end local p4    # "parser":Landroid/icu/text/TransliteratorParser;
    .local v3, "rule":Ljava/lang/String;
    .local v4, "pos":I
    .local v5, "limit":I
    .local v6, "parser":Landroid/icu/text/TransliteratorParser;
    invoke-direct/range {v2 .. v9}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I

    move-result p1

    .line 415
    .end local v4    # "pos":I
    .local p1, "pos":I
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    .line 417
    iget p2, v2, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    if-lez p2, :cond_2a

    iget p2, v2, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    iget p3, v2, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    if-eq p2, p3, :cond_2a

    .line 418
    const-string p2, "Misplaced |"

    invoke-static {p2, v3, v0}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 421
    :cond_2a
    return p1
.end method

.method blacklist removeContext()V
    .registers 5

    .line 822
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    const/4 v2, 0x0

    if-gez v1, :cond_9

    move v1, v2

    goto :goto_b

    :cond_9
    iget v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    .line 823
    :goto_b
    iget v3, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-gez v3, :cond_16

    iget-object v3, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_18

    :cond_16
    iget v3, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    .line 822
    :goto_18
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    .line 824
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    .line 825
    iput-boolean v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    iput-boolean v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    .line 826
    return-void
.end method
