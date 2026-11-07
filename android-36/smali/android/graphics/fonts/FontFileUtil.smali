.class public Landroid/graphics/fonts/FontFileUtil;
.super Ljava/lang/Object;
.source "FontFileUtil.java"


# static fields
.field private static final blacklist ANALYZE_ERROR:I = -0x1

.field private static final blacklist FVAR_TABLE_TAG:I = 0x66766172

.field private static final blacklist OS2_TABLE_TAG:I = 0x4f532f32

.field private static final blacklist SFNT_VERSION_1:I = 0x10000

.field private static final blacklist SFNT_VERSION_OTTO:I = 0x4f54544f

.field private static final blacklist TTC_TAG:I = 0x74746366


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist analyzeStyle(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;)I
    .registers 20
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "ttcIndex"    # I
    .param p2, "varSettings"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 78
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, -0x1

    .line 79
    .local v0, "weight":I
    const/4 v4, -0x1

    .line 80
    .local v4, "italic":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_46

    .line 81
    array-length v7, v3

    move v8, v5

    :goto_e
    if-ge v8, v7, :cond_43

    aget-object v9, v3, v8

    .line 82
    .local v9, "axis":Landroid/graphics/fonts/FontVariationAxis;
    const-string/jumbo v10, "wght"

    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 83
    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v10

    float-to-int v0, v10

    goto :goto_40

    .line 84
    :cond_25
    const-string/jumbo v10, "ital"

    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 85
    invoke-virtual {v9}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3e

    move v10, v6

    goto :goto_3f

    :cond_3e
    move v10, v5

    :goto_3f
    move v4, v10

    .line 81
    .end local v9    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_40
    :goto_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_43
    move v7, v4

    move v4, v0

    goto :goto_48

    .line 80
    :cond_46
    move v7, v4

    move v4, v0

    .line 90
    .end local v0    # "weight":I
    .local v4, "weight":I
    .local v7, "italic":I
    :goto_48
    const/4 v0, -0x1

    if-eq v4, v0, :cond_55

    if-eq v7, v0, :cond_55

    .line 94
    if-ne v7, v6, :cond_50

    move v5, v6

    :cond_50
    invoke-static {v4, v5}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result v0

    return v0

    .line 97
    :cond_55
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    .line 98
    .local v8, "originalOrder":Ljava/nio/ByteOrder;
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 100
    const/4 v9, 0x0

    .line 101
    .local v9, "fontFileOffset":I
    :try_start_5f
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    .line 102
    .local v10, "magicNumber":I
    const v11, 0x74746366

    if-ne v10, v11, :cond_7e

    .line 104
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_f3

    if-lt v2, v11, :cond_75

    .line 105
    nop

    .line 138
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 105
    return v0

    .line 107
    :cond_75
    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0xc

    :try_start_79
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    move v9, v11

    .line 110
    :cond_7e
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_f3

    .line 112
    .local v11, "sfntVersion":I
    const/high16 v12, 0x10000

    if-eq v11, v12, :cond_90

    const v12, 0x4f54544f    # 3.562295E9f

    if-eq v11, v12, :cond_90

    .line 113
    nop

    .line 138
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    return v0

    .line 116
    :cond_90
    add-int/lit8 v12, v9, 0x4

    :try_start_92
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    .line 117
    .local v12, "numTables":I
    const/4 v13, -0x1

    .line 118
    .local v13, "os2TableOffset":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_98
    if-ge v14, v12, :cond_b9

    .line 119
    add-int/lit8 v15, v9, 0xc

    mul-int/lit8 v16, v14, 0x10

    add-int v15, v15, v16

    .line 121
    .local v15, "tableOffset":I
    move/from16 v16, v6

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v5, 0x4f532f32

    if-ne v6, v5, :cond_b3

    .line 122
    add-int/lit8 v5, v15, 0x8

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    move v13, v5

    .line 123
    goto :goto_bb

    .line 118
    .end local v15    # "tableOffset":I
    :cond_b3
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v16

    const/4 v5, 0x0

    goto :goto_98

    :cond_b9
    move/from16 v16, v6

    .line 127
    .end local v14    # "i":I
    :goto_bb
    if-ne v13, v0, :cond_c8

    .line 129
    const/16 v0, 0x190

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result v0
    :try_end_c4
    .catchall {:try_start_92 .. :try_end_c4} :catchall_f3

    .line 138
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 129
    return v0

    .line 132
    :cond_c8
    const/4 v5, 0x0

    add-int/lit8 v6, v13, 0x4

    :try_start_cb
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    .line 133
    .local v6, "weightFromOS2":I
    add-int/lit8 v14, v13, 0x3e

    .line 134
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_dc

    move/from16 v14, v16

    goto :goto_dd

    :cond_dc
    move v14, v5

    .line 135
    .local v14, "italicFromOS2":Z
    :goto_dd
    if-ne v4, v0, :cond_e1

    move v15, v6

    goto :goto_e2

    :cond_e1
    move v15, v4

    .line 136
    :goto_e2
    if-ne v7, v0, :cond_e6

    move v5, v14

    goto :goto_eb

    :cond_e6
    move/from16 v0, v16

    if-ne v7, v0, :cond_eb

    move v5, v0

    .line 135
    :cond_eb
    :goto_eb
    invoke-static {v15, v5}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result v0
    :try_end_ef
    .catchall {:try_start_cb .. :try_end_ef} :catchall_f3

    .line 138
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 135
    return v0

    .line 138
    .end local v6    # "weightFromOS2":I
    .end local v9    # "fontFileOffset":I
    .end local v10    # "magicNumber":I
    .end local v11    # "sfntVersion":I
    .end local v12    # "numTables":I
    .end local v13    # "os2TableOffset":I
    .end local v14    # "italicFromOS2":Z
    :catchall_f3
    move-exception v0

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    throw v0
.end method

