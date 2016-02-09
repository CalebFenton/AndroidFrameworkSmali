.class Landroid/icu/text/FractionalPartSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field private byDigits:Z

.field private useSpaces:Z


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p4, "description"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1169
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@5
    .line 1148
    iput-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    #@7
    .line 1154
    iput-boolean v2, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    #@9
    .line 1170
    const-string/jumbo v0, ">>"

    #@c
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    const-string/jumbo v0, ">>>"

    #@15
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_0

    #@1b
    iget-object v0, p0, Landroid/icu/text/FractionalPartSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@1d
    if-ne p2, v0, :cond_2

    #@1f
    .line 1171
    :cond_0
    iput-boolean v2, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    #@21
    .line 1172
    const-string/jumbo v0, ">>>"

    #@24
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 1173
    iput-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    #@2c
    .line 1168
    :cond_1
    :goto_0
    return-void

    #@2d
    .line 1176
    :cond_2
    iget-object v0, p0, Landroid/icu/text/FractionalPartSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@2f
    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->makeIntoFractionRuleSet()V

    #@32
    goto :goto_0
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2
    .param p1, "oldUpperBound"    # D

    #@0
    .prologue
    .line 1333
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
    .line 1326
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
    .line 1276
    move-object/from16 v0, p0

    #@2
    iget-boolean v7, v0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    #@4
    if-nez v7, :cond_0

    #@6
    .line 1277
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
    .line 1284
    :cond_0
    move-object/from16 v20, p1

    #@19
    .line 1285
    .local v20, "workText":Ljava/lang/String;
    new-instance v17, Ljava/text/ParsePosition;

    #@1b
    const/4 v7, 0x1

    #@1c
    move-object/from16 v0, v17

    #@1e
    invoke-direct {v0, v7}, Ljava/text/ParsePosition;-><init>(I)V

    #@21
    .line 1286
    .local v17, "workPos":Ljava/text/ParsePosition;
    const-wide/16 v18, 0x0

    #@23
    .line 1289
    .local v18, "result":D
    new-instance v15, Landroid/icu/text/DigitList;

    #@25
    invoke-direct {v15}, Landroid/icu/text/DigitList;-><init>()V

    #@28
    .line 1290
    .local v15, "dl":Landroid/icu/text/DigitList;
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@2b
    move-result v7

    #@2c
    if-lez v7, :cond_3

    #@2e
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_3

    #@34
    .line 1291
    const/4 v7, 0x0

    #@35
    move-object/from16 v0, v17

    #@37
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@3a
    .line 1292
    move-object/from16 v0, p0

    #@3c
    iget-object v7, v0, Landroid/icu/text/FractionalPartSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@3e
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    #@40
    move-object/from16 v0, v20

    #@42
    move-object/from16 v1, v17

    #@44
    invoke-virtual {v7, v0, v1, v8, v9}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    #@4b
    move-result v6

    #@4c
    .line 1293
    .local v6, "digit":I
    if-eqz p7, :cond_2

    #@4e
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    #@51
    move-result v7

    #@52
    if-nez v7, :cond_2

    #@54
    .line 1294
    move-object/from16 v0, p0

    #@56
    iget-object v7, v0, Landroid/icu/text/FractionalPartSubstitution;->rbnf:Landroid/icu/text/RuleBasedNumberFormat;

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
    .line 1295
    .local v16, "n":Ljava/lang/Number;
    if-eqz v16, :cond_2

    #@66
    .line 1296
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    #@69
    move-result v6

    #@6a
    .line 1300
    .end local v16    # "n":Ljava/lang/Number;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    #@6d
    move-result v7

    #@6e
    if-eqz v7, :cond_1

    #@70
    .line 1301
    add-int/lit8 v7, v6, 0x30

    #@72
    invoke-virtual {v15, v7}, Landroid/icu/text/DigitList;->append(I)V

    #@75
    .line 1303
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
    .line 1304
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
    .line 1305
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
    .line 1306
    const/4 v7, 0x1

    #@9f
    move-object/from16 v0, v20

    #@a1
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a4
    move-result-object v20

    #@a5
    .line 1307
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
    .line 1311
    .end local v6    # "digit":I
    :cond_3
    iget v7, v15, Landroid/icu/text/DigitList;->count:I

    #@b3
    if-nez v7, :cond_4

    #@b5
    const-wide/16 v18, 0x0

    #@b7
    .line 1313
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
    .line 1314
    new-instance v7, Ljava/lang/Double;

    #@c3
    move-wide/from16 v0, v18

    #@c5
    invoke-direct {v7, v0, v1}, Ljava/lang/Double;-><init>(D)V

    #@c8
    return-object v7

    #@c9
    .line 1311
    :cond_4
    invoke-virtual {v15}, Landroid/icu/text/DigitList;->getDouble()D

    #@cc
    move-result-wide v18

    #@cd
    goto :goto_1
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;I)V
    .locals 9
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I

    #@0
    .prologue
    const/16 v7, 0x20

    #@2
    const/4 v6, 0x0

    #@3
    .line 1195
    iget-boolean v2, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    #@5
    if-nez v2, :cond_1

    #@7
    .line 1198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;I)V

    #@a
    .line 1194
    :cond_0
    return-void

    #@b
    .line 1209
    :cond_1
    new-instance v0, Landroid/icu/text/DigitList;

    #@d
    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    #@10
    .line 1210
    .local v0, "dl":Landroid/icu/text/DigitList;
    const/16 v2, 0x14

    #@12
    const/4 v3, 0x1

    #@13
    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/icu/text/DigitList;->set(DIZ)V

    #@16
    .line 1212
    const/4 v1, 0x0

    #@17
    .line 1213
    .local v1, "pad":Z
    :goto_0
    iget v2, v0, Landroid/icu/text/DigitList;->count:I

    #@19
    iget v3, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1b
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result v3

    #@1f
    if-le v2, v3, :cond_3

    #@21
    .line 1214
    if-eqz v1, :cond_2

    #@23
    iget-boolean v2, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 1215
    iget v2, p0, Landroid/icu/text/FractionalPartSubstitution;->pos:I

    #@29
    add-int/2addr v2, p4

    #@2a
    invoke-virtual {p3, v2, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@2d
    .line 1219
    :goto_1
    iget-object v2, p0, Landroid/icu/text/FractionalPartSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@2f
    iget-object v3, v0, Landroid/icu/text/DigitList;->digits:[B

    #@31
    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    #@33
    add-int/lit8 v4, v4, -0x1

    #@35
    iput v4, v0, Landroid/icu/text/DigitList;->count:I

    #@37
    aget-byte v3, v3, v4

    #@39
    add-int/lit8 v3, v3, -0x30

    #@3b
    int-to-long v4, v3

    #@3c
    iget v3, p0, Landroid/icu/text/FractionalPartSubstitution;->pos:I

    #@3e
    add-int/2addr v3, p4

    #@3f
    invoke-virtual {v2, v4, v5, p3, v3}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V

    #@42
    goto :goto_0

    #@43
    .line 1217
    :cond_2
    const/4 v1, 0x1

    #@44
    goto :goto_1

    #@45
    .line 1221
    :cond_3
    :goto_2
    iget v2, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@47
    if-gez v2, :cond_0

    #@49
    .line 1222
    if-eqz v1, :cond_4

    #@4b
    iget-boolean v2, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    #@4d
    if-eqz v2, :cond_4

    #@4f
    .line 1223
    iget v2, p0, Landroid/icu/text/FractionalPartSubstitution;->pos:I

    #@51
    add-int/2addr v2, p4

    #@52
    invoke-virtual {p3, v2, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@55
    .line 1227
    :goto_3
    iget-object v2, p0, Landroid/icu/text/FractionalPartSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@57
    const-wide/16 v4, 0x0

    #@59
    iget v3, p0, Landroid/icu/text/FractionalPartSubstitution;->pos:I

    #@5b
    add-int/2addr v3, p4

    #@5c
    invoke-virtual {v2, v4, v5, p3, v3}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V

    #@5f
    .line 1228
    iget v2, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@61
    add-int/lit8 v2, v2, 0x1

    #@63
    iput v2, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@65
    goto :goto_2

    #@66
    .line 1225
    :cond_4
    const/4 v1, 0x1

    #@67
    goto :goto_3
.end method

.method tokenChar()C
    .locals 1

    #@0
    .prologue
    .line 1345
    const/16 v0, 0x3e

    #@2
    return v0
.end method

.method public transformNumber(D)D
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 1249
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
    .line 1240
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method
