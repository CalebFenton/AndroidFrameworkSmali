.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 2
    .param p0, "dir"    # I
    .param p1, "chs"    # [C
    .param p2, "chInfo"    # [B
    .param p3, "n"    # I
    .param p4, "haveInfo"    # Z

    #@0
    .prologue
    .line 28
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 29
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v1

    #@a
    .line 32
    :cond_1
    if-ltz p3, :cond_2

    #@c
    array-length v1, p1

    #@d
    if-ge v1, p3, :cond_3

    #@f
    .line 33
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@11
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@14
    throw v1

    #@15
    .line 32
    :cond_3
    array-length v1, p2

    #@16
    if-lt v1, p3, :cond_2

    #@18
    .line 36
    packed-switch p0, :pswitch_data_0

    #@1b
    .line 41
    :pswitch_0
    const/4 p0, 0x0

    #@1c
    .line 44
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    #@1f
    move-result v0

    #@20
    .line 45
    .local v0, "result":I
    and-int/lit8 v1, v0, 0x1

    #@22
    if-nez v1, :cond_4

    #@24
    const/4 v0, 0x1

    #@25
    .line 46
    :goto_1
    return v0

    #@26
    .line 37
    .end local v0    # "result":I
    :pswitch_1
    const/4 p0, 0x0

    #@27
    goto :goto_0

    #@28
    .line 38
    :pswitch_2
    const/4 p0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 39
    :pswitch_3
    const/4 p0, -0x2

    #@2b
    goto :goto_0

    #@2c
    .line 40
    :pswitch_4
    const/4 p0, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 45
    .restart local v0    # "result":I
    :cond_4
    const/4 v0, -0x1

    #@2f
    goto :goto_1

    #@30
    .line 36
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 23
    .param p0, "dir"    # I
    .param p1, "levels"    # [B
    .param p2, "lstart"    # I
    .param p3, "chars"    # [C
    .param p4, "cstart"    # I
    .param p5, "len"    # I

    #@0
    .prologue
    .line 63
    if-nez p5, :cond_0

    #@2
    .line 64
    sget-object v21, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@4
    return-object v21

    #@5
    .line 67
    :cond_0
    const/16 v21, 0x1

    #@7
    move/from16 v0, p0

    #@9
    move/from16 v1, v21

    #@b
    if-ne v0, v1, :cond_2

    #@d
    const/4 v2, 0x0

    #@e
    .line 68
    .local v2, "baseLevel":I
    :goto_0
    aget-byte v4, p1, p2

    #@10
    .line 69
    .local v4, "curLevel":I
    move v13, v4

    #@11
    .line 70
    .local v13, "minLevel":I
    const/16 v17, 0x1

    #@13
    .line 71
    .local v17, "runCount":I
    add-int/lit8 v7, p2, 0x1

    #@15
    .local v7, "i":I
    add-int v5, p2, p5

    #@17
    .local v5, "e":I
    :goto_1
    if-ge v7, v5, :cond_3

    #@19
    .line 72
    aget-byte v9, p1, v7

    #@1b
    .line 73
    .local v9, "level":I
    if-eq v9, v4, :cond_1

    #@1d
    .line 74
    move v4, v9

    #@1e
    .line 75
    add-int/lit8 v17, v17, 0x1

    #@20
    .line 71
    :cond_1
    add-int/lit8 v7, v7, 0x1

    #@22
    goto :goto_1

    #@23
    .line 67
    .end local v2    # "baseLevel":I
    .end local v4    # "curLevel":I
    .end local v5    # "e":I
    .end local v7    # "i":I
    .end local v9    # "level":I
    .end local v13    # "minLevel":I
    .end local v17    # "runCount":I
    :cond_2
    const/4 v2, 0x1

    #@24
    .restart local v2    # "baseLevel":I
    goto :goto_0

    #@25
    .line 80
    .restart local v4    # "curLevel":I
    .restart local v5    # "e":I
    .restart local v7    # "i":I
    .restart local v13    # "minLevel":I
    .restart local v17    # "runCount":I
    :cond_3
    move/from16 v19, p5

    #@27
    .line 81
    .local v19, "visLen":I
    and-int/lit8 v21, v4, 0x1

    #@29
    and-int/lit8 v22, v2, 0x1

    #@2b
    move/from16 v0, v21

    #@2d
    move/from16 v1, v22

    #@2f
    if-eq v0, v1, :cond_6

    #@31
    .line 83
    :cond_4
    add-int/lit8 v19, v19, -0x1

    #@33
    if-ltz v19, :cond_5

    #@35
    .line 84
    add-int v21, p4, v19

    #@37
    aget-char v3, p3, v21

    #@39
    .line 86
    .local v3, "ch":C
    const/16 v21, 0xa

    #@3b
    move/from16 v0, v21

    #@3d
    if-ne v3, v0, :cond_7

    #@3f
    .line 87
    add-int/lit8 v19, v19, -0x1

    #@41
    .line 95
    .end local v3    # "ch":C
    :cond_5
    :goto_2
    add-int/lit8 v19, v19, 0x1

    #@43
    .line 96
    move/from16 v0, v19

    #@45
    move/from16 v1, p5

    #@47
    if-eq v0, v1, :cond_6

    #@49
    .line 97
    add-int/lit8 v17, v17, 0x1

    #@4b
    .line 101
    :cond_6
    const/16 v21, 0x1

    #@4d
    move/from16 v0, v17

    #@4f
    move/from16 v1, v21

    #@51
    if-ne v0, v1, :cond_9

    #@53
    if-ne v13, v2, :cond_9

    #@55
    .line 103
    and-int/lit8 v21, v13, 0x1

    #@57
    if-eqz v21, :cond_8

    #@59
    .line 104
    sget-object v21, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    #@5b
    return-object v21

    #@5c
    .line 91
    .restart local v3    # "ch":C
    :cond_7
    const/16 v21, 0x20

    #@5e
    move/from16 v0, v21

    #@60
    if-eq v3, v0, :cond_4

    #@62
    const/16 v21, 0x9

    #@64
    move/from16 v0, v21

    #@66
    if-eq v3, v0, :cond_4

    #@68
    goto :goto_2

    #@69
    .line 106
    .end local v3    # "ch":C
    :cond_8
    sget-object v21, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@6b
    return-object v21

    #@6c
    .line 109
    :cond_9
    mul-int/lit8 v21, v17, 0x2

    #@6e
    move/from16 v0, v21

    #@70
    new-array v8, v0, [I

    #@72
    .line 110
    .local v8, "ld":[I
    move v12, v13

    #@73
    .line 111
    .local v12, "maxLevel":I
    shl-int/lit8 v10, v13, 0x1a

    #@75
    .line 116
    .local v10, "levelBits":I
    const/4 v14, 0x1

    #@76
    .line 117
    .local v14, "n":I
    move/from16 v16, p2

    #@78
    .line 118
    .local v16, "prev":I
    move v4, v13

    #@79
    .line 119
    move/from16 v7, p2

    #@7b
    add-int v5, p2, v19

    #@7d
    move v15, v14

    #@7e
    .end local v14    # "n":I
    .local v15, "n":I
    :goto_3
    if-ge v7, v5, :cond_c

    #@80
    .line 120
    aget-byte v9, p1, v7

    #@82
    .line 121
    .restart local v9    # "level":I
    if-eq v9, v4, :cond_16

    #@84
    .line 122
    move v4, v9

    #@85
    .line 123
    if-le v9, v12, :cond_b

    #@87
    .line 124
    move v12, v9

    #@88
    .line 129
    :cond_a
    :goto_4
    add-int/lit8 v14, v15, 0x1

    #@8a
    .end local v15    # "n":I
    .restart local v14    # "n":I
    sub-int v21, v7, v16

    #@8c
    or-int v21, v21, v10

    #@8e
    aput v21, v8, v15

    #@90
    .line 130
    add-int/lit8 v15, v14, 0x1

    #@92
    .end local v14    # "n":I
    .restart local v15    # "n":I
    sub-int v21, v7, p2

    #@94
    aput v21, v8, v14

    #@96
    .line 131
    shl-int/lit8 v10, v4, 0x1a

    #@98
    .line 132
    move/from16 v16, v7

    #@9a
    move v14, v15

    #@9b
    .line 119
    .end local v15    # "n":I
    .restart local v14    # "n":I
    :goto_5
    add-int/lit8 v7, v7, 0x1

    #@9d
    move v15, v14

    #@9e
    .end local v14    # "n":I
    .restart local v15    # "n":I
    goto :goto_3

    #@9f
    .line 125
    :cond_b
    if-ge v9, v13, :cond_a

    #@a1
    .line 126
    move v13, v9

    #@a2
    goto :goto_4

    #@a3
    .line 135
    .end local v9    # "level":I
    :cond_c
    add-int v21, p2, v19

    #@a5
    sub-int v21, v21, v16

    #@a7
    or-int v21, v21, v10

    #@a9
    aput v21, v8, v15

    #@ab
    .line 136
    move/from16 v0, v19

    #@ad
    move/from16 v1, p5

    #@af
    if-ge v0, v1, :cond_15

    #@b1
    .line 137
    add-int/lit8 v14, v15, 0x1

    #@b3
    .end local v15    # "n":I
    .restart local v14    # "n":I
    aput v19, v8, v14

    #@b5
    .line 138
    add-int/lit8 v14, v14, 0x1

    #@b7
    sub-int v21, p5, v19

    #@b9
    shl-int/lit8 v22, v2, 0x1a

    #@bb
    or-int v21, v21, v22

    #@bd
    aput v21, v8, v14

    #@bf
    .line 153
    :goto_6
    and-int/lit8 v21, v13, 0x1

    #@c1
    move/from16 v0, v21

    #@c3
    if-ne v0, v2, :cond_e

    #@c5
    .line 154
    add-int/lit8 v13, v13, 0x1

    #@c7
    .line 155
    if-le v12, v13, :cond_d

    #@c9
    const/16 v18, 0x1

    #@cb
    .line 159
    .local v18, "swap":Z
    :goto_7
    if-eqz v18, :cond_14

    #@cd
    .line 160
    add-int/lit8 v9, v12, -0x1

    #@cf
    .restart local v9    # "level":I
    :goto_8
    if-lt v9, v13, :cond_14

    #@d1
    .line 161
    const/4 v7, 0x0

    #@d2
    :goto_9
    array-length v0, v8

    #@d3
    move/from16 v21, v0

    #@d5
    move/from16 v0, v21

    #@d7
    if-ge v7, v0, :cond_13

    #@d9
    .line 162
    aget v21, v8, v7

    #@db
    aget-byte v21, p1, v21

    #@dd
    move/from16 v0, v21

    #@df
    if-lt v0, v9, :cond_12

    #@e1
    .line 163
    add-int/lit8 v5, v7, 0x2

    #@e3
    .line 164
    :goto_a
    array-length v0, v8

    #@e4
    move/from16 v21, v0

    #@e6
    move/from16 v0, v21

    #@e8
    if-ge v5, v0, :cond_10

    #@ea
    aget v21, v8, v5

    #@ec
    aget-byte v21, p1, v21

    #@ee
    move/from16 v0, v21

    #@f0
    if-lt v0, v9, :cond_10

    #@f2
    .line 165
    add-int/lit8 v5, v5, 0x2

    #@f4
    goto :goto_a

    #@f5
    .line 155
    .end local v9    # "level":I
    .end local v18    # "swap":Z
    :cond_d
    const/16 v18, 0x0

    #@f7
    .restart local v18    # "swap":Z
    goto :goto_7

    #@f8
    .line 157
    .end local v18    # "swap":Z
    :cond_e
    const/16 v21, 0x1

    #@fa
    move/from16 v0, v17

    #@fc
    move/from16 v1, v21

    #@fe
    if-le v0, v1, :cond_f

    #@100
    const/16 v18, 0x1

    #@102
    .restart local v18    # "swap":Z
    goto :goto_7

    #@103
    .end local v18    # "swap":Z
    :cond_f
    const/16 v18, 0x0

    #@105
    .restart local v18    # "swap":Z
    goto :goto_7

    #@106
    .line 167
    .restart local v9    # "level":I
    :cond_10
    move v11, v7

    #@107
    .local v11, "low":I
    add-int/lit8 v6, v5, -0x2

    #@109
    .local v6, "hi":I
    :goto_b
    if-ge v11, v6, :cond_11

    #@10b
    .line 168
    aget v20, v8, v11

    #@10d
    .local v20, "x":I
    aget v21, v8, v6

    #@10f
    aput v21, v8, v11

    #@111
    aput v20, v8, v6

    #@113
    .line 169
    add-int/lit8 v21, v11, 0x1

    #@115
    aget v20, v8, v21

    #@117
    add-int/lit8 v21, v11, 0x1

    #@119
    add-int/lit8 v22, v6, 0x1

    #@11b
    aget v22, v8, v22

    #@11d
    aput v22, v8, v21

    #@11f
    add-int/lit8 v21, v6, 0x1

    #@121
    aput v20, v8, v21

    #@123
    .line 167
    add-int/lit8 v11, v11, 0x2

    #@125
    add-int/lit8 v6, v6, -0x2

    #@127
    goto :goto_b

    #@128
    .line 171
    .end local v20    # "x":I
    :cond_11
    add-int/lit8 v7, v5, 0x2

    #@12a
    .line 161
    .end local v6    # "hi":I
    .end local v11    # "low":I
    :cond_12
    add-int/lit8 v7, v7, 0x2

    #@12c
    goto :goto_9

    #@12d
    .line 160
    :cond_13
    add-int/lit8 v9, v9, -0x1

    #@12f
    goto :goto_8

    #@130
    .line 176
    .end local v9    # "level":I
    :cond_14
    new-instance v21, Landroid/text/Layout$Directions;

    #@132
    move-object/from16 v0, v21

    #@134
    invoke-direct {v0, v8}, Landroid/text/Layout$Directions;-><init>([I)V

    #@137
    return-object v21

    #@138
    .end local v14    # "n":I
    .end local v18    # "swap":Z
    .restart local v15    # "n":I
    :cond_15
    move v14, v15

    #@139
    .end local v15    # "n":I
    .restart local v14    # "n":I
    goto :goto_6

    #@13a
    .end local v14    # "n":I
    .restart local v9    # "level":I
    .restart local v15    # "n":I
    :cond_16
    move v14, v15

    #@13b
    .end local v15    # "n":I
    .restart local v14    # "n":I
    goto/16 :goto_5
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
