.class public final Landroid/icu/impl/SimplePatternFormatter;
.super Ljava/lang/Object;
.source "SimplePatternFormatter.java"


# static fields
.field private static final ARG_NUM_LIMIT:I = 0x100

.field private static final MAX_SEGMENT_LENGTH:I = 0xfeff

.field private static final SEGMENT_LENGTH_PLACEHOLDER_CHAR:C = '\uffff'


# instance fields
.field private final compiledPattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "compiledPattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    #@5
    .line 75
    return-void
.end method

.method public static compile(Ljava/lang/CharSequence;)Landroid/icu/impl/SimplePatternFormatter;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 86
    const/4 v0, 0x0

    #@1
    const v1, 0x7fffffff

    #@4
    invoke-static {p0, v0, v1}, Landroid/icu/impl/SimplePatternFormatter;->compileMinMaxPlaceholders(Ljava/lang/CharSequence;II)Landroid/icu/impl/SimplePatternFormatter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static compileMinMaxPlaceholders(Ljava/lang/CharSequence;II)Landroid/icu/impl/SimplePatternFormatter;
    .locals 3
    .param p0, "pattern"    # Ljava/lang/CharSequence;
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 99
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v1, p1, p2}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 100
    .local v0, "compiledPattern":Ljava/lang/String;
    new-instance v2, Landroid/icu/impl/SimplePatternFormatter;

    #@b
    invoke-direct {v2, v0}, Landroid/icu/impl/SimplePatternFormatter;-><init>(Ljava/lang/String;)V

    #@e
    return-object v2
.end method

