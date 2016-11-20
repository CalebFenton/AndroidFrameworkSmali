.class public Ljava/text/ChoiceFormat;
.super Ljava/text/NumberFormat;
.source "ChoiceFormat.java"


# static fields
.field static final EXPONENT:J = 0x7ff0000000000000L

.field static final POSITIVEINFINITY:J = 0x7ff0000000000000L

.field static final SIGN:J = -0x8000000000000000L

.field private static final serialVersionUID:J = 0x18e9c6bee365b604L


# instance fields
.field private choiceFormats:[Ljava/lang/String;

.field private choiceLimits:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "newPattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 310
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    #@3
    .line 311
    invoke-virtual {p0, p1}, Ljava/text/ChoiceFormat;->applyPattern(Ljava/lang/String;)V

    #@6
    .line 310
    return-void
.end method

.method public constructor <init>([D[Ljava/lang/String;)V
    .locals 0
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 318
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    #@3
    .line 319
    invoke-virtual {p0, p1, p2}, Ljava/text/ChoiceFormat;->setChoices([D[Ljava/lang/String;)V

    #@6
    .line 318
    return-void
.end method

.method private static doubleArraySize([D)[D
    .locals 4
    .param p0, "array"    # [D

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 606
    array-length v1, p0

    #@2
    .line 607
    .local v1, "oldSize":I
    mul-int/lit8 v2, v1, 0x2

    #@4
    new-array v0, v2, [D

    #@6
    .line 608
    .local v0, "newArray":[D
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@9
    .line 609
    return-object v0
.end method

.method private doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "array"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 613
    array-length v1, p1

    #@2
    .line 614
    .local v1, "oldSize":I
    mul-int/lit8 v2, v1, 0x2

    #@4
    new-array v0, v2, [Ljava/lang/String;

    #@6
    .line 615
    .local v0, "newArray":[Ljava/lang/String;
    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@9
    .line 616
    return-object v0
.end method

.method public static final nextDouble(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 441
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, v0}, Ljava/text/ChoiceFormat;->nextDouble(DZ)D

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static nextDouble(DZ)D
    .locals 12
    .param p0, "d"    # D
    .param p2, "positive"    # Z

    #@0
    .prologue
    const-wide/16 v10, 0x1

    #@2
    .line 567
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@5
    move-result v8

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 568
    return-wide p0

    #@9
    .line 572
    :cond_0
    const-wide/16 v8, 0x0

    #@b
    cmpl-double v8, p0, v8

    #@d
    if-nez v8, :cond_2

    #@f
    .line 573
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@12
    move-result-wide v6

    #@13
    .line 574
    .local v6, "smallestPositiveDouble":D
    if-eqz p2, :cond_1

    #@15
    .line 575
    return-wide v6

    #@16
    .line 577
    :cond_1
    neg-double v8, v6

    #@17
    return-wide v8

    #@18
    .line 584
    .end local v6    # "smallestPositiveDouble":D
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1b
    move-result-wide v0

    #@1c
    .line 587
    .local v0, "bits":J
    const-wide v8, 0x7fffffffffffffffL

    #@21
    and-long v2, v0, v8

    #@23
    .line 590
    .local v2, "magnitude":J
    const-wide/16 v8, 0x0

    #@25
    cmp-long v8, v0, v8

    #@27
    if-lez v8, :cond_4

    #@29
    const/4 v8, 0x1

    #@2a
    :goto_0
    if-ne v8, p2, :cond_5

    #@2c
    .line 591
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@2e
    cmp-long v8, v2, v8

    #@30
    if-eqz v8, :cond_3

    #@32
    .line 592
    add-long/2addr v2, v10

    #@33
    .line 601
    :cond_3
    :goto_1
    const-wide/high16 v8, -0x8000000000000000L

    #@35
    and-long v4, v0, v8

    #@37
    .line 602
    .local v4, "signbit":J
    or-long v8, v2, v4

    #@39
    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@3c
    move-result-wide v8

    #@3d
    return-wide v8

    #@3e
    .line 590
    .end local v4    # "signbit":J
    :cond_4
    const/4 v8, 0x0

    #@3f
    goto :goto_0

    #@40
    .line 597
    :cond_5
    sub-long/2addr v2, v10

    #@41
    goto :goto_1
.end method

.method public static final previousDouble(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 450
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Ljava/text/ChoiceFormat;->nextDouble(DZ)D

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 498
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@5
    array-length v0, v0

    #@6
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@8
    array-length v1, v1

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 499
    new-instance v0, Ljava/io/InvalidObjectException;

    #@d
    .line 500
    const-string/jumbo v1, "limits and format arrays of different length."

    #@10
    .line 499
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 496
    :cond_0
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 21
    .param p1, "newPattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    const/16 v18, 0x2

    #@2
    move/from16 v0, v18

    #@4
    new-array v14, v0, [Ljava/lang/StringBuffer;

    #@6
    .line 178
    .local v14, "segments":[Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    #@7
    .local v7, "i":I
    :goto_0
    array-length v0, v14

    #@8
    move/from16 v18, v0

    #@a
    move/from16 v0, v18

    #@c
    if-ge v7, v0, :cond_0

    #@e
    .line 179
    new-instance v18, Ljava/lang/StringBuffer;

    #@10
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    #@13
    aput-object v18, v14, v7

    #@15
    .line 178
    add-int/lit8 v7, v7, 0x1

    #@17
    goto :goto_0

    #@18
    .line 181
    :cond_0
    const/16 v18, 0x1e

    #@1a
    move/from16 v0, v18

    #@1c
    new-array v10, v0, [D

    #@1e
    .line 182
    .local v10, "newChoiceLimits":[D
    const/16 v18, 0x1e

    #@20
    move/from16 v0, v18

    #@22
    new-array v9, v0, [Ljava/lang/String;

    #@24
    .line 183
    .local v9, "newChoiceFormats":[Ljava/lang/String;
    const/4 v5, 0x0

    #@25
    .line 184
    .local v5, "count":I
    const/4 v11, 0x0

    #@26
    .line 185
    .local v11, "part":I
    const-wide/16 v16, 0x0

    #@28
    .line 186
    .local v16, "startValue":D
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    #@2a
    .line 187
    .local v12, "oldStartValue":D
    const/4 v8, 0x0

    #@2b
    .line 188
    .local v8, "inQuote":Z
    const/4 v7, 0x0

    #@2c
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@2f
    move-result v18

    #@30
    move/from16 v0, v18

    #@32
    if-ge v7, v0, :cond_e

    #@34
    .line 189
    move-object/from16 v0, p1

    #@36
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v4

    #@3a
    .line 190
    .local v4, "ch":C
    const/16 v18, 0x27

    #@3c
    move/from16 v0, v18

    #@3e
    if-ne v4, v0, :cond_3

    #@40
    .line 192
    add-int/lit8 v18, v7, 0x1

    #@42
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@45
    move-result v19

    #@46
    move/from16 v0, v18

    #@48
    move/from16 v1, v19

    #@4a
    if-ge v0, v1, :cond_1

    #@4c
    add-int/lit8 v18, v7, 0x1

    #@4e
    move-object/from16 v0, p1

    #@50
    move/from16 v1, v18

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v18

    #@56
    move/from16 v0, v18

    #@58
    if-ne v0, v4, :cond_1

    #@5a
    .line 193
    aget-object v18, v14, v11

    #@5c
    move-object/from16 v0, v18

    #@5e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@61
    .line 194
    add-int/lit8 v7, v7, 0x1

    #@63
    .line 188
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@65
    goto :goto_1

    #@66
    .line 196
    :cond_1
    if-eqz v8, :cond_2

    #@68
    const/4 v8, 0x0

    #@69
    goto :goto_2

    #@6a
    :cond_2
    const/4 v8, 0x1

    #@6b
    goto :goto_2

    #@6c
    .line 198
    :cond_3
    if-eqz v8, :cond_4

    #@6e
    .line 199
    aget-object v18, v14, v11

    #@70
    move-object/from16 v0, v18

    #@72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@75
    goto :goto_2

    #@76
    .line 200
    :cond_4
    const/16 v18, 0x3c

    #@78
    move/from16 v0, v18

    #@7a
    if-eq v4, v0, :cond_5

    #@7c
    const/16 v18, 0x23

    #@7e
    move/from16 v0, v18

    #@80
    if-ne v4, v0, :cond_6

    #@82
    .line 201
    :cond_5
    const/16 v18, 0x0

    #@84
    aget-object v18, v14, v18

    #@86
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    #@89
    move-result v18

    #@8a
    if-nez v18, :cond_8

    #@8c
    .line 202
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@8e
    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@91
    throw v18

    #@92
    .line 200
    :cond_6
    const/16 v18, 0x2264

    #@94
    move/from16 v0, v18

    #@96
    if-eq v4, v0, :cond_5

    #@98
    .line 225
    const/16 v18, 0x7c

    #@9a
    move/from16 v0, v18

    #@9c
    if-ne v4, v0, :cond_d

    #@9e
    .line 226
    array-length v0, v10

    #@9f
    move/from16 v18, v0

    #@a1
    move/from16 v0, v18

    #@a3
    if-ne v5, v0, :cond_7

    #@a5
    .line 227
    invoke-static {v10}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    #@a8
    move-result-object v10

    #@a9
    .line 228
    move-object/from16 v0, p0

    #@ab
    invoke-direct {v0, v9}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    #@ae
    move-result-object v9

    #@af
    .line 230
    :cond_7
    aput-wide v16, v10, v5

    #@b1
    .line 231
    const/16 v18, 0x1

    #@b3
    aget-object v18, v14, v18

    #@b5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b8
    move-result-object v18

    #@b9
    aput-object v18, v9, v5

    #@bb
    .line 232
    add-int/lit8 v5, v5, 0x1

    #@bd
    .line 233
    move-wide/from16 v12, v16

    #@bf
    .line 234
    const/16 v18, 0x1

    #@c1
    aget-object v18, v14, v18

    #@c3
    const/16 v19, 0x0

    #@c5
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    #@c8
    .line 235
    const/4 v11, 0x0

    #@c9
    goto :goto_2

    #@ca
    .line 205
    :cond_8
    const/16 v18, 0x0

    #@cc
    :try_start_0
    aget-object v18, v14, v18

    #@ce
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@d1
    move-result-object v15

    #@d2
    .line 206
    .local v15, "tempBuffer":Ljava/lang/String;
    const-string/jumbo v18, "\u221e"

    #@d5
    move-object/from16 v0, v18

    #@d7
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@da
    move-result v18

    #@db
    if-eqz v18, :cond_a

    #@dd
    .line 207
    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@df
    .line 216
    :goto_3
    const/16 v18, 0x3c

    #@e1
    move/from16 v0, v18

    #@e3
    if-ne v4, v0, :cond_9

    #@e5
    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@e7
    cmpl-double v18, v16, v18

    #@e9
    if-eqz v18, :cond_9

    #@eb
    .line 217
    const-wide/high16 v18, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@ed
    cmpl-double v18, v16, v18

    #@ef
    if-eqz v18, :cond_9

    #@f1
    .line 218
    invoke-static/range {v16 .. v17}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    #@f4
    move-result-wide v16

    #@f5
    .line 220
    :cond_9
    cmpg-double v18, v16, v12

    #@f7
    if-gtz v18, :cond_c

    #@f9
    .line 221
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@fb
    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@fe
    throw v18

    #@ff
    .line 208
    :cond_a
    :try_start_1
    const-string/jumbo v18, "-\u221e"

    #@102
    move-object/from16 v0, v18

    #@104
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@107
    move-result v18

    #@108
    if-eqz v18, :cond_b

    #@10a
    .line 209
    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@10c
    goto :goto_3

    #@10d
    .line 211
    :cond_b
    const/16 v18, 0x0

    #@10f
    aget-object v18, v14, v18

    #@111
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@114
    move-result-object v18

    #@115
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@118
    move-result-object v18

    #@119
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@11c
    move-result-wide v16

    #@11d
    goto :goto_3

    #@11e
    .line 213
    .end local v15    # "tempBuffer":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@11f
    .line 214
    .local v6, "e":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@121
    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@124
    throw v18

    #@125
    .line 223
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v15    # "tempBuffer":Ljava/lang/String;
    :cond_c
    const/16 v18, 0x0

    #@127
    aget-object v18, v14, v18

    #@129
    const/16 v19, 0x0

    #@12b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    #@12e
    .line 224
    const/4 v11, 0x1

    #@12f
    .line 200
    goto/16 :goto_2

    #@131
    .line 237
    .end local v15    # "tempBuffer":Ljava/lang/String;
    :cond_d
    aget-object v18, v14, v11

    #@133
    move-object/from16 v0, v18

    #@135
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@138
    goto/16 :goto_2

    #@13a
    .line 241
    .end local v4    # "ch":C
    :cond_e
    const/16 v18, 0x1

    #@13c
    move/from16 v0, v18

    #@13e
    if-ne v11, v0, :cond_10

    #@140
    .line 242
    array-length v0, v10

    #@141
    move/from16 v18, v0

    #@143
    move/from16 v0, v18

    #@145
    if-ne v5, v0, :cond_f

    #@147
    .line 243
    invoke-static {v10}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    #@14a
    move-result-object v10

    #@14b
    .line 244
    move-object/from16 v0, p0

    #@14d
    invoke-direct {v0, v9}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    #@150
    move-result-object v9

    #@151
    .line 246
    :cond_f
    aput-wide v16, v10, v5

    #@153
    .line 247
    const/16 v18, 0x1

    #@155
    aget-object v18, v14, v18

    #@157
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@15a
    move-result-object v18

    #@15b
    aput-object v18, v9, v5

    #@15d
    .line 248
    add-int/lit8 v5, v5, 0x1

    #@15f
    .line 250
    :cond_10
    new-array v0, v5, [D

    #@161
    move-object/from16 v18, v0

    #@163
    move-object/from16 v0, v18

    #@165
    move-object/from16 v1, p0

    #@167
    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@169
    .line 251
    move-object/from16 v0, p0

    #@16b
    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@16d
    move-object/from16 v18, v0

    #@16f
    const/16 v19, 0x0

    #@171
    const/16 v20, 0x0

    #@173
    move/from16 v0, v19

    #@175
    move-object/from16 v1, v18

    #@177
    move/from16 v2, v20

    #@179
    invoke-static {v10, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@17c
    .line 252
    new-array v0, v5, [Ljava/lang/String;

    #@17e
    move-object/from16 v18, v0

    #@180
    move-object/from16 v0, v18

    #@182
    move-object/from16 v1, p0

    #@184
    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@186
    .line 253
    move-object/from16 v0, p0

    #@188
    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@18a
    move-object/from16 v18, v0

    #@18c
    const/16 v19, 0x0

    #@18e
    const/16 v20, 0x0

    #@190
    move/from16 v0, v19

    #@192
    move-object/from16 v1, v18

    #@194
    move/from16 v2, v20

    #@196
    invoke-static {v9, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@199
    .line 176
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 458
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/ChoiceFormat;

    #@6
    .line 460
    .local v0, "other":Ljava/text/ChoiceFormat;
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [D

    #@e
    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@10
    .line 461
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@12
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, [Ljava/lang/String;

    #@18
    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@1a
    .line 462
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 481
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 482
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 483
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 484
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v3

    #@10
    if-eq v2, v3, :cond_2

    #@12
    .line 485
    return v1

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 486
    check-cast v0, Ljava/text/ChoiceFormat;

    #@16
    .line 487
    .local v0, "other":Ljava/text/ChoiceFormat;
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@18
    iget-object v3, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@1a
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_3

    #@20
    .line 488
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@22
    iget-object v2, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@24
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    .line 487
    :cond_3
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "number"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "status"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 385
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 386
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@9
    aget-wide v4, v1, v0

    #@b
    cmpl-double v1, p1, v4

    #@d
    if-ltz v1, :cond_2

    #@f
    const/4 v1, 0x1

    #@10
    :goto_1
    if-nez v1, :cond_3

    #@12
    .line 391
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@14
    .line 392
    if-gez v0, :cond_1

    #@16
    const/4 v0, 0x0

    #@17
    .line 394
    :cond_1
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@19
    aget-object v1, v1, v0

    #@1b
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    :cond_2
    move v1, v2

    #@21
    .line 386
    goto :goto_1

    #@22
    .line 385
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "number"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "status"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 372
    long-to-double v0, p1

    #@1
    invoke-virtual {p0, v0, v1, p3, p4}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getFormats()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLimits()[D
    .locals 1

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 469
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@2
    array-length v0, v1

    #@3
    .line 470
    .local v0, "result":I
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@5
    array-length v1, v1

    #@6
    if-lez v1, :cond_0

    #@8
    .line 472
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@a
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@c
    array-length v2, v2

    #@d
    add-int/lit8 v2, v2, -0x1

    #@f
    aget-object v1, v1, v2

    #@11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@14
    move-result v1

    #@15
    xor-int/2addr v0, v1

    #@16
    .line 474
    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 411
    iget v4, p2, Ljava/text/ParsePosition;->index:I

    #@2
    .line 412
    .local v4, "start":I
    move v2, v4

    #@3
    .line 413
    .local v2, "furthest":I
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@5
    .line 414
    .local v0, "bestNumber":D
    const-wide/16 v6, 0x0

    #@7
    .line 415
    .local v6, "tempNumber":D
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@a
    array-length v8, v8

    #@b
    if-ge v3, v8, :cond_0

    #@d
    .line 416
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@f
    aget-object v5, v8, v3

    #@11
    .line 417
    .local v5, "tempString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@14
    move-result v8

    #@15
    const/4 v9, 0x0

    #@16
    invoke-virtual {p1, v4, v5, v9, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_2

    #@1c
    .line 418
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@1f
    move-result v8

    #@20
    add-int/2addr v8, v4

    #@21
    iput v8, p2, Ljava/text/ParsePosition;->index:I

    #@23
    .line 419
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@25
    aget-wide v6, v8, v3

    #@27
    .line 420
    iget v8, p2, Ljava/text/ParsePosition;->index:I

    #@29
    if-le v8, v2, :cond_2

    #@2b
    .line 421
    iget v2, p2, Ljava/text/ParsePosition;->index:I

    #@2d
    .line 422
    move-wide v0, v6

    #@2e
    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@31
    move-result v8

    #@32
    if-ne v2, v8, :cond_2

    #@34
    .line 427
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_0
    iput v2, p2, Ljava/text/ParsePosition;->index:I

    #@36
    .line 428
    iget v8, p2, Ljava/text/ParsePosition;->index:I

    #@38
    if-ne v8, v4, :cond_1

    #@3a
    .line 429
    iput v2, p2, Ljava/text/ParsePosition;->errorIndex:I

    #@3c
    .line 431
    :cond_1
    new-instance v8, Ljava/lang/Double;

    #@3e
    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    #@41
    return-object v8

    #@42
    .line 415
    .restart local v5    # "tempString":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@44
    goto :goto_0
.end method

.method public setChoices([D[Ljava/lang/String;)V
    .locals 2
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 337
    array-length v0, p1

    #@1
    array-length v1, p2

    #@2
    if-eq v0, v1, :cond_0

    #@4
    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    .line 339
    const-string/jumbo v1, "Array and limit arrays must be of the same length."

    #@9
    .line 338
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 341
    :cond_0
    iput-object p1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@f
    .line 342
    iput-object p2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@11
    .line 336
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 18

    #@0
    .prologue
    .line 260
    new-instance v8, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 261
    .local v8, "result":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@8
    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@a
    array-length v14, v14

    #@b
    if-ge v3, v14, :cond_c

    #@d
    .line 262
    if-eqz v3, :cond_0

    #@f
    .line 263
    const/16 v14, 0x7c

    #@11
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@14
    .line 268
    :cond_0
    move-object/from16 v0, p0

    #@16
    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@18
    aget-wide v14, v14, v3

    #@1a
    invoke-static {v14, v15}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    #@1d
    move-result-wide v6

    #@1e
    .line 269
    .local v6, "less":D
    move-object/from16 v0, p0

    #@20
    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@22
    aget-wide v14, v14, v3

    #@24
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    #@26
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->IEEEremainder(DD)D

    #@29
    move-result-wide v14

    #@2a
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    #@2d
    move-result-wide v12

    #@2e
    .line 270
    .local v12, "tryLessOrEqual":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    #@30
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->IEEEremainder(DD)D

    #@33
    move-result-wide v14

    #@34
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    #@37
    move-result-wide v10

    #@38
    .line 272
    .local v10, "tryLess":D
    cmpg-double v14, v12, v10

    #@3a
    if-gez v14, :cond_5

    #@3c
    .line 273
    new-instance v14, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v15, ""

    #@44
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v14

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-object v15, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@4c
    aget-wide v16, v15, v3

    #@4e
    move-wide/from16 v0, v16

    #@50
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@53
    move-result-object v14

    #@54
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v14

    #@58
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    .line 274
    const/16 v14, 0x23

    #@5d
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@60
    .line 287
    :goto_1
    move-object/from16 v0, p0

    #@62
    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    #@64
    aget-object v9, v14, v3

    #@66
    .line 288
    .local v9, "text":Ljava/lang/String;
    const/16 v14, 0x3c

    #@68
    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    #@6b
    move-result v14

    #@6c
    if-gez v14, :cond_1

    #@6e
    .line 289
    const/16 v14, 0x23

    #@70
    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    #@73
    move-result v14

    #@74
    if-ltz v14, :cond_8

    #@76
    .line 288
    :cond_1
    const/4 v5, 0x1

    #@77
    .line 292
    .local v5, "needQuote":Z
    :goto_2
    if-eqz v5, :cond_2

    #@79
    const/16 v14, 0x27

    #@7b
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7e
    .line 293
    :cond_2
    const/16 v14, 0x27

    #@80
    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    #@83
    move-result v14

    #@84
    if-gez v14, :cond_a

    #@86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@89
    .line 301
    :cond_3
    if-eqz v5, :cond_4

    #@8b
    const/16 v14, 0x27

    #@8d
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@90
    .line 261
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@92
    goto/16 :goto_0

    #@94
    .line 276
    .end local v5    # "needQuote":Z
    .end local v9    # "text":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@96
    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@98
    aget-wide v14, v14, v3

    #@9a
    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@9c
    cmpl-double v14, v14, v16

    #@9e
    if-nez v14, :cond_6

    #@a0
    .line 277
    const-string/jumbo v14, "\u221e"

    #@a3
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a6
    .line 283
    :goto_3
    const/16 v14, 0x3c

    #@a8
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@ab
    goto :goto_1

    #@ac
    .line 278
    :cond_6
    move-object/from16 v0, p0

    #@ae
    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    #@b0
    aget-wide v14, v14, v3

    #@b2
    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@b4
    cmpl-double v14, v14, v16

    #@b6
    if-nez v14, :cond_7

    #@b8
    .line 279
    const-string/jumbo v14, "-\u221e"

    #@bb
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@be
    goto :goto_3

    #@bf
    .line 281
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v15, ""

    #@c7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v14

    #@cb
    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v14

    #@cf
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v14

    #@d3
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d6
    goto :goto_3

    #@d7
    .line 290
    .restart local v9    # "text":Ljava/lang/String;
    :cond_8
    const/16 v14, 0x2264

    #@d9
    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    #@dc
    move-result v14

    #@dd
    if-gez v14, :cond_1

    #@df
    .line 291
    const/16 v14, 0x7c

    #@e1
    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    #@e4
    move-result v14

    #@e5
    if-ltz v14, :cond_9

    #@e7
    const/4 v5, 0x1

    #@e8
    goto :goto_2

    #@e9
    :cond_9
    const/4 v5, 0x0

    #@ea
    goto :goto_2

    #@eb
    .line 295
    .restart local v5    # "needQuote":Z
    :cond_a
    const/4 v4, 0x0

    #@ec
    .local v4, "j":I
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@ef
    move-result v14

    #@f0
    if-ge v4, v14, :cond_3

    #@f2
    .line 296
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    #@f5
    move-result v2

    #@f6
    .line 297
    .local v2, "c":C
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@f9
    .line 298
    const/16 v14, 0x27

    #@fb
    if-ne v2, v14, :cond_b

    #@fd
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@100
    .line 295
    :cond_b
    add-int/lit8 v4, v4, 0x1

    #@102
    goto :goto_4

    #@103
    .line 303
    .end local v2    # "c":C
    .end local v4    # "j":I
    .end local v5    # "needQuote":Z
    .end local v6    # "less":D
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "tryLess":D
    .end local v12    # "tryLessOrEqual":D
    :cond_c
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@106
    move-result-object v14

    #@107
    return-object v14
.end method
