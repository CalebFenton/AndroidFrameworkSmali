.class Landroid/icu/impl/duration/BasicPeriodFormatter;
.super Ljava/lang/Object;
.source "BasicPeriodFormatter.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodFormatter;


# instance fields
.field private customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

.field private data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

.field private factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

.field private localeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V
    .locals 0
    .param p1, "factory"    # Landroid/icu/impl/duration/BasicPeriodFormatterFactory;
    .param p2, "localeName"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .param p4, "customs"    # Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    #@5
    .line 33
    iput-object p2, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->localeName:Ljava/lang/String;

    #@7
    .line 34
    iput-object p3, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@9
    .line 35
    iput-object p4, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@b
    .line 31
    return-void
.end method

.method private format(IZ[I)Ljava/lang/String;
    .locals 34
    .param p1, "tl"    # I
    .param p2, "inFuture"    # Z
    .param p3, "counts"    # [I

    #@0
    .prologue
    .line 55
    const/16 v26, 0x0

    #@2
    .line 56
    .local v26, "mask":I
    const/16 v21, 0x0

    #@4
    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@6
    array-length v2, v0

    #@7
    move/from16 v0, v21

    #@9
    if-ge v0, v2, :cond_1

    #@b
    .line 57
    aget v2, p3, v21

    #@d
    if-lez v2, :cond_0

    #@f
    .line 58
    const/4 v2, 0x1

    #@10
    shl-int v2, v2, v21

    #@12
    or-int v26, v26, v2

    #@14
    .line 56
    :cond_0
    add-int/lit8 v21, v21, 0x1

    #@16
    goto :goto_0

    #@17
    .line 66
    :cond_1
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@1b
    invoke-virtual {v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->allowZero()Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_4

    #@21
    .line 67
    const/16 v21, 0x0

    #@23
    const/16 v25, 0x1

    #@25
    .local v25, "m":I
    :goto_1
    move-object/from16 v0, p3

    #@27
    array-length v2, v0

    #@28
    move/from16 v0, v21

    #@2a
    if-ge v0, v2, :cond_3

    #@2c
    .line 68
    and-int v2, v26, v25

    #@2e
    if-eqz v2, :cond_2

    #@30
    aget v2, p3, v21

    #@32
    const/4 v6, 0x1

    #@33
    if-ne v2, v6, :cond_2

    #@35
    .line 69
    move/from16 v0, v25

    #@37
    not-int v2, v0

    #@38
    and-int v26, v26, v2

    #@3a
    .line 67
    :cond_2
    add-int/lit8 v21, v21, 0x1

    #@3c
    shl-int/lit8 v25, v25, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 72
    :cond_3
    if-nez v26, :cond_4

    #@41
    .line 73
    const/4 v2, 0x0

    #@42
    return-object v2

    #@43
    .line 80
    .end local v25    # "m":I
    :cond_4
    const/16 v20, 0x0

    #@45
    .line 81
    .local v20, "forceD3Seconds":Z
    move-object/from16 v0, p0

    #@47
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@49
    invoke-virtual {v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_5

    #@4f
    .line 82
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    #@51
    iget-byte v2, v2, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@53
    const/4 v6, 0x1

    #@54
    shl-int v2, v6, v2

    #@56
    and-int v2, v2, v26

    #@58
    if-eqz v2, :cond_5

    #@5a
    .line 83
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    #@5c
    iget-byte v0, v2, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@5e
    move/from16 v32, v0

    #@60
    .line 84
    .local v32, "sx":I
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    #@62
    iget-byte v0, v2, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@64
    move/from16 v29, v0

    #@66
    .line 85
    .local v29, "mx":I
    const/4 v2, 0x1

    #@67
    shl-int v30, v2, v32

    #@69
    .line 86
    .local v30, "sf":I
    const/4 v2, 0x1

    #@6a
    shl-int v27, v2, v29

    #@6c
    .line 87
    .local v27, "mf":I
    move-object/from16 v0, p0

    #@6e
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@70
    invoke-virtual {v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    #@73
    move-result v2

    #@74
    packed-switch v2, :pswitch_data_0

    #@77
    .line 110
    .end local v27    # "mf":I
    .end local v29    # "mx":I
    .end local v30    # "sf":I
    .end local v32    # "sx":I
    :cond_5
    :goto_2
    const/16 v19, 0x0

    #@79
    .line 111
    .local v19, "first":I
    move-object/from16 v0, p3

    #@7b
    array-length v2, v0

    #@7c
    add-int/lit8 v24, v2, -0x1

    #@7e
    .line 112
    .local v24, "last":I
    :goto_3
    move-object/from16 v0, p3

    #@80
    array-length v2, v0

    #@81
    move/from16 v0, v19

    #@83
    if-ge v0, v2, :cond_7

    #@85
    const/4 v2, 0x1

    #@86
    shl-int v2, v2, v19

    #@88
    and-int v2, v2, v26

    #@8a
    if-nez v2, :cond_7

    #@8c
    add-int/lit8 v19, v19, 0x1

    #@8e
    goto :goto_3

    #@8f
    .line 90
    .end local v19    # "first":I
    .end local v24    # "last":I
    .restart local v27    # "mf":I
    .restart local v29    # "mx":I
    .restart local v30    # "sf":I
    .restart local v32    # "sx":I
    :pswitch_0
    and-int v2, v26, v30

    #@91
    if-eqz v2, :cond_5

    #@93
    .line 91
    aget v2, p3, v32

    #@95
    aget v6, p3, v29

    #@97
    add-int/lit8 v6, v6, -0x1

    #@99
    div-int/lit16 v6, v6, 0x3e8

    #@9b
    add-int/2addr v2, v6

    #@9c
    aput v2, p3, v32

    #@9e
    .line 92
    move/from16 v0, v27

    #@a0
    not-int v2, v0

    #@a1
    and-int v26, v26, v2

    #@a3
    .line 93
    const/16 v20, 0x1

    #@a5
    goto :goto_2

    #@a6
    .line 98
    :pswitch_1
    and-int v2, v26, v30

    #@a8
    if-nez v2, :cond_6

    #@aa
    .line 99
    or-int v26, v26, v30

    #@ac
    .line 100
    const/4 v2, 0x1

    #@ad
    aput v2, p3, v32

    #@af
    .line 102
    :cond_6
    aget v2, p3, v32

    #@b1
    aget v6, p3, v29

    #@b3
    add-int/lit8 v6, v6, -0x1

    #@b5
    div-int/lit16 v6, v6, 0x3e8

    #@b7
    add-int/2addr v2, v6

    #@b8
    aput v2, p3, v32

    #@ba
    .line 103
    move/from16 v0, v27

    #@bc
    not-int v2, v0

    #@bd
    and-int v26, v26, v2

    #@bf
    .line 104
    const/16 v20, 0x1

    #@c1
    goto :goto_2

    #@c2
    .line 113
    .end local v27    # "mf":I
    .end local v29    # "mx":I
    .end local v30    # "sf":I
    .end local v32    # "sx":I
    .restart local v19    # "first":I
    .restart local v24    # "last":I
    :cond_7
    :goto_4
    move/from16 v0, v24

    #@c4
    move/from16 v1, v19

    #@c6
    if-le v0, v1, :cond_8

    #@c8
    const/4 v2, 0x1

    #@c9
    shl-int v2, v2, v24

    #@cb
    and-int v2, v2, v26

    #@cd
    if-nez v2, :cond_8

    #@cf
    add-int/lit8 v24, v24, -0x1

    #@d1
    goto :goto_4

    #@d2
    .line 116
    :cond_8
    const/16 v22, 0x1

    #@d4
    .line 117
    .local v22, "isZero":Z
    move/from16 v21, v19

    #@d6
    :goto_5
    move/from16 v0, v21

    #@d8
    move/from16 v1, v24

    #@da
    if-gt v0, v1, :cond_9

    #@dc
    .line 118
    const/4 v2, 0x1

    #@dd
    shl-int v2, v2, v21

    #@df
    and-int v2, v2, v26

    #@e1
    if-eqz v2, :cond_e

    #@e3
    aget v2, p3, v21

    #@e5
    const/4 v6, 0x1

    #@e6
    if-le v2, v6, :cond_e

    #@e8
    .line 119
    const/16 v22, 0x0

    #@ea
    .line 124
    :cond_9
    new-instance v12, Ljava/lang/StringBuffer;

    #@ec
    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    #@ef
    .line 128
    .local v12, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    #@f1
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@f3
    iget-boolean v2, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    #@f5
    if-eqz v2, :cond_a

    #@f7
    if-eqz v22, :cond_b

    #@f9
    .line 129
    :cond_a
    const/16 p1, 0x0

    #@fb
    .line 135
    :cond_b
    move-object/from16 v0, p0

    #@fd
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@ff
    iget-boolean v2, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    #@101
    if-eqz v2, :cond_c

    #@103
    if-eqz v22, :cond_f

    #@105
    .line 136
    :cond_c
    const/16 v33, 0x0

    #@107
    .line 144
    .local v33, "td":I
    :goto_6
    move-object/from16 v0, p0

    #@109
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@10b
    move/from16 v0, p1

    #@10d
    move/from16 v1, v33

    #@10f
    invoke-virtual {v2, v0, v1, v12}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendPrefix(IILjava/lang/StringBuffer;)Z

    #@112
    move-result v8

    #@113
    .line 147
    .local v8, "useDigitPrefix":Z
    move/from16 v0, v19

    #@115
    move/from16 v1, v24

    #@117
    if-eq v0, v1, :cond_11

    #@119
    const/4 v9, 0x1

    #@11a
    .line 148
    .local v9, "multiple":Z
    :goto_7
    const/4 v11, 0x1

    #@11b
    .line 149
    .local v11, "wasSkipped":Z
    const/16 v31, 0x0

    #@11d
    .line 150
    .local v31, "skipped":Z
    move-object/from16 v0, p0

    #@11f
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@121
    iget-byte v2, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    #@123
    if-eqz v2, :cond_12

    #@125
    const/4 v7, 0x1

    #@126
    .line 153
    .local v7, "countSep":Z
    :goto_8
    move/from16 v21, v19

    #@128
    move/from16 v23, v19

    #@12a
    .end local v8    # "useDigitPrefix":Z
    .end local v31    # "skipped":Z
    .local v23, "j":I
    :goto_9
    move/from16 v0, v21

    #@12c
    move/from16 v1, v24

    #@12e
    if-gt v0, v1, :cond_1b

    #@130
    .line 154
    if-eqz v31, :cond_d

    #@132
    .line 156
    move-object/from16 v0, p0

    #@134
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@136
    invoke-virtual {v2, v12}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendSkippedUnit(Ljava/lang/StringBuffer;)V

    #@139
    .line 157
    const/16 v31, 0x0

    #@13b
    .line 158
    .restart local v31    # "skipped":Z
    const/4 v11, 0x1

    #@13c
    .line 161
    .end local v31    # "skipped":Z
    :cond_d
    :goto_a
    add-int/lit8 v23, v23, 0x1

    #@13e
    move/from16 v0, v23

    #@140
    move/from16 v1, v24

    #@142
    if-ge v0, v1, :cond_13

    #@144
    const/4 v2, 0x1

    #@145
    shl-int v2, v2, v23

    #@147
    and-int v2, v2, v26

    #@149
    if-nez v2, :cond_13

    #@14b
    .line 162
    const/16 v31, 0x1

    #@14d
    .restart local v31    # "skipped":Z
    goto :goto_a

    #@14e
    .line 117
    .end local v7    # "countSep":Z
    .end local v9    # "multiple":Z
    .end local v11    # "wasSkipped":Z
    .end local v12    # "sb":Ljava/lang/StringBuffer;
    .end local v23    # "j":I
    .end local v31    # "skipped":Z
    .end local v33    # "td":I
    :cond_e
    add-int/lit8 v21, v21, 0x1

    #@150
    goto :goto_5

    #@151
    .line 138
    .restart local v12    # "sb":Ljava/lang/StringBuffer;
    :cond_f
    if-eqz p2, :cond_10

    #@153
    const/16 v33, 0x2

    #@155
    .restart local v33    # "td":I
    :goto_b
    goto :goto_6

    #@156
    .end local v33    # "td":I
    :cond_10
    const/16 v33, 0x1

    #@158
    goto :goto_b

    #@159
    .line 147
    .restart local v8    # "useDigitPrefix":Z
    .restart local v33    # "td":I
    :cond_11
    const/4 v9, 0x0

    #@15a
    .restart local v9    # "multiple":Z
    goto :goto_7

    #@15b
    .line 150
    .restart local v11    # "wasSkipped":Z
    .restart local v31    # "skipped":Z
    :cond_12
    const/4 v7, 0x0

    #@15c
    .restart local v7    # "countSep":Z
    goto :goto_8

    #@15d
    .line 165
    .end local v8    # "useDigitPrefix":Z
    .end local v31    # "skipped":Z
    .restart local v23    # "j":I
    :cond_13
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@15f
    aget-object v3, v2, v21

    #@161
    .line 166
    .local v3, "unit":Landroid/icu/impl/duration/TimeUnit;
    aget v2, p3, v21

    #@163
    add-int/lit8 v4, v2, -0x1

    #@165
    .line 168
    .local v4, "count":I
    move-object/from16 v0, p0

    #@167
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@169
    iget-byte v5, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    #@16b
    .line 169
    .local v5, "cv":I
    move/from16 v0, v21

    #@16d
    move/from16 v1, v24

    #@16f
    if-ne v0, v1, :cond_15

    #@171
    .line 170
    if-eqz v20, :cond_14

    #@173
    .line 171
    const/4 v5, 0x5

    #@174
    .line 177
    :cond_14
    :goto_c
    move/from16 v0, v21

    #@176
    move/from16 v1, v24

    #@178
    if-ne v0, v1, :cond_16

    #@17a
    const/4 v10, 0x1

    #@17b
    .line 178
    .local v10, "isLast":Z
    :goto_d
    move-object/from16 v0, p0

    #@17d
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@17f
    move-object/from16 v0, p0

    #@181
    iget-object v6, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@183
    iget-byte v6, v6, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    #@185
    invoke-virtual/range {v2 .. v12}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendUnit(Landroid/icu/impl/duration/TimeUnit;IIIZZZZZLjava/lang/StringBuffer;)Z

    #@188
    move-result v28

    #@189
    .line 180
    .local v28, "mustSkip":Z
    or-int v31, v31, v28

    #@18b
    .line 181
    .local v31, "skipped":Z
    const/4 v11, 0x0

    #@18c
    .line 183
    move-object/from16 v0, p0

    #@18e
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@190
    iget-byte v2, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    #@192
    if-eqz v2, :cond_1a

    #@194
    move/from16 v0, v23

    #@196
    move/from16 v1, v24

    #@198
    if-gt v0, v1, :cond_1a

    #@19a
    .line 184
    move/from16 v0, v21

    #@19c
    move/from16 v1, v19

    #@19e
    if-ne v0, v1, :cond_17

    #@1a0
    const/16 v16, 0x1

    #@1a2
    .line 185
    .local v16, "afterFirst":Z
    :goto_e
    move/from16 v0, v23

    #@1a4
    move/from16 v1, v24

    #@1a6
    if-ne v0, v1, :cond_18

    #@1a8
    const/16 v17, 0x1

    #@1aa
    .line 186
    .local v17, "beforeLast":Z
    :goto_f
    move-object/from16 v0, p0

    #@1ac
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@1ae
    iget-byte v2, v2, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    #@1b0
    const/4 v6, 0x2

    #@1b1
    if-ne v2, v6, :cond_19

    #@1b3
    const/4 v15, 0x1

    #@1b4
    .line 187
    .local v15, "fullSep":Z
    :goto_10
    move-object/from16 v0, p0

    #@1b6
    iget-object v13, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@1b8
    move-object v14, v3

    #@1b9
    move-object/from16 v18, v12

    #@1bb
    invoke-virtual/range {v13 .. v18}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendUnitSeparator(Landroid/icu/impl/duration/TimeUnit;ZZZLjava/lang/StringBuffer;)Z

    #@1be
    move-result v8

    #@1bf
    .line 153
    .end local v15    # "fullSep":Z
    .end local v16    # "afterFirst":Z
    .end local v17    # "beforeLast":Z
    :goto_11
    move/from16 v21, v23

    #@1c1
    goto/16 :goto_9

    #@1c3
    .line 175
    .end local v10    # "isLast":Z
    .end local v28    # "mustSkip":Z
    .end local v31    # "skipped":Z
    :cond_15
    const/4 v5, 0x0

    #@1c4
    goto :goto_c

    #@1c5
    .line 177
    :cond_16
    const/4 v10, 0x0

    #@1c6
    .restart local v10    # "isLast":Z
    goto :goto_d

    #@1c7
    .line 184
    .restart local v28    # "mustSkip":Z
    .restart local v31    # "skipped":Z
    :cond_17
    const/16 v16, 0x0

    #@1c9
    .restart local v16    # "afterFirst":Z
    goto :goto_e

    #@1ca
    .line 185
    :cond_18
    const/16 v17, 0x0

    #@1cc
    .restart local v17    # "beforeLast":Z
    goto :goto_f

    #@1cd
    .line 186
    :cond_19
    const/4 v15, 0x0

    #@1ce
    .restart local v15    # "fullSep":Z
    goto :goto_10

    #@1cf
    .line 189
    .end local v15    # "fullSep":Z
    .end local v16    # "afterFirst":Z
    .end local v17    # "beforeLast":Z
    :cond_1a
    const/4 v8, 0x0

    #@1d0
    .local v8, "useDigitPrefix":Z
    goto :goto_11

    #@1d1
    .line 192
    .end local v3    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .end local v4    # "count":I
    .end local v5    # "cv":I
    .end local v8    # "useDigitPrefix":Z
    .end local v10    # "isLast":Z
    .end local v28    # "mustSkip":Z
    .end local v31    # "skipped":Z
    :cond_1b
    move-object/from16 v0, p0

    #@1d3
    iget-object v2, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@1d5
    move/from16 v0, p1

    #@1d7
    move/from16 v1, v33

    #@1d9
    invoke-virtual {v2, v0, v1, v12}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendSuffix(IILjava/lang/StringBuffer;)V

    #@1dc
    .line 194
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1df
    move-result-object v2

    #@1e0
    return-object v2

    #@1e1
    .line 87
    nop

    #@1e2
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;
    .locals 3
    .param p1, "period"    # Landroid/icu/impl/duration/Period;

    #@0
    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/icu/impl/duration/Period;->isSet()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "period is not set"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 42
    :cond_0
    iget-byte v0, p1, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@11
    iget-boolean v1, p1, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@13
    iget-object v2, p1, Landroid/icu/impl/duration/Period;->counts:[I

    #@15
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/impl/duration/BasicPeriodFormatter;->format(IZ[I)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;
    .locals 4
    .param p1, "locName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->localeName:Ljava/lang/String;

    #@2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 47
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    #@a
    invoke-virtual {v1, p1}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->getData(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@d
    move-result-object v0

    #@e
    .line 48
    .local v0, "newData":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    new-instance v1, Landroid/icu/impl/duration/BasicPeriodFormatter;

    #@10
    iget-object v2, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    #@12
    .line 49
    iget-object v3, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@14
    .line 48
    invoke-direct {v1, v2, p1, v0, v3}, Landroid/icu/impl/duration/BasicPeriodFormatter;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V

    #@17
    return-object v1

    #@18
    .line 51
    .end local v0    # "newData":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    :cond_0
    return-object p0
.end method
