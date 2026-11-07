.class public final Landroid/icu/impl/SimpleFormatterImpl;
.super Ljava/lang/Object;
.source "SimpleFormatterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/SimpleFormatterImpl$IterInternal;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ARG_NUM_LIMIT:I = 0x100

.field private static final blacklist COMMON_PATTERNS:[[Ljava/lang/String;

.field private static final blacklist LEN1_CHAR:C = '\u0101'

.field private static final blacklist LEN2_CHAR:C = '\u0102'

.field private static final blacklist LEN3_CHAR:C = '\u0103'

.field private static final blacklist MAX_SEGMENT_LENGTH:I = 0xfeff

.field private static final blacklist SEGMENT_LENGTH_ARGUMENT_CHAR:C = '\uffff'


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 34
    nop

    .line 57
    const-string v0, "{0} {1}"

    const-string v1, "\u0002\u0000\u0101 \u0001"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "{0} ({1})"

    const-string v2, "\u0002\u0000\u0102 (\u0001\u0101)"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "{0}, {1}"

    const-string v3, "\u0002\u0000\u0102, \u0001"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "{0} \u2013 {1}"

    const-string v4, "\u0002\u0000\u0103 \u2013 \u0001"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/SimpleFormatterImpl;->COMMON_PATTERNS:[[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .registers 23
    .param p0, "pattern"    # Ljava/lang/CharSequence;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-gt v2, v6, :cond_26

    if-gt v6, v3, :cond_26

    .line 83
    sget-object v6, Landroid/icu/impl/SimpleFormatterImpl;->COMMON_PATTERNS:[[Ljava/lang/String;

    array-length v7, v6

    move v8, v4

    :goto_13
    if-ge v8, v7, :cond_26

    aget-object v9, v6, v8

    .line 84
    .local v9, "pair":[Ljava/lang/String;
    aget-object v10, v9, v4

    invoke-virtual {v10, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 85
    nop

    .line 86
    aget-object v4, v9, v5

    return-object v4

    .line 83
    .end local v9    # "pair":[Ljava/lang/String;
    :cond_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 93
    :cond_26
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 94
    .local v6, "patternLength":I
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 96
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 97
    const/4 v7, 0x0

    .line 98
    .local v7, "textLength":I
    const/4 v8, -0x1

    .line 99
    .local v8, "maxArg":I
    const/4 v9, 0x0

    .line 100
    .local v9, "inQuote":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_34
    if-ge v10, v6, :cond_138

    .line 101
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 102
    .local v10, "c":C
    const/16 v12, 0x7b

    const/16 v13, 0x27

    const/16 v14, 0x7d

    if-ne v10, v13, :cond_6a

    .line 103
    if-ge v11, v6, :cond_53

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move v10, v15

    if-ne v15, v13, :cond_53

    .line 105
    add-int/lit8 v11, v11, 0x1

    move/from16 v17, v5

    goto/16 :goto_11f

    .line 106
    :cond_53
    if-eqz v9, :cond_58

    .line 108
    const/4 v9, 0x0

    .line 109
    move v10, v11

    goto :goto_34

    .line 110
    :cond_58
    if-eq v10, v12, :cond_63

    if-ne v10, v14, :cond_5d

    goto :goto_63

    .line 116
    :cond_5d
    const/16 v10, 0x27

    move/from16 v17, v5

    goto/16 :goto_11f

    .line 112
    :cond_63
    :goto_63
    add-int/lit8 v11, v11, 0x1

    .line 113
    const/4 v9, 0x1

    move/from16 v17, v5

    goto/16 :goto_11f

    .line 118
    :cond_6a
    if-nez v9, :cond_11d

    if-ne v10, v12, :cond_11d

    .line 119
    if-lez v7, :cond_7d

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v7

    sub-int/2addr v12, v5

    add-int/lit16 v13, v7, 0x100

    int-to-char v13, v13

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 121
    const/4 v7, 0x0

    .line 124
    :cond_7d
    add-int/lit8 v12, v11, 0x1

    const/16 v13, 0x30

    if-ge v12, v6, :cond_9e

    .line 125
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    sub-int/2addr v12, v13

    move v15, v12

    .local v15, "argNumber":I
    if-ltz v12, :cond_9e

    const/16 v12, 0x9

    if-gt v15, v12, :cond_9e

    add-int/lit8 v12, v11, 0x1

    .line 126
    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v14, :cond_9e

    .line 127
    add-int/lit8 v11, v11, 0x2

    move/from16 v17, v5

    move v5, v10

    move v10, v11

    goto :goto_e1

    .line 132
    .end local v15    # "argNumber":I
    :cond_9e
    add-int/lit8 v12, v11, -0x1

    .line 133
    .local v12, "argStart":I
    const/4 v15, -0x1

    .line 134
    .restart local v15    # "argNumber":I
    if-ge v11, v6, :cond_d9

    add-int/lit8 v16, v11, 0x1

    .end local v11    # "i":I
    .local v16, "i":I
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    move v10, v11

    move/from16 v17, v5

    const/16 v5, 0x31

    if-gt v5, v11, :cond_d6

    const/16 v5, 0x39

    if-gt v10, v5, :cond_d6

    .line 135
    add-int/lit8 v11, v10, -0x30

    move v15, v11

    move/from16 v11, v16

    .line 136
    .end local v16    # "i":I
    .restart local v11    # "i":I
    :goto_b9
    if-ge v11, v6, :cond_db

    add-int/lit8 v16, v11, 0x1

    .end local v11    # "i":I
    .restart local v16    # "i":I
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    move v10, v11

    if-gt v13, v11, :cond_d6

    if-gt v10, v5, :cond_d6

    .line 137
    mul-int/lit8 v11, v15, 0xa

    add-int/lit8 v18, v10, -0x30

    add-int v15, v11, v18

    .line 138
    const/16 v11, 0x100

    if-lt v15, v11, :cond_d3

    .line 139
    move/from16 v11, v16

    goto :goto_db

    .line 138
    :cond_d3
    move/from16 v11, v16

    goto :goto_b9

    .line 143
    :cond_d6
    move/from16 v11, v16

    goto :goto_db

    .line 134
    .end local v16    # "i":I
    .restart local v11    # "i":I
    :cond_d9
    move/from16 v17, v5

    .line 143
    :cond_db
    :goto_db
    if-ltz v15, :cond_ec

    if-ne v10, v14, :cond_ec

    move v5, v10

    move v10, v11

    .line 150
    .end local v11    # "i":I
    .end local v12    # "argStart":I
    .local v5, "c":C
    .local v10, "i":I
    :goto_e1
    if-le v15, v8, :cond_e4

    .line 151
    move v8, v15

    .line 153
    :cond_e4
    int-to-char v11, v15

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    move/from16 v5, v17

    goto/16 :goto_34

    .line 144
    .end local v5    # "c":C
    .local v10, "c":C
    .restart local v11    # "i":I
    .restart local v12    # "argStart":I
    :cond_ec
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Argument syntax error in pattern \""

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\" at index "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 147
    invoke-interface {v0, v12, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    .end local v12    # "argStart":I
    .end local v15    # "argNumber":I
    :cond_11d
    move/from16 v17, v5

    .line 157
    :goto_11f
    if-nez v7, :cond_127

    .line 159
    const v5, 0xffff

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    :cond_127
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v7, v7, 0x1

    const v5, 0xfeff

    if-ne v7, v5, :cond_133

    .line 163
    const/4 v5, 0x0

    move v7, v5

    .line 165
    .end local v10    # "c":C
    :cond_133
    move v10, v11

    move/from16 v5, v17

    goto/16 :goto_34

    .line 100
    .end local v11    # "i":I
    .local v10, "i":I
    :cond_138
    move/from16 v17, v5

    .line 166
    .end local v10    # "i":I
    if-lez v7, :cond_149

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    add-int/lit16 v10, v7, 0x100

    int-to-char v10, v10

    invoke-virtual {v1, v5, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 169
    :cond_149
    add-int/lit8 v5, v8, 0x1

    .line 170
    .local v5, "argCount":I
    const-string v10, "\""

    const-string v11, " arguments in pattern \""

    if-lt v5, v2, :cond_181

    .line 174
    if-gt v5, v3, :cond_15c

    .line 178
    int-to-char v10, v5

    invoke-virtual {v1, v4, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 175
    :cond_15c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "More than maximum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 171
    :cond_181
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fewer than minimum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static blacklist format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;
    .registers 12
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/CharSequence;
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .param p3, "resultCopy"    # Ljava/lang/String;
    .param p4, "forbidResultAsValue"    # Z
    .param p5, "offsets"    # [I

    .line 451
    if-nez p5, :cond_4

    .line 452
    const/4 v0, 0x0

    .local v0, "offsetsLength":I
    goto :goto_e

    .line 454
    .end local v0    # "offsetsLength":I
    :cond_4
    array-length v0, p5

    .line 455
    .restart local v0    # "offsetsLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_e

    .line 456
    const/4 v2, -0x1

    aput v2, p5, v1

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 459
    .end local v1    # "i":I
    :cond_e
    :goto_e
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 460
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 461
    .local v1, "n":I
    const/16 v3, 0x100

    if-ge v1, v3, :cond_4f

    .line 462
    aget-object v3, p1, v1

    .line 463
    .local v3, "value":Ljava/lang/CharSequence;
    if-ne v3, p2, :cond_42

    .line 464
    if-nez p4, :cond_3a

    .line 467
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2e

    .line 469
    if-ge v1, v0, :cond_4d

    .line 470
    const/4 v4, 0x0

    aput v4, p5, v1

    goto :goto_4d

    .line 473
    :cond_2e
    if-ge v1, v0, :cond_36

    .line 474
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    aput v4, p5, v1

    .line 476
    :cond_36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 465
    :cond_3a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Value must not be same object as result"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 479
    :cond_42
    if-ge v1, v0, :cond_4a

    .line 480
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    aput v4, p5, v1

    .line 482
    :cond_4a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 484
    .end local v3    # "value":Ljava/lang/CharSequence;
    :cond_4d
    :goto_4d
    move v1, v2

    goto :goto_57

    .line 485
    :cond_4f
    add-int/lit16 v3, v1, -0x100

    add-int/2addr v3, v2

    .line 486
    .local v3, "limit":I
    invoke-virtual {p2, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 487
    move v2, v3

    move v1, v2

    .line 489
    .end local v2    # "i":I
    .end local v3    # "limit":I
    .local v1, "i":I
    :goto_57
    goto :goto_f

    .line 490
    .end local v1    # "i":I
    :cond_58
    return-object p2
.end method

.method public static varargs blacklist formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 12
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    .line 235
    if-eqz p3, :cond_4

    array-length v0, p3

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 236
    .local v0, "valuesLength":I
    :goto_5
    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_16

    .line 239
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move-object v3, p3

    .end local p0    # "compiledPattern":Ljava/lang/String;
    .end local p1    # "appendTo":Ljava/lang/StringBuilder;
    .end local p2    # "offsets":[I
    .end local p3    # "values":[Ljava/lang/CharSequence;
    .local v2, "compiledPattern":Ljava/lang/String;
    .local v3, "values":[Ljava/lang/CharSequence;
    .local v4, "appendTo":Ljava/lang/StringBuilder;
    .local v7, "offsets":[I
    invoke-static/range {v2 .. v7}, Landroid/icu/impl/SimpleFormatterImpl;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 237
    .end local v2    # "compiledPattern":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/CharSequence;
    .end local v4    # "appendTo":Ljava/lang/StringBuilder;
    .end local v7    # "offsets":[I
    .restart local p0    # "compiledPattern":Ljava/lang/String;
    .restart local p1    # "appendTo":Ljava/lang/StringBuilder;
    .restart local p2    # "offsets":[I
    .restart local p3    # "values":[Ljava/lang/CharSequence;
    :cond_16
    move-object v2, p0

    move-object v4, p1

    .end local p0    # "compiledPattern":Ljava/lang/String;
    .end local p1    # "appendTo":Ljava/lang/StringBuilder;
    .restart local v2    # "compiledPattern":Ljava/lang/String;
    .restart local v4    # "appendTo":Ljava/lang/StringBuilder;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too few values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs blacklist formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 13
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    .line 260
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    array-length v1, p3

    goto :goto_6

    :cond_5
    move v1, v0

    .line 261
    .local v1, "valuesLength":I
    :goto_6
    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_50

    .line 268
    const/4 v2, -0x1

    .line 271
    .local v2, "firstArg":I
    const/4 v3, 0x0

    .line 272
    .local v3, "resultCopy":Ljava/lang/String;
    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_40

    .line 273
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3e

    .line 274
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 275
    .local v4, "n":I
    const/16 v6, 0x100

    if-ge v4, v6, :cond_39

    .line 276
    aget-object v6, p3, v4

    if-ne v6, p1, :cond_37

    .line 277
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2f

    .line 278
    move v2, v4

    move v4, v5

    goto :goto_3d

    .line 279
    :cond_2f
    if-nez v3, :cond_37

    .line 280
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v5

    goto :goto_3d

    .line 286
    .end local v4    # "n":I
    :cond_37
    move v4, v5

    goto :goto_3d

    .line 284
    .restart local v4    # "n":I
    :cond_39
    add-int/lit16 v6, v4, -0x100

    add-int/2addr v5, v6

    move v4, v5

    .line 286
    .end local v5    # "i":I
    .local v4, "i":I
    :goto_3d
    goto :goto_15

    .line 273
    :cond_3e
    move-object v6, v3

    goto :goto_41

    .line 272
    .end local v4    # "i":I
    :cond_40
    move-object v6, v3

    .line 288
    .end local v3    # "resultCopy":Ljava/lang/String;
    .local v6, "resultCopy":Ljava/lang/String;
    :goto_41
    if-gez v2, :cond_46

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 291
    :cond_46
    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v8, p2

    move-object v4, p3

    .end local p0    # "compiledPattern":Ljava/lang/String;
    .end local p1    # "result":Ljava/lang/StringBuilder;
    .end local p2    # "offsets":[I
    .end local p3    # "values":[Ljava/lang/CharSequence;
    .local v3, "compiledPattern":Ljava/lang/String;
    .local v4, "values":[Ljava/lang/CharSequence;
    .local v5, "result":Ljava/lang/StringBuilder;
    .local v8, "offsets":[I
    invoke-static/range {v3 .. v8}, Landroid/icu/impl/SimpleFormatterImpl;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 262
    .end local v2    # "firstArg":I
    .end local v3    # "compiledPattern":Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/CharSequence;
    .end local v5    # "result":Ljava/lang/StringBuilder;
    .end local v6    # "resultCopy":Ljava/lang/String;
    .end local v8    # "offsets":[I
    .restart local p0    # "compiledPattern":Ljava/lang/String;
    .restart local p1    # "result":Ljava/lang/StringBuilder;
    .restart local p2    # "offsets":[I
    .restart local p3    # "values":[Ljava/lang/CharSequence;
    :cond_50
    move-object v3, p0

    move-object v5, p1

    .end local p0    # "compiledPattern":Ljava/lang/String;
    .end local p1    # "result":Ljava/lang/StringBuilder;
    .restart local v3    # "compiledPattern":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too few values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs blacklist formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist formatPrefixSuffix(Ljava/lang/String;Ljava/text/Format$Field;IILandroid/icu/impl/FormattedStringBuilder;)I
    .registers 13
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "field"    # Ljava/text/Format$Field;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "output"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 377
    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v0

    .line 378
    .local v0, "argLimit":I
    if-nez v0, :cond_18

    .line 380
    const/4 v5, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v4, p0

    move-object v7, p1

    move v2, p2

    move v3, p3

    move-object v1, p4

    .end local p0    # "compiledPattern":Ljava/lang/String;
    .end local p1    # "field":Ljava/text/Format$Field;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .local v1, "output":Landroid/icu/impl/FormattedStringBuilder;
    .local v2, "start":I
    .local v3, "end":I
    .local v4, "compiledPattern":Ljava/lang/String;
    .local v7, "field":Ljava/text/Format$Field;
    invoke-virtual/range {v1 .. v7}, Landroid/icu/impl/FormattedStringBuilder;->splice(IILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result p0

    move p1, v3

    move-object v3, v4

    move-object v6, v7

    .end local v4    # "compiledPattern":Ljava/lang/String;
    .end local v7    # "field":Ljava/text/Format$Field;
    .local v3, "compiledPattern":Ljava/lang/String;
    .local v6, "field":Ljava/text/Format$Field;
    .local p1, "end":I
    return p0

    .line 382
    .end local v1    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .end local v2    # "start":I
    .end local v3    # "compiledPattern":Ljava/lang/String;
    .end local v6    # "field":Ljava/text/Format$Field;
    .restart local p0    # "compiledPattern":Ljava/lang/String;
    .local p1, "field":Ljava/text/Format$Field;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    .restart local p4    # "output":Landroid/icu/impl/FormattedStringBuilder;
    :cond_18
    move-object v3, p0

    move-object v6, p1

    move v2, p2

    move p1, p3

    move-object v1, p4

    .line 384
    .end local p0    # "compiledPattern":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .restart local v1    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .restart local v2    # "start":I
    .restart local v3    # "compiledPattern":Ljava/lang/String;
    .restart local v6    # "field":Ljava/text/Format$Field;
    .local p1, "end":I
    const/4 p0, 0x0

    .line 385
    .local p0, "length":I
    const/4 p2, 0x1

    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-eqz p3, :cond_36

    .line 386
    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit16 p2, p2, -0x100

    .line 387
    .local p2, "prefixLength":I
    add-int/lit8 v5, p2, 0x2

    const/4 v4, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result p0

    .line 388
    move p3, v2

    .end local v2    # "start":I
    .local p3, "start":I
    add-int/lit8 p2, p2, 0x3

    .line 389
    .local p2, "suffixOffset":I
    goto :goto_38

    .line 390
    .end local p2    # "suffixOffset":I
    .end local p3    # "start":I
    .restart local v2    # "start":I
    :cond_36
    move p3, v2

    .end local v2    # "start":I
    .restart local p3    # "start":I
    const/4 p2, 0x2

    .line 392
    .restart local p2    # "suffixOffset":I
    :goto_38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p2, p4, :cond_50

    .line 393
    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p4

    add-int/lit16 p4, p4, -0x100

    .line 394
    .local p4, "suffixLength":I
    add-int v2, p1, p0

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x1

    add-int/2addr v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result v2

    add-int/2addr p0, v2

    .line 397
    .end local p4    # "suffixLength":I
    :cond_50
    return p0
.end method

.method public static varargs blacklist formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0, p1, p2}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "compiledPattern":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 215
    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p3}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getArgumentLimit(Ljava/lang/String;)I
    .registers 2
    .param p0, "compiledPattern"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static blacklist getLength(Ljava/lang/String;Z)I
    .registers 7
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "codePoints"    # Z

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "result":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 323
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit16 v1, v1, -0x100

    .line 324
    .local v1, "segmentLength":I
    if-lez v1, :cond_22

    .line 325
    add-int v3, v2, v1

    .line 326
    .local v3, "limit":I
    if-eqz p1, :cond_1c

    .line 327
    invoke-static {p0, v2, v3}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1f

    .line 329
    :cond_1c
    sub-int v4, v3, v2

    add-int/2addr v0, v4

    .line 331
    :goto_1f
    move v2, v3

    move v1, v2

    goto :goto_23

    .line 324
    .end local v3    # "limit":I
    :cond_22
    move v1, v2

    .line 333
    .end local v2    # "i":I
    .local v1, "i":I
    :goto_23
    goto :goto_2

    .line 334
    .end local v1    # "i":I
    :cond_24
    return v0
.end method

.method public static blacklist getPrefixLength(Ljava/lang/String;)I
    .registers 5
    .param p0, "compiledPattern"    # Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 344
    return v1

    .line 345
    :cond_9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v0, :cond_16

    .line 346
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 347
    :cond_16
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x100

    if-gt v0, v3, :cond_1f

    .line 348
    return v1

    .line 350
    :cond_1f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int/2addr v0, v3

    return v0
.end method

.method public static blacklist getTextWithNoArguments(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "compiledPattern"    # Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 302
    .local v0, "capacity":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 303
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 304
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit16 v2, v2, -0x100

    .line 305
    .local v2, "segmentLength":I
    if-lez v2, :cond_29

    .line 306
    add-int v4, v3, v2

    .line 307
    .local v4, "limit":I
    invoke-virtual {v1, p0, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 308
    move v3, v4

    move v2, v3

    goto :goto_2a

    .line 305
    .end local v4    # "limit":I
    :cond_29
    move v2, v3

    .line 310
    .end local v3    # "i":I
    .local v2, "i":I
    :goto_2a
    goto :goto_11

    .line 311
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
