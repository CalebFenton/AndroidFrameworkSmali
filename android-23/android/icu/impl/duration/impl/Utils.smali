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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;
    .locals 24
    .param p0, "n"    # J
    .param p2, "zh"    # Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@0
    .prologue
    .line 53
    const-wide/16 v22, 0x0

    #@2
    cmp-long v21, p0, v22

    #@4
    if-gez v21, :cond_0

    #@6
    .line 54
    move-wide/from16 v0, p0

    #@8
    neg-long v0, v0

    #@9
    move-wide/from16 p0, v0

    #@b
    .line 56
    :cond_0
    const-wide/16 v22, 0xa

    #@d
    cmp-long v21, p0, v22

    #@f
    if-gtz v21, :cond_2

    #@11
    .line 57
    const-wide/16 v22, 0x2

    #@13
    cmp-long v21, p0, v22

    #@15
    if-nez v21, :cond_1

    #@17
    .line 58
    move-object/from16 v0, p2

    #@19
    iget-char v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    #@1b
    move/from16 v21, v0

    #@1d
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@20
    move-result-object v21

    #@21
    return-object v21

    #@22
    .line 60
    :cond_1
    move-object/from16 v0, p2

    #@24
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    #@26
    move-object/from16 v21, v0

    #@28
    move-wide/from16 v0, p0

    #@2a
    long-to-int v0, v0

    #@2b
    move/from16 v22, v0

    #@2d
    aget-char v21, v21, v22

    #@2f
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@32
    move-result-object v21

    #@33
    return-object v21

    #@34
    .line 64
    :cond_2
    const/16 v21, 0x28

    #@36
    move/from16 v0, v21

    #@38
    new-array v4, v0, [C

    #@3a
    .line 65
    .local v4, "buf":[C
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3d
    move-result-object v21

    #@3e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toCharArray()[C

    #@41
    move-result-object v6

    #@42
    .line 70
    .local v6, "digits":[C
    const/4 v11, 0x1

    #@43
    .line 71
    .local v11, "inZero":Z
    const/4 v9, 0x0

    #@44
    .line 72
    .local v9, "forcedZero":Z
    array-length v0, v4

    #@45
    move/from16 v20, v0

    #@47
    .line 73
    .local v20, "x":I
    array-length v10, v6

    #@48
    .local v10, "i":I
    const/16 v16, -0x1

    #@4a
    .local v16, "u":I
    const/4 v13, -0x1

    #@4b
    .local v13, "l":I
    move/from16 v17, v16

    #@4d
    .end local v16    # "u":I
    .local v17, "u":I
    :goto_0
    add-int/lit8 v10, v10, -0x1

    #@4f
    if-ltz v10, :cond_b

    #@51
    .line 74
    const/16 v21, -0x1

    #@53
    move/from16 v0, v17

    #@55
    move/from16 v1, v21

    #@57
    if-ne v0, v1, :cond_7

    #@59
    .line 75
    const/16 v21, -0x1

    #@5b
    move/from16 v0, v21

    #@5d
    if-eq v13, v0, :cond_3

    #@5f
    .line 76
    add-int/lit8 v20, v20, -0x1

    #@61
    move-object/from16 v0, p2

    #@63
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->levels:[C

    #@65
    move-object/from16 v21, v0

    #@67
    aget-char v21, v21, v13

    #@69
    aput-char v21, v4, v20

    #@6b
    .line 77
    const/4 v11, 0x1

    #@6c
    .line 78
    const/4 v9, 0x0

    #@6d
    .line 80
    :cond_3
    add-int/lit8 v16, v17, 0x1

    #@6f
    .line 88
    .end local v17    # "u":I
    .restart local v16    # "u":I
    :cond_4
    :goto_1
    aget-char v21, v6, v10

    #@71
    add-int/lit8 v5, v21, -0x30

    #@73
    .line 89
    .local v5, "d":I
    if-nez v5, :cond_a

    #@75
    .line 90
    array-length v0, v4

    #@76
    move/from16 v21, v0

    #@78
    add-int/lit8 v21, v21, -0x1

    #@7a
    move/from16 v0, v20

    #@7c
    move/from16 v1, v21

    #@7e
    if-ge v0, v1, :cond_5

    #@80
    if-eqz v16, :cond_5

    #@82
    .line 91
    const/16 v21, 0x2a

    #@84
    aput-char v21, v4, v20

    #@86
    .line 93
    :cond_5
    if-nez v11, :cond_6

    #@88
    if-eqz v9, :cond_8

    #@8a
    .line 94
    :cond_6
    add-int/lit8 v20, v20, -0x1

    #@8c
    const/16 v21, 0x2a

    #@8e
    aput-char v21, v4, v20

    #@90
    :goto_2
    move/from16 v17, v16

    #@92
    .end local v16    # "u":I
    .restart local v17    # "u":I
    goto :goto_0

    #@93
    .line 82
    .end local v5    # "d":I
    :cond_7
    add-int/lit8 v20, v20, -0x1

    #@95
    move-object/from16 v0, p2

    #@97
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    #@99
    move-object/from16 v21, v0

    #@9b
    add-int/lit8 v16, v17, 0x1

    #@9d
    .end local v17    # "u":I
    .restart local v16    # "u":I
    aget-char v21, v21, v17

    #@9f
    aput-char v21, v4, v20

    #@a1
    .line 83
    const/16 v21, 0x3

    #@a3
    move/from16 v0, v16

    #@a5
    move/from16 v1, v21

    #@a7
    if-ne v0, v1, :cond_4

    #@a9
    .line 84
    const/16 v16, -0x1

    #@ab
    .line 85
    add-int/lit8 v13, v13, 0x1

    #@ad
    goto :goto_1

    #@ae
    .line 96
    .restart local v5    # "d":I
    :cond_8
    add-int/lit8 v20, v20, -0x1

    #@b0
    move-object/from16 v0, p2

    #@b2
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    #@b4
    move-object/from16 v21, v0

    #@b6
    const/16 v22, 0x0

    #@b8
    aget-char v21, v21, v22

    #@ba
    aput-char v21, v4, v20

    #@bc
    .line 97
    const/4 v11, 0x1

    #@bd
    .line 98
    const/16 v21, 0x1

    #@bf
    move/from16 v0, v16

    #@c1
    move/from16 v1, v21

    #@c3
    if-ne v0, v1, :cond_9

    #@c5
    const/4 v9, 0x1

    #@c6
    goto :goto_2

    #@c7
    :cond_9
    const/4 v9, 0x0

    #@c8
    goto :goto_2

    #@c9
    .line 101
    :cond_a
    const/4 v11, 0x0

    #@ca
    .line 102
    add-int/lit8 v20, v20, -0x1

    #@cc
    move-object/from16 v0, p2

    #@ce
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    #@d0
    move-object/from16 v21, v0

    #@d2
    aget-char v21, v21, v5

    #@d4
    aput-char v21, v4, v20

    #@d6
    goto :goto_2

    #@d7
    .line 109
    .end local v5    # "d":I
    .end local v16    # "u":I
    .restart local v17    # "u":I
    :cond_b
    const-wide/32 v22, 0xf4240

    #@da
    cmp-long v21, p0, v22

    #@dc
    if-lez v21, :cond_12

    #@de
    .line 110
    const/4 v14, 0x1

    #@df
    .line 111
    .local v14, "last":Z
    array-length v0, v4

    #@e0
    move/from16 v21, v0

    #@e2
    add-int/lit8 v10, v21, -0x3

    #@e4
    .line 113
    :goto_3
    aget-char v21, v4, v10

    #@e6
    const/16 v22, 0x30

    #@e8
    move/from16 v0, v21

    #@ea
    move/from16 v1, v22

    #@ec
    if-ne v0, v1, :cond_14

    #@ee
    .line 120
    :cond_c
    array-length v0, v4

    #@ef
    move/from16 v21, v0

    #@f1
    add-int/lit8 v10, v21, -0x7

    #@f3
    .line 122
    :cond_d
    aget-char v21, v4, v10

    #@f5
    move-object/from16 v0, p2

    #@f7
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    #@f9
    move-object/from16 v22, v0

    #@fb
    const/16 v23, 0x0

    #@fd
    aget-char v22, v22, v23

    #@ff
    move/from16 v0, v21

    #@101
    move/from16 v1, v22

    #@103
    if-ne v0, v1, :cond_e

    #@105
    if-eqz v14, :cond_16

    #@107
    .line 125
    :cond_e
    :goto_4
    add-int/lit8 v10, v10, -0x8

    #@109
    .line 126
    if-eqz v14, :cond_17

    #@10b
    const/4 v14, 0x0

    #@10c
    .line 127
    :goto_5
    move/from16 v0, v20

    #@10e
    if-gt v10, v0, :cond_d

    #@110
    .line 130
    const-wide/32 v22, 0x5f5e100

    #@113
    cmp-long v21, p0, v22

    #@115
    if-ltz v21, :cond_12

    #@117
    .line 131
    array-length v0, v4

    #@118
    move/from16 v21, v0

    #@11a
    add-int/lit8 v10, v21, -0x8

    #@11c
    .line 133
    :cond_f
    const/4 v8, 0x1

    #@11d
    .line 134
    .local v8, "empty":Z
    add-int/lit8 v12, v10, -0x1

    #@11f
    .local v12, "j":I
    add-int/lit8 v21, v20, -0x1

    #@121
    add-int/lit8 v22, v10, -0x8

    #@123
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    #@126
    move-result v7

    #@127
    .local v7, "e":I
    :goto_6
    if-le v12, v7, :cond_10

    #@129
    .line 135
    aget-char v21, v4, v12

    #@12b
    const/16 v22, 0x2a

    #@12d
    move/from16 v0, v21

    #@12f
    move/from16 v1, v22

    #@131
    if-eq v0, v1, :cond_18

    #@133
    .line 136
    const/4 v8, 0x0

    #@134
    .line 140
    :cond_10
    if-eqz v8, :cond_11

    #@136
    .line 141
    add-int/lit8 v21, v10, 0x1

    #@138
    aget-char v21, v4, v21

    #@13a
    const/16 v22, 0x2a

    #@13c
    move/from16 v0, v21

    #@13e
    move/from16 v1, v22

    #@140
    if-eq v0, v1, :cond_19

    #@142
    add-int/lit8 v21, v10, 0x1

    #@144
    aget-char v21, v4, v21

    #@146
    move-object/from16 v0, p2

    #@148
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    #@14a
    move-object/from16 v22, v0

    #@14c
    const/16 v23, 0x0

    #@14e
    aget-char v22, v22, v23

    #@150
    move/from16 v0, v21

    #@152
    move/from16 v1, v22

    #@154
    if-eq v0, v1, :cond_19

    #@156
    .line 142
    move-object/from16 v0, p2

    #@158
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    #@15a
    move-object/from16 v21, v0

    #@15c
    const/16 v22, 0x0

    #@15e
    aget-char v21, v21, v22

    #@160
    aput-char v21, v4, v10

    #@162
    .line 147
    :cond_11
    :goto_7
    add-int/lit8 v10, v10, -0x8

    #@164
    .line 148
    move/from16 v0, v20

    #@166
    if-gt v10, v0, :cond_f

    #@168
    .line 153
    .end local v7    # "e":I
    .end local v8    # "empty":Z
    .end local v12    # "j":I
    .end local v14    # "last":Z
    :cond_12
    move/from16 v10, v20

    #@16a
    :goto_8
    array-length v0, v4

    #@16b
    move/from16 v21, v0

    #@16d
    move/from16 v0, v21

    #@16f
    if-ge v10, v0, :cond_1d

    #@171
    .line 154
    aget-char v21, v4, v10

    #@173
    move-object/from16 v0, p2

    #@175
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    #@177
    move-object/from16 v22, v0

    #@179
    const/16 v23, 0x2

    #@17b
    aget-char v22, v22, v23

    #@17d
    move/from16 v0, v21

    #@17f
    move/from16 v1, v22

    #@181
    if-eq v0, v1, :cond_1a

    #@183
    .line 153
    :cond_13
    :goto_9
    add-int/lit8 v10, v10, 0x1

    #@185
    goto :goto_8

    #@186
    .line 116
    .restart local v14    # "last":Z
    :cond_14
    add-int/lit8 v10, v10, -0x8

    #@188
    .line 117
    if-eqz v14, :cond_15

    #@18a
    const/4 v14, 0x0

    #@18b
    .line 118
    :goto_a
    move/from16 v0, v20

    #@18d
    if-le v10, v0, :cond_c

    #@18f
    goto/16 :goto_3

    #@191
    .line 117
    :cond_15
    const/4 v14, 0x1

    #@192
    goto :goto_a

    #@193
    .line 123
    :cond_16
    const/16 v21, 0x2a

    #@195
    aput-char v21, v4, v10

    #@197
    goto/16 :goto_4

    #@199
    .line 126
    :cond_17
    const/4 v14, 0x1

    #@19a
    goto/16 :goto_5

    #@19c
    .line 134
    .restart local v7    # "e":I
    .restart local v8    # "empty":Z
    .restart local v12    # "j":I
    :cond_18
    add-int/lit8 v12, v12, -0x1

    #@19e
    goto :goto_6

    #@19f
    .line 144
    :cond_19
    const/16 v21, 0x2a

    #@1a1
    aput-char v21, v4, v10

    #@1a3
    goto :goto_7

    #@1a4
    .line 155
    .end local v7    # "e":I
    .end local v8    # "empty":Z
    .end local v12    # "j":I
    .end local v14    # "last":Z
    :cond_1a
    array-length v0, v4

    #@1a5
    move/from16 v21, v0

    #@1a7
    add-int/lit8 v21, v21, -0x1

    #@1a9
    move/from16 v0, v21

    #@1ab
    if-ge v10, v0, :cond_1b

    #@1ad
    add-int/lit8 v21, v10, 0x1

    #@1af
    aget-char v21, v4, v21

    #@1b1
    move-object/from16 v0, p2

    #@1b3
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    #@1b5
    move-object/from16 v22, v0

    #@1b7
    const/16 v23, 0x0

    #@1b9
    aget-char v22, v22, v23

    #@1bb
    move/from16 v0, v21

    #@1bd
    move/from16 v1, v22

    #@1bf
    if-eq v0, v1, :cond_13

    #@1c1
    .line 156
    :cond_1b
    move/from16 v0, v20

    #@1c3
    if-le v10, v0, :cond_1c

    #@1c5
    add-int/lit8 v21, v10, -0x1

    #@1c7
    aget-char v21, v4, v21

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    #@1cd
    move-object/from16 v22, v0

    #@1cf
    const/16 v23, 0x0

    #@1d1
    aget-char v22, v22, v23

    #@1d3
    move/from16 v0, v21

    #@1d5
    move/from16 v1, v22

    #@1d7
    if-eq v0, v1, :cond_13

    #@1d9
    add-int/lit8 v21, v10, -0x1

    #@1db
    aget-char v21, v4, v21

    #@1dd
    move-object/from16 v0, p2

    #@1df
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    #@1e1
    move-object/from16 v22, v0

    #@1e3
    const/16 v23, 0x0

    #@1e5
    aget-char v22, v22, v23

    #@1e7
    move/from16 v0, v21

    #@1e9
    move/from16 v1, v22

    #@1eb
    if-eq v0, v1, :cond_13

    #@1ed
    add-int/lit8 v21, v10, -0x1

    #@1ef
    aget-char v21, v4, v21

    #@1f1
    const/16 v22, 0x2a

    #@1f3
    move/from16 v0, v21

    #@1f5
    move/from16 v1, v22

    #@1f7
    if-eq v0, v1, :cond_13

    #@1f9
    .line 158
    :cond_1c
    move-object/from16 v0, p2

    #@1fb
    iget-char v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    #@1fd
    move/from16 v21, v0

    #@1ff
    aput-char v21, v4, v10

    #@201
    goto :goto_9

    #@202
    .line 162
    :cond_1d
    aget-char v21, v4, v20

    #@204
    move-object/from16 v0, p2

    #@206
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    #@208
    move-object/from16 v22, v0

    #@20a
    const/16 v23, 0x1

    #@20c
    aget-char v22, v22, v23

    #@20e
    move/from16 v0, v21

    #@210
    move/from16 v1, v22

    #@212
    if-ne v0, v1, :cond_1f

    #@214
    move-object/from16 v0, p2

    #@216
    iget-boolean v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->ko:Z

    #@218
    move/from16 v21, v0

    #@21a
    if-nez v21, :cond_1e

    #@21c
    add-int/lit8 v21, v20, 0x1

    #@21e
    aget-char v21, v4, v21

    #@220
    move-object/from16 v0, p2

    #@222
    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    #@224
    move-object/from16 v22, v0

    #@226
    const/16 v23, 0x0

    #@228
    aget-char v22, v22, v23

    #@22a
    move/from16 v0, v21

    #@22c
    move/from16 v1, v22

    #@22e
    if-ne v0, v1, :cond_1f

    #@230
    .line 163
    :cond_1e
    add-int/lit8 v20, v20, 0x1

    #@232
    .line 167
    :cond_1f
    move/from16 v18, v20

    #@234
    .line 168
    .local v18, "w":I
    move/from16 v15, v20

    #@236
    .local v15, "r":I
    :goto_b
    array-length v0, v4

    #@237
    move/from16 v21, v0

    #@239
    move/from16 v0, v21

    #@23b
    if-ge v15, v0, :cond_21

    #@23d
    .line 169
    aget-char v21, v4, v15

    #@23f
    const/16 v22, 0x2a

    #@241
    move/from16 v0, v21

    #@243
    move/from16 v1, v22

    #@245
    if-eq v0, v1, :cond_20

    #@247
    .line 170
    add-int/lit8 v19, v18, 0x1

    #@249
    .end local v18    # "w":I
    .local v19, "w":I
    aget-char v21, v4, v15

    #@24b
    aput-char v21, v4, v18

    #@24d
    move/from16 v18, v19

    #@24f
    .line 168
    .end local v19    # "w":I
    .restart local v18    # "w":I
    :cond_20
    add-int/lit8 v15, v15, 0x1

    #@251
    goto :goto_b

    #@252
    .line 173
    :cond_21
    new-instance v21, Ljava/lang/String;

    #@254
    sub-int v22, v18, v20

    #@256
    move-object/from16 v0, v21

    #@258
    move/from16 v1, v20

    #@25a
    move/from16 v2, v22

    #@25c
    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    #@25f
    return-object v21
.end method

.method public static final localeFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 14
    move-object v0, p0

    #@3
    .line 15
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@6
    .line 16
    .local v1, "region":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@9
    .line 18
    .local v2, "variant":Ljava/lang/String;
    const-string/jumbo v4, "_"

    #@c
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@f
    move-result v3

    #@10
    .line 19
    .local v3, "x":I
    if-eq v3, v5, :cond_0

    #@12
    .line 20
    add-int/lit8 v4, v3, 0x1

    #@14
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 21
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 23
    :cond_0
    const-string/jumbo v4, "_"

    #@1f
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@22
    move-result v3

    #@23
    .line 24
    if-eq v3, v5, :cond_1

    #@25
    .line 25
    add-int/lit8 v4, v3, 0x1

    #@27
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 26
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 28
    :cond_1
    new-instance v4, Ljava/util/Locale;

    #@31
    invoke-direct {v4, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@34
    return-object v4
.end method
