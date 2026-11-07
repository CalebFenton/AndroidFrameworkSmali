.class Landroid/icu/text/FractionalPartSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field private final blacklist byDigits:Z

.field private final blacklist useSpaces:Z


# direct methods
.method constructor blacklist <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .registers 7
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "description"    # Ljava/lang/String;

    .line 1222
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 1223
    const-string v0, ">>"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ">>>"

    const/4 v2, 0x1

    if-nez v0, :cond_24

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/icu/text/FractionalPartSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-ne p2, v0, :cond_19

    goto :goto_24

    .line 1227
    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    .line 1228
    iput-boolean v2, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    .line 1229
    iget-object v0, p0, Landroid/icu/text/FractionalPartSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->makeIntoFractionRuleSet()V

    goto :goto_2d

    .line 1224
    :cond_24
    :goto_24
    iput-boolean v2, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    .line 1225
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    .line 1231
    :goto_2d
    return-void
.end method


# virtual methods
.method public blacklist calcUpperBound(D)D
    .registers 5
    .param p1, "oldUpperBound"    # D

    .line 1386
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist composeRuleValue(DD)D
    .registers 7
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    .line 1378
    add-double v0, p1, p3

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

    .line 1324
    iget-boolean v0, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    if-nez v0, :cond_16

    .line 1325
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-super/range {v1 .. v10}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZII)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 1332
    :cond_16
    move-object v0, p1

    .line 1333
    .local v0, "workText":Ljava/lang/String;
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1337
    .local v6, "workPos":Ljava/text/ParsePosition;
    new-instance v4, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v4}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    move-object v11, v4

    .line 1338
    .local v11, "fq":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    const/4 v4, 0x0

    move-object v5, v0

    move v0, v4

    .line 1339
    .local v0, "totalDigits":I
    .local v5, "workText":Ljava/lang/String;
    :cond_26
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9b

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-eqz v4, :cond_9b

    .line 1340
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1341
    iget-object v4, p0, Landroid/icu/text/FractionalPartSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v4 .. v10}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;DII)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 1342
    .local v4, "digit":I
    if-eqz p7, :cond_60

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-nez v7, :cond_60

    .line 1343
    iget-object v7, p0, Landroid/icu/text/FractionalPartSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget-object v7, v7, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v7}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v7

    .line 1344
    .local v7, "n":Ljava/lang/Number;
    if-eqz v7, :cond_60

    .line 1345
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 1349
    .end local v7    # "n":Ljava/lang/Number;
    :cond_60
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-eqz v7, :cond_26

    .line 1350
    int-to-byte v7, v4

    invoke-virtual {v11, v7, v12, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    .line 1351
    add-int/lit8 v0, v0, 0x1

    .line 1353
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1354
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1355
    :goto_80
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_26

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_26

    .line 1356
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1357
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_80

    .line 1361
    .end local v4    # "digit":I
    :cond_9b
    neg-int v2, v0

    invoke-virtual {v11, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->adjustMagnitude(I)V

    .line 1362
    invoke-virtual {v11}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toDouble()D

    move-result-wide v7

    .line 1364
    .local v7, "result":D
    move-wide/from16 v9, p3

    invoke-virtual {p0, v7, v8, v9, v10}, Landroid/icu/text/FractionalPartSubstitution;->composeRuleValue(DD)D

    move-result-wide v7

    .line 1365
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public blacklist doSubstitution(DLjava/lang/StringBuilder;II)V
    .registers 15
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuilder;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    .line 1249
    iget-boolean v0, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    if-nez v0, :cond_b

    .line 1252
    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    move-object v3, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "number":D
    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .local v3, "toInsertInto":Ljava/lang/StringBuilder;
    .local p2, "number":D
    goto :goto_43

    .line 1262
    .end local v3    # "toInsertInto":Ljava/lang/StringBuilder;
    .end local p2    # "number":D
    .restart local p1    # "number":D
    .restart local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    :cond_b
    move-object v3, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "number":D
    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local v3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local p2    # "number":D
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p2, p3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    move-object v6, v0

    .line 1263
    .local v6, "fq":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    invoke-virtual {v6}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->roundToInfinity()V

    .line 1265
    const/4 v0, 0x0

    .line 1266
    .local v0, "pad":Z
    invoke-virtual {v6}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getLowerDisplayMagnitude()I

    move-result v1

    .line 1267
    .local v1, "mag":I
    :goto_1c
    if-gez v1, :cond_43

    .line 1268
    if-eqz v0, :cond_2e

    iget-boolean v2, p1, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    if-eqz v2, :cond_2e

    .line 1269
    iget v2, p1, Landroid/icu/text/FractionalPartSubstitution;->pos:I

    add-int/2addr v2, p4

    const/16 v4, 0x20

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v7, v0

    goto :goto_30

    .line 1271
    :cond_2e
    const/4 v0, 0x1

    move v7, v0

    .line 1273
    .end local v0    # "pad":Z
    .local v7, "pad":Z
    :goto_30
    iget-object v0, p1, Landroid/icu/text/FractionalPartSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    add-int/lit8 v8, v1, 0x1

    .end local v1    # "mag":I
    .local v8, "mag":I
    invoke-virtual {v6, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigit(I)B

    move-result v1

    int-to-long v1, v1

    iget v4, p1, Landroid/icu/text/FractionalPartSubstitution;->pos:I

    add-int/2addr v4, p4

    move v5, p5

    .end local p5    # "recursionCount":I
    .local v5, "recursionCount":I
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    move v0, v7

    move v1, v8

    .end local v5    # "recursionCount":I
    .restart local p5    # "recursionCount":I
    goto :goto_1c

    .line 1276
    .end local v6    # "fq":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .end local v7    # "pad":Z
    .end local v8    # "mag":I
    :cond_43
    :goto_43
    return-void
.end method

.method blacklist tokenChar()C
    .registers 2

    .line 1399
    const/16 v0, 0x3e

    return v0
.end method

.method public blacklist transformNumber(D)D
    .registers 5
    .param p1, "number"    # D

    .line 1296
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double v0, p1, v0

    return-wide v0
.end method

.method public blacklist transformNumber(J)J
    .registers 5
    .param p1, "number"    # J

    .line 1286
    const-wide/16 v0, 0x0

    return-wide v0
.end method
