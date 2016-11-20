.class Landroid/icu/text/NumeratorSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field private final denominator:D

.field private final withZeros:Z


# direct methods
.method constructor <init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "denominator"    # D
    .param p4, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p5, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1457
    invoke-static {p5}, Landroid/icu/text/NumeratorSubstitution;->fixdesc(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p4, v0}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@7
    .line 1462
    iput-wide p2, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    #@9
    .line 1464
    const-string/jumbo v0, "<<"

    #@c
    invoke-virtual {p5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    iput-boolean v0, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    #@12
    .line 1456
    return-void
.end method

.method static fixdesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1468
    const-string/jumbo v0, "<<"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1469
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    const/4 v1, 0x0

    #@10
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object p0

    #@14
    .line 1468
    .end local p0    # "description":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2
    .param p1, "oldUpperBound"    # D

    #@0
    .prologue
    .line 1643
    iget-wide v0, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    #@2
    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    #@0
    .prologue
    .line 1634
    div-double v0, p1, p3

    #@2
    return-wide v0
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 19
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "baseValue"    # D
    .param p5, "upperBound"    # D
    .param p7, "lenientParse"    # Z

    #@0
    .prologue
    .line 1573
    const/16 v17, 0x0

    #@2
    .line 1574
    .local v17, "zeroCount":I
    move-object/from16 v0, p0

    #@4
    iget-boolean v3, v0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 1575
    move-object/from16 v16, p1

    #@a
    .line 1576
    .local v16, "workText":Ljava/lang/String;
    new-instance v11, Ljava/text/ParsePosition;

    #@c
    const/4 v3, 0x1

    #@d
    invoke-direct {v11, v3}, Ljava/text/ParsePosition;-><init>(I)V

    #@10
    .line 1579
    .local v11, "workPos":Ljava/text/ParsePosition;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    if-lez v3, :cond_1

    #@16
    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 1580
    const/4 v3, 0x0

    #@1d
    invoke-virtual {v11, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    #@20
    .line 1581
    move-object/from16 v0, p0

    #@22
    iget-object v3, v0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@24
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@26
    move-object/from16 v0, v16

    #@28
    invoke-virtual {v3, v0, v11, v4, v5}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    #@2f
    .line 1582
    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    #@32
    move-result v3

    #@33
    if-nez v3, :cond_3

    #@35
    .line 1597
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@38
    move-result v3

    #@39
    move-object/from16 v0, p1

    #@3b
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object p1

    #@3f
    .line 1598
    const/4 v3, 0x0

    #@40
    move-object/from16 v0, p2

    #@42
    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    #@45
    .line 1602
    .end local v11    # "workPos":Ljava/text/ParsePosition;
    .end local v16    # "workText":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    #@47
    iget-boolean v3, v0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    #@49
    if-eqz v3, :cond_4

    #@4b
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@4d
    :goto_0
    const/4 v10, 0x0

    #@4e
    move-object/from16 v3, p0

    #@50
    move-object/from16 v4, p1

    #@52
    move-object/from16 v5, p2

    #@54
    move-wide/from16 v8, p5

    #@56
    invoke-super/range {v3 .. v10}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    #@59
    move-result-object v2

    #@5a
    .line 1604
    .local v2, "result":Ljava/lang/Number;
    move-object/from16 v0, p0

    #@5c
    iget-boolean v3, v0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    #@5e
    if-eqz v3, :cond_7

    #@60
    .line 1609
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    #@63
    move-result-wide v14

    #@64
    .line 1610
    .local v14, "n":J
    const-wide/16 v12, 0x1

    #@66
    .line 1611
    .local v12, "d":J
    :goto_1
    cmp-long v3, v12, v14

    #@68
    if-gtz v3, :cond_5

    #@6a
    .line 1612
    const-wide/16 v4, 0xa

    #@6c
    mul-long/2addr v12, v4

    #@6d
    goto :goto_1

    #@6e
    .line 1588
    .end local v2    # "result":Ljava/lang/Number;
    .end local v12    # "d":J
    .end local v14    # "n":J
    .restart local v11    # "workPos":Ljava/text/ParsePosition;
    .restart local v16    # "workText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v17, v17, 0x1

    #@70
    .line 1589
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@73
    move-result v3

    #@74
    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    #@77
    move-result v4

    #@78
    add-int/2addr v3, v4

    #@79
    move-object/from16 v0, p2

    #@7b
    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    #@7e
    .line 1590
    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    #@81
    move-result v3

    #@82
    move-object/from16 v0, v16

    #@84
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@87
    move-result-object v16

    #@88
    .line 1591
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@8b
    move-result v3

    #@8c
    if-lez v3, :cond_0

    #@8e
    const/4 v3, 0x0

    #@8f
    move-object/from16 v0, v16

    #@91
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@94
    move-result v3

    #@95
    const/16 v4, 0x20

    #@97
    if-ne v3, v4, :cond_0

    #@99
    .line 1592
    const/4 v3, 0x1

    #@9a
    move-object/from16 v0, v16

    #@9c
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9f
    move-result-object v16

    #@a0
    .line 1593
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@a3
    move-result v3

    #@a4
    add-int/lit8 v3, v3, 0x1

    #@a6
    move-object/from16 v0, p2

    #@a8
    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    #@ab
    goto :goto_2

    #@ac
    .end local v11    # "workPos":Ljava/text/ParsePosition;
    .end local v16    # "workText":Ljava/lang/String;
    :cond_4
    move-wide/from16 v6, p3

    #@ae
    .line 1602
    goto :goto_0

    #@af
    .line 1615
    .restart local v2    # "result":Ljava/lang/Number;
    .restart local v12    # "d":J
    .restart local v14    # "n":J
    :cond_5
    :goto_3
    if-lez v17, :cond_6

    #@b1
    .line 1616
    const-wide/16 v4, 0xa

    #@b3
    mul-long/2addr v12, v4

    #@b4
    .line 1617
    add-int/lit8 v17, v17, -0x1

    #@b6
    goto :goto_3

    #@b7
    .line 1620
    :cond_6
    new-instance v2, Ljava/lang/Double;

    #@b9
    .end local v2    # "result":Ljava/lang/Number;
    long-to-double v4, v14

    #@ba
    long-to-double v6, v12

    #@bb
    div-double/2addr v4, v6

    #@bc
    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    #@bf
    .line 1623
    .end local v12    # "d":J
    .end local v14    # "n":J
    .restart local v2    # "result":Ljava/lang/Number;
    :cond_7
    return-object v2
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;II)V
    .locals 15
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    #@0
    .prologue
    .line 1509
    invoke-virtual/range {p0 .. p2}, Landroid/icu/text/NumeratorSubstitution;->transformNumber(D)D

    #@3
    move-result-wide v12

    #@4
    .line 1511
    .local v12, "numberToFormat":D
    iget-boolean v3, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    #@6
    if-eqz v3, :cond_1

    #@8
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 1513
    double-to-long v10, v12

    #@d
    .line 1514
    .local v10, "nf":J
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@10
    move-result v2

    #@11
    .line 1515
    .local v2, "len":I
    :goto_0
    const-wide/16 v4, 0xa

    #@13
    mul-long/2addr v10, v4

    #@14
    long-to-double v4, v10

    #@15
    iget-wide v6, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    #@17
    cmpg-double v3, v4, v6

    #@19
    if-gez v3, :cond_0

    #@1b
    .line 1516
    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@1d
    add-int v3, v3, p4

    #@1f
    const/16 v4, 0x20

    #@21
    move-object/from16 v0, p3

    #@23
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@26
    .line 1517
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@28
    const-wide/16 v4, 0x0

    #@2a
    iget v6, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@2c
    add-int v7, p4, v6

    #@2e
    move-object/from16 v6, p3

    #@30
    move/from16 v8, p5

    #@32
    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    #@35
    goto :goto_0

    #@36
    .line 1519
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@39
    move-result v3

    #@3a
    sub-int/2addr v3, v2

    #@3b
    add-int p4, p4, v3

    #@3d
    .line 1524
    .end local v2    # "len":I
    .end local v10    # "nf":J
    :cond_1
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    #@40
    move-result-wide v4

    #@41
    cmpl-double v3, v12, v4

    #@43
    if-nez v3, :cond_2

    #@45
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@47
    if-eqz v3, :cond_2

    #@49
    .line 1525
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@4b
    double-to-long v4, v12

    #@4c
    iget v6, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@4e
    add-int v7, p4, v6

    #@50
    move-object/from16 v6, p3

    #@52
    move/from16 v8, p5

    #@54
    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    #@57
    .line 1505
    :goto_1
    return-void

    #@58
    .line 1531
    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@5a
    if-eqz v3, :cond_3

    #@5c
    .line 1532
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@5e
    iget v4, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@60
    add-int v7, p4, v4

    #@62
    move-wide v4, v12

    #@63
    move-object/from16 v6, p3

    #@65
    move/from16 v8, p5

    #@67
    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;II)V

    #@6a
    goto :goto_1

    #@6b
    .line 1534
    :cond_3
    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@6d
    add-int v3, v3, p4

    #@6f
    iget-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@71
    invoke-virtual {v4, v12, v13}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    move-object/from16 v0, p3

    #@77
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@7a
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1483
    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 1484
    check-cast v0, Landroid/icu/text/NumeratorSubstitution;

    #@a
    .line 1485
    .local v0, "that2":Landroid/icu/text/NumeratorSubstitution;
    iget-wide v2, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    #@c
    iget-wide v4, v0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    #@e
    cmpl-double v2, v2, v4

    #@10
    if-nez v2, :cond_0

    #@12
    iget-boolean v2, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    #@14
    iget-boolean v3, v0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    #@16
    if-ne v2, v3, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    :cond_0
    return v1

    #@1a
    .line 1487
    .end local v0    # "that2":Landroid/icu/text/NumeratorSubstitution;
    :cond_1
    return v1
.end method

.method tokenChar()C
    .locals 1

    #@0
    .prologue
    .line 1655
    const/16 v0, 0x3c

    #@2
    return v0
.end method

.method public transformNumber(D)D
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 1554
    iget-wide v0, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    #@2
    mul-double/2addr v0, p1

    #@3
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    #@6
    move-result-wide v0

    #@7
    long-to-double v0, v0

    #@8
    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 5
    .param p1, "number"    # J

    #@0
    .prologue
    .line 1545
    long-to-double v0, p1

    #@1
    iget-wide v2, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    #@3
    mul-double/2addr v0, v2

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method
