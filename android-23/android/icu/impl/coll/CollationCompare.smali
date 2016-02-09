.class public final Landroid/icu/impl/coll/CollationCompare;
.super Ljava/lang/Object;
.source "CollationCompare.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationCompare;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationCompare;->-assertionsDisabled:Z

    #@b
    .line 16
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I
    .locals 44
    .param p0, "left"    # Landroid/icu/impl/coll/CollationIterator;
    .param p1, "right"    # Landroid/icu/impl/coll/CollationIterator;
    .param p2, "settings"    # Landroid/icu/impl/coll/CollationSettings;

    #@0
    .prologue
    .line 19
    move-object/from16 v0, p2

    #@2
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@4
    move/from16 v20, v0

    #@6
    .line 21
    .local v20, "options":I
    and-int/lit8 v37, v20, 0xc

    #@8
    if-nez v37, :cond_2

    #@a
    .line 22
    const-wide/16 v38, 0x0

    #@c
    .line 27
    .local v38, "variableTop":J
    :goto_0
    const/4 v5, 0x0

    #@d
    .line 34
    .local v5, "anyVariable":Z
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    #@10
    move-result-wide v6

    #@11
    .line 35
    .local v6, "ce":J
    const/16 v37, 0x20

    #@13
    ushr-long v14, v6, v37

    #@15
    .line 36
    .local v14, "leftPrimary":J
    cmp-long v37, v14, v38

    #@17
    if-gez v37, :cond_4

    #@19
    const-wide/32 v40, 0x2000000

    #@1c
    cmp-long v37, v14, v40

    #@1e
    if-lez v37, :cond_4

    #@20
    .line 39
    const/4 v5, 0x1

    #@21
    .line 42
    :cond_1
    const-wide v40, -0x100000000L

    #@26
    and-long v40, v40, v6

    #@28
    move-object/from16 v0, p0

    #@2a
    move-wide/from16 v1, v40

    #@2c
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    #@2f
    .line 44
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    #@32
    move-result-wide v6

    #@33
    .line 45
    const/16 v37, 0x20

    #@35
    ushr-long v14, v6, v37

    #@37
    .line 46
    const-wide/16 v40, 0x0

    #@39
    cmp-long v37, v14, v40

    #@3b
    if-nez v37, :cond_3

    #@3d
    .line 47
    const-wide/16 v40, 0x0

    #@3f
    move-object/from16 v0, p0

    #@41
    move-wide/from16 v1, v40

    #@43
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    #@46
    goto :goto_1

    #@47
    .line 25
    .end local v5    # "anyVariable":Z
    .end local v6    # "ce":J
    .end local v14    # "leftPrimary":J
    .end local v38    # "variableTop":J
    :cond_2
    move-object/from16 v0, p2

    #@49
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@4b
    move-wide/from16 v40, v0

    #@4d
    const-wide/16 v42, 0x1

    #@4f
    add-long v38, v40, v42

    #@51
    .restart local v38    # "variableTop":J
    goto :goto_0

    #@52
    .line 52
    .restart local v5    # "anyVariable":Z
    .restart local v6    # "ce":J
    .restart local v14    # "leftPrimary":J
    :cond_3
    cmp-long v37, v14, v38

    #@54
    if-gez v37, :cond_4

    #@56
    const-wide/32 v40, 0x2000000

    #@59
    cmp-long v37, v14, v40

    #@5b
    if-gtz v37, :cond_1

    #@5d
    .line 54
    :cond_4
    const-wide/16 v40, 0x0

    #@5f
    cmp-long v37, v14, v40

    #@61
    if-eqz v37, :cond_0

    #@63
    .line 58
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    #@66
    move-result-wide v6

    #@67
    .line 59
    const/16 v37, 0x20

    #@69
    ushr-long v28, v6, v37

    #@6b
    .line 60
    .local v28, "rightPrimary":J
    cmp-long v37, v28, v38

    #@6d
    if-gez v37, :cond_8

    #@6f
    const-wide/32 v40, 0x2000000

    #@72
    cmp-long v37, v28, v40

    #@74
    if-lez v37, :cond_8

    #@76
    .line 63
    const/4 v5, 0x1

    #@77
    .line 66
    :cond_6
    const-wide v40, -0x100000000L

    #@7c
    and-long v40, v40, v6

    #@7e
    move-object/from16 v0, p1

    #@80
    move-wide/from16 v1, v40

    #@82
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    #@85
    .line 68
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    #@88
    move-result-wide v6

    #@89
    .line 69
    const/16 v37, 0x20

    #@8b
    ushr-long v28, v6, v37

    #@8d
    .line 70
    const-wide/16 v40, 0x0

    #@8f
    cmp-long v37, v28, v40

    #@91
    if-nez v37, :cond_7

    #@93
    .line 71
    const-wide/16 v40, 0x0

    #@95
    move-object/from16 v0, p1

    #@97
    move-wide/from16 v1, v40

    #@99
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    #@9c
    goto :goto_2

    #@9d
    .line 76
    :cond_7
    cmp-long v37, v28, v38

    #@9f
    if-gez v37, :cond_8

    #@a1
    const-wide/32 v40, 0x2000000

    #@a4
    cmp-long v37, v28, v40

    #@a6
    if-gtz v37, :cond_6

    #@a8
    .line 78
    :cond_8
    const-wide/16 v40, 0x0

    #@aa
    cmp-long v37, v28, v40

    #@ac
    if-eqz v37, :cond_5

    #@ae
    .line 80
    cmp-long v37, v14, v28

    #@b0
    if-eqz v37, :cond_b

    #@b2
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    #@b5
    move-result v37

    #@b6
    if-eqz v37, :cond_9

    #@b8
    .line 83
    move-object/from16 v0, p2

    #@ba
    invoke-virtual {v0, v14, v15}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    #@bd
    move-result-wide v14

    #@be
    .line 84
    move-object/from16 v0, p2

    #@c0
    move-wide/from16 v1, v28

    #@c2
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    #@c5
    move-result-wide v28

    #@c6
    .line 86
    :cond_9
    cmp-long v37, v14, v28

    #@c8
    if-gez v37, :cond_a

    #@ca
    const/16 v37, -0x1

    #@cc
    :goto_3
    return v37

    #@cd
    :cond_a
    const/16 v37, 0x1

    #@cf
    goto :goto_3

    #@d0
    .line 88
    :cond_b
    const-wide/16 v40, 0x1

    #@d2
    cmp-long v37, v14, v40

    #@d4
    if-nez v37, :cond_0

    #@d6
    .line 96
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@d9
    move-result v37

    #@da
    const/16 v40, 0x1

    #@dc
    move/from16 v0, v37

    #@de
    move/from16 v1, v40

    #@e0
    if-lt v0, v1, :cond_10

    #@e2
    .line 97
    move/from16 v0, v20

    #@e4
    and-int/lit16 v0, v0, 0x800

    #@e6
    move/from16 v37, v0

    #@e8
    if-nez v37, :cond_14

    #@ea
    .line 98
    const/4 v9, 0x0

    #@eb
    .line 99
    .local v9, "leftIndex":I
    const/16 v24, 0x0

    #@ed
    .line 103
    .local v24, "rightIndex":I
    :goto_4
    add-int/lit8 v10, v9, 0x1

    #@ef
    .end local v9    # "leftIndex":I
    .local v10, "leftIndex":I
    move-object/from16 v0, p0

    #@f1
    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@f4
    move-result-wide v40

    #@f5
    move-wide/from16 v0, v40

    #@f7
    long-to-int v0, v0

    #@f8
    move/from16 v37, v0

    #@fa
    ushr-int/lit8 v13, v37, 0x10

    #@fc
    .line 104
    .local v13, "leftSecondary":I
    if-nez v13, :cond_c

    #@fe
    move v9, v10

    #@ff
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    goto :goto_4

    #@100
    .line 108
    .end local v9    # "leftIndex":I
    .restart local v10    # "leftIndex":I
    :cond_c
    :goto_5
    add-int/lit8 v25, v24, 0x1

    #@102
    .end local v24    # "rightIndex":I
    .local v25, "rightIndex":I
    move-object/from16 v0, p1

    #@104
    move/from16 v1, v24

    #@106
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@109
    move-result-wide v40

    #@10a
    move-wide/from16 v0, v40

    #@10c
    long-to-int v0, v0

    #@10d
    move/from16 v37, v0

    #@10f
    ushr-int/lit8 v32, v37, 0x10

    #@111
    .line 109
    .local v32, "rightSecondary":I
    if-nez v32, :cond_d

    #@113
    move/from16 v24, v25

    #@115
    .end local v25    # "rightIndex":I
    .restart local v24    # "rightIndex":I
    goto :goto_5

    #@116
    .line 111
    .end local v24    # "rightIndex":I
    .restart local v25    # "rightIndex":I
    :cond_d
    move/from16 v0, v32

    #@118
    if-eq v13, v0, :cond_f

    #@11a
    .line 112
    move/from16 v0, v32

    #@11c
    if-ge v13, v0, :cond_e

    #@11e
    const/16 v37, -0x1

    #@120
    :goto_6
    return v37

    #@121
    :cond_e
    const/16 v37, 0x1

    #@123
    goto :goto_6

    #@124
    .line 114
    :cond_f
    const/16 v37, 0x100

    #@126
    move/from16 v0, v37

    #@128
    if-ne v13, v0, :cond_13

    #@12a
    .line 173
    .end local v10    # "leftIndex":I
    .end local v13    # "leftSecondary":I
    .end local v25    # "rightIndex":I
    .end local v32    # "rightSecondary":I
    :cond_10
    move/from16 v0, v20

    #@12c
    and-int/lit16 v0, v0, 0x400

    #@12e
    move/from16 v37, v0

    #@130
    if-eqz v37, :cond_2a

    #@132
    .line 174
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@135
    move-result v35

    #@136
    .line 175
    .local v35, "strength":I
    const/4 v9, 0x0

    #@137
    .line 176
    .restart local v9    # "leftIndex":I
    const/16 v24, 0x0

    #@139
    .line 179
    .restart local v24    # "rightIndex":I
    :cond_11
    if-nez v35, :cond_23

    #@13b
    .line 187
    :goto_7
    add-int/lit8 v10, v9, 0x1

    #@13d
    .end local v9    # "leftIndex":I
    .restart local v10    # "leftIndex":I
    move-object/from16 v0, p0

    #@13f
    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@142
    move-result-wide v6

    #@143
    .line 188
    long-to-int v8, v6

    #@144
    .line 189
    .local v8, "leftCase":I
    const/16 v37, 0x20

    #@146
    ushr-long v40, v6, v37

    #@148
    const-wide/16 v42, 0x0

    #@14a
    cmp-long v37, v40, v42

    #@14c
    if-eqz v37, :cond_12

    #@14e
    if-nez v8, :cond_20

    #@150
    :cond_12
    move v9, v10

    #@151
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    goto :goto_7

    #@152
    .end local v8    # "leftCase":I
    .end local v9    # "leftIndex":I
    .end local v24    # "rightIndex":I
    .end local v35    # "strength":I
    .restart local v10    # "leftIndex":I
    .restart local v13    # "leftSecondary":I
    .restart local v25    # "rightIndex":I
    .restart local v32    # "rightSecondary":I
    :cond_13
    move/from16 v24, v25

    #@154
    .end local v25    # "rightIndex":I
    .restart local v24    # "rightIndex":I
    move v9, v10

    #@155
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    goto :goto_4

    #@156
    .line 121
    .end local v9    # "leftIndex":I
    .end local v13    # "leftSecondary":I
    .end local v24    # "rightIndex":I
    .end local v32    # "rightSecondary":I
    :cond_14
    const/16 v18, 0x0

    #@158
    .line 122
    .local v18, "leftStart":I
    const/16 v33, 0x0

    #@15a
    .line 126
    .local v33, "rightStart":I
    :goto_8
    move/from16 v11, v18

    #@15c
    .line 127
    .local v11, "leftLimit":I
    :goto_9
    move-object/from16 v0, p0

    #@15e
    invoke-virtual {v0, v11}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@161
    move-result-wide v40

    #@162
    const/16 v37, 0x20

    #@164
    ushr-long v22, v40, v37

    #@166
    .local v22, "p":J
    const-wide/32 v40, 0x2000000

    #@169
    cmp-long v37, v22, v40

    #@16b
    if-gtz v37, :cond_15

    #@16d
    .line 128
    const-wide/16 v40, 0x0

    #@16f
    cmp-long v37, v22, v40

    #@171
    if-nez v37, :cond_16

    #@173
    .line 129
    :cond_15
    add-int/lit8 v11, v11, 0x1

    #@175
    goto :goto_9

    #@176
    .line 131
    :cond_16
    move/from16 v26, v33

    #@178
    .line 132
    .local v26, "rightLimit":I
    :goto_a
    move-object/from16 v0, p1

    #@17a
    move/from16 v1, v26

    #@17c
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@17f
    move-result-wide v40

    #@180
    const/16 v37, 0x20

    #@182
    ushr-long v22, v40, v37

    #@184
    const-wide/32 v40, 0x2000000

    #@187
    cmp-long v37, v22, v40

    #@189
    if-gtz v37, :cond_17

    #@18b
    .line 133
    const-wide/16 v40, 0x0

    #@18d
    cmp-long v37, v22, v40

    #@18f
    if-nez v37, :cond_18

    #@191
    .line 134
    :cond_17
    add-int/lit8 v26, v26, 0x1

    #@193
    goto :goto_a

    #@194
    .line 138
    :cond_18
    move v9, v11

    #@195
    .line 139
    .restart local v9    # "leftIndex":I
    move/from16 v24, v26

    #@197
    .line 141
    .restart local v24    # "rightIndex":I
    :cond_19
    const/4 v13, 0x0

    #@198
    .line 142
    .restart local v13    # "leftSecondary":I
    :goto_b
    if-nez v13, :cond_1a

    #@19a
    move/from16 v0, v18

    #@19c
    if-le v9, v0, :cond_1a

    #@19e
    .line 143
    add-int/lit8 v9, v9, -0x1

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@1a5
    move-result-wide v40

    #@1a6
    move-wide/from16 v0, v40

    #@1a8
    long-to-int v0, v0

    #@1a9
    move/from16 v37, v0

    #@1ab
    ushr-int/lit8 v13, v37, 0x10

    #@1ad
    goto :goto_b

    #@1ae
    .line 146
    :cond_1a
    const/16 v32, 0x0

    #@1b0
    .line 147
    .restart local v32    # "rightSecondary":I
    :goto_c
    if-nez v32, :cond_1b

    #@1b2
    move/from16 v0, v24

    #@1b4
    move/from16 v1, v33

    #@1b6
    if-le v0, v1, :cond_1b

    #@1b8
    .line 148
    add-int/lit8 v24, v24, -0x1

    #@1ba
    move-object/from16 v0, p1

    #@1bc
    move/from16 v1, v24

    #@1be
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@1c1
    move-result-wide v40

    #@1c2
    move-wide/from16 v0, v40

    #@1c4
    long-to-int v0, v0

    #@1c5
    move/from16 v37, v0

    #@1c7
    ushr-int/lit8 v32, v37, 0x10

    #@1c9
    goto :goto_c

    #@1ca
    .line 151
    :cond_1b
    move/from16 v0, v32

    #@1cc
    if-eq v13, v0, :cond_1d

    #@1ce
    .line 152
    move/from16 v0, v32

    #@1d0
    if-ge v13, v0, :cond_1c

    #@1d2
    const/16 v37, -0x1

    #@1d4
    :goto_d
    return v37

    #@1d5
    :cond_1c
    const/16 v37, 0x1

    #@1d7
    goto :goto_d

    #@1d8
    .line 154
    :cond_1d
    if-nez v13, :cond_19

    #@1da
    .line 162
    sget-boolean v37, Landroid/icu/impl/coll/CollationCompare;->-assertionsDisabled:Z

    #@1dc
    if-nez v37, :cond_1f

    #@1de
    move-object/from16 v0, p0

    #@1e0
    invoke-virtual {v0, v11}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@1e3
    move-result-wide v40

    #@1e4
    move-object/from16 v0, p1

    #@1e6
    move/from16 v1, v26

    #@1e8
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@1eb
    move-result-wide v42

    #@1ec
    cmp-long v37, v40, v42

    #@1ee
    if-nez v37, :cond_1e

    #@1f0
    const/16 v37, 0x1

    #@1f2
    :goto_e
    if-nez v37, :cond_1f

    #@1f4
    new-instance v37, Ljava/lang/AssertionError;

    #@1f6
    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    #@1f9
    throw v37

    #@1fa
    :cond_1e
    const/16 v37, 0x0

    #@1fc
    goto :goto_e

    #@1fd
    .line 163
    :cond_1f
    const-wide/16 v40, 0x1

    #@1ff
    cmp-long v37, v22, v40

    #@201
    if-eqz v37, :cond_10

    #@203
    .line 167
    add-int/lit8 v18, v11, 0x1

    #@205
    .line 168
    add-int/lit8 v33, v26, 0x1

    #@207
    goto/16 :goto_8

    #@209
    .line 190
    .end local v9    # "leftIndex":I
    .end local v11    # "leftLimit":I
    .end local v13    # "leftSecondary":I
    .end local v18    # "leftStart":I
    .end local v22    # "p":J
    .end local v26    # "rightLimit":I
    .end local v32    # "rightSecondary":I
    .end local v33    # "rightStart":I
    .restart local v8    # "leftCase":I
    .restart local v10    # "leftIndex":I
    .restart local v35    # "strength":I
    :cond_20
    move v12, v8

    #@20a
    .line 191
    .local v12, "leftLower32":I
    const v37, 0xc000

    #@20d
    and-int v8, v8, v37

    #@20f
    .line 194
    :goto_f
    add-int/lit8 v25, v24, 0x1

    #@211
    .end local v24    # "rightIndex":I
    .restart local v25    # "rightIndex":I
    move-object/from16 v0, p1

    #@213
    move/from16 v1, v24

    #@215
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@218
    move-result-wide v6

    #@219
    .line 195
    long-to-int v0, v6

    #@21a
    move/from16 v21, v0

    #@21c
    .line 196
    .local v21, "rightCase":I
    const/16 v37, 0x20

    #@21e
    ushr-long v40, v6, v37

    #@220
    const-wide/16 v42, 0x0

    #@222
    cmp-long v37, v40, v42

    #@224
    if-eqz v37, :cond_21

    #@226
    if-nez v21, :cond_22

    #@228
    :cond_21
    move/from16 v24, v25

    #@22a
    .end local v25    # "rightIndex":I
    .restart local v24    # "rightIndex":I
    goto :goto_f

    #@22b
    .line 197
    .end local v24    # "rightIndex":I
    .restart local v25    # "rightIndex":I
    :cond_22
    const v37, 0xc000

    #@22e
    and-int v21, v21, v37

    #@230
    move/from16 v24, v25

    #@232
    .end local v25    # "rightIndex":I
    .restart local v24    # "rightIndex":I
    move v9, v10

    #@233
    .line 228
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    :goto_10
    move/from16 v0, v21

    #@235
    if-eq v8, v0, :cond_29

    #@237
    .line 229
    move/from16 v0, v20

    #@239
    and-int/lit16 v0, v0, 0x100

    #@23b
    move/from16 v37, v0

    #@23d
    if-nez v37, :cond_27

    #@23f
    .line 230
    move/from16 v0, v21

    #@241
    if-ge v8, v0, :cond_26

    #@243
    const/16 v37, -0x1

    #@245
    :goto_11
    return v37

    #@246
    .line 214
    .end local v8    # "leftCase":I
    .end local v12    # "leftLower32":I
    .end local v21    # "rightCase":I
    :cond_23
    :goto_12
    add-int/lit8 v10, v9, 0x1

    #@248
    .end local v9    # "leftIndex":I
    .restart local v10    # "leftIndex":I
    move-object/from16 v0, p0

    #@24a
    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@24d
    move-result-wide v40

    #@24e
    move-wide/from16 v0, v40

    #@250
    long-to-int v8, v0

    #@251
    .line 215
    .restart local v8    # "leftCase":I
    const/high16 v37, -0x10000

    #@253
    and-int v37, v37, v8

    #@255
    if-nez v37, :cond_24

    #@257
    move v9, v10

    #@258
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    goto :goto_12

    #@259
    .line 216
    .end local v9    # "leftIndex":I
    .restart local v10    # "leftIndex":I
    :cond_24
    move v12, v8

    #@25a
    .line 217
    .restart local v12    # "leftLower32":I
    const v37, 0xc000

    #@25d
    and-int v8, v8, v37

    #@25f
    .line 220
    :goto_13
    add-int/lit8 v25, v24, 0x1

    #@261
    .end local v24    # "rightIndex":I
    .restart local v25    # "rightIndex":I
    move-object/from16 v0, p1

    #@263
    move/from16 v1, v24

    #@265
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@268
    move-result-wide v40

    #@269
    move-wide/from16 v0, v40

    #@26b
    long-to-int v0, v0

    #@26c
    move/from16 v21, v0

    #@26e
    .line 221
    .restart local v21    # "rightCase":I
    const/high16 v37, -0x10000

    #@270
    and-int v37, v37, v21

    #@272
    if-nez v37, :cond_25

    #@274
    move/from16 v24, v25

    #@276
    .end local v25    # "rightIndex":I
    .restart local v24    # "rightIndex":I
    goto :goto_13

    #@277
    .line 222
    .end local v24    # "rightIndex":I
    .restart local v25    # "rightIndex":I
    :cond_25
    const v37, 0xc000

    #@27a
    and-int v21, v21, v37

    #@27c
    move/from16 v24, v25

    #@27e
    .end local v25    # "rightIndex":I
    .restart local v24    # "rightIndex":I
    move v9, v10

    #@27f
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    goto :goto_10

    #@280
    .line 230
    :cond_26
    const/16 v37, 0x1

    #@282
    goto :goto_11

    #@283
    .line 232
    :cond_27
    move/from16 v0, v21

    #@285
    if-ge v8, v0, :cond_28

    #@287
    const/16 v37, 0x1

    #@289
    :goto_14
    return v37

    #@28a
    :cond_28
    const/16 v37, -0x1

    #@28c
    goto :goto_14

    #@28d
    .line 235
    :cond_29
    ushr-int/lit8 v37, v12, 0x10

    #@28f
    const/16 v40, 0x100

    #@291
    move/from16 v0, v37

    #@293
    move/from16 v1, v40

    #@295
    if-ne v0, v1, :cond_11

    #@297
    .line 240
    .end local v8    # "leftCase":I
    .end local v9    # "leftIndex":I
    .end local v12    # "leftLower32":I
    .end local v21    # "rightCase":I
    .end local v24    # "rightIndex":I
    .end local v35    # "strength":I
    :cond_2a
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@29a
    move-result v37

    #@29b
    const/16 v40, 0x1

    #@29d
    move/from16 v0, v37

    #@29f
    move/from16 v1, v40

    #@2a1
    if-gt v0, v1, :cond_2b

    #@2a3
    .line 241
    const/16 v37, 0x0

    #@2a5
    return v37

    #@2a6
    .line 244
    :cond_2b
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->getTertiaryMask(I)I

    #@2a9
    move-result v36

    #@2aa
    .line 246
    .local v36, "tertiaryMask":I
    const/4 v9, 0x0

    #@2ab
    .line 247
    .restart local v9    # "leftIndex":I
    const/16 v24, 0x0

    #@2ad
    .line 248
    .restart local v24    # "rightIndex":I
    const/4 v4, 0x0

    #@2ae
    .line 252
    .local v4, "anyQuaternaries":I
    :goto_15
    add-int/lit8 v10, v9, 0x1

    #@2b0
    .end local v9    # "leftIndex":I
    .restart local v10    # "leftIndex":I
    move-object/from16 v0, p0

    #@2b2
    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@2b5
    move-result-wide v40

    #@2b6
    move-wide/from16 v0, v40

    #@2b8
    long-to-int v12, v0

    #@2b9
    .line 253
    .restart local v12    # "leftLower32":I
    or-int/2addr v4, v12

    #@2ba
    .line 254
    sget-boolean v37, Landroid/icu/impl/coll/CollationCompare;->-assertionsDisabled:Z

    #@2bc
    if-nez v37, :cond_2e

    #@2be
    and-int/lit16 v0, v12, 0x3f3f

    #@2c0
    move/from16 v37, v0

    #@2c2
    if-nez v37, :cond_2c

    #@2c4
    const v37, 0xc0c0

    #@2c7
    and-int v37, v37, v12

    #@2c9
    if-nez v37, :cond_2d

    #@2cb
    :cond_2c
    const/16 v37, 0x1

    #@2cd
    :goto_16
    if-nez v37, :cond_2e

    #@2cf
    new-instance v37, Ljava/lang/AssertionError;

    #@2d1
    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    #@2d4
    throw v37

    #@2d5
    :cond_2d
    const/16 v37, 0x0

    #@2d7
    goto :goto_16

    #@2d8
    .line 255
    :cond_2e
    and-int v19, v12, v36

    #@2da
    .line 256
    .local v19, "leftTertiary":I
    if-nez v19, :cond_30

    #@2dc
    move v9, v10

    #@2dd
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    goto :goto_15

    #@2de
    .line 263
    .end local v9    # "leftIndex":I
    .end local v24    # "rightIndex":I
    .restart local v10    # "leftIndex":I
    .restart local v25    # "rightIndex":I
    .local v27, "rightLower32":I
    :cond_2f
    and-int v34, v27, v36

    #@2e0
    .line 264
    .local v34, "rightTertiary":I
    if-nez v34, :cond_33

    #@2e2
    move/from16 v24, v25

    #@2e4
    .line 260
    .end local v25    # "rightIndex":I
    .end local v27    # "rightLower32":I
    .end local v34    # "rightTertiary":I
    .restart local v24    # "rightIndex":I
    :cond_30
    add-int/lit8 v25, v24, 0x1

    #@2e6
    .end local v24    # "rightIndex":I
    .restart local v25    # "rightIndex":I
    move-object/from16 v0, p1

    #@2e8
    move/from16 v1, v24

    #@2ea
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@2ed
    move-result-wide v40

    #@2ee
    move-wide/from16 v0, v40

    #@2f0
    long-to-int v0, v0

    #@2f1
    move/from16 v27, v0

    #@2f3
    .line 261
    .restart local v27    # "rightLower32":I
    or-int v4, v4, v27

    #@2f5
    .line 262
    sget-boolean v37, Landroid/icu/impl/coll/CollationCompare;->-assertionsDisabled:Z

    #@2f7
    if-nez v37, :cond_2f

    #@2f9
    move/from16 v0, v27

    #@2fb
    and-int/lit16 v0, v0, 0x3f3f

    #@2fd
    move/from16 v37, v0

    #@2ff
    if-nez v37, :cond_31

    #@301
    const v37, 0xc0c0

    #@304
    and-int v37, v37, v27

    #@306
    if-nez v37, :cond_32

    #@308
    :cond_31
    const/16 v37, 0x1

    #@30a
    :goto_17
    if-nez v37, :cond_2f

    #@30c
    new-instance v37, Ljava/lang/AssertionError;

    #@30e
    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    #@311
    throw v37

    #@312
    :cond_32
    const/16 v37, 0x0

    #@314
    goto :goto_17

    #@315
    .line 266
    .restart local v34    # "rightTertiary":I
    :cond_33
    move/from16 v0, v19

    #@317
    move/from16 v1, v34

    #@319
    if-eq v0, v1, :cond_39

    #@31b
    .line 267
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->sortsTertiaryUpperCaseFirst(I)Z

    #@31e
    move-result v37

    #@31f
    if-eqz v37, :cond_35

    #@321
    .line 273
    const/16 v37, 0x100

    #@323
    move/from16 v0, v19

    #@325
    move/from16 v1, v37

    #@327
    if-le v0, v1, :cond_34

    #@329
    .line 274
    const/high16 v37, -0x10000

    #@32b
    and-int v37, v37, v12

    #@32d
    if-eqz v37, :cond_36

    #@32f
    .line 275
    const v37, 0xc000

    #@332
    xor-int v19, v19, v37

    #@334
    .line 280
    :cond_34
    :goto_18
    const/16 v37, 0x100

    #@336
    move/from16 v0, v34

    #@338
    move/from16 v1, v37

    #@33a
    if-le v0, v1, :cond_35

    #@33c
    .line 281
    const/high16 v37, -0x10000

    #@33e
    and-int v37, v37, v27

    #@340
    if-eqz v37, :cond_37

    #@342
    .line 282
    const v37, 0xc000

    #@345
    xor-int v34, v34, v37

    #@347
    .line 288
    :cond_35
    :goto_19
    move/from16 v0, v19

    #@349
    move/from16 v1, v34

    #@34b
    if-ge v0, v1, :cond_38

    #@34d
    const/16 v37, -0x1

    #@34f
    :goto_1a
    return v37

    #@350
    .line 277
    :cond_36
    move/from16 v0, v19

    #@352
    add-int/lit16 v0, v0, 0x4000

    #@354
    move/from16 v19, v0

    #@356
    goto :goto_18

    #@357
    .line 284
    :cond_37
    move/from16 v0, v34

    #@359
    add-int/lit16 v0, v0, 0x4000

    #@35b
    move/from16 v34, v0

    #@35d
    goto :goto_19

    #@35e
    .line 288
    :cond_38
    const/16 v37, 0x1

    #@360
    goto :goto_1a

    #@361
    .line 290
    :cond_39
    const/16 v37, 0x100

    #@363
    move/from16 v0, v19

    #@365
    move/from16 v1, v37

    #@367
    if-ne v0, v1, :cond_3a

    #@369
    .line 294
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@36c
    move-result v37

    #@36d
    const/16 v40, 0x2

    #@36f
    move/from16 v0, v37

    #@371
    move/from16 v1, v40

    #@373
    if-gt v0, v1, :cond_3b

    #@375
    .line 295
    const/16 v37, 0x0

    #@377
    return v37

    #@378
    :cond_3a
    move/from16 v24, v25

    #@37a
    .end local v25    # "rightIndex":I
    .restart local v24    # "rightIndex":I
    move v9, v10

    #@37b
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    goto/16 :goto_15

    #@37d
    .line 298
    .end local v9    # "leftIndex":I
    .end local v24    # "rightIndex":I
    .restart local v10    # "leftIndex":I
    .restart local v25    # "rightIndex":I
    :cond_3b
    if-nez v5, :cond_3c

    #@37f
    and-int/lit16 v0, v4, 0xc0

    #@381
    move/from16 v37, v0

    #@383
    if-nez v37, :cond_3c

    #@385
    .line 301
    const/16 v37, 0x0

    #@387
    return v37

    #@388
    .line 304
    :cond_3c
    const/4 v9, 0x0

    #@389
    .line 305
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    const/16 v24, 0x0

    #@38b
    .line 309
    .end local v25    # "rightIndex":I
    .restart local v24    # "rightIndex":I
    :goto_1b
    add-int/lit8 v10, v9, 0x1

    #@38d
    .end local v9    # "leftIndex":I
    .restart local v10    # "leftIndex":I
    move-object/from16 v0, p0

    #@38f
    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@392
    move-result-wide v6

    #@393
    .line 310
    const-wide/32 v40, 0xffff

    #@396
    and-long v16, v6, v40

    #@398
    .line 311
    .local v16, "leftQuaternary":J
    const-wide/16 v40, 0x100

    #@39a
    cmp-long v37, v16, v40

    #@39c
    if-gtz v37, :cond_3d

    #@39e
    .line 313
    const/16 v37, 0x20

    #@3a0
    ushr-long v16, v6, v37

    #@3a2
    .line 319
    :goto_1c
    const-wide/16 v40, 0x0

    #@3a4
    cmp-long v37, v16, v40

    #@3a6
    if-nez v37, :cond_3e

    #@3a8
    move v9, v10

    #@3a9
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    goto :goto_1b

    #@3aa
    .line 317
    .end local v9    # "leftIndex":I
    .restart local v10    # "leftIndex":I
    :cond_3d
    const-wide v40, 0xffffff3fL

    #@3af
    or-long v16, v16, v40

    #@3b1
    goto :goto_1c

    #@3b2
    .line 323
    :cond_3e
    :goto_1d
    add-int/lit8 v25, v24, 0x1

    #@3b4
    .end local v24    # "rightIndex":I
    .restart local v25    # "rightIndex":I
    move-object/from16 v0, p1

    #@3b6
    move/from16 v1, v24

    #@3b8
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@3bb
    move-result-wide v6

    #@3bc
    .line 324
    const-wide/32 v40, 0xffff

    #@3bf
    and-long v30, v6, v40

    #@3c1
    .line 325
    .local v30, "rightQuaternary":J
    const-wide/16 v40, 0x100

    #@3c3
    cmp-long v37, v30, v40

    #@3c5
    if-gtz v37, :cond_3f

    #@3c7
    .line 327
    const/16 v37, 0x20

    #@3c9
    ushr-long v30, v6, v37

    #@3cb
    .line 333
    :goto_1e
    const-wide/16 v40, 0x0

    #@3cd
    cmp-long v37, v30, v40

    #@3cf
    if-nez v37, :cond_40

    #@3d1
    move/from16 v24, v25

    #@3d3
    .end local v25    # "rightIndex":I
    .restart local v24    # "rightIndex":I
    goto :goto_1d

    #@3d4
    .line 331
    .end local v24    # "rightIndex":I
    .restart local v25    # "rightIndex":I
    :cond_3f
    const-wide v40, 0xffffff3fL

    #@3d9
    or-long v30, v30, v40

    #@3db
    goto :goto_1e

    #@3dc
    .line 335
    :cond_40
    cmp-long v37, v16, v30

    #@3de
    if-eqz v37, :cond_43

    #@3e0
    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    #@3e3
    move-result v37

    #@3e4
    if-eqz v37, :cond_41

    #@3e6
    .line 338
    move-object/from16 v0, p2

    #@3e8
    move-wide/from16 v1, v16

    #@3ea
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    #@3ed
    move-result-wide v16

    #@3ee
    .line 339
    move-object/from16 v0, p2

    #@3f0
    move-wide/from16 v1, v30

    #@3f2
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    #@3f5
    move-result-wide v30

    #@3f6
    .line 341
    :cond_41
    cmp-long v37, v16, v30

    #@3f8
    if-gez v37, :cond_42

    #@3fa
    const/16 v37, -0x1

    #@3fc
    :goto_1f
    return v37

    #@3fd
    :cond_42
    const/16 v37, 0x1

    #@3ff
    goto :goto_1f

    #@400
    .line 343
    :cond_43
    const-wide/16 v40, 0x1

    #@402
    cmp-long v37, v16, v40

    #@404
    if-nez v37, :cond_44

    #@406
    .line 347
    const/16 v37, 0x0

    #@408
    return v37

    #@409
    :cond_44
    move/from16 v24, v25

    #@40b
    .end local v25    # "rightIndex":I
    .restart local v24    # "rightIndex":I
    move v9, v10

    #@40c
    .end local v10    # "leftIndex":I
    .restart local v9    # "leftIndex":I
    goto/16 :goto_1b
.end method
