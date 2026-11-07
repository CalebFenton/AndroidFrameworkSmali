.class public Ljava/text/ChoiceFormat;
.super Ljava/text/NumberFormat;
.source "ChoiceFormat.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x18e9c6bee365b604L


# instance fields
.field private greylist-max-o choiceFormats:[Ljava/lang/String;

.field private greylist-max-o choiceLimits:[D


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "newPattern"    # Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 321
    invoke-virtual {p0, p1}, Ljava/text/ChoiceFormat;->applyPattern(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public constructor whitelist test-api <init>([D[Ljava/lang/String;)V
    .registers 3
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    .line 333
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 334
    invoke-virtual {p0, p1, p2}, Ljava/text/ChoiceFormat;->setChoices([D[Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private static greylist-max-o doubleArraySize([D)[D
    .registers 4
    .param p0, "array"    # [D

    .line 580
    array-length v0, p0

    .line 581
    .local v0, "oldSize":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [D

    .line 582
    .local v1, "newArray":[D
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    return-object v1
.end method

.method private greylist-max-o doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "array"    # [Ljava/lang/String;

    .line 587
    array-length v0, p1

    .line 588
    .local v0, "oldSize":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 589
    .local v1, "newArray":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    return-object v1
.end method

.method public static final whitelist test-api nextDouble(D)D
    .registers 4
    .param p0, "d"    # D

    .line 473
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api nextDouble(DZ)D
    .registers 5
    .param p0, "d"    # D
    .param p2, "positive"    # Z

    .line 576
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public static final whitelist test-api previousDouble(D)D
    .registers 4
    .param p0, "d"    # D

    .line 488
    invoke-static {p0, p1}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 536
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 537
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v0, v0

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 541
    return-void

    .line 538
    :cond_c
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "limits and format arrays of different length."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 22
    .param p1, "newPattern"    # Ljava/lang/String;

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/StringBuffer;

    .line 182
    .local v2, "segments":[Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    array-length v4, v2

    if-ge v3, v4, :cond_15

    .line 183
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v4, v2, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 185
    .end local v3    # "i":I
    :cond_15
    const/16 v3, 0x1e

    new-array v4, v3, [D

    .line 186
    .local v4, "newChoiceLimits":[D
    new-array v3, v3, [Ljava/lang/String;

    .line 187
    .local v3, "newChoiceFormats":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 188
    .local v5, "count":I
    const/4 v6, 0x0

    .line 189
    .local v6, "part":I
    const-wide/16 v7, 0x0

    .line 190
    .local v7, "startValue":D
    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    .line 191
    .local v9, "oldStartValue":D
    const/4 v11, 0x0

    .line 192
    .local v11, "inQuote":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_f5

    .line 193
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 194
    .local v13, "ch":C
    const/16 v16, 0x1

    const/16 v15, 0x27

    if-ne v13, v15, :cond_55

    .line 196
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v15, v14, :cond_4c

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_4c

    .line 197
    aget-object v14, v2, v6

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_df

    .line 200
    :cond_4c
    if-nez v11, :cond_51

    move/from16 v14, v16

    goto :goto_52

    :cond_51
    const/4 v14, 0x0

    :goto_52
    move v11, v14

    .end local v11    # "inQuote":Z
    .local v14, "inQuote":Z
    goto/16 :goto_df

    .line 202
    .end local v14    # "inQuote":Z
    .restart local v11    # "inQuote":Z
    :cond_55
    if-eqz v11, :cond_5e

    .line 203
    aget-object v14, v2, v6

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_df

    .line 204
    :cond_5e
    const/16 v14, 0x3c

    if-eq v13, v14, :cond_95

    const/16 v15, 0x23

    if-eq v13, v15, :cond_95

    const/16 v15, 0x2264

    if-ne v13, v15, :cond_6b

    goto :goto_95

    .line 229
    :cond_6b
    const/16 v14, 0x7c

    if-ne v13, v14, :cond_8f

    .line 230
    array-length v14, v4

    if-ne v5, v14, :cond_7a

    .line 231
    invoke-static {v4}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    move-result-object v4

    .line 232
    invoke-direct {v0, v3}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 234
    :cond_7a
    aput-wide v7, v4, v5

    .line 235
    aget-object v14, v2, v16

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v5

    .line 236
    add-int/lit8 v5, v5, 0x1

    .line 237
    move-wide v9, v7

    .line 238
    aget-object v14, v2, v16

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 239
    const/4 v6, 0x0

    goto :goto_df

    .line 241
    :cond_8f
    aget-object v14, v2, v6

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_df

    .line 205
    :cond_95
    :goto_95
    const/16 v17, 0x0

    aget-object v15, v2, v17

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-eqz v15, :cond_ed

    .line 210
    aget-object v15, v2, v17

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 211
    .local v15, "tempBuffer":Ljava/lang/String;
    const-string v14, "\u221e"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b0

    .line 212
    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_bf

    .line 213
    :cond_b0
    const-string v14, "-\u221e"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_bb

    .line 214
    const-wide/high16 v7, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_bf

    .line 216
    :cond_bb
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 219
    :goto_bf
    const/16 v14, 0x3c

    if-ne v13, v14, :cond_d3

    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v14, v7, v18

    if-eqz v14, :cond_d3

    const-wide/high16 v18, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v14, v7, v18

    if-eqz v14, :cond_d3

    .line 221
    invoke-static {v7, v8}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    move-result-wide v7

    .line 223
    :cond_d3
    cmpg-double v14, v7, v9

    if-lez v14, :cond_e5

    .line 227
    const/4 v14, 0x0

    aget-object v1, v2, v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 228
    const/4 v1, 0x1

    .line 229
    .end local v6    # "part":I
    .end local v15    # "tempBuffer":Ljava/lang/String;
    .local v1, "part":I
    move v6, v1

    .line 192
    .end local v1    # "part":I
    .end local v13    # "ch":C
    .restart local v6    # "part":I
    :goto_df
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_23

    .line 224
    .restart local v13    # "ch":C
    .restart local v15    # "tempBuffer":Ljava/lang/String;
    :cond_e5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v14, "Incorrect order of intervals, must be in ascending order"

    invoke-direct {v1, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    .end local v15    # "tempBuffer":Ljava/lang/String;
    :cond_ed
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v14, "Each interval must contain a number before a format"

    invoke-direct {v1, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    .end local v13    # "ch":C
    :cond_f5
    const/16 v16, 0x1

    .line 245
    .end local v12    # "i":I
    move/from16 v1, v16

    if-ne v6, v1, :cond_115

    .line 246
    array-length v1, v4

    if-ne v5, v1, :cond_107

    .line 247
    invoke-static {v4}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    move-result-object v1

    .line 248
    .end local v4    # "newChoiceLimits":[D
    .local v1, "newChoiceLimits":[D
    invoke-direct {v0, v3}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    .line 250
    .end local v1    # "newChoiceLimits":[D
    .restart local v4    # "newChoiceLimits":[D
    :cond_107
    aput-wide v7, v4, v5

    .line 251
    const/16 v16, 0x1

    aget-object v1, v2, v16

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 252
    add-int/lit8 v5, v5, 0x1

    .line 254
    :cond_115
    new-array v1, v5, [D

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 255
    iget-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    const/4 v14, 0x0

    invoke-static {v4, v14, v1, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 257
    iget-object v1, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-static {v3, v14, v1, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 496
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/ChoiceFormat;

    .line 498
    .local v0, "other":Ljava/text/ChoiceFormat;
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 499
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 500
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 519
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 520
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 521
    return v1

    .line 522
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 523
    return v0

    .line 524
    :cond_13
    move-object v2, p1

    check-cast v2, Ljava/text/ChoiceFormat;

    .line 525
    .local v2, "other":Ljava/text/ChoiceFormat;
    iget-object v3, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iget-object v4, v2, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 526
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move v0, v1

    goto :goto_2d

    :cond_2c
    nop

    .line 525
    :goto_2d
    return v0
.end method

.method public whitelist test-api format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 8
    .param p1, "number"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "status"    # Ljava/text/FieldPosition;

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 409
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v1, v1, v0

    cmpl-double v1, p1, v1

    if-gez v1, :cond_f

    .line 411
    goto :goto_12

    .line 408
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 414
    :cond_12
    :goto_12
    add-int/lit8 v0, v0, -0x1

    .line 415
    if-gez v0, :cond_17

    const/4 v0, 0x0

    .line 417
    :cond_17
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "number"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "status"    # Ljava/text/FieldPosition;

    .line 393
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormats()[Ljava/lang/Object;
    .registers 3

    .line 378
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, "newFormats":[Ljava/lang/Object;
    return-object v0
.end method

.method public whitelist test-api getLimits()[D
    .registers 3

    .line 368
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    .line 369
    .local v0, "newLimits":[D
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 507
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v0, v0

    .line 508
    .local v0, "result":I
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_16

    .line 510
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 512
    :cond_16
    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 437
    iget v0, p2, Ljava/text/ParsePosition;->index:I

    .line 438
    .local v0, "start":I
    move v1, v0

    .line 439
    .local v1, "furthest":I
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 440
    .local v2, "bestNumber":D
    const-wide/16 v4, 0x0

    .line 441
    .local v4, "tempNumber":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8
    iget-object v7, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_38

    .line 442
    iget-object v7, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v7, v7, v6

    .line 443
    .local v7, "tempString":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v0, v7, v8, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 444
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    iput v8, p2, Ljava/text/ParsePosition;->index:I

    .line 445
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v4, v8, v6

    .line 446
    iget v8, p2, Ljava/text/ParsePosition;->index:I

    if-le v8, v1, :cond_35

    .line 447
    iget v1, p2, Ljava/text/ParsePosition;->index:I

    .line 448
    move-wide v2, v4

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v1, v8, :cond_35

    goto :goto_38

    .line 441
    .end local v7    # "tempString":Ljava/lang/String;
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 453
    .end local v6    # "i":I
    :cond_38
    :goto_38
    iput v1, p2, Ljava/text/ParsePosition;->index:I

    .line 454
    iget v6, p2, Ljava/text/ParsePosition;->index:I

    if-ne v6, v0, :cond_40

    .line 455
    iput v1, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 457
    :cond_40
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    return-object v6
.end method

.method public whitelist test-api setChoices([D[Ljava/lang/String;)V
    .registers 5
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    .line 354
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_15

    .line 358
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 359
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 360
    return-void

    .line 355
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array and limit arrays must be of the same length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toPattern()Ljava/lang/String;
    .registers 18

    .line 266
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget-object v3, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v3, v3

    if-ge v2, v3, :cond_bd

    .line 268
    const/16 v3, 0x7c

    if-eqz v2, :cond_14

    .line 269
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    :cond_14
    iget-object v4, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    move-result-wide v4

    .line 275
    .local v4, "less":D
    iget-object v6, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v6, v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 276
    .local v6, "tryLessOrEqual":D
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 278
    .local v8, "tryLess":D
    cmpg-double v10, v6, v8

    const/16 v11, 0x3c

    const/16 v12, 0x23

    if-gez v10, :cond_45

    .line 279
    iget-object v10, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v13, v10, v2

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 282
    :cond_45
    iget-object v10, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v13, v10, v2

    const-wide/high16 v15, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v10, v13, v15

    if-nez v10, :cond_55

    .line 283
    const-string v10, "\u221e"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 284
    :cond_55
    iget-object v10, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v13, v10, v2

    const-wide/high16 v15, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v10, v13, v15

    if-nez v10, :cond_65

    .line 285
    const-string v10, "-\u221e"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 287
    :cond_65
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 289
    :goto_68
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    :goto_6b
    iget-object v10, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v10, v10, v2

    .line 294
    .local v10, "text":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_8c

    .line 295
    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_8c

    .line 296
    const/16 v11, 0x2264

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_8c

    .line 297
    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 v3, 0x0

    goto :goto_8d

    :cond_8c
    :goto_8c
    const/4 v3, 0x1

    .line 298
    .local v3, "needQuote":Z
    :goto_8d
    const/16 v11, 0x27

    if-eqz v3, :cond_94

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    :cond_94
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_9e

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b4

    .line 301
    :cond_9e
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_9f
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_b4

    .line 302
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 303
    .local v13, "c":C
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    if-ne v13, v11, :cond_b1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    .end local v13    # "c":C
    :cond_b1
    add-int/lit8 v12, v12, 0x1

    goto :goto_9f

    .line 307
    .end local v12    # "j":I
    :cond_b4
    :goto_b4
    if-eqz v3, :cond_b9

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    .end local v3    # "needQuote":Z
    .end local v4    # "less":D
    .end local v6    # "tryLessOrEqual":D
    .end local v8    # "tryLess":D
    .end local v10    # "text":Ljava/lang/String;
    :cond_b9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 309
    .end local v2    # "i":I
    :cond_bd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
