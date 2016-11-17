.class Landroid/icu/text/FractionalPartSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field private final byDigits:Z

.field private final useSpaces:Z


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1155
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@5
    .line 1156
    const-string/jumbo v2, ">>"

    #@8
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    const-string/jumbo v2, ">>>"

    #@11
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    iget-object v2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@19
    if-ne p2, v2, :cond_2

    #@1b
    .line 1157
    :cond_0
    iput-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    #@1d
    .line 1158
    const-string/jumbo v2, ">>>"

    #@20
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    :goto_0
    iput-boolean v0, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    #@28
    .line 1154
    :goto_1
    return-void

    #@29
    :cond_1
    move v0, v1

    #@2a
    .line 1158
    goto :goto_0

    #@2b
    .line 1160
    :cond_2
    iput-boolean v0, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    #@2d
    .line 1161
    iput-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    #@2f
    .line 1162
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@31
    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->makeIntoFractionRuleSet()V

    #@34
    goto :goto_1
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2
    .param p1, "oldUpperBound"    # D

    #@0
    .prologue
    .line 1319
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    #@0
    .prologue
    .line 1312
    add-double v0, p1, p3

    #@2
    return-wide v0
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "baseValue"    # D
    .param p5, "upperBound"    # D
    .param p7, "lenientParse"    # Z

    #@0
    .prologue
    .line 1262
    move-object/from16 v0, p0

    #@2
    iget-boolean v7, v0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    #@4
    if-nez v7, :cond_0

    #@6
    .line 1263
    const-wide/16 v12, 0x0

    #@8
    move-object/from16 v7, p0

    #@a
    move-object/from16 v8, p1

    #@c
    move-object/from16 v9, p2

    #@e
    move-wide/from16 v10, p3

    #@10
    move/from16 v14, p7

    #@12
    invoke-super/range {v7 .. v14}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    #@15
    move-result-object v7

    #@16
    return-object v7

    #@17
    .line 1270
    :cond_0
    move-object/from16 v20, p1

    #@19
    .line 1271
    .local v20, "workText":Ljava/lang/String;
    new-instance v17, Ljava/text/ParsePosition;

    #@1b
    const/4 v7, 0x1

    #@1c
    move-object/from16 v0, v17

    #@1e
    invoke-direct {v0, v7}, Ljava/text/ParsePosition;-><init>(I)V

    #@21
    .line 1275
    .local v17, "workPos":Ljava/text/ParsePosition;
    new-instance v15, Landroid/icu/text/DigitList;

    #@23
    invoke-direct {v15}, Landroid/icu/text/DigitList;-><init>()V

    #@26
    .line 1276
    .local v15, "dl":Landroid/icu/text/DigitList;
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@29
    move-result v7

    #@2a
    if-lez v7, :cond_3

    #@2c
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_3

    #@32
    .line 1277
    const/4 v7, 0x0

    #@33
    move-object/from16 v0, v17

    #@35
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@38
    .line 1278
    move-object/from16 v0, p0

    #@3a
    iget-object v7, v0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@3c
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    #@3e
    move-object/from16 v0, v20

    #@40
    move-object/from16 v1, v17

    #@42
    invoke-virtual {v7, v0, v1, v8, v9}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    #@49
    move-result v6

    #@4a
    .line 1279
    .local v6, "digit":I
    if-eqz p7, :cond_2

    #@4c
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    #@4f
    move-result v7

    #@50
    if-nez v7, :cond_2

    #@52
    .line 1280
    move-object/from16 v0, p0

    #@54
    iget-object v7, v0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@56
    iget-object v7, v7, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    #@58
    invoke-virtual {v7}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    #@5b
    move-result-object v7

    #@5c
    move-object/from16 v0, v20

    #@5e
    move-object/from16 v1, v17

    #@60
    invoke-virtual {v7, v0, v1}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@63
    move-result-object v16

    #@64
    .line 1281
    .local v16, "n":Ljava/lang/Number;
    if-eqz v16, :cond_2

    #@66
    .line 1282
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    #@69
    move-result v6

    #@6a
    .line 1286
    .end local v16    # "n":Ljava/lang/Number;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    #@6d
    move-result v7

    #@6e
    if-eqz v7, :cond_1

    #@70
    .line 1287
    add-int/lit8 v7, v6, 0x30

    #@72
    invoke-virtual {v15, v7}, Landroid/icu/text/DigitList;->append(I)V

    #@75
    .line 1289
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@78
    move-result v7

    #@79
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    #@7c
    move-result v8

    #@7d
    add-int/2addr v7, v8

    #@7e
    move-object/from16 v0, p2

    #@80
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@83
    .line 1290
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    #@86
    move-result v7

    #@87
    move-object/from16 v0, v20

    #@89
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8c
    move-result-object v20

    #@8d
    .line 1291
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@90
    move-result v7

    #@91
    if-lez v7, :cond_1

    #@93
    const/4 v7, 0x0

    #@94
    move-object/from16 v0, v20

    #@96
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    #@99
    move-result v7

    #@9a
    const/16 v8, 0x20

    #@9c
    if-ne v7, v8, :cond_1

    #@9e
    .line 1292
    const/4 v7, 0x1

    #@9f
    move-object/from16 v0, v20

    #@a1
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a4
    move-result-object v20

    #@a5
    .line 1293
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@a8
    move-result v7

    #@a9
    add-int/lit8 v7, v7, 0x1

    #@ab
    move-object/from16 v0, p2

    #@ad
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@b0
    goto :goto_0

    #@b1
    .line 1297
    .end local v6    # "digit":I
    :cond_3
    iget v7, v15, Landroid/icu/text/DigitList;->count:I

    #@b3
    if-nez v7, :cond_4

    #@b5
    const-wide/16 v18, 0x0

    #@b7
    .line 1299
    .local v18, "result":D
    :goto_1
    move-object/from16 v0, p0

    #@b9
    move-wide/from16 v1, v18

    #@bb
    move-wide/from16 v3, p3

    #@bd
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/text/FractionalPartSubstitution;->composeRuleValue(DD)D

    #@c0
    move-result-wide v18

    #@c1
    .line 1300
    new-instance v7, Ljava/lang/Double;

    #@c3
    move-wide/from16 v0, v18

    #@c5
    invoke-direct {v7, v0, v1}, Ljava/lang/Double;-><init>(D)V

    #@c8
    return-object v7

    #@c9
    .line 1297
    .end local v18    # "result":D
    :cond_4
    invoke-virtual {v15}, Landroid/icu/text/DigitList;->getDouble()D

    #@cc
    move-result-wide v18

    #@cd
    goto :goto_1
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;II)V
    .locals 11
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    #@0
    .prologue
    const/16 v9, 0x20

    #@2
    const/4 v8, 0x0

    #@3
    .line 1181
    iget-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    #@5
    if-nez v1, :cond_1

    #@7
    .line 1184
    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;II)V

    #@a
    .line 1180
    :cond_0
    return-void

    #@b
    .line 1195
    :cond_1
    new-instance v0, Landroid/icu/text/DigitList;

    #@d
    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    #@10
    .line 1196
    .local v0, "dl":Landroid/icu/text/DigitList;
    const/16 v1, 0x14

    #@12
    const/4 v2, 0x1

    #@13
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/icu/text/DigitList;->set(DIZ)V

    #@16
    .line 1198
    const/4 v7, 0x0

    #@17
    .line 1199
    .local v7, "pad":Z
    :goto_0
    iget v1, v0, Landroid/icu/text/DigitList;->count:I

    #@19
    iget v2, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1b
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result v2

    #@1f
    if-le v1, v2, :cond_3

    #@21
    .line 1200
    if-eqz v7, :cond_2

    #@23
    iget-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 1201
    iget v1, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@29
    add-int/2addr v1, p4

    #@2a
    invoke-virtual {p3, v1, v9}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@2d
    .line 1205
    :goto_1
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@2f
    iget-object v2, v0, Landroid/icu/text/DigitList;->digits:[B

    #@31
    iget v3, v0, Landroid/icu/text/DigitList;->count:I

    #@33
    add-int/lit8 v3, v3, -0x1

    #@35
    iput v3, v0, Landroid/icu/text/DigitList;->count:I

    #@37
    aget-byte v2, v2, v3

    #@39
    add-int/lit8 v2, v2, -0x30

    #@3b
    int-to-long v2, v2

    #@3c
    iget v4, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@3e
    add-int v5, p4, v4

    #@40
    move-object v4, p3

    #@41
    move/from16 v6, p5

    #@43
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    #@46
    goto :goto_0

    #@47
    .line 1203
    :cond_2
    const/4 v7, 0x1

    #@48
    goto :goto_1

    #@49
    .line 1207
    :cond_3
    :goto_2
    iget v1, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@4b
    if-gez v1, :cond_0

    #@4d
    .line 1208
    if-eqz v7, :cond_4

    #@4f
    iget-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    #@51
    if-eqz v1, :cond_4

    #@53
    .line 1209
    iget v1, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@55
    add-int/2addr v1, p4

    #@56
    invoke-virtual {p3, v1, v9}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@59
    .line 1213
    :goto_3
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@5b
    const-wide/16 v2, 0x0

    #@5d
    iget v4, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@5f
    add-int v5, p4, v4

    #@61
    move-object v4, p3

    #@62
    move/from16 v6, p5

    #@64
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    #@67
    .line 1214
    iget v1, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@69
    add-int/lit8 v1, v1, 0x1

    #@6b
    iput v1, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@6d
    goto :goto_2

    #@6e
    .line 1211
    :cond_4
    const/4 v7, 0x1

    #@6f
    goto :goto_3
.end method

.method tokenChar()C
    .locals 1

    #@0
    .prologue
    .line 1331
    const/16 v0, 0x3e

    #@2
    return v0
.end method

.method public transformNumber(D)D
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 1235
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    #@3
    move-result-wide v0

    #@4
    sub-double v0, p1, v0

    #@6
    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 2
    .param p1, "number"    # J

    #@0
    .prologue
    .line 1226
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method
