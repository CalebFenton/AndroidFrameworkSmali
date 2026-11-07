.class Landroid/icu/text/NumeratorSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field private final blacklist denominator:D

.field private final blacklist withZeros:Z


# direct methods
.method constructor blacklist <init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .registers 7
    .param p1, "pos"    # I
    .param p2, "denominator"    # D
    .param p4, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p5, "description"    # Ljava/lang/String;

    .line 1530
    invoke-static {p5}, Landroid/icu/text/NumeratorSubstitution;->fixdesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 1535
    iput-wide p2, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    .line 1537
    const-string v0, "<<"

    invoke-virtual {p5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    .line 1538
    return-void
.end method

.method static blacklist fixdesc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "description"    # Ljava/lang/String;

    .line 1541
    const-string v0, "<<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1542
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 1543
    :cond_14
    move-object v0, p0

    .line 1541
    :goto_15
    return-object v0
.end method


# virtual methods
.method public blacklist calcUpperBound(D)D
    .registers 5
    .param p1, "oldUpperBound"    # D

    .line 1723
    iget-wide v0, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    return-wide v0
.end method

.method public blacklist composeRuleValue(DD)D
    .registers 7
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    .line 1713
    div-double v0, p1, p3

    return-wide v0
.end method

.method public blacklist doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZII)Ljava/lang/Number;
    .registers 23
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "baseValue"    # D
    .param p5, "upperBound"    # D
    .param p7, "lenientParse"    # Z
    .param p8, "nonNumericalExecutedRuleMask"    # I
    .param p9, "recursionCount"    # I

    .line 1651
    const/4 v1, 0x0

    .line 1652
    .local v1, "zeroCount":I
    iget-boolean v3, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v3, :cond_74

    .line 1653
    move-object v3, p1

    .line 1654
    .local v3, "workText":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v8, v4

    move-object v7, v3

    .line 1657
    .end local v3    # "workText":Ljava/lang/String;
    .local v7, "workText":Ljava/lang/String;
    .local v8, "workPos":Ljava/text/ParsePosition;
    :cond_e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_66

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-eqz v3, :cond_66

    .line 1658
    invoke-virtual {v8, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1659
    iget-object v6, p0, Landroid/icu/text/NumeratorSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v6 .. v12}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;DII)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1660
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_34

    .line 1663
    goto :goto_66

    .line 1666
    :cond_34
    add-int/lit8 v1, v1, 0x1

    .line 1667
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1668
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 1669
    :goto_4b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x20

    if-ne v3, v6, :cond_e

    .line 1670
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1671
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_4b

    .line 1675
    :cond_66
    :goto_66
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1676
    .end local p1    # "text":Ljava/lang/String;
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    move v10, v1

    move-object v1, v3

    goto :goto_76

    .line 1652
    .end local v3    # "text":Ljava/lang/String;
    .end local v7    # "workText":Ljava/lang/String;
    .end local v8    # "workPos":Ljava/text/ParsePosition;
    .restart local p1    # "text":Ljava/lang/String;
    :cond_74
    move v10, v1

    move-object v1, p1

    .line 1680
    .end local p1    # "text":Ljava/lang/String;
    .local v1, "text":Ljava/lang/String;
    .local v10, "zeroCount":I
    :goto_76
    iget-boolean v3, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v3, :cond_7d

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_7f

    :cond_7d
    move-wide/from16 v3, p3

    :goto_7f
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v5, p5

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZII)Ljava/lang/Number;

    move-result-object v3

    .line 1682
    .local v3, "result":Ljava/lang/Number;
    iget-boolean v2, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v2, :cond_ab

    .line 1687
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 1688
    .local v4, "n":J
    const-wide/16 v6, 0x1

    .line 1689
    .local v6, "d":J
    :goto_96
    cmp-long v2, v6, v4

    const-wide/16 v8, 0xa

    if-gtz v2, :cond_9e

    .line 1690
    mul-long/2addr v6, v8

    goto :goto_96

    .line 1693
    :cond_9e
    :goto_9e
    if-lez v10, :cond_a4

    .line 1694
    mul-long/2addr v6, v8

    .line 1695
    add-int/lit8 v10, v10, -0x1

    goto :goto_9e

    .line 1698
    :cond_a4
    long-to-double v8, v4

    long-to-double v11, v6

    div-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1701
    .end local v4    # "n":J
    .end local v6    # "d":J
    :cond_ab
    return-object v3
