.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor <init>(Landroid/widget/SpellChecker;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/SpellChecker;

    #@0
    .prologue
    .line 502
    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 503
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    #@c
    .line 502
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$SpellParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SpellChecker;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    #@3
    return-void
.end method

.method private removeRangeSpan(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    #@2
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@5
    .line 535
    return-void
.end method

.method private removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 741
    .local p3, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v2, p3

    #@1
    .line 742
    .local v2, "length":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@4
    .line 743
    aget-object v3, p3, v1

    #@6
    .line 744
    .local v3, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@9
    move-result v4

    #@a
    .line 745
    .local v4, "start":I
    if-le v4, p2, :cond_1

    #@c
    .line 742
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 746
    :cond_1
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@12
    move-result v0

    #@13
    .line 747
    .local v0, "end":I
    if-lt v0, p2, :cond_0

    #@15
    .line 748
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@18
    goto :goto_1

    #@19
    .line 740
    .end local v0    # "end":I
    .end local v3    # "span":Ljava/lang/Object;, "TT;"
    .end local v4    # "start":I
    :cond_2
    return-void
.end method

.method private setRangeSpan(Landroid/text/Editable;II)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    #@2
    const/16 v1, 0x21

    #@4
    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@7
    .line 528
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 521
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@3
    invoke-static {v0}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/text/Editable;

    #@d
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    #@f
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@12
    move-result v0

    #@13
    if-gez v0, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
    goto :goto_0
.end method

.method public parse()V
    .locals 25

    #@0
    .prologue
    .line 544
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@4
    move-object/from16 v22, v0

    #@6
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    #@9
    move-result-object v22

    #@a
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v5

    #@e
    check-cast v5, Landroid/text/Editable;

    #@10
    .line 547
    .local v5, "editable":Landroid/text/Editable;
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@14
    move-object/from16 v22, v0

    #@16
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get2(Landroid/widget/SpellChecker;)Z

    #@19
    move-result v22

    #@1a
    if-eqz v22, :cond_1

    #@1c
    .line 551
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    #@20
    move-object/from16 v22, v0

    #@22
    move-object/from16 v0, v22

    #@24
    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@27
    move-result v22

    #@28
    add-int/lit8 v22, v22, -0x32

    #@2a
    const/16 v23, 0x0

    #@2c
    .line 550
    move/from16 v0, v23

    #@2e
    move/from16 v1, v22

    #@30
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@33
    move-result v16

    #@34
    .line 556
    .local v16, "start":I
    :goto_0
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    #@38
    move-object/from16 v22, v0

    #@3a
    move-object/from16 v0, v22

    #@3c
    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@3f
    move-result v6

    #@40
    .line 558
    .local v6, "end":I
    move/from16 v0, v16

    #@42
    add-int/lit16 v0, v0, 0x15e

    #@44
    move/from16 v22, v0

    #@46
    move/from16 v0, v22

    #@48
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    #@4b
    move-result v20

    #@4c
    .line 559
    .local v20, "wordIteratorWindowEnd":I
    move-object/from16 v0, p0

    #@4e
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@50
    move-object/from16 v22, v0

    #@52
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@55
    move-result-object v22

    #@56
    move-object/from16 v0, v22

    #@58
    move/from16 v1, v16

    #@5a
    move/from16 v2, v20

    #@5c
    invoke-virtual {v0, v5, v1, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@5f
    .line 562
    move-object/from16 v0, p0

    #@61
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@63
    move-object/from16 v22, v0

    #@65
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@68
    move-result-object v22

    #@69
    move-object/from16 v0, v22

    #@6b
    move/from16 v1, v16

    #@6d
    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->preceding(I)I

    #@70
    move-result v21

    #@71
    .line 564
    .local v21, "wordStart":I
    const/16 v22, -0x1

    #@73
    move/from16 v0, v21

    #@75
    move/from16 v1, v22

    #@77
    if-ne v0, v1, :cond_2

    #@79
    .line 565
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@7d
    move-object/from16 v22, v0

    #@7f
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@82
    move-result-object v22

    #@83
    move-object/from16 v0, v22

    #@85
    move/from16 v1, v16

    #@87
    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->following(I)I

    #@8a
    move-result v19

    #@8b
    .line 566
    .local v19, "wordEnd":I
    const/16 v22, -0x1

    #@8d
    move/from16 v0, v19

    #@8f
    move/from16 v1, v22

    #@91
    if-eq v0, v1, :cond_0

    #@93
    .line 567
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@97
    move-object/from16 v22, v0

    #@99
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@9c
    move-result-object v22

    #@9d
    move-object/from16 v0, v22

    #@9f
    move/from16 v1, v19

    #@a1
    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    #@a4
    move-result v21

    #@a5
    .line 572
    :cond_0
    :goto_1
    const/16 v22, -0x1

    #@a7
    move/from16 v0, v19

    #@a9
    move/from16 v1, v22

    #@ab
    if-ne v0, v1, :cond_3

    #@ad
    .line 576
    move-object/from16 v0, p0

    #@af
    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    #@b2
    .line 577
    return-void

    #@b3
    .line 553
    .end local v6    # "end":I
    .end local v16    # "start":I
    .end local v19    # "wordEnd":I
    .end local v20    # "wordIteratorWindowEnd":I
    .end local v21    # "wordStart":I
    :cond_1
    move-object/from16 v0, p0

    #@b5
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    #@b7
    move-object/from16 v22, v0

    #@b9
    move-object/from16 v0, v22

    #@bb
    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@be
    move-result v16

    #@bf
    .restart local v16    # "start":I
    goto/16 :goto_0

    #@c1
    .line 570
    .restart local v6    # "end":I
    .restart local v20    # "wordIteratorWindowEnd":I
    .restart local v21    # "wordStart":I
    :cond_2
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@c5
    move-object/from16 v22, v0

    #@c7
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@ca
    move-result-object v22

    #@cb
    move-object/from16 v0, v22

    #@cd
    move/from16 v1, v21

    #@cf
    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getEnd(I)I

    #@d2
    move-result v19

    #@d3
    .restart local v19    # "wordEnd":I
    goto :goto_1

    #@d4
    .line 582
    :cond_3
    add-int/lit8 v22, v16, -0x1

    #@d6
    add-int/lit8 v23, v6, 0x1

    #@d8
    .line 583
    const-class v24, Landroid/text/style/SpellCheckSpan;

    #@da
    .line 582
    move/from16 v0, v22

    #@dc
    move/from16 v1, v23

    #@de
    move-object/from16 v2, v24

    #@e0
    invoke-interface {v5, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@e3
    move-result-object v14

    #@e4
    check-cast v14, [Landroid/text/style/SpellCheckSpan;

    #@e6
    .line 584
    .local v14, "spellCheckSpans":[Landroid/text/style/SpellCheckSpan;
    add-int/lit8 v22, v16, -0x1

    #@e8
    add-int/lit8 v23, v6, 0x1

    #@ea
    .line 585
    const-class v24, Landroid/text/style/SuggestionSpan;

    #@ec
    .line 584
    move/from16 v0, v22

    #@ee
    move/from16 v1, v23

    #@f0
    move-object/from16 v2, v24

    #@f2
    invoke-interface {v5, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@f5
    move-result-object v17

    #@f6
    check-cast v17, [Landroid/text/style/SuggestionSpan;

    #@f8
    .line 587
    .local v17, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/16 v18, 0x0

    #@fa
    .line 588
    .local v18, "wordCount":I
    const/4 v9, 0x0

    #@fb
    .line 590
    .local v9, "scheduleOtherSpellCheck":Z
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@ff
    move-object/from16 v22, v0

    #@101
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get2(Landroid/widget/SpellChecker;)Z

    #@104
    move-result v22

    #@105
    if-eqz v22, :cond_11

    #@107
    .line 591
    move/from16 v0, v20

    #@109
    if-ge v0, v6, :cond_4

    #@10b
    .line 596
    const/4 v9, 0x1

    #@10c
    .line 598
    :cond_4
    move-object/from16 v0, p0

    #@10e
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@110
    move-object/from16 v22, v0

    #@112
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@115
    move-result-object v22

    #@116
    move-object/from16 v0, v22

    #@118
    move/from16 v1, v20

    #@11a
    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->preceding(I)I

    #@11d
    move-result v12

    #@11e
    .line 599
    .local v12, "spellCheckEnd":I
    const/16 v22, -0x1

    #@120
    move/from16 v0, v22

    #@122
    if-eq v12, v0, :cond_6

    #@124
    const/4 v3, 0x1

    #@125
    .line 600
    .local v3, "correct":Z
    :goto_2
    if-eqz v3, :cond_5

    #@127
    .line 601
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@12b
    move-object/from16 v22, v0

    #@12d
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@130
    move-result-object v22

    #@131
    move-object/from16 v0, v22

    #@133
    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->getEnd(I)I

    #@136
    move-result v12

    #@137
    .line 602
    const/16 v22, -0x1

    #@139
    move/from16 v0, v22

    #@13b
    if-eq v12, v0, :cond_7

    #@13d
    const/4 v3, 0x1

    #@13e
    .line 604
    :cond_5
    :goto_3
    if-nez v3, :cond_8

    #@140
    .line 608
    move-object/from16 v0, p0

    #@142
    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    #@145
    .line 609
    return-void

    #@146
    .line 599
    .end local v3    # "correct":Z
    :cond_6
    const/4 v3, 0x0

    #@147
    .restart local v3    # "correct":Z
    goto :goto_2

    #@148
    .line 602
    :cond_7
    const/4 v3, 0x0

    #@149
    goto :goto_3

    #@14a
    .line 613
    :cond_8
    move/from16 v15, v21

    #@14c
    .line 614
    .local v15, "spellCheckStart":I
    const/4 v4, 0x1

    #@14d
    .line 616
    .local v4, "createSpellCheckSpan":Z
    const/4 v7, 0x0

    #@14e
    .local v7, "i":I
    :goto_4
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@152
    move-object/from16 v22, v0

    #@154
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get3(Landroid/widget/SpellChecker;)I

    #@157
    move-result v22

    #@158
    move/from16 v0, v22

    #@15a
    if-ge v7, v0, :cond_b

    #@15c
    .line 617
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@160
    move-object/from16 v22, v0

    #@162
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get4(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    #@165
    move-result-object v22

    #@166
    aget-object v13, v22, v7

    #@168
    .line 618
    .local v13, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@16c
    move-object/from16 v22, v0

    #@16e
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get1(Landroid/widget/SpellChecker;)[I

    #@171
    move-result-object v22

    #@172
    aget v22, v22, v7

    #@174
    if-ltz v22, :cond_9

    #@176
    invoke-virtual {v13}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    #@179
    move-result v22

    #@17a
    if-eqz v22, :cond_a

    #@17c
    .line 616
    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    #@17e
    goto :goto_4

    #@17f
    .line 621
    :cond_a
    invoke-interface {v5, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@182
    move-result v11

    #@183
    .line 622
    .local v11, "spanStart":I
    invoke-interface {v5, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@186
    move-result v10

    #@187
    .line 623
    .local v10, "spanEnd":I
    if-lt v10, v15, :cond_9

    #@189
    if-lt v12, v11, :cond_9

    #@18b
    .line 627
    if-gt v11, v15, :cond_e

    #@18d
    if-gt v12, v10, :cond_e

    #@18f
    .line 630
    const/4 v4, 0x0

    #@190
    .line 650
    .end local v10    # "spanEnd":I
    .end local v11    # "spanStart":I
    .end local v13    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_b
    move/from16 v0, v16

    #@192
    if-ge v12, v0, :cond_f

    #@194
    .line 662
    :cond_c
    :goto_6
    move/from16 v21, v12

    #@196
    .line 730
    .end local v3    # "correct":Z
    .end local v4    # "createSpellCheckSpan":Z
    .end local v7    # "i":I
    .end local v12    # "spellCheckEnd":I
    .end local v15    # "spellCheckStart":I
    :cond_d
    :goto_7
    if-eqz v9, :cond_1d

    #@198
    const/16 v22, -0x1

    #@19a
    move/from16 v0, v21

    #@19c
    move/from16 v1, v22

    #@19e
    if-eq v0, v1, :cond_1d

    #@1a0
    move/from16 v0, v21

    #@1a2
    if-gt v0, v6, :cond_1d

    #@1a4
    .line 732
    move-object/from16 v0, p0

    #@1a6
    move/from16 v1, v21

    #@1a8
    invoke-direct {v0, v5, v1, v6}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    #@1ab
    .line 737
    :goto_8
    move-object/from16 v0, p0

    #@1ad
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@1af
    move-object/from16 v22, v0

    #@1b1
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-wrap1(Landroid/widget/SpellChecker;)V

    #@1b4
    .line 543
    return-void

    #@1b5
    .line 637
    .restart local v3    # "correct":Z
    .restart local v4    # "createSpellCheckSpan":Z
    .restart local v7    # "i":I
    .restart local v10    # "spanEnd":I
    .restart local v11    # "spanStart":I
    .restart local v12    # "spellCheckEnd":I
    .restart local v13    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .restart local v15    # "spellCheckStart":I
    :cond_e
    invoke-interface {v5, v13}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@1b8
    .line 638
    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    #@1bb
    move-result v15

    #@1bc
    .line 639
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    #@1bf
    move-result v12

    #@1c0
    goto :goto_5

    #@1c1
    .line 653
    .end local v10    # "spanEnd":I
    .end local v11    # "spanStart":I
    .end local v13    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_f
    if-gt v12, v15, :cond_10

    #@1c3
    .line 654
    invoke-static {}, Landroid/widget/SpellChecker;->-get0()Ljava/lang/String;

    #@1c6
    move-result-object v22

    #@1c7
    new-instance v23, Ljava/lang/StringBuilder;

    #@1c9
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1cc
    const-string/jumbo v24, "Trying to spellcheck invalid region, from "

    #@1cf
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v23

    #@1d3
    move-object/from16 v0, v23

    #@1d5
    move/from16 v1, v16

    #@1d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v23

    #@1db
    .line 655
    const-string/jumbo v24, " to "

    #@1de
    .line 654
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v23

    #@1e2
    move-object/from16 v0, v23

    #@1e4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v23

    #@1e8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v23

    #@1ec
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ef
    goto :goto_6

    #@1f0
    .line 658
    :cond_10
    if-eqz v4, :cond_c

    #@1f2
    .line 659
    move-object/from16 v0, p0

    #@1f4
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@1f6
    move-object/from16 v22, v0

    #@1f8
    move-object/from16 v0, v22

    #@1fa
    invoke-static {v0, v5, v15, v12}, Landroid/widget/SpellChecker;->-wrap0(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    #@1fd
    goto :goto_6

    #@1fe
    .line 664
    .end local v3    # "correct":Z
    .end local v4    # "createSpellCheckSpan":Z
    .end local v7    # "i":I
    .end local v12    # "spellCheckEnd":I
    .end local v15    # "spellCheckStart":I
    :cond_11
    move/from16 v0, v21

    #@200
    if-gt v0, v6, :cond_d

    #@202
    .line 665
    move/from16 v0, v19

    #@204
    move/from16 v1, v16

    #@206
    if-lt v0, v1, :cond_18

    #@208
    move/from16 v0, v19

    #@20a
    move/from16 v1, v21

    #@20c
    if-le v0, v1, :cond_18

    #@20e
    .line 666
    const/16 v22, 0x32

    #@210
    move/from16 v0, v18

    #@212
    move/from16 v1, v22

    #@214
    if-lt v0, v1, :cond_12

    #@216
    .line 667
    const/4 v9, 0x1

    #@217
    .line 668
    goto/16 :goto_7

    #@219
    .line 673
    :cond_12
    move/from16 v0, v21

    #@21b
    move/from16 v1, v16

    #@21d
    if-ge v0, v1, :cond_13

    #@21f
    move/from16 v0, v19

    #@221
    move/from16 v1, v16

    #@223
    if-le v0, v1, :cond_13

    #@225
    .line 674
    move-object/from16 v0, p0

    #@227
    move/from16 v1, v16

    #@229
    invoke-direct {v0, v5, v1, v14}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    #@22c
    .line 675
    move-object/from16 v0, p0

    #@22e
    move/from16 v1, v16

    #@230
    move-object/from16 v2, v17

    #@232
    invoke-direct {v0, v5, v1, v2}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    #@235
    .line 678
    :cond_13
    move/from16 v0, v21

    #@237
    if-ge v0, v6, :cond_14

    #@239
    move/from16 v0, v19

    #@23b
    if-le v0, v6, :cond_14

    #@23d
    .line 679
    move-object/from16 v0, p0

    #@23f
    invoke-direct {v0, v5, v6, v14}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    #@242
    .line 680
    move-object/from16 v0, p0

    #@244
    move-object/from16 v1, v17

    #@246
    invoke-direct {v0, v5, v6, v1}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    #@249
    .line 684
    :cond_14
    const/4 v4, 0x1

    #@24a
    .line 685
    .restart local v4    # "createSpellCheckSpan":Z
    move/from16 v0, v19

    #@24c
    move/from16 v1, v16

    #@24e
    if-ne v0, v1, :cond_15

    #@250
    .line 686
    const/4 v7, 0x0

    #@251
    .restart local v7    # "i":I
    :goto_9
    array-length v0, v14

    #@252
    move/from16 v22, v0

    #@254
    move/from16 v0, v22

    #@256
    if-ge v7, v0, :cond_15

    #@258
    .line 687
    aget-object v22, v14, v7

    #@25a
    move-object/from16 v0, v22

    #@25c
    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@25f
    move-result v10

    #@260
    .line 688
    .restart local v10    # "spanEnd":I
    move/from16 v0, v16

    #@262
    if-ne v10, v0, :cond_1b

    #@264
    .line 689
    const/4 v4, 0x0

    #@265
    .line 695
    .end local v7    # "i":I
    .end local v10    # "spanEnd":I
    :cond_15
    move/from16 v0, v21

    #@267
    if-ne v0, v6, :cond_16

    #@269
    .line 696
    const/4 v7, 0x0

    #@26a
    .restart local v7    # "i":I
    :goto_a
    array-length v0, v14

    #@26b
    move/from16 v22, v0

    #@26d
    move/from16 v0, v22

    #@26f
    if-ge v7, v0, :cond_16

    #@271
    .line 697
    aget-object v22, v14, v7

    #@273
    move-object/from16 v0, v22

    #@275
    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@278
    move-result v11

    #@279
    .line 698
    .restart local v11    # "spanStart":I
    if-ne v11, v6, :cond_1c

    #@27b
    .line 699
    const/4 v4, 0x0

    #@27c
    .line 705
    .end local v7    # "i":I
    .end local v11    # "spanStart":I
    :cond_16
    if-eqz v4, :cond_17

    #@27e
    .line 706
    move-object/from16 v0, p0

    #@280
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@282
    move-object/from16 v22, v0

    #@284
    move-object/from16 v0, v22

    #@286
    move/from16 v1, v21

    #@288
    move/from16 v2, v19

    #@28a
    invoke-static {v0, v5, v1, v2}, Landroid/widget/SpellChecker;->-wrap0(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    #@28d
    .line 708
    :cond_17
    add-int/lit8 v18, v18, 0x1

    #@28f
    .line 712
    .end local v4    # "createSpellCheckSpan":Z
    :cond_18
    move/from16 v8, v19

    #@291
    .line 713
    .local v8, "originalWordEnd":I
    move-object/from16 v0, p0

    #@293
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@295
    move-object/from16 v22, v0

    #@297
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@29a
    move-result-object v22

    #@29b
    move-object/from16 v0, v22

    #@29d
    move/from16 v1, v19

    #@29f
    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->following(I)I

    #@2a2
    move-result v19

    #@2a3
    .line 714
    move/from16 v0, v20

    #@2a5
    if-ge v0, v6, :cond_1a

    #@2a7
    .line 715
    const/16 v22, -0x1

    #@2a9
    move/from16 v0, v19

    #@2ab
    move/from16 v1, v22

    #@2ad
    if-eq v0, v1, :cond_19

    #@2af
    move/from16 v0, v19

    #@2b1
    move/from16 v1, v20

    #@2b3
    if-lt v0, v1, :cond_1a

    #@2b5
    .line 717
    :cond_19
    add-int/lit16 v0, v8, 0x15e

    #@2b7
    move/from16 v22, v0

    #@2b9
    move/from16 v0, v22

    #@2bb
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    #@2be
    move-result v20

    #@2bf
    .line 718
    move-object/from16 v0, p0

    #@2c1
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@2c3
    move-object/from16 v22, v0

    #@2c5
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@2c8
    move-result-object v22

    #@2c9
    move-object/from16 v0, v22

    #@2cb
    move/from16 v1, v20

    #@2cd
    invoke-virtual {v0, v5, v8, v1}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@2d0
    .line 720
    move-object/from16 v0, p0

    #@2d2
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@2d4
    move-object/from16 v22, v0

    #@2d6
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@2d9
    move-result-object v22

    #@2da
    move-object/from16 v0, v22

    #@2dc
    invoke-virtual {v0, v8}, Landroid/text/method/WordIterator;->following(I)I

    #@2df
    move-result v19

    #@2e0
    .line 722
    :cond_1a
    const/16 v22, -0x1

    #@2e2
    move/from16 v0, v19

    #@2e4
    move/from16 v1, v22

    #@2e6
    if-eq v0, v1, :cond_d

    #@2e8
    .line 723
    move-object/from16 v0, p0

    #@2ea
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@2ec
    move-object/from16 v22, v0

    #@2ee
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    #@2f1
    move-result-object v22

    #@2f2
    move-object/from16 v0, v22

    #@2f4
    move/from16 v1, v19

    #@2f6
    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    #@2f9
    move-result v21

    #@2fa
    .line 724
    const/16 v22, -0x1

    #@2fc
    move/from16 v0, v21

    #@2fe
    move/from16 v1, v22

    #@300
    if-ne v0, v1, :cond_11

    #@302
    goto/16 :goto_7

    #@304
    .line 686
    .end local v8    # "originalWordEnd":I
    .restart local v4    # "createSpellCheckSpan":Z
    .restart local v7    # "i":I
    .restart local v10    # "spanEnd":I
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    #@306
    goto/16 :goto_9

    #@308
    .line 696
    .end local v10    # "spanEnd":I
    .restart local v11    # "spanStart":I
    :cond_1c
    add-int/lit8 v7, v7, 0x1

    #@30a
    goto/16 :goto_a

    #@30c
    .line 734
    .end local v4    # "createSpellCheckSpan":Z
    .end local v7    # "i":I
    .end local v11    # "spanStart":I
    :cond_1d
    move-object/from16 v0, p0

    #@30e
    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    #@311
    goto/16 :goto_8
.end method

.method public parse(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 506
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@2
    invoke-static {v2}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    #@9
    move-result v0

    #@a
    .line 508
    .local v0, "max":I
    if-le p2, v0, :cond_1

    #@c
    .line 509
    invoke-static {}, Landroid/widget/SpellChecker;->-get0()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Parse invalid region, from "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, " to "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 510
    move v1, v0

    #@33
    .line 514
    .local v1, "parseEnd":I
    :goto_0
    if-le v1, p1, :cond_0

    #@35
    .line 515
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@37
    invoke-static {v2}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Landroid/text/Editable;

    #@41
    invoke-direct {p0, v2, p1, v1}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    #@44
    .line 516
    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    #@47
    .line 505
    :cond_0
    return-void

    #@48
    .line 512
    .end local v1    # "parseEnd":I
    :cond_1
    move v1, p2

    #@49
    .restart local v1    # "parseEnd":I
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #@2
    invoke-static {v0}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/text/Editable;

    #@c
    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    #@f
    .line 524
    return-void
.end method