.method public static blacklist getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 171
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->nGetFontPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRevision(Ljava/nio/ByteBuffer;I)J
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 156
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->nGetFontRevision(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getSupportedAxes(Ljava/nio/ByteBuffer;I)Ljava/util/Set;
    .registers 15
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 221
    .local v0, "originalOrder":Ljava/nio/ByteOrder;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "fontFileOffset":I
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 225
    .local v2, "magicNumber":I
    const v3, 0x74746366

    if-ne v2, v3, :cond_2b

    .line 227
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    if-lt p1, v3, :cond_22

    .line 228
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_b2

    .line 271
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 228
    return-object v3

    .line 230
    :cond_22
    mul-int/lit8 v3, p1, 0x4

    add-int/lit8 v3, v3, 0xc

    :try_start_26
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    move v1, v3

    .line 233
    :cond_2b
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 235
    .local v3, "sfntVersion":I
    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_3e

    const v4, 0x4f54544f    # 3.562295E9f

    if-eq v3, v4, :cond_3e

    .line 236
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_b2

    .line 271
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 236
    return-object v4

    .line 239
    :cond_3e
    add-int/lit8 v4, v1, 0x4

    :try_start_40
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    .line 240
    .local v4, "numTables":I
    const/4 v5, -0x1

    .line 241
    .local v5, "fvarTableOffset":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_46
    if-ge v6, v4, :cond_61

    .line 242
    add-int/lit8 v7, v1, 0xc

    mul-int/lit8 v8, v6, 0x10

    add-int/2addr v7, v8

    .line 244
    .local v7, "tableOffset":I
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const v9, 0x66766172

    if-ne v8, v9, :cond_5e

    .line 245
    add-int/lit8 v8, v7, 0x8

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    move v5, v8

    .line 246
    goto :goto_61

    .line 241
    .end local v7    # "tableOffset":I
    :cond_5e
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 250
    .end local v6    # "i":I
    :cond_61
    :goto_61
    const/4 v6, -0x1

    if-ne v5, v6, :cond_6a

    .line 252
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_66
    .catchall {:try_start_40 .. :try_end_66} :catchall_b2

    .line 271
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 252
    return-object v6

    .line 255
    :cond_6a
    :try_start_6a
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ac

    add-int/lit8 v6, v5, 0x2

    .line 256
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    if-eqz v6, :cond_7a

    goto :goto_ac

    .line 260
    :cond_7a
    add-int/lit8 v6, v5, 0x4

    invoke-static {p0, v6}, Landroid/graphics/fonts/FontFileUtil;->getUInt16(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 261
    .local v6, "axesArrayOffset":I
    add-int/lit8 v7, v5, 0x8

    invoke-static {p0, v7}, Landroid/graphics/fonts/FontFileUtil;->getUInt16(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 262
    .local v7, "axisCount":I
    add-int/lit8 v8, v5, 0xa

    invoke-static {p0, v8}, Landroid/graphics/fonts/FontFileUtil;->getUInt16(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 264
    .local v8, "axisSize":I
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 265
    .local v9, "axes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_92
    if-ge v10, v7, :cond_a7

    .line 266
    add-int v11, v5, v6

    mul-int v12, v8, v10

    add-int/2addr v11, v12

    invoke-virtual {p0, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catchall {:try_start_6a .. :try_end_a4} :catchall_b2

    .line 265
    add-int/lit8 v10, v10, 0x1

    goto :goto_92

    .line 269
    .end local v10    # "i":I
    :cond_a7
    nop

    .line 271
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 269
    return-object v9

    .line 257
    .end local v6    # "axesArrayOffset":I
    .end local v7    # "axisCount":I
    .end local v8    # "axisSize":I
    .end local v9    # "axes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_ac
    :goto_ac
    :try_start_ac
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_b2

    .line 271
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 257
    return-object v6

    .line 271
    .end local v1    # "fontFileOffset":I
    .end local v2    # "magicNumber":I
    .end local v3    # "sfntVersion":I
    .end local v4    # "numTables":I
    .end local v5    # "fvarTableOffset":I
    :catchall_b2
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 272
    throw v1
.end method

.method private static blacklist getUInt16(Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 209
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static blacklist isCollectionFont(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, "copied":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 199
    .local v2, "magicNumber":I
    const v3, 0x74746366

    if-ne v2, v3, :cond_15

    .line 200
    const/4 v1, 0x1

    return v1

    .line 201
    :cond_15
    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_21

    const v3, 0x4f54544f    # 3.562295E9f

    if-ne v2, v3, :cond_1f

    goto :goto_21

    .line 204
    :cond_1f
    const/4 v1, -0x1

    return v1

    .line 202
    :cond_21
    :goto_21
    return v1
.end method

.method public static blacklist isPostScriptType1Font(Ljava/nio/ByteBuffer;I)I
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 188
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->nIsPostScriptType1Font(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public static blacklist isSuccess(I)Z
    .registers 2
    .param p0, "packed"    # I

    .line 58
    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private static native blacklist nGetFontPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetFontRevision(Ljava/nio/ByteBuffer;I)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nIsPostScriptType1Font(Ljava/nio/ByteBuffer;I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static blacklist pack(IZ)I
    .registers 3
    .param p0, "weight"    # I
    .param p1, "italic"    # Z

    .line 62
    if-eqz p1, :cond_5

    const/high16 v0, 0x10000

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    or-int/2addr v0, p0

    return v0
.end method

.method public static blacklist unpackItalic(I)Z
    .registers 2
    .param p0, "packed"    # I

    .line 51
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist unpackWeight(I)I
    .registers 2
    .param p0, "packed"    # I

    .line 44
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