.end method

.method public blacklist doSubstitution(DLjava/lang/StringBuilder;II)V
    .registers 17
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuilder;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    .line 1584
    invoke-virtual/range {p0 .. p2}, Landroid/icu/text/NumeratorSubstitution;->transformNumber(D)D

    move-result-wide v6

    .line 1586
    .local v6, "numberToFormat":D
    iget-boolean v0, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/icu/text/NumeratorSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_3c

    .line 1588
    double-to-long v0, v6

    .line 1589
    .local v0, "nf":J
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 1590
    .local v8, "len":I
    :goto_11
    const-wide/16 v4, 0xa

    mul-long/2addr v4, v0

    move-wide v9, v4

    .end local v0    # "nf":J
    .local v9, "nf":J
    long-to-double v0, v4

    iget-wide v4, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_34

    .line 1591
    iget v0, p0, Landroid/icu/text/NumeratorSubstitution;->pos:I

    add-int/2addr v0, p4

    const/16 v1, 0x20

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1592
    iget-object v0, p0, Landroid/icu/text/NumeratorSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget v1, p0, Landroid/icu/text/NumeratorSubstitution;->pos:I

    add-int v4, p4, v1

    const-wide/16 v1, 0x0

    move-object v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    move-wide v0, v9

    goto :goto_11

    .line 1594
    :cond_34
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v8

    add-int/2addr v0, p4

    move v8, v0

    .end local p4    # "position":I
    .local v0, "position":I
    goto :goto_3d

    .line 1599
    .end local v0    # "position":I
    .end local v8    # "len":I
    .end local v9    # "nf":J
    .restart local p4    # "position":I
    :cond_3c
    move v8, p4

    .end local p4    # "position":I
    .local v8, "position":I
    :goto_3d
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_58

    iget-object v0, p0, Landroid/icu/text/NumeratorSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_58

    .line 1600
    iget-object v0, p0, Landroid/icu/text/NumeratorSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    double-to-long v1, v6

    iget v3, p0, Landroid/icu/text/NumeratorSubstitution;->pos:I

    add-int v4, v8, v3

    move-object v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    move-wide v1, v6

    goto :goto_77

    .line 1606
    :cond_58
    iget-object v0, p0, Landroid/icu/text/NumeratorSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_6a

    .line 1607
    iget-object v0, p0, Landroid/icu/text/NumeratorSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget v1, p0, Landroid/icu/text/NumeratorSubstitution;->pos:I

    add-int v4, v8, v1

    move-object v3, p3

    move/from16 v5, p5

    move-wide v1, v6

    .end local v6    # "numberToFormat":D
    .local v1, "numberToFormat":D
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuilder;II)V

    goto :goto_77

    .line 1609
    .end local v1    # "numberToFormat":D
    .restart local v6    # "numberToFormat":D
    :cond_6a
    move-wide v1, v6

    .end local v6    # "numberToFormat":D
    .restart local v1    # "numberToFormat":D
    iget v0, p0, Landroid/icu/text/NumeratorSubstitution;->pos:I

    add-int/2addr v0, v8

    iget-object v4, p0, Landroid/icu/text/NumeratorSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v4, v1, v2}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    :goto_77
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "that"    # Ljava/lang/Object;

    .line 1557
    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1558
    move-object v0, p1

    check-cast v0, Landroid/icu/text/NumeratorSubstitution;

    .line 1559
    .local v0, "that2":Landroid/icu/text/NumeratorSubstitution;
    iget-wide v2, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    iget-wide v4, v0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_19

    iget-boolean v2, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    iget-boolean v3, v0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 1561
    .end local v0    # "that2":Landroid/icu/text/NumeratorSubstitution;
    :cond_1a
    return v1
.end method

.method blacklist tokenChar()C
    .registers 2

    .line 1736
    const/16 v0, 0x3c

    return v0
.end method

.method public blacklist transformNumber(D)D
    .registers 5
    .param p1, "number"    # D

    .line 1631
    iget-wide v0, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public blacklist transformNumber(J)J
    .registers 7
    .param p1, "number"    # J

    .line 1621
    long-to-double v0, p1

    iget-wide v2, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method
