.class public final Landroid/icu/impl/coll/CollationCompare;
.super Ljava/lang/Object;
.source "CollationCompare.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 22
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I
    .registers 37
    .param p0, "left"    # Landroid/icu/impl/coll/CollationIterator;
    .param p1, "right"    # Landroid/icu/impl/coll/CollationIterator;
    .param p2, "settings"    # Landroid/icu/impl/coll/CollationSettings;

    .line 25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v2, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 27
    .local v3, "options":I
    and-int/lit8 v4, v3, 0xc

    const-wide/16 v5, 0x1

    if-nez v4, :cond_11

    .line 28
    const-wide/16 v7, 0x0

    .local v7, "variableTop":J
    goto :goto_14

    .line 31
    .end local v7    # "variableTop":J
    :cond_11
    iget-wide v7, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    add-long/2addr v7, v5

    .line 33
    .restart local v7    # "variableTop":J
    :goto_14
    const/4 v4, 0x0

    .line 40
    .local v4, "anyVariable":Z
    :goto_15
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v9

    .line 41
    .local v9, "ce":J
    const/16 v11, 0x20

    ushr-long v12, v9, v11

    .line 42
    .local v12, "leftPrimary":J
    cmp-long v14, v12, v7

    const-wide v15, -0x100000000L

    const-wide/32 v17, 0x2000000

    move-wide/from16 v19, v5

    const-wide/16 v5, 0x0

    if-gez v14, :cond_55

    cmp-long v14, v12, v17

    if-lez v14, :cond_55

    .line 45
    const/4 v4, 0x1

    .line 48
    :goto_32
    move v14, v11

    move-wide/from16 v21, v12

    .end local v12    # "leftPrimary":J
    .local v21, "leftPrimary":J
    and-long v11, v9, v15

    invoke-virtual {v0, v11, v12}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    move-wide/from16 v12, v21

    .line 50
    .end local v21    # "leftPrimary":J
    .restart local v12    # "leftPrimary":J
    :goto_3c
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v9

    .line 51
    ushr-long v12, v9, v14

    .line 52
    cmp-long v11, v12, v5

    if-nez v11, :cond_4a

    .line 53
    invoke-virtual {v0, v5, v6}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    goto :goto_3c

    .line 58
    :cond_4a
    cmp-long v11, v12, v7

    if-gez v11, :cond_56

    cmp-long v11, v12, v17

    if-gtz v11, :cond_53

    goto :goto_56

    :cond_53
    move v11, v14

    goto :goto_32

    .line 42
    :cond_55
    move v14, v11

    .line 60
    .end local v9    # "ce":J
    :cond_56
    :goto_56
    cmp-long v9, v12, v5

    if-eqz v9, :cond_31e

    .line 64
    :goto_5a
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v9

    .line 65
    .restart local v9    # "ce":J
    ushr-long v21, v9, v14

    .line 66
    .local v21, "rightPrimary":J
    cmp-long v11, v21, v7

    if-gez v11, :cond_8c

    cmp-long v11, v21, v17

    if-lez v11, :cond_8c

    .line 69
    const/4 v4, 0x1

    .line 72
    :goto_69
    move v11, v14

    move-wide/from16 v23, v15

    and-long v14, v9, v23

    invoke-virtual {v1, v14, v15}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    .line 74
    :goto_71
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v9

    .line 75
    ushr-long v21, v9, v11

    .line 76
    cmp-long v14, v21, v5

    if-nez v14, :cond_7f

    .line 77
    invoke-virtual {v1, v5, v6}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    goto :goto_71

    .line 82
    :cond_7f
    cmp-long v14, v21, v7

    if-gez v14, :cond_8f

    cmp-long v14, v21, v17

    if-gtz v14, :cond_88

    goto :goto_8f

    :cond_88
    move v14, v11

    move-wide/from16 v15, v23

    goto :goto_69

    .line 66
    :cond_8c
    move v11, v14

    move-wide/from16 v23, v15

    .line 84
    .end local v9    # "ce":J
    :cond_8f
    :goto_8f
    move-wide/from16 v9, v21

    .end local v21    # "rightPrimary":J
    .local v9, "rightPrimary":J
    cmp-long v14, v9, v5

    if-eqz v14, :cond_312

    .line 86
    cmp-long v14, v12, v9

    move-wide/from16 v21, v5

    const/4 v5, 0x1

    if-eqz v14, :cond_b2

    .line 88
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 89
    invoke-virtual {v2, v12, v13}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v12

    .line 90
    invoke-virtual {v2, v9, v10}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v9

    .line 92
    :cond_aa
    cmp-long v6, v12, v9

    if-gez v6, :cond_b0

    const/4 v15, -0x1

    goto :goto_b1

    :cond_b0
    move v15, v5

    :goto_b1
    return v15

    .line 94
    :cond_b2
    cmp-long v6, v12, v19

    if-nez v6, :cond_30c

    .line 95
    nop

    .line 102
    .end local v9    # "rightPrimary":J
    .end local v12    # "leftPrimary":J
    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v6

    const/16 v14, 0x100

    if-lt v6, v5, :cond_190

    .line 103
    and-int/lit16 v6, v3, 0x800

    if-nez v6, :cond_f8

    .line 104
    const/4 v6, 0x0

    .line 105
    .local v6, "leftIndex":I
    const/4 v9, 0x0

    .line 109
    .local v9, "rightIndex":I
    :goto_c5
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "leftIndex":I
    .local v10, "leftIndex":I
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v12

    long-to-int v6, v12

    ushr-int/lit8 v6, v6, 0x10

    .line 110
    .local v6, "leftSecondary":I
    if-eqz v6, :cond_f4

    .line 114
    :goto_d0
    add-int/lit8 v12, v9, 0x1

    move/from16 v16, v11

    move v13, v12

    .end local v9    # "rightIndex":I
    .local v13, "rightIndex":I
    invoke-virtual {v1, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v11

    long-to-int v9, v11

    ushr-int/lit8 v9, v9, 0x10

    .line 115
    .local v9, "rightSecondary":I
    if-eqz v9, :cond_f0

    .line 117
    if-eq v6, v9, :cond_e6

    .line 118
    if-ge v6, v9, :cond_e4

    const/4 v15, -0x1

    goto :goto_e5

    :cond_e4
    move v15, v5

    :goto_e5
    return v15

    .line 120
    :cond_e6
    if-ne v6, v14, :cond_eb

    .line 121
    nop

    .line 124
    .end local v6    # "leftSecondary":I
    .end local v9    # "rightSecondary":I
    .end local v10    # "leftIndex":I
    .end local v13    # "rightIndex":I
    goto/16 :goto_192

    .line 123
    .restart local v10    # "leftIndex":I
    .restart local v13    # "rightIndex":I
    :cond_eb
    move v6, v10

    move v9, v13

    move/from16 v11, v16

    goto :goto_c5

    .line 115
    .restart local v6    # "leftSecondary":I
    .restart local v9    # "rightSecondary":I
    :cond_f0
    move v9, v13

    move/from16 v11, v16

    goto :goto_d0

    .line 110
    .end local v13    # "rightIndex":I
    .local v9, "rightIndex":I
    :cond_f4
    move/from16 v16, v11

    move v6, v10

    goto :goto_c5

    .line 127
    .end local v6    # "leftSecondary":I
    .end local v9    # "rightIndex":I
    .end local v10    # "leftIndex":I
    :cond_f8
    move/from16 v16, v11

    const/4 v6, 0x0

    .line 128
    .local v6, "leftStart":I
    const/4 v9, 0x0

    .line 132
    .local v9, "rightStart":I
    :goto_fc
    move v10, v6

    .line 133
    .local v10, "leftLimit":I
    :goto_fd
    invoke-virtual {v0, v10}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v11

    ushr-long v11, v11, v16

    move-wide/from16 v23, v11

    .local v23, "p":J
    cmp-long v11, v11, v17

    if-gtz v11, :cond_185

    cmp-long v11, v23, v21

    if-nez v11, :cond_111

    move/from16 v26, v6

    goto/16 :goto_187

    .line 137
    :cond_111
    move v11, v9

    .line 138
    .local v11, "rightLimit":I
    :goto_112
    invoke-virtual {v1, v11}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v12

    ushr-long v12, v12, v16

    move-wide/from16 v23, v12

    cmp-long v12, v12, v17

    if-gtz v12, :cond_17b

    cmp-long v12, v23, v21

    if-nez v12, :cond_125

    move/from16 v26, v6

    goto :goto_17d

    .line 144
    :cond_125
    move v12, v10

    .line 145
    .local v12, "leftIndex":I
    move v13, v11

    .line 147
    .restart local v13    # "rightIndex":I
    :goto_127
    const/16 v25, 0x0

    move/from16 v15, v25

    .line 148
    .local v15, "leftSecondary":I
    :goto_12b
    if-nez v15, :cond_13e

    if-le v12, v6, :cond_13e

    .line 149
    add-int/lit8 v12, v12, -0x1

    move/from16 v26, v6

    .end local v6    # "leftStart":I
    .local v26, "leftStart":I
    invoke-virtual {v0, v12}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v5

    long-to-int v5, v5

    ushr-int/lit8 v15, v5, 0x10

    move/from16 v6, v26

    const/4 v5, 0x1

    goto :goto_12b

    .line 148
    .end local v26    # "leftStart":I
    .restart local v6    # "leftStart":I
    :cond_13e
    move/from16 v26, v6

    .line 152
    .end local v6    # "leftStart":I
    .restart local v26    # "leftStart":I
    const/4 v5, 0x0

    .line 153
    .local v5, "rightSecondary":I
    :goto_141
    if-nez v5, :cond_155

    if-le v13, v9, :cond_155

    .line 154
    add-int/lit8 v13, v13, -0x1

    move/from16 v27, v15

    .end local v15    # "leftSecondary":I
    .local v27, "leftSecondary":I
    invoke-virtual {v1, v13}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v14

    long-to-int v14, v14

    ushr-int/lit8 v5, v14, 0x10

    move/from16 v15, v27

    const/16 v14, 0x100

    goto :goto_141

    .line 153
    .end local v27    # "leftSecondary":I
    .restart local v15    # "leftSecondary":I
    :cond_155
    move/from16 v27, v15

    .line 157
    .end local v15    # "leftSecondary":I
    .restart local v27    # "leftSecondary":I
    move/from16 v15, v27

    .end local v27    # "leftSecondary":I
    .restart local v15    # "leftSecondary":I
    if-eq v15, v5, :cond_163

    .line 158
    if-ge v15, v5, :cond_160

    const/16 v25, -0x1

    goto :goto_162

    :cond_160
    const/16 v25, 0x1

    :goto_162
    return v25

    .line 160
    :cond_163
    if-nez v15, :cond_175

    .line 161
    nop

    .line 168
    .end local v5    # "rightSecondary":I
    .end local v15    # "leftSecondary":I
    nop

    .line 169
    cmp-long v5, v23, v19

    if-nez v5, :cond_16c

    .line 170
    goto :goto_192

    .line 173
    :cond_16c
    add-int/lit8 v5, v10, 0x1

    .line 174
    .end local v26    # "leftStart":I
    .local v5, "leftStart":I
    add-int/lit8 v9, v11, 0x1

    .line 175
    .end local v10    # "leftLimit":I
    .end local v11    # "rightLimit":I
    .end local v12    # "leftIndex":I
    .end local v13    # "rightIndex":I
    .end local v23    # "p":J
    move v6, v5

    const/4 v5, 0x1

    const/16 v14, 0x100

    goto :goto_fc

    .line 163
    .end local v5    # "leftStart":I
    .restart local v10    # "leftLimit":I
    .restart local v11    # "rightLimit":I
    .restart local v12    # "leftIndex":I
    .restart local v13    # "rightIndex":I
    .restart local v23    # "p":J
    .restart local v26    # "leftStart":I
    :cond_175
    move/from16 v6, v26

    const/4 v5, 0x1

    const/16 v14, 0x100

    goto :goto_127

    .line 138
    .end local v12    # "leftIndex":I
    .end local v13    # "rightIndex":I
    .end local v26    # "leftStart":I
    .restart local v6    # "leftStart":I
    :cond_17b
    move/from16 v26, v6

    .line 140
    .end local v6    # "leftStart":I
    .restart local v26    # "leftStart":I
    :goto_17d
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v26

    const/4 v5, 0x1

    const/16 v14, 0x100

    goto :goto_112

    .line 133
    .end local v11    # "rightLimit":I
    .end local v26    # "leftStart":I
    .restart local v6    # "leftStart":I
    :cond_185
    move/from16 v26, v6

    .line 135
    .end local v6    # "leftStart":I
    .restart local v26    # "leftStart":I
    :goto_187
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v26

    const/4 v5, 0x1

    const/16 v14, 0x100

    goto/16 :goto_fd

    .line 102
    .end local v9    # "rightStart":I
    .end local v10    # "leftLimit":I
    .end local v23    # "p":J
    .end local v26    # "leftStart":I
    :cond_190
    move/from16 v16, v11

    .line 179
    :goto_192
    and-int/lit16 v5, v3, 0x400

    const/high16 v11, -0x10000

    const v14, 0xc000

    if-eqz v5, :cond_215

    .line 180
    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v5

    .line 181
    .local v5, "strength":I
    const/4 v9, 0x0

    .line 182
    .local v9, "leftIndex":I
    const/4 v10, 0x0

    .line 185
    .local v10, "rightIndex":I
    :goto_1a1
    if-nez v5, :cond_1d2

    .line 193
    :goto_1a3
    add-int/lit8 v12, v9, 0x1

    move-wide/from16 v26, v7

    .end local v7    # "variableTop":J
    .end local v9    # "leftIndex":I
    .restart local v12    # "leftIndex":I
    .local v26, "variableTop":J
    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    .line 194
    .local v6, "ce":J
    long-to-int v9, v6

    .line 195
    .local v9, "leftCase":I
    ushr-long v17, v6, v16

    cmp-long v13, v17, v21

    if-eqz v13, :cond_1ce

    if-eqz v9, :cond_1ce

    .line 196
    move v13, v9

    .line 197
    .local v13, "leftLower32":I
    and-int v15, v9, v14

    .line 200
    .end local v9    # "leftCase":I
    .local v15, "leftCase":I
    :goto_1b7
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rightIndex":I
    .local v9, "rightIndex":I
    invoke-virtual {v1, v10}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    .line 201
    long-to-int v10, v6

    .line 202
    .local v10, "rightCase":I
    ushr-long v17, v6, v16

    cmp-long v17, v17, v21

    if-eqz v17, :cond_1cc

    if-eqz v10, :cond_1cc

    .line 203
    and-int v6, v10, v14

    .line 204
    .end local v10    # "rightCase":I
    .local v6, "rightCase":I
    move v8, v6

    move v10, v9

    move v9, v12

    goto :goto_1f1

    .line 200
    .local v6, "ce":J
    :cond_1cc
    move v10, v9

    goto :goto_1b7

    .line 193
    .end local v6    # "ce":J
    .end local v9    # "rightIndex":I
    .end local v13    # "leftLower32":I
    .end local v15    # "leftCase":I
    .local v10, "rightIndex":I
    :cond_1ce
    move v9, v12

    move-wide/from16 v7, v26

    goto :goto_1a3

    .line 185
    .end local v12    # "leftIndex":I
    .end local v26    # "variableTop":J
    .restart local v7    # "variableTop":J
    .local v9, "leftIndex":I
    :cond_1d2
    move-wide/from16 v26, v7

    .line 220
    .end local v7    # "variableTop":J
    .restart local v26    # "variableTop":J
    :goto_1d4
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "leftIndex":I
    .local v7, "leftIndex":I
    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v12

    long-to-int v9, v12

    .line 221
    .local v9, "leftCase":I
    and-int v6, v9, v11

    if-eqz v6, :cond_213

    .line 222
    move v13, v9

    .line 223
    .restart local v13    # "leftLower32":I
    and-int v15, v9, v14

    .line 226
    .end local v9    # "leftCase":I
    .restart local v15    # "leftCase":I
    :goto_1e2
    add-int/lit8 v9, v10, 0x1

    move v12, v9

    .end local v10    # "rightIndex":I
    .local v12, "rightIndex":I
    invoke-virtual {v1, v10}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v8

    long-to-int v8, v8

    .line 227
    .local v8, "rightCase":I
    and-int v9, v8, v11

    if-eqz v9, :cond_211

    .line 228
    and-int/2addr v8, v14

    move v9, v7

    move v10, v12

    .line 234
    .end local v7    # "leftIndex":I
    .end local v12    # "rightIndex":I
    .local v9, "leftIndex":I
    .restart local v10    # "rightIndex":I
    :goto_1f1
    if-eq v15, v8, :cond_207

    .line 235
    and-int/lit16 v6, v3, 0x100

    if-nez v6, :cond_1ff

    .line 236
    if-ge v15, v8, :cond_1fc

    const/16 v25, -0x1

    goto :goto_1fe

    :cond_1fc
    const/16 v25, 0x1

    :goto_1fe
    return v25

    .line 238
    :cond_1ff
    if-ge v15, v8, :cond_204

    const/16 v25, 0x1

    goto :goto_206

    :cond_204
    const/16 v25, -0x1

    :goto_206
    return v25

    .line 241
    :cond_207
    ushr-int/lit8 v7, v13, 0x10

    const/16 v6, 0x100

    if-ne v7, v6, :cond_20e

    .line 242
    goto :goto_217

    .line 244
    .end local v8    # "rightCase":I
    .end local v13    # "leftLower32":I
    .end local v15    # "leftCase":I
    :cond_20e
    move-wide/from16 v7, v26

    goto :goto_1a1

    .line 227
    .end local v9    # "leftIndex":I
    .end local v10    # "rightIndex":I
    .restart local v7    # "leftIndex":I
    .restart local v8    # "rightCase":I
    .restart local v12    # "rightIndex":I
    .restart local v13    # "leftLower32":I
    .restart local v15    # "leftCase":I
    :cond_211
    move v10, v12

    goto :goto_1e2

    .line 221
    .end local v8    # "rightCase":I
    .end local v12    # "rightIndex":I
    .end local v13    # "leftLower32":I
    .end local v15    # "leftCase":I
    .local v9, "leftCase":I
    .restart local v10    # "rightIndex":I
    :cond_213
    move v9, v7

    goto :goto_1d4

    .line 179
    .end local v5    # "strength":I
    .end local v9    # "leftCase":I
    .end local v10    # "rightIndex":I
    .end local v26    # "variableTop":J
    .local v7, "variableTop":J
    :cond_215
    move-wide/from16 v26, v7

    .line 246
    .end local v7    # "variableTop":J
    .restart local v26    # "variableTop":J
    :goto_217
    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gt v5, v8, :cond_220

    .line 247
    return v7

    .line 250
    :cond_220
    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->getTertiaryMask(I)I

    move-result v5

    .line 252
    .local v5, "tertiaryMask":I
    const/4 v9, 0x0

    .line 253
    .local v9, "leftIndex":I
    const/4 v10, 0x0

    .line 254
    .restart local v10    # "rightIndex":I
    const/4 v12, 0x0

    .line 258
    .local v12, "anyQuaternaries":I
    :goto_227
    add-int/lit8 v13, v9, 0x1

    move/from16 v17, v7

    .end local v9    # "leftIndex":I
    .local v13, "leftIndex":I
    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    long-to-int v7, v6

    .line 259
    .local v7, "leftLower32":I
    or-int/2addr v12, v7

    .line 260
    nop

    .line 261
    and-int v9, v7, v5

    .line 262
    .local v9, "leftTertiary":I
    if-eqz v9, :cond_302

    .line 266
    :goto_236
    add-int/lit8 v18, v10, 0x1

    move/from16 v23, v11

    move v6, v12

    .end local v10    # "rightIndex":I
    .end local v12    # "anyQuaternaries":I
    .local v6, "anyQuaternaries":I
    .local v18, "rightIndex":I
    invoke-virtual {v1, v10}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v11

    long-to-int v10, v11

    .line 267
    .local v10, "rightLower32":I
    or-int v12, v6, v10

    .line 268
    .end local v6    # "anyQuaternaries":I
    .restart local v12    # "anyQuaternaries":I
    nop

    .line 269
    and-int v11, v10, v5

    .line 270
    .local v11, "rightTertiary":I
    if-eqz v11, :cond_2f9

    .line 272
    if-eq v9, v11, :cond_26d

    .line 273
    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->sortsTertiaryUpperCaseFirst(I)Z

    move-result v6

    if-eqz v6, :cond_267

    .line 279
    const/16 v6, 0x100

    if-le v9, v6, :cond_25b

    .line 280
    and-int v15, v7, v23

    if-eqz v15, :cond_259

    .line 281
    xor-int/2addr v9, v14

    goto :goto_25b

    .line 283
    :cond_259
    add-int/lit16 v9, v9, 0x4000

    .line 286
    :cond_25b
    :goto_25b
    const/16 v6, 0x100

    if-le v11, v6, :cond_267

    .line 287
    and-int v6, v10, v23

    if-eqz v6, :cond_265

    .line 288
    xor-int/2addr v11, v14

    goto :goto_267

    .line 290
    :cond_265
    add-int/lit16 v11, v11, 0x4000

    .line 294
    :cond_267
    :goto_267
    if-ge v9, v11, :cond_26b

    const/4 v15, -0x1

    goto :goto_26c

    :cond_26b
    move v15, v8

    :goto_26c
    return v15

    .line 296
    :cond_26d
    const/16 v6, 0x100

    if-ne v9, v6, :cond_2ef

    .line 297
    nop

    .line 300
    .end local v7    # "leftLower32":I
    .end local v9    # "leftTertiary":I
    .end local v10    # "rightLower32":I
    .end local v11    # "rightTertiary":I
    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_27a

    .line 301
    return v17

    .line 304
    :cond_27a
    if-nez v4, :cond_281

    and-int/lit16 v6, v12, 0xc0

    if-nez v6, :cond_281

    .line 307
    return v17

    .line 310
    :cond_281
    const/4 v6, 0x0

    .line 311
    .end local v13    # "leftIndex":I
    .local v6, "leftIndex":I
    const/4 v7, 0x0

    .line 315
    .end local v18    # "rightIndex":I
    .local v7, "rightIndex":I
    :goto_283
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "leftIndex":I
    .local v9, "leftIndex":I
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v10

    .line 316
    .local v10, "ce":J
    const-wide/32 v13, 0xffff

    and-long v23, v10, v13

    .line 317
    .local v23, "leftQuaternary":J
    const-wide/16 v28, 0x100

    cmp-long v6, v23, v28

    const-wide v30, 0xffffff3fL

    if-gtz v6, :cond_29e

    .line 319
    ushr-long v23, v10, v16

    move-wide/from16 v10, v23

    goto :goto_2a2

    .line 323
    :cond_29e
    or-long v23, v23, v30

    move-wide/from16 v10, v23

    .line 325
    .end local v23    # "leftQuaternary":J
    .local v10, "leftQuaternary":J
    :goto_2a2
    cmp-long v6, v10, v21

    if-eqz v6, :cond_2eb

    .line 329
    :goto_2a6
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "rightIndex":I
    .local v6, "rightIndex":I
    invoke-virtual {v1, v7}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v23

    .line 330
    .local v23, "ce":J
    and-long v32, v23, v13

    .line 331
    .local v32, "rightQuaternary":J
    cmp-long v7, v32, v28

    if-gtz v7, :cond_2b8

    .line 333
    ushr-long v32, v23, v16

    move v15, v9

    move-wide/from16 v8, v32

    goto :goto_2bd

    .line 337
    :cond_2b8
    or-long v32, v32, v30

    move v15, v9

    move-wide/from16 v8, v32

    .line 339
    .end local v9    # "leftIndex":I
    .end local v23    # "ce":J
    .end local v32    # "rightQuaternary":J
    .local v8, "rightQuaternary":J
    .local v15, "leftIndex":I
    :goto_2bd
    cmp-long v7, v8, v21

    if-eqz v7, :cond_2e7

    .line 341
    cmp-long v7, v10, v8

    if-eqz v7, :cond_2dd

    .line 343
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v7

    if-eqz v7, :cond_2d3

    .line 344
    invoke-virtual {v2, v10, v11}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v10

    .line 345
    invoke-virtual {v2, v8, v9}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v8

    .line 347
    :cond_2d3
    cmp-long v7, v10, v8

    if-gez v7, :cond_2da

    const/16 v25, -0x1

    goto :goto_2dc

    :cond_2da
    const/16 v25, 0x1

    :goto_2dc
    return v25

    .line 349
    :cond_2dd
    cmp-long v7, v10, v19

    if-nez v7, :cond_2e3

    .line 350
    nop

    .line 353
    .end local v8    # "rightQuaternary":J
    .end local v10    # "leftQuaternary":J
    return v17

    .line 352
    :cond_2e3
    move v7, v6

    move v6, v15

    const/4 v8, 0x1

    goto :goto_283

    .line 339
    .restart local v8    # "rightQuaternary":J
    .restart local v10    # "leftQuaternary":J
    :cond_2e7
    move v7, v6

    move v9, v15

    const/4 v8, 0x1

    goto :goto_2a6

    .line 325
    .end local v6    # "rightIndex":I
    .end local v8    # "rightQuaternary":J
    .end local v15    # "leftIndex":I
    .restart local v7    # "rightIndex":I
    .restart local v9    # "leftIndex":I
    :cond_2eb
    move v15, v9

    .end local v9    # "leftIndex":I
    .restart local v15    # "leftIndex":I
    move v6, v15

    const/4 v8, 0x1

    goto :goto_283

    .line 299
    .end local v7    # "rightIndex":I
    .end local v10    # "leftQuaternary":J
    .end local v15    # "leftIndex":I
    .restart local v13    # "leftIndex":I
    .restart local v18    # "rightIndex":I
    :cond_2ef
    move v9, v13

    move/from16 v7, v17

    move/from16 v10, v18

    move/from16 v11, v23

    const/4 v8, 0x1

    goto/16 :goto_227

    .line 270
    .local v7, "leftLower32":I
    .local v9, "leftTertiary":I
    .local v10, "rightLower32":I
    .restart local v11    # "rightTertiary":I
    :cond_2f9
    const/16 v6, 0x100

    move/from16 v10, v18

    move/from16 v11, v23

    const/4 v8, 0x1

    goto/16 :goto_236

    .line 262
    .end local v11    # "rightTertiary":I
    .end local v18    # "rightIndex":I
    .local v10, "rightIndex":I
    :cond_302
    move/from16 v23, v11

    const/16 v6, 0x100

    move v9, v13

    move/from16 v7, v17

    const/4 v8, 0x1

    goto/16 :goto_227

    .line 94
    .end local v5    # "tertiaryMask":I
    .end local v10    # "rightIndex":I
    .end local v13    # "leftIndex":I
    .end local v26    # "variableTop":J
    .local v7, "variableTop":J
    .local v9, "rightPrimary":J
    .local v12, "leftPrimary":J
    :cond_30c
    move-wide/from16 v26, v7

    .line 97
    .end local v7    # "variableTop":J
    .end local v9    # "rightPrimary":J
    .end local v12    # "leftPrimary":J
    .restart local v26    # "variableTop":J
    move-wide/from16 v5, v19

    goto/16 :goto_15

    .line 84
    .end local v26    # "variableTop":J
    .restart local v7    # "variableTop":J
    .restart local v9    # "rightPrimary":J
    .restart local v12    # "leftPrimary":J
    :cond_312
    move-wide/from16 v21, v5

    move-wide/from16 v26, v7

    move/from16 v16, v11

    .end local v7    # "variableTop":J
    .restart local v26    # "variableTop":J
    move/from16 v14, v16

    move-wide/from16 v15, v23

    goto/16 :goto_5a

    .line 60
    .end local v9    # "rightPrimary":J
    .end local v26    # "variableTop":J
    .restart local v7    # "variableTop":J
    :cond_31e
    move-wide/from16 v26, v7

    .end local v7    # "variableTop":J
    .restart local v26    # "variableTop":J
    move-wide/from16 v5, v19

    goto/16 :goto_15
.end method
