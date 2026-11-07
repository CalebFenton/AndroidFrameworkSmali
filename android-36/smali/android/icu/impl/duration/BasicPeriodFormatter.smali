.class Landroid/icu/impl/duration/BasicPeriodFormatter;
.super Ljava/lang/Object;
.source "BasicPeriodFormatter.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodFormatter;


# instance fields
.field private blacklist customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

.field private blacklist data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

.field private blacklist factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

.field private blacklist localeName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V
    .registers 5
    .param p1, "factory"    # Landroid/icu/impl/duration/BasicPeriodFormatterFactory;
    .param p2, "localeName"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .param p4, "customs"    # Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    .line 35
    iput-object p2, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->localeName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    .line 37
    iput-object p4, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    .line 38
    return-void
.end method

.method private blacklist format(IZ[I)Ljava/lang/String;
    .registers 32
    .param p1, "tl"    # I
    .param p2, "inFuture"    # Z
    .param p3, "counts"    # [I

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 60
    .local v2, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_14

    .line 61
    aget v4, v1, v3

    if-lez v4, :cond_11

    .line 62
    shl-int v4, v5, v3

    or-int/2addr v2, v4

    .line 60
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 70
    .end local v3    # "i":I
    :cond_14
    iget-object v3, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->allowZero()Z

    move-result v3

    if-nez v3, :cond_34

    .line 71
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/4 v4, 0x1

    .local v4, "m":I
    :goto_1e
    array-length v6, v1

    if-ge v3, v6, :cond_30

    .line 72
    and-int v6, v2, v4

    if-eqz v6, :cond_2b

    aget v6, v1, v3

    if-ne v6, v5, :cond_2b

    .line 73
    not-int v6, v4

    and-int/2addr v2, v6

    .line 71
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 76
    .end local v3    # "i":I
    .end local v4    # "m":I
    :cond_30
    if-nez v2, :cond_34

    .line 77
    const/4 v3, 0x0

    return-object v3

    .line 84
    :cond_34
    const/4 v3, 0x0

    .line 85
    .local v3, "forceD3Seconds":Z
    iget-object v4, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v4}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v4

    if-eqz v4, :cond_82

    sget-object v4, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v4, v4, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int v4, v5, v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_82

    .line 87
    sget-object v4, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v4, v4, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    .line 88
    .local v4, "sx":I
    sget-object v6, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v6, v6, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    .line 89
    .local v6, "mx":I
    shl-int v7, v5, v4

    .line 90
    .local v7, "sf":I
    shl-int v8, v5, v6

    .line 91
    .local v8, "mf":I
    iget-object v9, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v9}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v9

    packed-switch v9, :pswitch_data_1b0

    goto :goto_82

    .line 94
    :pswitch_5c
    and-int v9, v2, v7

    if-eqz v9, :cond_82

    .line 95
    aget v9, v1, v4

    aget v10, v1, v6

    sub-int/2addr v10, v5

    div-int/lit16 v10, v10, 0x3e8

    add-int/2addr v9, v10

    aput v9, v1, v4

    .line 96
    not-int v9, v8

    and-int/2addr v2, v9

    .line 97
    const/4 v3, 0x1

    goto :goto_82

    .line 102
    :pswitch_6e
    and-int v9, v2, v7

    if-nez v9, :cond_75

    .line 103
    or-int/2addr v2, v7

    .line 104
    aput v5, v1, v4

    .line 106
    :cond_75
    aget v9, v1, v4

    aget v10, v1, v6

    sub-int/2addr v10, v5

    div-int/lit16 v10, v10, 0x3e8

    add-int/2addr v9, v10

    aput v9, v1, v4

    .line 107
    not-int v9, v8

    and-int/2addr v2, v9

    .line 108
    const/4 v3, 0x1

    .line 114
    .end local v4    # "sx":I
    .end local v6    # "mx":I
    .end local v7    # "sf":I
    .end local v8    # "mf":I
    :cond_82
    :goto_82
    const/4 v4, 0x0

    .line 115
    .local v4, "first":I
    array-length v6, v1

    sub-int/2addr v6, v5

    .line 116
    .local v6, "last":I
    :goto_85
    array-length v7, v1

    if-ge v4, v7, :cond_90

    shl-int v7, v5, v4

    and-int/2addr v7, v2

    if-nez v7, :cond_90

    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 117
    :cond_90
    :goto_90
    if-le v6, v4, :cond_9a

    shl-int v7, v5, v6

    and-int/2addr v7, v2

    if-nez v7, :cond_9a

    add-int/lit8 v6, v6, -0x1

    goto :goto_90

    .line 120
    :cond_9a
    const/4 v7, 0x1

    .line 121
    .local v7, "isZero":Z
    move v8, v4

    .local v8, "i":I
    :goto_9c
    if-gt v8, v6, :cond_ac

    .line 122
    shl-int v9, v5, v8

    and-int/2addr v9, v2

    if-eqz v9, :cond_a9

    aget v9, v1, v8

    if-le v9, v5, :cond_a9

    .line 123
    const/4 v7, 0x0

    .line 124
    goto :goto_ac

    .line 121
    :cond_a9
    add-int/lit8 v8, v8, 0x1

    goto :goto_9c

    .line 128
    .end local v8    # "i":I
    :cond_ac
    :goto_ac
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v8

    .line 132
    .local v14, "sb":Ljava/lang/StringBuffer;
    iget-object v8, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v8, v8, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    if-eqz v8, :cond_be

    if-eqz v7, :cond_bb

    goto :goto_be

    :cond_bb
    move/from16 v8, p1

    goto :goto_bf

    .line 133
    :cond_be
    :goto_be
    const/4 v8, 0x0

    .line 139
    .end local p1    # "tl":I
    .local v8, "tl":I
    :goto_bf
    iget-object v9, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v9, v9, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    if-eqz v9, :cond_ce

    if-eqz v7, :cond_c8

    goto :goto_ce

    .line 142
    :cond_c8
    if-eqz p2, :cond_cc

    const/4 v9, 0x2

    goto :goto_cd

    :cond_cc
    move v9, v5

    .local v9, "td":I
    :goto_cd
    goto :goto_cf

    .line 140
    .end local v9    # "td":I
    :cond_ce
    :goto_ce
    const/4 v9, 0x0

    .line 148
    .restart local v9    # "td":I
    :goto_cf
    iget-object v11, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v11, v8, v9, v14}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendPrefix(IILjava/lang/StringBuffer;)Z

    move-result v11

    .line 151
    .local v11, "useDigitPrefix":Z
    const/16 v20, 0x0

    if-eq v4, v6, :cond_dc

    move/from16 v16, v5

    goto :goto_de

    :cond_dc
    move/from16 v16, v20

    .line 152
    .local v16, "multiple":Z
    :goto_de
    const/4 v12, 0x1

    .line 153
    .local v12, "wasSkipped":Z
    const/4 v13, 0x0

    .line 154
    .local v13, "skipped":Z
    iget-object v15, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v15, v15, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    if-eqz v15, :cond_e8

    move v15, v5

    goto :goto_ea

    :cond_e8
    move/from16 v15, v20

    .line 157
    .local v15, "countSep":Z
    :goto_ea
    move/from16 v17, v4

    .local v17, "i":I
    move/from16 v18, v17

    move/from16 v21, v5

    move/from16 v5, v17

    .end local v17    # "i":I
    .local v5, "i":I
    .local v18, "j":I
    :goto_f2
    if-gt v5, v6, :cond_1a2

    .line 158
    if-eqz v13, :cond_104

    .line 160
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v10, v14}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendSkippedUnit(Ljava/lang/StringBuffer;)V

    .line 161
    const/4 v13, 0x0

    .line 162
    const/4 v12, 0x1

    move/from16 v22, v13

    move/from16 v10, v18

    move/from16 v18, v12

    goto :goto_10a

    .line 158
    :cond_104
    move/from16 v22, v13

    move/from16 v10, v18

    move/from16 v18, v12

    .line 165
    .end local v12    # "wasSkipped":Z
    .end local v13    # "skipped":Z
    .local v10, "j":I
    .local v18, "wasSkipped":Z
    .local v22, "skipped":Z
    :goto_10a
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v6, :cond_116

    shl-int v12, v21, v10

    and-int/2addr v12, v2

    if-nez v12, :cond_116

    .line 166
    const/16 v22, 0x1

    goto :goto_10a

    .line 169
    :cond_116
    sget-object v12, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v12, v12, v5

    .line 170
    .local v12, "unit":Landroid/icu/impl/duration/TimeUnit;
    aget v13, v1, v5

    add-int/lit8 v13, v13, -0x1

    .line 172
    .local v13, "count":I
    iget-object v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v1, v1, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    .line 173
    .local v1, "cv":I
    if-ne v5, v6, :cond_128

    .line 174
    if-eqz v3, :cond_129

    .line 175
    const/4 v1, 0x5

    goto :goto_129

    .line 179
    :cond_128
    const/4 v1, 0x0

    .line 181
    :cond_129
    :goto_129
    if-ne v5, v6, :cond_12e

    move/from16 v17, v21

    goto :goto_130

    :cond_12e
    move/from16 v17, v20

    .line 182
    .local v17, "isLast":Z
    :goto_130
    move/from16 v19, v9

    .end local v9    # "td":I
    .local v19, "td":I
    iget-object v9, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move/from16 v23, v1

    .end local v1    # "cv":I
    .local v23, "cv":I
    iget-object v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v1, v1, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    move/from16 v24, v13

    move v13, v1

    move/from16 v1, v19

    move-object/from16 v19, v14

    move v14, v15

    move v15, v11

    move/from16 v11, v24

    move/from16 v24, v23

    move/from16 v23, v2

    move v2, v10

    move-object v10, v12

    move/from16 v12, v24

    move/from16 v24, v3

    const/4 v3, 0x2

    .end local v3    # "forceD3Seconds":Z
    .end local v13    # "count":I
    .local v1, "td":I
    .local v2, "j":I
    .local v10, "unit":Landroid/icu/impl/duration/TimeUnit;
    .local v11, "count":I
    .local v12, "cv":I
    .local v14, "countSep":Z
    .local v15, "useDigitPrefix":Z
    .local v19, "sb":Ljava/lang/StringBuffer;
    .local v23, "mask":I
    .local v24, "forceD3Seconds":Z
    invoke-virtual/range {v9 .. v19}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendUnit(Landroid/icu/impl/duration/TimeUnit;IIIZZZZZLjava/lang/StringBuffer;)Z

    move-result v25

    .line 184
    move/from16 v26, v15

    move v15, v14

    move-object/from16 v14, v19

    move/from16 v19, v17

    move/from16 v17, v26

    move/from16 v26, v12

    move/from16 v12, v18

    move/from16 v18, v11

    .end local v11    # "count":I
    .local v12, "wasSkipped":Z
    .local v14, "sb":Ljava/lang/StringBuffer;
    .local v15, "countSep":Z
    .local v17, "useDigitPrefix":Z
    .local v18, "count":I
    .local v19, "isLast":Z
    .local v25, "mustSkip":Z
    .local v26, "cv":I
    or-int v22, v22, v25

    .line 185
    const/16 v27, 0x0

    .line 187
    .end local v12    # "wasSkipped":Z
    .local v27, "wasSkipped":Z
    iget-object v9, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v9, v9, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    if-eqz v9, :cond_190

    if-gt v2, v6, :cond_190

    .line 188
    if-ne v5, v4, :cond_174

    move/from16 v12, v21

    goto :goto_176

    :cond_174
    move/from16 v12, v20

    .line 189
    .local v12, "afterFirst":Z
    :goto_176
    if-ne v2, v6, :cond_17b

    move/from16 v13, v21

    goto :goto_17d

    :cond_17b
    move/from16 v13, v20

    .line 190
    .local v13, "beforeLast":Z
    :goto_17d
    iget-object v9, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v9, v9, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    if-ne v9, v3, :cond_186

    move/from16 v11, v21

    goto :goto_188

    :cond_186
    move/from16 v11, v20

    .line 191
    .local v11, "fullSep":Z
    :goto_188
    iget-object v9, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual/range {v9 .. v14}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendUnitSeparator(Landroid/icu/impl/duration/TimeUnit;ZZZLjava/lang/StringBuffer;)Z

    move-result v9

    .line 192
    .end local v11    # "fullSep":Z
    .end local v12    # "afterFirst":Z
    .end local v13    # "beforeLast":Z
    .end local v17    # "useDigitPrefix":Z
    .local v9, "useDigitPrefix":Z
    move v11, v9

    goto :goto_192

    .line 193
    .end local v9    # "useDigitPrefix":Z
    .restart local v17    # "useDigitPrefix":Z
    :cond_190
    const/4 v9, 0x0

    move v11, v9

    .line 157
    .end local v10    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .end local v17    # "useDigitPrefix":Z
    .end local v18    # "count":I
    .end local v19    # "isLast":Z
    .end local v25    # "mustSkip":Z
    .end local v26    # "cv":I
    .local v11, "useDigitPrefix":Z
    :goto_192
    move v5, v2

    move v9, v1

    move/from16 v18, v2

    move/from16 v13, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v12, v27

    move-object/from16 v1, p3

    goto/16 :goto_f2

    .end local v1    # "td":I
    .end local v22    # "skipped":Z
    .end local v23    # "mask":I
    .end local v24    # "forceD3Seconds":Z
    .end local v27    # "wasSkipped":Z
    .local v2, "mask":I
    .restart local v3    # "forceD3Seconds":Z
    .local v9, "td":I
    .local v12, "wasSkipped":Z
    .local v13, "skipped":Z
    .local v18, "j":I
    :cond_1a2
    move/from16 v23, v2

    move v1, v9

    .line 196
    .end local v2    # "mask":I
    .end local v5    # "i":I
    .end local v9    # "td":I
    .end local v18    # "j":I
    .restart local v1    # "td":I
    .restart local v23    # "mask":I
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v2, v8, v1, v14}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendSuffix(IILjava/lang/StringBuffer;)V

    .line 198
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_1b0
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_5c
    .end packed-switch
.end method


# virtual methods
.method public blacklist format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;
    .registers 5
    .param p1, "period"    # Landroid/icu/impl/duration/Period;

    .line 42
    invoke-virtual {p1}, Landroid/icu/impl/duration/Period;->isSet()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    iget-byte v0, p1, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-boolean v1, p1, Landroid/icu/impl/duration/Period;->inFuture:Z

    iget-object v2, p1, Landroid/icu/impl/duration/Period;->counts:[I

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/impl/duration/BasicPeriodFormatter;->format(IZ[I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "period is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;
    .registers 6
    .param p1, "locName"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->localeName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 51
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->getData(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    .line 52
    .local v0, "newData":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    new-instance v1, Landroid/icu/impl/duration/BasicPeriodFormatter;

    iget-object v2, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    iget-object v3, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v1, v2, p1, v0, v3}, Landroid/icu/impl/duration/BasicPeriodFormatter;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V

    return-object v1

    .line 55
    .end local v0    # "newData":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    :cond_18
    return-object p0
.end method