.method public static compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 14
    .param p0, "pattern"    # Ljava/lang/CharSequence;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "min"    # I
    .param p3, "max"    # I

    #@0
    .prologue
    .line 116
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v9

    #@4
    .line 117
    .local v9, "patternLength":I
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    #@7
    .line 119
    const/4 v11, 0x1

    #@8
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    #@b
    .line 120
    const/4 v10, 0x0

    #@c
    .line 121
    .local v10, "textLength":I
    const/4 v8, -0x1

    #@d
    .line 122
    .local v8, "maxArg":I
    const/4 v7, 0x0

    #@e
    .line 123
    .local v7, "inQuote":Z
    const/4 v5, 0x0

    #@f
    .local v5, "i":I
    move v6, v5

    #@10
    .end local v5    # "i":I
    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_11

    #@12
    .line 124
    add-int/lit8 v5, v6, 0x1

    #@14
    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@17
    move-result v4

    #@18
    .line 125
    .local v4, "c":C
    const/16 v11, 0x27

    #@1a
    if-ne v4, v11, :cond_7

    #@1c
    .line 126
    if-ge v5, v9, :cond_3

    #@1e
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@21
    move-result v4

    #@22
    const/16 v11, 0x27

    #@24
    if-ne v4, v11, :cond_3

    #@26
    .line 128
    add-int/lit8 v5, v5, 0x1

    #@28
    .line 180
    .end local v4    # "c":C
    :cond_0
    :goto_1
    if-nez v10, :cond_1

    #@2a
    .line 182
    const v11, 0xffff

    #@2d
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 184
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 185
    add-int/lit8 v10, v10, 0x1

    #@35
    const v11, 0xfeff

    #@38
    if-ne v10, v11, :cond_2

    #@3a
    .line 186
    const/4 v10, 0x0

    #@3b
    :cond_2
    :goto_2
    move v6, v5

    #@3c
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    #@3d
    .line 129
    .end local v6    # "i":I
    .restart local v4    # "c":C
    .restart local v5    # "i":I
    :cond_3
    if-eqz v7, :cond_4

    #@3f
    .line 131
    const/4 v7, 0x0

    #@40
    .line 132
    goto :goto_2

    #@41
    .line 133
    :cond_4
    const/16 v11, 0x7b

    #@43
    if-eq v4, v11, :cond_5

    #@45
    const/16 v11, 0x7d

    #@47
    if-ne v4, v11, :cond_6

    #@49
    .line 135
    :cond_5
    add-int/lit8 v5, v5, 0x1

    #@4b
    .line 136
    const/4 v7, 0x1

    #@4c
    .line 133
    goto :goto_1

    #@4d
    .line 139
    :cond_6
    const/16 v4, 0x27

    #@4f
    .local v4, "c":C
    goto :goto_1

    #@50
    .line 141
    .local v4, "c":C
    :cond_7
    if-nez v7, :cond_0

    #@52
    const/16 v11, 0x7b

    #@54
    if-ne v4, v11, :cond_0

    #@56
    .line 142
    if-lez v10, :cond_8

    #@58
    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@5b
    move-result v11

    #@5c
    sub-int/2addr v11, v10

    #@5d
    add-int/lit8 v11, v11, -0x1

    #@5f
    add-int/lit16 v12, v10, 0x100

    #@61
    int-to-char v12, v12

    #@62
    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@65
    .line 144
    const/4 v10, 0x0

    #@66
    .line 147
    :cond_8
    add-int/lit8 v11, v5, 0x1

    #@68
    if-ge v11, v9, :cond_b

    #@6a
    .line 148
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@6d
    move-result v11

    #@6e
    add-int/lit8 v2, v11, -0x30

    #@70
    .local v2, "argNumber":I
    if-ltz v2, :cond_b

    #@72
    const/16 v11, 0x9

    #@74
    if-gt v2, v11, :cond_b

    #@76
    .line 149
    add-int/lit8 v11, v5, 0x1

    #@78
    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    #@7b
    move-result v11

    #@7c
    const/16 v12, 0x7d

    #@7e
    if-ne v11, v12, :cond_b

    #@80
    .line 150
    add-int/lit8 v5, v5, 0x2

    #@82
    .line 173
    :cond_9
    if-le v2, v8, :cond_a

    #@84
    .line 174
    move v8, v2

    #@85
    .line 176
    :cond_a
    int-to-char v11, v2

    #@86
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@89
    goto :goto_2

    #@8a
    .line 155
    .end local v2    # "argNumber":I
    :cond_b
    add-int/lit8 v3, v5, -0x1

    #@8c
    .line 156
    .local v3, "argStart":I
    const/4 v2, -0x1

    #@8d
    .line 157
    .restart local v2    # "argNumber":I
    if-ge v5, v9, :cond_c

    #@8f
    add-int/lit8 v6, v5, 0x1

    #@91
    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@94
    move-result v4

    #@95
    const/16 v11, 0x31

    #@97
    if-gt v11, v4, :cond_e

    #@99
    const/16 v11, 0x39

    #@9b
    if-gt v4, v11, :cond_e

    #@9d
    .line 158
    add-int/lit8 v2, v4, -0x30

    #@9f
    .line 159
    :goto_3
    if-ge v6, v9, :cond_f

    #@a1
    add-int/lit8 v5, v6, 0x1

    #@a3
    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@a6
    move-result v4

    #@a7
    const/16 v11, 0x30

    #@a9
    if-gt v11, v4, :cond_c

    #@ab
    const/16 v11, 0x39

    #@ad
    if-gt v4, v11, :cond_c

    #@af
    .line 160
    mul-int/lit8 v11, v2, 0xa

    #@b1
    add-int/lit8 v12, v4, -0x30

    #@b3
    add-int v2, v11, v12

    #@b5
    .line 161
    const/16 v11, 0x100

    #@b7
    if-lt v2, v11, :cond_10

    #@b9
    .line 166
    :cond_c
    :goto_4
    if-ltz v2, :cond_d

    #@bb
    const/16 v11, 0x7d

    #@bd
    if-eq v4, v11, :cond_9

    #@bf
    .line 167
    :cond_d
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@c1
    .line 168
    new-instance v12, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v13, "Argument syntax error in pattern \""

    #@c9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v12

    #@cd
    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v12

    #@d1
    .line 169
    const-string/jumbo v13, "\" at index "

    #@d4
    .line 168
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v12

    #@d8
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@db
    move-result-object v12

    #@dc
    .line 170
    const-string/jumbo v13, ": "

    #@df
    .line 168
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v12

    #@e3
    .line 170
    invoke-interface {p0, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@e6
    move-result-object v13

    #@e7
    .line 168
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v12

    #@eb
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v12

    #@ef
    .line 167
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f2
    throw v11

    #@f3
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :cond_e
    move v5, v6

    #@f4
    .line 157
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    #@f5
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :cond_f
    move v5, v6

    #@f6
    .line 159
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    #@f7
    :cond_10
    move v6, v5

    #@f8
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_3

    #@f9
    .line 189
    .end local v2    # "argNumber":I
    .end local v3    # "argStart":I
    .end local v4    # "c":C
    :cond_11
    if-lez v10, :cond_12

    #@fb
    .line 190
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@fe
    move-result v11

    #@ff
    sub-int/2addr v11, v10

    #@100
    add-int/lit8 v11, v11, -0x1

    #@102
    add-int/lit16 v12, v10, 0x100

    #@104
    int-to-char v12, v12

    #@105
    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@108
    .line 192
    :cond_12
    add-int/lit8 v1, v8, 0x1

    #@10a
    .line 193
    .local v1, "argCount":I
    move/from16 v0, p2

    #@10c
    if-ge v1, v0, :cond_13

    #@10e
    .line 194
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@110
    .line 195
    new-instance v12, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v13, "Fewer than minimum "

    #@118
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v12

    #@11c
    move/from16 v0, p2

    #@11e
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@121
    move-result-object v12

    #@122
    const-string/jumbo v13, " placeholders in pattern \""

    #@125
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v12

    #@129
    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v12

    #@12d
    const-string/jumbo v13, "\""

    #@130
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v12

    #@134
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v12

    #@138
    .line 194
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13b
    throw v11

    #@13c
    .line 197
    :cond_13
    move/from16 v0, p3

    #@13e
    if-le v1, v0, :cond_14

    #@140
    .line 198
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@142
    .line 199
    new-instance v12, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v13, "More than maximum "

    #@14a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v12

    #@14e
    move/from16 v0, p3

    #@150
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@153
    move-result-object v12

    #@154
    const-string/jumbo v13, " placeholders in pattern \""

    #@157
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v12

    #@15b
    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v12

    #@15f
    const-string/jumbo v13, "\""

    #@162
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v12

    #@166
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v12

    #@16a
    .line 198
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16d
    throw v11

    #@16e
    .line 201
    :cond_14
    int-to-char v11, v1

    #@16f
    const/4 v12, 0x0

    #@170
    invoke-virtual {p1, v12, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@173
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@176
    move-result-object v11

    #@177
    return-object v11
.end method

.method private static format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;
    .locals 8
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/CharSequence;
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .param p3, "resultCopy"    # Ljava/lang/String;
    .param p4, "forbidResultAsValue"    # Z
    .param p5, "offsets"    # [I

    #@0
    .prologue
    .line 396
    if-nez p5, :cond_1

    #@2
    .line 397
    const/4 v4, 0x0

    #@3
    .line 404
    .local v4, "offsetsLength":I
    :cond_0
    const/4 v0, 0x1

    #@4
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v6

    #@8
    if-ge v0, v6, :cond_8

    #@a
    .line 405
    add-int/lit8 v1, v0, 0x1

    #@c
    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v3

    #@10
    .line 406
    .local v3, "n":I
    const/16 v6, 0x100

    #@12
    if-ge v3, v6, :cond_7

    #@14
    .line 407
    aget-object v5, p1, v3

    #@16
    .line 408
    .local v5, "value":Ljava/lang/CharSequence;
    if-ne v5, p2, :cond_5

    #@18
    .line 409
    if-eqz p4, :cond_2

    #@1a
    .line 410
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v7, "Value must not be same object as result"

    #@1f
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v6

    #@23
    .line 399
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v4    # "offsetsLength":I
    .end local v5    # "value":Ljava/lang/CharSequence;
    :cond_1
    array-length v4, p5

    #@24
    .line 400
    .restart local v4    # "offsetsLength":I
    const/4 v0, 0x0

    #@25
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v4, :cond_0

    #@27
    .line 401
    const/4 v6, -0x1

    #@28
    aput v6, p5, v0

    #@2a
    .line 400
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 412
    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "n":I
    .restart local v5    # "value":Ljava/lang/CharSequence;
    :cond_2
    const/4 v6, 0x2

    #@2e
    if-ne v1, v6, :cond_3

    #@30
    .line 414
    if-ge v3, v4, :cond_9

    #@32
    .line 415
    const/4 v6, 0x0

    #@33
    aput v6, p5, v3

    #@35
    move v0, v1

    #@36
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@37
    .line 418
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_3
    if-ge v3, v4, :cond_4

    #@39
    .line 419
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@3c
    move-result v6

    #@3d
    aput v6, p5, v3

    #@3f
    .line 421
    :cond_4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move v0, v1

    #@43
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@44
    .line 424
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_5
    if-ge v3, v4, :cond_6

    #@46
    .line 425
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@49
    move-result v6

    #@4a
    aput v6, p5, v3

    #@4c
    .line 427
    :cond_6
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4f
    move v0, v1

    #@50
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@51
    .line 430
    .end local v0    # "i":I
    .end local v5    # "value":Ljava/lang/CharSequence;
    .restart local v1    # "i":I
    :cond_7
    add-int/lit16 v6, v3, -0x100

    #@53
    add-int v2, v1, v6

    #@55
    .line 431
    .local v2, "limit":I
    invoke-virtual {p2, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@58
    .line 432
    move v0, v2

    #@59
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@5a
    .line 435
    .end local v2    # "limit":I
    .end local v3    # "n":I
    :cond_8
    return-object p2

    #@5b
    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "n":I
    .restart local v5    # "value":Ljava/lang/CharSequence;
    :cond_9
    move v0, v1

    #@5c
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public static varargs formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 272
    if-eqz p3, :cond_0

    #@3
    array-length v6, p3

    #@4
    .line 273
    .local v6, "valuesLength":I
    :goto_0
    invoke-static {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    if-ge v6, v0, :cond_1

    #@a
    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Too few values."

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 272
    .end local v6    # "valuesLength":I
    :cond_0
    const/4 v6, 0x0

    #@14
    .restart local v6    # "valuesLength":I
    goto :goto_0

    #@15
    .line 276
    :cond_1
    const/4 v4, 0x1

    #@16
    move-object v0, p0

    #@17
    move-object v1, p3

    #@18
    move-object v2, p1

    #@19
    move-object v5, p2

    #@1a
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/SimplePatternFormatter;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public static varargs formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 11
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 317
    if-eqz p3, :cond_0

    #@3
    array-length v10, p3

    #@4
    .line 318
    .local v10, "valuesLength":I
    :goto_0
    invoke-static {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    if-ge v10, v0, :cond_1

    #@a
    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Too few values."

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 317
    .end local v10    # "valuesLength":I
    :cond_0
    const/4 v10, 0x0

    #@14
    .restart local v10    # "valuesLength":I
    goto :goto_0

    #@15
    .line 325
    :cond_1
    const/4 v6, -0x1

    #@16
    .line 328
    .local v6, "firstArg":I
    const/4 v3, 0x0

    #@17
    .line 329
    .local v3, "resultCopy":Ljava/lang/String;
    invoke-static {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount(Ljava/lang/String;)I

    #@1a
    move-result v0

    #@1b
    if-lez v0, :cond_4

    #@1d
    .line 330
    const/4 v7, 0x1

    #@1e
    .end local v3    # "resultCopy":Ljava/lang/String;
    .local v7, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@21
    move-result v0

    #@22
    if-ge v7, v0, :cond_4

    #@24
    .line 331
    add-int/lit8 v8, v7, 0x1

    #@26
    .end local v7    # "i":I
    .local v8, "i":I
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v9

    #@2a
    .line 332
    .local v9, "n":I
    const/16 v0, 0x100

    #@2c
    if-ge v9, v0, :cond_3

    #@2e
    .line 333
    aget-object v0, p3, v9

    #@30
    if-ne v0, p1, :cond_6

    #@32
    .line 334
    const/4 v0, 0x2

    #@33
    if-ne v8, v0, :cond_2

    #@35
    .line 335
    move v6, v9

    #@36
    move v7, v8

    #@37
    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    #@38
    .line 336
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :cond_2
    if-nez v3, :cond_6

    #@3a
    .line 337
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .local v3, "resultCopy":Ljava/lang/String;
    move v7, v8

    #@3f
    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    #@40
    .line 341
    .end local v3    # "resultCopy":Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :cond_3
    add-int/lit16 v0, v9, -0x100

    #@42
    add-int v7, v8, v0

    #@44
    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    #@45
    .line 345
    .end local v7    # "i":I
    .end local v9    # "n":I
    :cond_4
    if-gez v6, :cond_5

    #@47
    .line 346
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@4a
    :cond_5
    move-object v0, p0

    #@4b
    move-object v1, p3

    #@4c
    move-object v2, p1

    #@4d
    move-object v5, p2

    #@4e
    .line 348
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/SimplePatternFormatter;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    return-object v0

    #@53
    .restart local v8    # "i":I
    .restart local v9    # "n":I
    :cond_6
    move v7, v8

    #@54
    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1
.end method

.method public static varargs formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {p0, v0, v1, p1}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static getPlaceholderCount(Ljava/lang/String;)I
    .locals 1
    .param p0, "compiledPattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static getTextWithNoPlaceholders(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "compiledPattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 378
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v6

    #@4
    add-int/lit8 v6, v6, -0x1

    #@6
    invoke-static {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount(Ljava/lang/String;)I

    #@9
    move-result v7

    #@a
    sub-int v0, v6, v7

    #@c
    .line 379
    .local v0, "capacity":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@11
    .line 380
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@12
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v6

    #@16
    if-ge v1, v6, :cond_0

    #@18
    .line 381
    add-int/lit8 v2, v1, 0x1

    #@1a
    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v6

    #@1e
    add-int/lit16 v5, v6, -0x100

    #@20
    .line 382
    .local v5, "segmentLength":I
    if-lez v5, :cond_1

    #@22
    .line 383
    add-int v3, v2, v5

    #@24
    .line 384
    .local v3, "limit":I
    invoke-virtual {v4, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@27
    .line 385
    move v1, v3

    #@28
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@29
    .line 388
    .end local v3    # "limit":I
    .end local v5    # "segmentLength":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    return-object v6

    #@2e
    .end local v1    # "i":I
    .restart local v2    # "i":I
    .restart local v5    # "segmentLength":I
    :cond_1
    move v1, v2

    #@2f
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method


# virtual methods
.method public varargs format([Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/icu/impl/SimplePatternFormatter;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public varargs formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    #@2
    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public varargs formatAndReplace(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    #@2
    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/SimplePatternFormatter;->formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPlaceholderCount()I
    .locals 1

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTextWithNoPlaceholders()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/icu/impl/SimplePatternFormatter;->getTextWithNoPlaceholders(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [Ljava/lang/String;

    #@6
    .line 357
    .local v1, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 358
    const-string/jumbo v2, "{%d}"

    #@d
    const/4 v3, 0x1

    #@e
    new-array v3, v3, [Ljava/lang/Object;

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    aput-object v2, v1, v0

    #@1d
    .line 357
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 360
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const/4 v3, 0x0

    #@26
    invoke-virtual {p0, v2, v3, v1}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    return-object v2
.end method
