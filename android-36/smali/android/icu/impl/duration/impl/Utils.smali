.class public Landroid/icu/impl/duration/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/impl/Utils$ChineseDigits;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;
    .registers 19
    .param p0, "n"    # J
    .param p2, "zh"    # Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 59
    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_b

    .line 60
    neg-long v0, v0

    .line 62
    .end local p0    # "n":J
    .local v0, "n":J
    :cond_b
    const-wide/16 v3, 0xa

    cmp-long v3, v0, v3

    if-gtz v3, :cond_28

    .line 63
    const-wide/16 v3, 0x2

    cmp-long v3, v0, v3

    if-nez v3, :cond_1e

    .line 64
    iget-char v3, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 66
    :cond_1e
    iget-object v3, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    long-to-int v4, v0

    aget-char v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 70
    :cond_28
    const/16 v3, 0x28

    new-array v3, v3, [C

    .line 71
    .local v3, "buf":[C
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 76
    .local v4, "digits":[C
    const/4 v5, 0x1

    .line 77
    .local v5, "inZero":Z
    const/4 v6, 0x0

    .line 78
    .local v6, "forcedZero":Z
    array-length v7, v3

    .line 79
    .local v7, "x":I
    array-length v8, v4

    .local v8, "i":I
    const/4 v9, -0x1

    .local v9, "u":I
    const/4 v10, -0x1

    .local v10, "l":I
    :goto_3a
    const/4 v11, -0x1

    add-int/2addr v8, v11

    const/16 v12, 0x30

    const/4 v13, 0x3

    const/16 p0, 0x0

    const/4 v15, 0x1

    if-ltz v8, :cond_9b

    .line 80
    if-ne v9, v11, :cond_57

    .line 81
    if-eq v10, v11, :cond_52

    .line 82
    add-int/lit8 v7, v7, -0x1

    iget-object v11, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->levels:[C

    aget-char v11, v11, v10

    aput-char v11, v3, v7

    .line 83
    const/4 v5, 0x1

    .line 84
    const/4 v6, 0x0

    .line 86
    :cond_52
    add-int/lit8 v9, v9, 0x1

    const/16 p1, 0x2a

    goto :goto_6a

    .line 88
    :cond_57
    add-int/lit8 v7, v7, -0x1

    iget-object v11, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    const/16 p1, 0x2a

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "u":I
    .local v14, "u":I
    aget-char v9, v11, v9

    aput-char v9, v3, v7

    .line 89
    if-ne v14, v13, :cond_69

    .line 90
    const/4 v9, -0x1

    .line 91
    .end local v14    # "u":I
    .restart local v9    # "u":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_6a

    .line 89
    .end local v9    # "u":I
    .restart local v14    # "u":I
    :cond_69
    move v9, v14

    .line 94
    .end local v14    # "u":I
    .restart local v9    # "u":I
    :goto_6a
    aget-char v11, v4, v8

    sub-int/2addr v11, v12

    .line 95
    .local v11, "d":I
    if-nez v11, :cond_91

    .line 96
    array-length v12, v3

    sub-int/2addr v12, v15

    if-ge v7, v12, :cond_77

    if-eqz v9, :cond_77

    .line 97
    aput-char p1, v3, v7

    .line 99
    :cond_77
    if-nez v5, :cond_8c

    if-eqz v6, :cond_7c

    goto :goto_8c

    .line 102
    :cond_7c
    add-int/lit8 v7, v7, -0x1

    iget-object v12, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v12, v12, p0

    aput-char v12, v3, v7

    .line 103
    const/4 v5, 0x1

    .line 104
    if-ne v9, v15, :cond_88

    goto :goto_8a

    :cond_88
    move/from16 v15, p0

    :goto_8a
    move v6, v15

    .end local v6    # "forcedZero":Z
    .local v15, "forcedZero":Z
    goto :goto_9a

    .line 100
    .end local v15    # "forcedZero":Z
    .restart local v6    # "forcedZero":Z
    :cond_8c
    :goto_8c
    add-int/lit8 v7, v7, -0x1

    aput-char p1, v3, v7

    goto :goto_9a

    .line 107
    :cond_91
    const/4 v5, 0x0

    .line 108
    add-int/lit8 v7, v7, -0x1

    iget-object v12, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v12, v12, v11

    aput-char v12, v3, v7

    .line 110
    .end local v11    # "d":I
    :goto_9a
    goto :goto_3a

    .line 79
    :cond_9b
    const/16 p1, 0x2a

    .line 115
    .end local v8    # "i":I
    .end local v9    # "u":I
    .end local v10    # "l":I
    const-wide/32 v8, 0xf4240

    cmp-long v8, v0, v8

    if-lez v8, :cond_123

    .line 116
    const/4 v8, 0x1

    .line 117
    .local v8, "last":Z
    array-length v9, v3

    sub-int/2addr v9, v13

    .line 119
    .local v9, "i":I
    :goto_a7
    aget-char v10, v3, v9

    if-ne v10, v12, :cond_ac

    .line 120
    goto :goto_b7

    .line 122
    :cond_ac
    add-int/lit8 v9, v9, -0x8

    .line 123
    if-nez v8, :cond_b2

    move v10, v15

    goto :goto_b4

    :cond_b2
    move/from16 v10, p0

    :goto_b4
    move v8, v10

    .line 124
    if-gt v9, v7, :cond_120

    .line 126
    :goto_b7
    array-length v10, v3

    add-int/lit8 v10, v10, -0x7

    .line 128
    .end local v9    # "i":I
    .local v10, "i":I
    :goto_ba
    aget-char v9, v3, v10

    iget-object v11, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v11, v11, p0

    if-ne v9, v11, :cond_c6

    if-nez v8, :cond_c6

    .line 129
    aput-char p1, v3, v10

    .line 131
    :cond_c6
    add-int/lit8 v10, v10, -0x8

    .line 132
    if-nez v8, :cond_cc

    move v9, v15

    goto :goto_ce

    :cond_cc
    move/from16 v9, p0

    :goto_ce
    move v8, v9

    .line 133
    if-gt v10, v7, :cond_11d

    .line 136
    const-wide/32 v11, 0x5f5e100

    cmp-long v9, v0, v11

    if-ltz v9, :cond_123

    .line 137
    array-length v9, v3

    add-int/lit8 v9, v9, -0x8

    .line 139
    .end local v10    # "i":I
    .restart local v9    # "i":I
    :goto_db
    const/4 v10, 0x1

    .line 140
    .local v10, "empty":Z
    add-int/lit8 v11, v9, -0x1

    .local v11, "j":I
    add-int/lit8 v12, v7, -0x1

    add-int/lit8 v13, v9, -0x8

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .local v12, "e":I
    :goto_e6
    if-le v11, v12, :cond_f5

    .line 141
    aget-char v13, v3, v11

    move/from16 v14, p1

    if-eq v13, v14, :cond_f0

    .line 142
    const/4 v10, 0x0

    .line 143
    goto :goto_f5

    .line 140
    :cond_f0
    add-int/lit8 v11, v11, -0x1

    const/16 p1, 0x2a

    goto :goto_e6

    .line 146
    .end local v11    # "j":I
    .end local v12    # "e":I
    :cond_f5
    :goto_f5
    if-eqz v10, :cond_114

    .line 147
    add-int/lit8 v11, v9, 0x1

    aget-char v11, v3, v11

    const/16 v14, 0x2a

    if-eq v11, v14, :cond_110

    add-int/lit8 v11, v9, 0x1

    aget-char v11, v3, v11

    iget-object v12, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v12, v12, p0

    if-eq v11, v12, :cond_110

    .line 148
    iget-object v11, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v11, v11, p0

    aput-char v11, v3, v9

    goto :goto_114

    .line 150
    :cond_110
    const/16 v14, 0x2a

    aput-char v14, v3, v9

    .line 153
    :cond_114
    :goto_114
    nop

    .end local v10    # "empty":Z
    add-int/lit8 v9, v9, -0x8

    .line 154
    if-gt v9, v7, :cond_11a

    goto :goto_123

    :cond_11a
    const/16 p1, 0x2a

    goto :goto_db

    .line 133
    .end local v9    # "i":I
    .local v10, "i":I
    :cond_11d
    const/16 p1, 0x2a

    goto :goto_ba

    .line 124
    .end local v10    # "i":I
    .restart local v9    # "i":I
    :cond_120
    const/16 p1, 0x2a

    goto :goto_a7

    .line 159
    .end local v8    # "last":Z
    .end local v9    # "i":I
    :cond_123
    :goto_123
    move v8, v7

    .local v8, "i":I
    :goto_124
    array-length v9, v3

    if-ge v8, v9, :cond_166

    .line 160
    aget-char v9, v3, v8

    iget-object v10, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v11, 0x2

    aget-char v10, v10, v11

    if-eq v9, v10, :cond_131

    goto :goto_163

    .line 161
    :cond_131
    array-length v9, v3

    sub-int/2addr v9, v15

    if-ge v8, v9, :cond_140

    add-int/lit8 v9, v8, 0x1

    aget-char v9, v3, v9

    iget-object v10, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    aget-char v10, v10, p0

    if-ne v9, v10, :cond_140

    goto :goto_163

    .line 162
    :cond_140
    if-le v8, v7, :cond_15f

    add-int/lit8 v9, v8, -0x1

    aget-char v9, v3, v9

    iget-object v10, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    aget-char v10, v10, p0

    if-eq v9, v10, :cond_15e

    add-int/lit8 v9, v8, -0x1

    aget-char v9, v3, v9

    iget-object v10, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v10, v10, p0

    if-eq v9, v10, :cond_15e

    add-int/lit8 v9, v8, -0x1

    aget-char v9, v3, v9

    const/16 v14, 0x2a

    if-ne v9, v14, :cond_15f

    :cond_15e
    goto :goto_163

    .line 164
    :cond_15f
    iget-char v9, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    aput-char v9, v3, v8

    .line 159
    :goto_163
    add-int/lit8 v8, v8, 0x1

    goto :goto_124

    .line 168
    .end local v8    # "i":I
    :cond_166
    aget-char v8, v3, v7

    iget-object v9, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v9, v9, v15

    if-ne v8, v9, :cond_17e

    iget-boolean v8, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->ko:Z

    if-nez v8, :cond_17c

    add-int/lit8 v8, v7, 0x1

    aget-char v8, v3, v8

    iget-object v9, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    aget-char v9, v9, p0

    if-ne v8, v9, :cond_17e

    .line 169
    :cond_17c
    add-int/lit8 v7, v7, 0x1

    .line 173
    :cond_17e
    move v8, v7

    .line 174
    .local v8, "w":I
    move v9, v7

    .local v9, "r":I
    :goto_180
    array-length v10, v3

    if-ge v9, v10, :cond_193

    .line 175
    aget-char v10, v3, v9

    const/16 v14, 0x2a

    if-eq v10, v14, :cond_190

    .line 176
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "w":I
    .local v10, "w":I
    aget-char v11, v3, v9

    aput-char v11, v3, v8

    move v8, v10

    .line 174
    .end local v10    # "w":I
    .restart local v8    # "w":I
    :cond_190
    add-int/lit8 v9, v9, 0x1

    goto :goto_180

    .line 179
    .end local v9    # "r":I
    :cond_193
    new-instance v9, Ljava/lang/String;

    sub-int v10, v8, v7

    invoke-direct {v9, v3, v7, v10}, Ljava/lang/String;-><init>([CII)V

    return-object v9
.end method

.method public static final blacklist localeFromString(Ljava/lang/String;)Ljava/util/Locale;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;

    .line 20
    move-object v0, p0

    .line 21
    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .line 22
    .local v1, "region":Ljava/lang/String;
    const-string v2, ""

    .line 24
    .local v2, "variant":Ljava/lang/String;
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 25
    .local v4, "x":I
    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_19

    .line 26
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_19
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 30
    .end local v4    # "x":I
    .local v3, "x":I
    if-eq v3, v6, :cond_29

    .line 31
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_29
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
