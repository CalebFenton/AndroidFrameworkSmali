.class public final Landroid/icu/impl/coll/CollationKeys;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;,
        Landroid/icu/impl/coll/CollationKeys$LevelCallback;,
        Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CASE_LOWER_FIRST_COMMON_HIGH:I = 0xd

.field private static final CASE_LOWER_FIRST_COMMON_LOW:I = 0x1

.field private static final CASE_LOWER_FIRST_COMMON_MAX_COUNT:I = 0x7

.field private static final CASE_LOWER_FIRST_COMMON_MIDDLE:I = 0x7

.field private static final CASE_UPPER_FIRST_COMMON_HIGH:I = 0xf

.field private static final CASE_UPPER_FIRST_COMMON_LOW:I = 0x3

.field private static final CASE_UPPER_FIRST_COMMON_MAX_COUNT:I = 0xd

.field private static final QUAT_COMMON_HIGH:I = 0xfc

.field private static final QUAT_COMMON_LOW:I = 0x1c

.field private static final QUAT_COMMON_MAX_COUNT:I = 0x71

.field private static final QUAT_COMMON_MIDDLE:I = 0x8c

.field private static final QUAT_SHIFTED_LIMIT_BYTE:I = 0x1b

.field static final SEC_COMMON_HIGH:I = 0x45

.field private static final SEC_COMMON_LOW:I = 0x5

.field private static final SEC_COMMON_MAX_COUNT:I = 0x21

.field private static final SEC_COMMON_MIDDLE:I = 0x25

.field public static final SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

.field private static final TER_LOWER_FIRST_COMMON_HIGH:I = 0x45

.field private static final TER_LOWER_FIRST_COMMON_LOW:I = 0x5

.field private static final TER_LOWER_FIRST_COMMON_MAX_COUNT:I = 0x21

.field private static final TER_LOWER_FIRST_COMMON_MIDDLE:I = 0x25

.field private static final TER_ONLY_COMMON_HIGH:I = 0xc5

.field private static final TER_ONLY_COMMON_LOW:I = 0x5

.field private static final TER_ONLY_COMMON_MAX_COUNT:I = 0x61

.field private static final TER_ONLY_COMMON_MIDDLE:I = 0x65

.field private static final TER_UPPER_FIRST_COMMON_HIGH:I = 0xc5

.field private static final TER_UPPER_FIRST_COMMON_LOW:I = 0x85

.field private static final TER_UPPER_FIRST_COMMON_MAX_COUNT:I = 0x21

.field private static final TER_UPPER_FIRST_COMMON_MIDDLE:I = 0xa5

.field private static final levelMasks:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationKeys;

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
    sput-boolean v0, Landroid/icu/impl/coll/CollationKeys;->-assertionsDisabled:Z

    #@b
    .line 141
    new-instance v0, Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    #@d
    invoke-direct {v0}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;-><init>()V

    #@10
    sput-object v0, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    #@12
    .line 312
    const/16 v0, 0x10

    #@14
    new-array v0, v0, [I

    #@16
    fill-array-data v0, :array_0

    #@19
    sput-object v0, Landroid/icu/impl/coll/CollationKeys;->levelMasks:[I

    #@1b
    .line 16
    return-void

    #@1c
    :cond_0
    const/4 v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 312
    :array_0
    .array-data 4
        0x2
        0x6
        0x16
        0x36
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x36
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .locals 1
    .param p0, "levels"    # I
    .param p1, "level"    # I

    #@0
    .prologue
    .line 256
    and-int v0, p0, p1

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    #@6
    invoke-direct {v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;-><init>()V

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V
    .locals 48
    .param p0, "iter"    # Landroid/icu/impl/coll/CollationIterator;
    .param p1, "compressibleBytes"    # [Z
    .param p2, "settings"    # Landroid/icu/impl/coll/CollationSettings;
    .param p3, "sink"    # Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;
    .param p4, "minLevel"    # I
    .param p5, "callback"    # Landroid/icu/impl/coll/CollationKeys$LevelCallback;
    .param p6, "preflight"    # Z

    #@0
    .prologue
    .line 332
    move-object/from16 v0, p2

    #@2
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@4
    move/from16 v22, v0

    #@6
    .line 334
    .local v22, "options":I
    sget-object v44, Landroid/icu/impl/coll/CollationKeys;->levelMasks:[I

    #@8
    invoke-static/range {v22 .. v22}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@b
    move-result v45

    #@c
    aget v20, v44, v45

    #@e
    .line 335
    .local v20, "levels":I
    move/from16 v0, v22

    #@10
    and-int/lit16 v0, v0, 0x400

    #@12
    move/from16 v44, v0

    #@14
    if-eqz v44, :cond_0

    #@16
    .line 336
    or-int/lit8 v20, v20, 0x8

    #@18
    .line 339
    :cond_0
    const/16 v44, 0x1

    #@1a
    shl-int v44, v44, p4

    #@1c
    add-int/lit8 v44, v44, -0x1

    #@1e
    move/from16 v0, v44

    #@20
    not-int v0, v0

    #@21
    move/from16 v44, v0

    #@23
    and-int v20, v20, v44

    #@25
    .line 340
    if-nez v20, :cond_1

    #@27
    .line 341
    return-void

    #@28
    .line 345
    :cond_1
    and-int/lit8 v44, v22, 0xc

    #@2a
    if-nez v44, :cond_3

    #@2c
    .line 346
    const-wide/16 v42, 0x0

    #@2e
    .line 352
    .local v42, "variableTop":J
    :goto_0
    invoke-static/range {v22 .. v22}, Landroid/icu/impl/coll/CollationSettings;->getTertiaryMask(I)I

    #@31
    move-result v41

    #@32
    .line 354
    .local v41, "tertiaryMask":I
    const/16 v44, 0x3

    #@34
    move/from16 v0, v44

    #@36
    new-array v0, v0, [B

    #@38
    move-object/from16 v27, v0

    #@3a
    .line 355
    .local v27, "p234":[B
    const/16 v44, 0x8

    #@3c
    move/from16 v0, v20

    #@3e
    move/from16 v1, v44

    #@40
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    #@43
    move-result-object v8

    #@44
    .line 356
    .local v8, "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    const/16 v44, 0x4

    #@46
    move/from16 v0, v20

    #@48
    move/from16 v1, v44

    #@4a
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    #@4d
    move-result-object v37

    #@4e
    .line 357
    .local v37, "secondaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    const/16 v44, 0x10

    #@50
    move/from16 v0, v20

    #@52
    move/from16 v1, v44

    #@54
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    #@57
    move-result-object v40

    #@58
    .line 358
    .local v40, "tertiaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    const/16 v44, 0x20

    #@5a
    move/from16 v0, v20

    #@5c
    move/from16 v1, v44

    #@5e
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    #@61
    move-result-object v32

    #@62
    .line 360
    .local v32, "quaternaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    const-wide/16 v28, 0x0

    #@64
    .line 361
    .local v28, "prevReorderedPrimary":J
    const/4 v9, 0x0

    #@65
    .line 362
    .local v9, "commonCases":I
    const/4 v13, 0x0

    #@66
    .line 363
    .local v13, "commonSecondaries":I
    const/4 v14, 0x0

    #@67
    .line 364
    .local v14, "commonTertiaries":I
    const/4 v12, 0x0

    #@68
    .line 366
    .local v12, "commonQuaternaries":I
    const/16 v30, 0x0

    #@6a
    .line 367
    .local v30, "prevSecondary":I
    const/16 v35, 0x0

    #@6c
    .line 371
    .local v35, "secSegmentStart":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    #@6f
    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    #@72
    move-result-wide v10

    #@73
    .line 373
    .local v10, "ce":J
    const/16 v44, 0x20

    #@75
    ushr-long v24, v10, v44

    #@77
    .line 374
    .local v24, "p":J
    cmp-long v44, v24, v42

    #@79
    if-gez v44, :cond_9

    #@7b
    const-wide/32 v44, 0x2000000

    #@7e
    cmp-long v44, v24, v44

    #@80
    if-lez v44, :cond_9

    #@82
    .line 377
    if-eqz v12, :cond_5

    #@84
    .line 378
    add-int/lit8 v12, v12, -0x1

    #@86
    .line 379
    :goto_1
    const/16 v44, 0x71

    #@88
    move/from16 v0, v44

    #@8a
    if-lt v12, v0, :cond_4

    #@8c
    .line 380
    const/16 v44, 0x8c

    #@8e
    move-object/from16 v0, v32

    #@90
    move/from16 v1, v44

    #@92
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@95
    .line 381
    add-int/lit8 v12, v12, -0x71

    #@97
    goto :goto_1

    #@98
    .line 349
    .end local v8    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .end local v9    # "commonCases":I
    .end local v10    # "ce":J
    .end local v12    # "commonQuaternaries":I
    .end local v13    # "commonSecondaries":I
    .end local v14    # "commonTertiaries":I
    .end local v24    # "p":J
    .end local v27    # "p234":[B
    .end local v28    # "prevReorderedPrimary":J
    .end local v30    # "prevSecondary":I
    .end local v32    # "quaternaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .end local v35    # "secSegmentStart":I
    .end local v37    # "secondaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .end local v40    # "tertiaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .end local v41    # "tertiaryMask":I
    .end local v42    # "variableTop":J
    :cond_3
    move-object/from16 v0, p2

    #@9a
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@9c
    move-wide/from16 v44, v0

    #@9e
    const-wide/16 v46, 0x1

    #@a0
    add-long v42, v44, v46

    #@a2
    .restart local v42    # "variableTop":J
    goto :goto_0

    #@a3
    .line 384
    .restart local v8    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v9    # "commonCases":I
    .restart local v10    # "ce":J
    .restart local v12    # "commonQuaternaries":I
    .restart local v13    # "commonSecondaries":I
    .restart local v14    # "commonTertiaries":I
    .restart local v24    # "p":J
    .restart local v27    # "p234":[B
    .restart local v28    # "prevReorderedPrimary":J
    .restart local v30    # "prevSecondary":I
    .restart local v32    # "quaternaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v35    # "secSegmentStart":I
    .restart local v37    # "secondaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v40    # "tertiaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v41    # "tertiaryMask":I
    :cond_4
    add-int/lit8 v44, v12, 0x1c

    #@a5
    move-object/from16 v0, v32

    #@a7
    move/from16 v1, v44

    #@a9
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@ac
    .line 385
    const/4 v12, 0x0

    #@ad
    .line 388
    :cond_5
    and-int/lit8 v44, v20, 0x20

    #@af
    if-eqz v44, :cond_8

    #@b1
    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    #@b4
    move-result v44

    #@b5
    if-eqz v44, :cond_6

    #@b7
    .line 390
    move-object/from16 v0, p2

    #@b9
    move-wide/from16 v1, v24

    #@bb
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    #@be
    move-result-wide v24

    #@bf
    .line 392
    :cond_6
    move-wide/from16 v0, v24

    #@c1
    long-to-int v0, v0

    #@c2
    move/from16 v44, v0

    #@c4
    ushr-int/lit8 v44, v44, 0x18

    #@c6
    const/16 v45, 0x1b

    #@c8
    move/from16 v0, v44

    #@ca
    move/from16 v1, v45

    #@cc
    if-lt v0, v1, :cond_7

    #@ce
    .line 395
    const/16 v44, 0x1b

    #@d0
    move-object/from16 v0, v32

    #@d2
    move/from16 v1, v44

    #@d4
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@d7
    .line 397
    :cond_7
    move-object/from16 v0, v32

    #@d9
    move-wide/from16 v1, v24

    #@db
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight32(J)V

    #@de
    .line 400
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    #@e1
    move-result-wide v10

    #@e2
    .line 401
    const/16 v44, 0x20

    #@e4
    ushr-long v24, v10, v44

    #@e6
    .line 402
    const-wide/16 v44, 0x0

    #@e8
    cmp-long v44, v24, v44

    #@ea
    if-eqz v44, :cond_8

    #@ec
    .line 403
    cmp-long v44, v24, v42

    #@ee
    if-gez v44, :cond_9

    #@f0
    const-wide/32 v44, 0x2000000

    #@f3
    cmp-long v44, v24, v44

    #@f5
    if-gtz v44, :cond_5

    #@f7
    .line 409
    :cond_9
    const-wide/16 v44, 0x1

    #@f9
    cmp-long v44, v24, v44

    #@fb
    if-lez v44, :cond_13

    #@fd
    and-int/lit8 v44, v20, 0x2

    #@ff
    if-eqz v44, :cond_13

    #@101
    .line 411
    move-wide/from16 v0, v24

    #@103
    long-to-int v0, v0

    #@104
    move/from16 v44, v0

    #@106
    ushr-int/lit8 v44, v44, 0x18

    #@108
    aget-boolean v16, p1, v44

    #@10a
    .line 412
    .local v16, "isCompressible":Z
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    #@10d
    move-result v44

    #@10e
    if-eqz v44, :cond_a

    #@110
    .line 413
    move-object/from16 v0, p2

    #@112
    move-wide/from16 v1, v24

    #@114
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    #@117
    move-result-wide v24

    #@118
    .line 415
    :cond_a
    move-wide/from16 v0, v24

    #@11a
    long-to-int v0, v0

    #@11b
    move/from16 v44, v0

    #@11d
    ushr-int/lit8 v23, v44, 0x18

    #@11f
    .line 416
    .local v23, "p1":I
    if-eqz v16, :cond_b

    #@121
    move-wide/from16 v0, v28

    #@123
    long-to-int v0, v0

    #@124
    move/from16 v44, v0

    #@126
    ushr-int/lit8 v44, v44, 0x18

    #@128
    move/from16 v0, v23

    #@12a
    move/from16 v1, v44

    #@12c
    if-eq v0, v1, :cond_d

    #@12e
    .line 417
    :cond_b
    const-wide/16 v44, 0x0

    #@130
    cmp-long v44, v28, v44

    #@132
    if-eqz v44, :cond_c

    #@134
    .line 418
    cmp-long v44, v24, v28

    #@136
    if-gez v44, :cond_f

    #@138
    .line 421
    const/16 v44, 0x2

    #@13a
    move/from16 v0, v23

    #@13c
    move/from16 v1, v44

    #@13e
    if-le v0, v1, :cond_c

    #@140
    .line 422
    const/16 v44, 0x3

    #@142
    move-object/from16 v0, p3

    #@144
    move/from16 v1, v44

    #@146
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    #@149
    .line 428
    :cond_c
    :goto_2
    move-object/from16 v0, p3

    #@14b
    move/from16 v1, v23

    #@14d
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    #@150
    .line 429
    if-eqz v16, :cond_10

    #@152
    .line 430
    move-wide/from16 v28, v24

    #@154
    .line 435
    :cond_d
    :goto_3
    const/16 v44, 0x10

    #@156
    ushr-long v44, v24, v44

    #@158
    move-wide/from16 v0, v44

    #@15a
    long-to-int v0, v0

    #@15b
    move/from16 v44, v0

    #@15d
    move/from16 v0, v44

    #@15f
    int-to-byte v0, v0

    #@160
    move/from16 v26, v0

    #@162
    .line 436
    .local v26, "p2":B
    if-eqz v26, :cond_e

    #@164
    .line 437
    const/16 v44, 0x0

    #@166
    aput-byte v26, v27, v44

    #@168
    .line 438
    const/16 v44, 0x8

    #@16a
    ushr-long v44, v24, v44

    #@16c
    move-wide/from16 v0, v44

    #@16e
    long-to-int v0, v0

    #@16f
    move/from16 v44, v0

    #@171
    move/from16 v0, v44

    #@173
    int-to-byte v0, v0

    #@174
    move/from16 v44, v0

    #@176
    const/16 v45, 0x1

    #@178
    aput-byte v44, v27, v45

    #@17a
    .line 439
    move-wide/from16 v0, v24

    #@17c
    long-to-int v0, v0

    #@17d
    move/from16 v44, v0

    #@17f
    move/from16 v0, v44

    #@181
    int-to-byte v0, v0

    #@182
    move/from16 v44, v0

    #@184
    const/16 v45, 0x2

    #@186
    aput-byte v44, v27, v45

    #@188
    .line 440
    const/16 v44, 0x1

    #@18a
    aget-byte v44, v27, v44

    #@18c
    if-nez v44, :cond_11

    #@18e
    const/16 v44, 0x1

    #@190
    :goto_4
    move-object/from16 v0, p3

    #@192
    move-object/from16 v1, v27

    #@194
    move/from16 v2, v44

    #@196
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append([BI)V

    #@199
    .line 445
    :cond_e
    if-nez p6, :cond_13

    #@19b
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Overflowed()Z

    #@19e
    move-result v44

    #@19f
    if-eqz v44, :cond_13

    #@1a1
    .line 450
    return-void

    #@1a2
    .line 425
    .end local v26    # "p2":B
    :cond_f
    const/16 v44, 0xff

    #@1a4
    move-object/from16 v0, p3

    #@1a6
    move/from16 v1, v44

    #@1a8
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    #@1ab
    goto :goto_2

    #@1ac
    .line 432
    :cond_10
    const-wide/16 v28, 0x0

    #@1ae
    goto :goto_3

    #@1af
    .line 440
    .restart local v26    # "p2":B
    :cond_11
    const/16 v44, 0x2

    #@1b1
    aget-byte v44, v27, v44

    #@1b3
    if-nez v44, :cond_12

    #@1b5
    const/16 v44, 0x2

    #@1b7
    goto :goto_4

    #@1b8
    :cond_12
    const/16 v44, 0x3

    #@1ba
    goto :goto_4

    #@1bb
    .line 454
    .end local v16    # "isCompressible":Z
    .end local v23    # "p1":I
    .end local v26    # "p2":B
    :cond_13
    long-to-int v0, v10

    #@1bc
    move/from16 v21, v0

    #@1be
    .line 455
    .local v21, "lower32":I
    if-eqz v21, :cond_2

    #@1c0
    .line 459
    and-int/lit8 v44, v20, 0x4

    #@1c2
    if-eqz v44, :cond_14

    #@1c4
    .line 460
    ushr-int/lit8 v34, v21, 0x10

    #@1c6
    .line 461
    .local v34, "s":I
    if-nez v34, :cond_16

    #@1c8
    .line 527
    .end local v34    # "s":I
    :cond_14
    :goto_5
    and-int/lit8 v44, v20, 0x8

    #@1ca
    if-eqz v44, :cond_15

    #@1cc
    .line 528
    invoke-static/range {v22 .. v22}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@1cf
    move-result v44

    #@1d0
    if-nez v44, :cond_22

    #@1d2
    const-wide/16 v44, 0x0

    #@1d4
    cmp-long v44, v24, v44

    #@1d6
    if-nez v44, :cond_23

    #@1d8
    .line 589
    :cond_15
    :goto_6
    and-int/lit8 v44, v20, 0x10

    #@1da
    if-eqz v44, :cond_31

    #@1dc
    .line 590
    and-int v39, v21, v41

    #@1de
    .line 591
    .local v39, "t":I
    sget-boolean v44, Landroid/icu/impl/coll/CollationKeys;->-assertionsDisabled:Z

    #@1e0
    if-nez v44, :cond_30

    #@1e2
    const v44, 0xc000

    #@1e5
    and-int v44, v44, v21

    #@1e7
    const v45, 0xc000

    #@1ea
    move/from16 v0, v44

    #@1ec
    move/from16 v1, v45

    #@1ee
    if-eq v0, v1, :cond_2f

    #@1f0
    const/16 v44, 0x1

    #@1f2
    :goto_7
    if-nez v44, :cond_30

    #@1f4
    new-instance v44, Ljava/lang/AssertionError;

    #@1f6
    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    #@1f9
    throw v44

    #@1fa
    .line 463
    .end local v39    # "t":I
    .restart local v34    # "s":I
    :cond_16
    const/16 v44, 0x500

    #@1fc
    move/from16 v0, v34

    #@1fe
    move/from16 v1, v44

    #@200
    if-ne v0, v1, :cond_18

    #@202
    .line 464
    move/from16 v0, v22

    #@204
    and-int/lit16 v0, v0, 0x800

    #@206
    move/from16 v44, v0

    #@208
    if-eqz v44, :cond_17

    #@20a
    .line 465
    const-wide/32 v44, 0x2000000

    #@20d
    cmp-long v44, v24, v44

    #@20f
    if-eqz v44, :cond_18

    #@211
    .line 468
    :cond_17
    add-int/lit8 v13, v13, 0x1

    #@213
    .line 465
    goto :goto_5

    #@214
    .line 469
    :cond_18
    move/from16 v0, v22

    #@216
    and-int/lit16 v0, v0, 0x800

    #@218
    move/from16 v44, v0

    #@21a
    if-nez v44, :cond_1c

    #@21c
    .line 470
    if-eqz v13, :cond_1a

    #@21e
    .line 471
    add-int/lit8 v13, v13, -0x1

    #@220
    .line 472
    :goto_8
    const/16 v44, 0x21

    #@222
    move/from16 v0, v44

    #@224
    if-lt v13, v0, :cond_19

    #@226
    .line 473
    const/16 v44, 0x25

    #@228
    move-object/from16 v0, v37

    #@22a
    move/from16 v1, v44

    #@22c
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@22f
    .line 474
    add-int/lit8 v13, v13, -0x21

    #@231
    goto :goto_8

    #@232
    .line 477
    :cond_19
    const/16 v44, 0x500

    #@234
    move/from16 v0, v34

    #@236
    move/from16 v1, v44

    #@238
    if-ge v0, v1, :cond_1b

    #@23a
    .line 478
    add-int/lit8 v5, v13, 0x5

    #@23c
    .line 482
    .local v5, "b":I
    :goto_9
    move-object/from16 v0, v37

    #@23e
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@241
    .line 483
    const/4 v13, 0x0

    #@242
    .line 485
    .end local v5    # "b":I
    :cond_1a
    move-object/from16 v0, v37

    #@244
    move/from16 v1, v34

    #@246
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    #@249
    goto/16 :goto_5

    #@24b
    .line 480
    :cond_1b
    rsub-int/lit8 v5, v13, 0x45

    #@24d
    .restart local v5    # "b":I
    goto :goto_9

    #@24e
    .line 487
    .end local v5    # "b":I
    :cond_1c
    if-eqz v13, :cond_1e

    #@250
    .line 488
    add-int/lit8 v13, v13, -0x1

    #@252
    .line 490
    rem-int/lit8 v33, v13, 0x21

    #@254
    .line 492
    .local v33, "remainder":I
    const/16 v44, 0x500

    #@256
    move/from16 v0, v30

    #@258
    move/from16 v1, v44

    #@25a
    if-ge v0, v1, :cond_1d

    #@25c
    .line 493
    add-int/lit8 v5, v33, 0x5

    #@25e
    .line 497
    .restart local v5    # "b":I
    :goto_a
    move-object/from16 v0, v37

    #@260
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@263
    .line 498
    sub-int v13, v13, v33

    #@265
    .line 500
    :goto_b
    if-lez v13, :cond_1e

    #@267
    .line 501
    const/16 v44, 0x25

    #@269
    move-object/from16 v0, v37

    #@26b
    move/from16 v1, v44

    #@26d
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@270
    .line 502
    add-int/lit8 v13, v13, -0x21

    #@272
    goto :goto_b

    #@273
    .line 495
    .end local v5    # "b":I
    :cond_1d
    rsub-int/lit8 v5, v33, 0x45

    #@275
    .restart local v5    # "b":I
    goto :goto_a

    #@276
    .line 506
    .end local v5    # "b":I
    .end local v33    # "remainder":I
    :cond_1e
    const-wide/16 v44, 0x0

    #@278
    cmp-long v44, v44, v24

    #@27a
    if-gez v44, :cond_21

    #@27c
    const-wide/32 v44, 0x2000000

    #@27f
    cmp-long v44, v24, v44

    #@281
    if-gtz v44, :cond_21

    #@283
    .line 509
    invoke-virtual/range {v37 .. v37}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->data()[B

    #@286
    move-result-object v38

    #@287
    .line 510
    .local v38, "secs":[B
    invoke-virtual/range {v37 .. v37}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    #@28a
    move-result v44

    #@28b
    add-int/lit8 v17, v44, -0x1

    #@28d
    .local v17, "last":I
    move/from16 v18, v17

    #@28f
    .end local v17    # "last":I
    .local v18, "last":I
    move/from16 v36, v35

    #@291
    .line 511
    .end local v35    # "secSegmentStart":I
    .local v36, "secSegmentStart":I
    :goto_c
    move/from16 v0, v36

    #@293
    move/from16 v1, v18

    #@295
    if-ge v0, v1, :cond_1f

    #@297
    .line 512
    aget-byte v4, v38, v36

    #@299
    .line 513
    .local v4, "b":B
    add-int/lit8 v35, v36, 0x1

    #@29b
    .end local v36    # "secSegmentStart":I
    .restart local v35    # "secSegmentStart":I
    aget-byte v44, v38, v18

    #@29d
    aput-byte v44, v38, v36

    #@29f
    .line 514
    add-int/lit8 v17, v18, -0x1

    #@2a1
    .end local v18    # "last":I
    .restart local v17    # "last":I
    aput-byte v4, v38, v18

    #@2a3
    move/from16 v18, v17

    #@2a5
    .end local v17    # "last":I
    .restart local v18    # "last":I
    move/from16 v36, v35

    #@2a7
    .end local v35    # "secSegmentStart":I
    .restart local v36    # "secSegmentStart":I
    goto :goto_c

    #@2a8
    .line 516
    .end local v4    # "b":B
    :cond_1f
    const-wide/16 v44, 0x1

    #@2aa
    cmp-long v44, v24, v44

    #@2ac
    if-nez v44, :cond_20

    #@2ae
    .line 517
    const/16 v44, 0x1

    #@2b0
    .line 516
    :goto_d
    move-object/from16 v0, v37

    #@2b2
    move/from16 v1, v44

    #@2b4
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@2b7
    .line 518
    const/16 v30, 0x0

    #@2b9
    .line 519
    invoke-virtual/range {v37 .. v37}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    #@2bc
    move-result v35

    #@2bd
    .end local v36    # "secSegmentStart":I
    .restart local v35    # "secSegmentStart":I
    goto/16 :goto_5

    #@2bf
    .line 517
    .end local v35    # "secSegmentStart":I
    .restart local v36    # "secSegmentStart":I
    :cond_20
    const/16 v44, 0x2

    #@2c1
    goto :goto_d

    #@2c2
    .line 521
    .end local v18    # "last":I
    .end local v36    # "secSegmentStart":I
    .end local v38    # "secs":[B
    .restart local v35    # "secSegmentStart":I
    :cond_21
    move-object/from16 v0, v37

    #@2c4
    move/from16 v1, v34

    #@2c6
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendReverseWeight16(I)V

    #@2c9
    .line 522
    move/from16 v30, v34

    #@2cb
    goto/16 :goto_5

    #@2cd
    .line 529
    .end local v34    # "s":I
    :cond_22
    ushr-int/lit8 v44, v21, 0x10

    #@2cf
    if-eqz v44, :cond_15

    #@2d1
    .line 534
    :cond_23
    ushr-int/lit8 v44, v21, 0x8

    #@2d3
    move/from16 v0, v44

    #@2d5
    and-int/lit16 v7, v0, 0xff

    #@2d7
    .line 535
    .local v7, "c":I
    sget-boolean v44, Landroid/icu/impl/coll/CollationKeys;->-assertionsDisabled:Z

    #@2d9
    if-nez v44, :cond_25

    #@2db
    and-int/lit16 v0, v7, 0xc0

    #@2dd
    move/from16 v44, v0

    #@2df
    const/16 v45, 0xc0

    #@2e1
    move/from16 v0, v44

    #@2e3
    move/from16 v1, v45

    #@2e5
    if-eq v0, v1, :cond_24

    #@2e7
    const/16 v44, 0x1

    #@2e9
    :goto_e
    if-nez v44, :cond_25

    #@2eb
    new-instance v44, Ljava/lang/AssertionError;

    #@2ed
    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    #@2f0
    throw v44

    #@2f1
    :cond_24
    const/16 v44, 0x0

    #@2f3
    goto :goto_e

    #@2f4
    .line 536
    :cond_25
    and-int/lit16 v0, v7, 0xc0

    #@2f6
    move/from16 v44, v0

    #@2f8
    if-nez v44, :cond_26

    #@2fa
    const/16 v44, 0x1

    #@2fc
    move/from16 v0, v44

    #@2fe
    if-le v7, v0, :cond_26

    #@300
    .line 537
    add-int/lit8 v9, v9, 0x1

    #@302
    .line 536
    goto/16 :goto_6

    #@304
    .line 539
    :cond_26
    move/from16 v0, v22

    #@306
    and-int/lit16 v0, v0, 0x100

    #@308
    move/from16 v44, v0

    #@30a
    if-nez v44, :cond_2c

    #@30c
    .line 545
    if-eqz v9, :cond_27

    #@30e
    .line 546
    const/16 v44, 0x1

    #@310
    move/from16 v0, v44

    #@312
    if-gt v7, v0, :cond_29

    #@314
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->isEmpty()Z

    #@317
    move-result v44

    #@318
    if-eqz v44, :cond_29

    #@31a
    .line 561
    :cond_27
    :goto_f
    const/16 v44, 0x1

    #@31c
    move/from16 v0, v44

    #@31e
    if-le v7, v0, :cond_28

    #@320
    .line 562
    ushr-int/lit8 v44, v7, 0x6

    #@322
    add-int/lit8 v44, v44, 0xd

    #@324
    shl-int/lit8 v7, v44, 0x4

    #@326
    .line 584
    :cond_28
    :goto_10
    invoke-virtual {v8, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@329
    goto/16 :goto_6

    #@32b
    .line 547
    :cond_29
    add-int/lit8 v9, v9, -0x1

    #@32d
    .line 548
    :goto_11
    const/16 v44, 0x7

    #@32f
    move/from16 v0, v44

    #@331
    if-lt v9, v0, :cond_2a

    #@333
    .line 549
    const/16 v44, 0x70

    #@335
    move/from16 v0, v44

    #@337
    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@33a
    .line 550
    add-int/lit8 v9, v9, -0x7

    #@33c
    goto :goto_11

    #@33d
    .line 553
    :cond_2a
    const/16 v44, 0x1

    #@33f
    move/from16 v0, v44

    #@341
    if-gt v7, v0, :cond_2b

    #@343
    .line 554
    add-int/lit8 v5, v9, 0x1

    #@345
    .line 558
    .restart local v5    # "b":I
    :goto_12
    shl-int/lit8 v44, v5, 0x4

    #@347
    move/from16 v0, v44

    #@349
    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@34c
    .line 559
    const/4 v9, 0x0

    #@34d
    goto :goto_f

    #@34e
    .line 556
    .end local v5    # "b":I
    :cond_2b
    rsub-int/lit8 v5, v9, 0xd

    #@350
    .restart local v5    # "b":I
    goto :goto_12

    #@351
    .line 569
    .end local v5    # "b":I
    :cond_2c
    if-eqz v9, :cond_2e

    #@353
    .line 570
    add-int/lit8 v9, v9, -0x1

    #@355
    .line 571
    :goto_13
    const/16 v44, 0xd

    #@357
    move/from16 v0, v44

    #@359
    if-lt v9, v0, :cond_2d

    #@35b
    .line 572
    const/16 v44, 0x30

    #@35d
    move/from16 v0, v44

    #@35f
    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@362
    .line 573
    add-int/lit8 v9, v9, -0xd

    #@364
    goto :goto_13

    #@365
    .line 575
    :cond_2d
    add-int/lit8 v44, v9, 0x3

    #@367
    shl-int/lit8 v44, v44, 0x4

    #@369
    move/from16 v0, v44

    #@36b
    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@36e
    .line 576
    const/4 v9, 0x0

    #@36f
    .line 578
    :cond_2e
    const/16 v44, 0x1

    #@371
    move/from16 v0, v44

    #@373
    if-le v7, v0, :cond_28

    #@375
    .line 579
    ushr-int/lit8 v44, v7, 0x6

    #@377
    rsub-int/lit8 v44, v44, 0x3

    #@379
    shl-int/lit8 v7, v44, 0x4

    #@37b
    goto :goto_10

    #@37c
    .line 591
    .end local v7    # "c":I
    .restart local v39    # "t":I
    :cond_2f
    const/16 v44, 0x0

    #@37e
    goto/16 :goto_7

    #@380
    .line 592
    :cond_30
    const/16 v44, 0x500

    #@382
    move/from16 v0, v39

    #@384
    move/from16 v1, v44

    #@386
    if-ne v0, v1, :cond_33

    #@388
    .line 593
    add-int/lit8 v14, v14, 0x1

    #@38a
    .line 684
    .end local v39    # "t":I
    :cond_31
    :goto_14
    and-int/lit8 v44, v20, 0x20

    #@38c
    if-eqz v44, :cond_32

    #@38e
    .line 685
    const v44, 0xffff

    #@391
    and-int v31, v21, v44

    #@393
    .line 686
    .local v31, "q":I
    move/from16 v0, v31

    #@395
    and-int/lit16 v0, v0, 0xc0

    #@397
    move/from16 v44, v0

    #@399
    if-nez v44, :cond_46

    #@39b
    const/16 v44, 0x100

    #@39d
    move/from16 v0, v31

    #@39f
    move/from16 v1, v44

    #@3a1
    if-le v0, v1, :cond_46

    #@3a3
    .line 687
    add-int/lit8 v12, v12, 0x1

    #@3a5
    .line 726
    .end local v31    # "q":I
    :cond_32
    :goto_15
    ushr-int/lit8 v44, v21, 0x18

    #@3a7
    const/16 v45, 0x1

    #@3a9
    move/from16 v0, v44

    #@3ab
    move/from16 v1, v45

    #@3ad
    if-ne v0, v1, :cond_2

    #@3af
    .line 733
    and-int/lit8 v44, v20, 0x4

    #@3b1
    if-eqz v44, :cond_4d

    #@3b3
    .line 734
    const/16 v44, 0x2

    #@3b5
    move-object/from16 v0, p5

    #@3b7
    move/from16 v1, v44

    #@3b9
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    #@3bc
    move-result v44

    #@3bd
    if-nez v44, :cond_4c

    #@3bf
    .line 735
    return-void

    #@3c0
    .line 594
    .restart local v39    # "t":I
    :cond_33
    const v44, 0x8000

    #@3c3
    and-int v44, v44, v41

    #@3c5
    if-nez v44, :cond_38

    #@3c7
    .line 597
    if-eqz v14, :cond_35

    #@3c9
    .line 598
    add-int/lit8 v14, v14, -0x1

    #@3cb
    .line 599
    :goto_16
    const/16 v44, 0x61

    #@3cd
    move/from16 v0, v44

    #@3cf
    if-lt v14, v0, :cond_34

    #@3d1
    .line 600
    const/16 v44, 0x65

    #@3d3
    move-object/from16 v0, v40

    #@3d5
    move/from16 v1, v44

    #@3d7
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@3da
    .line 601
    add-int/lit8 v14, v14, -0x61

    #@3dc
    goto :goto_16

    #@3dd
    .line 604
    :cond_34
    const/16 v44, 0x500

    #@3df
    move/from16 v0, v39

    #@3e1
    move/from16 v1, v44

    #@3e3
    if-ge v0, v1, :cond_37

    #@3e5
    .line 605
    add-int/lit8 v5, v14, 0x5

    #@3e7
    .line 609
    .restart local v5    # "b":I
    :goto_17
    move-object/from16 v0, v40

    #@3e9
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@3ec
    .line 610
    const/4 v14, 0x0

    #@3ed
    .line 612
    .end local v5    # "b":I
    :cond_35
    const/16 v44, 0x500

    #@3ef
    move/from16 v0, v39

    #@3f1
    move/from16 v1, v44

    #@3f3
    if-le v0, v1, :cond_36

    #@3f5
    .line 613
    const v44, 0xc000

    #@3f8
    add-int v39, v39, v44

    #@3fa
    .line 615
    :cond_36
    move-object/from16 v0, v40

    #@3fc
    move/from16 v1, v39

    #@3fe
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    #@401
    goto :goto_14

    #@402
    .line 607
    :cond_37
    rsub-int v5, v14, 0xc5

    #@404
    .restart local v5    # "b":I
    goto :goto_17

    #@405
    .line 616
    .end local v5    # "b":I
    :cond_38
    move/from16 v0, v22

    #@407
    and-int/lit16 v0, v0, 0x100

    #@409
    move/from16 v44, v0

    #@40b
    if-nez v44, :cond_3d

    #@40d
    .line 619
    if-eqz v14, :cond_3a

    #@40f
    .line 620
    add-int/lit8 v14, v14, -0x1

    #@411
    .line 621
    :goto_18
    const/16 v44, 0x21

    #@413
    move/from16 v0, v44

    #@415
    if-lt v14, v0, :cond_39

    #@417
    .line 622
    const/16 v44, 0x25

    #@419
    move-object/from16 v0, v40

    #@41b
    move/from16 v1, v44

    #@41d
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@420
    .line 623
    add-int/lit8 v14, v14, -0x21

    #@422
    goto :goto_18

    #@423
    .line 626
    :cond_39
    const/16 v44, 0x500

    #@425
    move/from16 v0, v39

    #@427
    move/from16 v1, v44

    #@429
    if-ge v0, v1, :cond_3c

    #@42b
    .line 627
    add-int/lit8 v5, v14, 0x5

    #@42d
    .line 631
    .restart local v5    # "b":I
    :goto_19
    move-object/from16 v0, v40

    #@42f
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@432
    .line 632
    const/4 v14, 0x0

    #@433
    .line 634
    .end local v5    # "b":I
    :cond_3a
    const/16 v44, 0x500

    #@435
    move/from16 v0, v39

    #@437
    move/from16 v1, v44

    #@439
    if-le v0, v1, :cond_3b

    #@43b
    .line 635
    move/from16 v0, v39

    #@43d
    add-int/lit16 v0, v0, 0x4000

    #@43f
    move/from16 v39, v0

    #@441
    .line 637
    :cond_3b
    move-object/from16 v0, v40

    #@443
    move/from16 v1, v39

    #@445
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    #@448
    goto/16 :goto_14

    #@44a
    .line 629
    :cond_3c
    rsub-int/lit8 v5, v14, 0x45

    #@44c
    .restart local v5    # "b":I
    goto :goto_19

    #@44d
    .line 652
    .end local v5    # "b":I
    :cond_3d
    const/16 v44, 0x100

    #@44f
    move/from16 v0, v39

    #@451
    move/from16 v1, v44

    #@453
    if-gt v0, v1, :cond_3f

    #@455
    .line 665
    :cond_3e
    :goto_1a
    if-eqz v14, :cond_44

    #@457
    .line 666
    add-int/lit8 v14, v14, -0x1

    #@459
    .line 667
    :goto_1b
    const/16 v44, 0x21

    #@45b
    move/from16 v0, v44

    #@45d
    if-lt v14, v0, :cond_43

    #@45f
    .line 668
    const/16 v44, 0xa5

    #@461
    move-object/from16 v0, v40

    #@463
    move/from16 v1, v44

    #@465
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@468
    .line 669
    add-int/lit8 v14, v14, -0x21

    #@46a
    goto :goto_1b

    #@46b
    .line 654
    :cond_3f
    ushr-int/lit8 v44, v21, 0x10

    #@46d
    if-eqz v44, :cond_40

    #@46f
    .line 656
    const v44, 0xc000

    #@472
    xor-int v39, v39, v44

    #@474
    .line 657
    const v44, 0xc500

    #@477
    move/from16 v0, v39

    #@479
    move/from16 v1, v44

    #@47b
    if-ge v0, v1, :cond_3e

    #@47d
    .line 658
    move/from16 v0, v39

    #@47f
    add-int/lit16 v0, v0, -0x4000

    #@481
    move/from16 v39, v0

    #@483
    goto :goto_1a

    #@484
    .line 662
    :cond_40
    sget-boolean v44, Landroid/icu/impl/coll/CollationKeys;->-assertionsDisabled:Z

    #@486
    if-nez v44, :cond_42

    #@488
    const v44, 0x8600

    #@48b
    move/from16 v0, v44

    #@48d
    move/from16 v1, v39

    #@48f
    if-gt v0, v1, :cond_41

    #@491
    const v44, 0xbfff

    #@494
    move/from16 v0, v39

    #@496
    move/from16 v1, v44

    #@498
    if-gt v0, v1, :cond_41

    #@49a
    const/16 v44, 0x1

    #@49c
    :goto_1c
    if-nez v44, :cond_42

    #@49e
    new-instance v44, Ljava/lang/AssertionError;

    #@4a0
    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    #@4a3
    throw v44

    #@4a4
    :cond_41
    const/16 v44, 0x0

    #@4a6
    goto :goto_1c

    #@4a7
    .line 663
    :cond_42
    move/from16 v0, v39

    #@4a9
    add-int/lit16 v0, v0, 0x4000

    #@4ab
    move/from16 v39, v0

    #@4ad
    goto :goto_1a

    #@4ae
    .line 672
    :cond_43
    const v44, 0x8500

    #@4b1
    move/from16 v0, v39

    #@4b3
    move/from16 v1, v44

    #@4b5
    if-ge v0, v1, :cond_45

    #@4b7
    .line 673
    add-int/lit16 v5, v14, 0x85

    #@4b9
    .line 677
    .restart local v5    # "b":I
    :goto_1d
    move-object/from16 v0, v40

    #@4bb
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@4be
    .line 678
    const/4 v14, 0x0

    #@4bf
    .line 680
    .end local v5    # "b":I
    :cond_44
    move-object/from16 v0, v40

    #@4c1
    move/from16 v1, v39

    #@4c3
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    #@4c6
    goto/16 :goto_14

    #@4c8
    .line 675
    :cond_45
    rsub-int v5, v14, 0xc5

    #@4ca
    .restart local v5    # "b":I
    goto :goto_1d

    #@4cb
    .line 688
    .end local v5    # "b":I
    .end local v39    # "t":I
    .restart local v31    # "q":I
    :cond_46
    const/16 v44, 0x100

    #@4cd
    move/from16 v0, v31

    #@4cf
    move/from16 v1, v44

    #@4d1
    if-ne v0, v1, :cond_47

    #@4d3
    .line 689
    and-int/lit8 v44, v22, 0xc

    #@4d5
    if-nez v44, :cond_47

    #@4d7
    .line 690
    invoke-virtual/range {v32 .. v32}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->isEmpty()Z

    #@4da
    move-result v44

    #@4db
    .line 688
    if-eqz v44, :cond_47

    #@4dd
    .line 700
    const/16 v44, 0x1

    #@4df
    move-object/from16 v0, v32

    #@4e1
    move/from16 v1, v44

    #@4e3
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@4e6
    goto/16 :goto_15

    #@4e8
    .line 702
    :cond_47
    const/16 v44, 0x100

    #@4ea
    move/from16 v0, v31

    #@4ec
    move/from16 v1, v44

    #@4ee
    if-ne v0, v1, :cond_48

    #@4f0
    .line 703
    const/16 v31, 0x1

    #@4f2
    .line 707
    :goto_1e
    if-eqz v12, :cond_4a

    #@4f4
    .line 708
    add-int/lit8 v12, v12, -0x1

    #@4f6
    .line 709
    :goto_1f
    const/16 v44, 0x71

    #@4f8
    move/from16 v0, v44

    #@4fa
    if-lt v12, v0, :cond_49

    #@4fc
    .line 710
    const/16 v44, 0x8c

    #@4fe
    move-object/from16 v0, v32

    #@500
    move/from16 v1, v44

    #@502
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@505
    .line 711
    add-int/lit8 v12, v12, -0x71

    #@507
    goto :goto_1f

    #@508
    .line 705
    :cond_48
    ushr-int/lit8 v44, v31, 0x6

    #@50a
    and-int/lit8 v44, v44, 0x3

    #@50c
    move/from16 v0, v44

    #@50e
    add-int/lit16 v0, v0, 0xfc

    #@510
    move/from16 v31, v0

    #@512
    goto :goto_1e

    #@513
    .line 714
    :cond_49
    const/16 v44, 0x1c

    #@515
    move/from16 v0, v31

    #@517
    move/from16 v1, v44

    #@519
    if-ge v0, v1, :cond_4b

    #@51b
    .line 715
    add-int/lit8 v5, v12, 0x1c

    #@51d
    .line 719
    .restart local v5    # "b":I
    :goto_20
    move-object/from16 v0, v32

    #@51f
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@522
    .line 720
    const/4 v12, 0x0

    #@523
    .line 722
    .end local v5    # "b":I
    :cond_4a
    move-object/from16 v0, v32

    #@525
    move/from16 v1, v31

    #@527
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    #@52a
    goto/16 :goto_15

    #@52c
    .line 717
    :cond_4b
    rsub-int v5, v12, 0xfc

    #@52e
    .restart local v5    # "b":I
    goto :goto_20

    #@52f
    .line 738
    .end local v5    # "b":I
    .end local v31    # "q":I
    :cond_4c
    const/16 v44, 0x1

    #@531
    move-object/from16 v0, p3

    #@533
    move/from16 v1, v44

    #@535
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    #@538
    .line 739
    move-object/from16 v0, v37

    #@53a
    move-object/from16 v1, p3

    #@53c
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    #@53f
    .line 742
    :cond_4d
    and-int/lit8 v44, v20, 0x8

    #@541
    if-eqz v44, :cond_53

    #@543
    .line 743
    const/16 v44, 0x3

    #@545
    move-object/from16 v0, p5

    #@547
    move/from16 v1, v44

    #@549
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    #@54c
    move-result v44

    #@54d
    if-nez v44, :cond_4e

    #@54f
    .line 744
    return-void

    #@550
    .line 747
    :cond_4e
    const/16 v44, 0x1

    #@552
    move-object/from16 v0, p3

    #@554
    move/from16 v1, v44

    #@556
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    #@559
    .line 749
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    #@55c
    move-result v44

    #@55d
    add-int/lit8 v19, v44, -0x1

    #@55f
    .line 750
    .local v19, "length":I
    const/4 v4, 0x0

    #@560
    .line 751
    .local v4, "b":B
    const/4 v15, 0x0

    #@561
    .end local v4    # "b":B
    .local v15, "i":I
    :goto_21
    move/from16 v0, v19

    #@563
    if-ge v15, v0, :cond_52

    #@565
    .line 752
    invoke-virtual {v8, v15}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->getAt(I)B

    #@568
    move-result v6

    #@569
    .line 753
    .local v6, "c":B
    sget-boolean v44, Landroid/icu/impl/coll/CollationKeys;->-assertionsDisabled:Z

    #@56b
    if-nez v44, :cond_50

    #@56d
    and-int/lit8 v44, v6, 0xf

    #@56f
    if-nez v44, :cond_4f

    #@571
    if-eqz v6, :cond_4f

    #@573
    const/16 v44, 0x1

    #@575
    :goto_22
    if-nez v44, :cond_50

    #@577
    new-instance v44, Ljava/lang/AssertionError;

    #@579
    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    #@57c
    throw v44

    #@57d
    :cond_4f
    const/16 v44, 0x0

    #@57f
    goto :goto_22

    #@580
    .line 754
    :cond_50
    if-nez v4, :cond_51

    #@582
    .line 755
    move v4, v6

    #@583
    .line 751
    :goto_23
    add-int/lit8 v15, v15, 0x1

    #@585
    goto :goto_21

    #@586
    .line 757
    :cond_51
    shr-int/lit8 v44, v6, 0x4

    #@588
    and-int/lit8 v44, v44, 0xf

    #@58a
    or-int v44, v44, v4

    #@58c
    move-object/from16 v0, p3

    #@58e
    move/from16 v1, v44

    #@590
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    #@593
    .line 758
    const/4 v4, 0x0

    #@594
    .restart local v4    # "b":B
    goto :goto_23

    #@595
    .line 761
    .end local v4    # "b":B
    .end local v6    # "c":B
    :cond_52
    if-eqz v4, :cond_53

    #@597
    .line 762
    move-object/from16 v0, p3

    #@599
    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    #@59c
    .line 766
    .end local v15    # "i":I
    .end local v19    # "length":I
    :cond_53
    and-int/lit8 v44, v20, 0x10

    #@59e
    if-eqz v44, :cond_55

    #@5a0
    .line 767
    const/16 v44, 0x4

    #@5a2
    move-object/from16 v0, p5

    #@5a4
    move/from16 v1, v44

    #@5a6
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    #@5a9
    move-result v44

    #@5aa
    if-nez v44, :cond_54

    #@5ac
    .line 768
    return-void

    #@5ad
    .line 771
    :cond_54
    const/16 v44, 0x1

    #@5af
    move-object/from16 v0, p3

    #@5b1
    move/from16 v1, v44

    #@5b3
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    #@5b6
    .line 772
    move-object/from16 v0, v40

    #@5b8
    move-object/from16 v1, p3

    #@5ba
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    #@5bd
    .line 775
    :cond_55
    and-int/lit8 v44, v20, 0x20

    #@5bf
    if-eqz v44, :cond_57

    #@5c1
    .line 776
    const/16 v44, 0x5

    #@5c3
    move-object/from16 v0, p5

    #@5c5
    move/from16 v1, v44

    #@5c7
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    #@5ca
    move-result v44

    #@5cb
    if-nez v44, :cond_56

    #@5cd
    .line 777
    return-void

    #@5ce
    .line 780
    :cond_56
    const/16 v44, 0x1

    #@5d0
    move-object/from16 v0, p3

    #@5d2
    move/from16 v1, v44

    #@5d4
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    #@5d7
    .line 781
    move-object/from16 v0, v32

    #@5d9
    move-object/from16 v1, p3

    #@5db
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    #@5de
    .line 330
    :cond_57
    return-void
.end method
