.class public final Llibcore/util/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/ZoneInfo$CheckedArithmeticException;,
        Llibcore/util/ZoneInfo$OffsetInterval;,
        Llibcore/util/ZoneInfo$WallTime;
    }
.end annotation


# static fields
.field private static final LEAP:[I

.field private static final MILLISECONDS_PER_400_YEARS:J = 0xb7af85d9c00L

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field private static final NORMAL:[I

.field private static final UNIX_OFFSET:J = 0x388a6f046000L

.field static final serialVersionUID:J = -0x3fd1fff6d5149890L


# instance fields
.field private mDstSavings:I

.field private final mEarliestRawOffset:I

.field private final mIsDsts:[B

.field private final mOffsets:[I

.field private mRawOffset:I

.field private final mTransitions:[J

.field private final mTypes:[B

.field private final mUseDst:Z


# direct methods
.method static synthetic -get0(Llibcore/util/ZoneInfo;)[B
    .locals 1

    #@0
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@2
    return-object v0
.end method

.method static synthetic -get1(Llibcore/util/ZoneInfo;)[I
    .locals 1

    #@0
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@2
    return-object v0
.end method

.method static synthetic -get2(Llibcore/util/ZoneInfo;)I
    .locals 1

    #@0
    iget v0, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@2
    return v0
.end method

.method static synthetic -get3(Llibcore/util/ZoneInfo;)[J
    .locals 1

    #@0
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@2
    return-object v0
.end method

.method static synthetic -get4(Llibcore/util/ZoneInfo;)[B
    .locals 1

    #@0
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(JI)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Llibcore/util/ZoneInfo;->checkedAdd(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Llibcore/util/ZoneInfo;->checkedSubtract(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xc

    #@2
    .line 72
    new-array v0, v1, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Llibcore/util/ZoneInfo;->NORMAL:[I

    #@9
    .line 76
    new-array v0, v1, [I

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Llibcore/util/ZoneInfo;->LEAP:[I

    #@10
    .line 65
    return-void

    #@11
    .line 72
    nop

    #@12
    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    #@2e
    .line 76
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;[J[B[I[BJ)V
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transitions"    # [J
    .param p3, "types"    # [B
    .param p4, "gmtOffsets"    # [I
    .param p5, "isDsts"    # [B
    .param p6, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 247
    invoke-direct/range {p0 .. p0}, Ljava/util/TimeZone;-><init>()V

    #@3
    .line 249
    move-object/from16 v0, p4

    #@5
    array-length v14, v0

    #@6
    if-nez v14, :cond_0

    #@8
    .line 250
    new-instance v14, Ljava/lang/IllegalStateException;

    #@a
    new-instance v15, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v16, "ZoneInfo requires at least one offset to be provided for each timezone but could not find one for \'"

    #@12
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v15

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v15

    #@1c
    .line 251
    const-string/jumbo v16, "\'"

    #@1f
    .line 250
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v15

    #@23
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v15

    #@27
    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v14

    #@2b
    .line 253
    :cond_0
    move-object/from16 v0, p2

    #@2d
    move-object/from16 v1, p0

    #@2f
    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@31
    .line 254
    move-object/from16 v0, p3

    #@33
    move-object/from16 v1, p0

    #@35
    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTypes:[B

    #@37
    .line 255
    move-object/from16 v0, p5

    #@39
    move-object/from16 v1, p0

    #@3b
    iput-object v0, v1, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@3d
    .line 256
    invoke-virtual/range {p0 .. p1}, Llibcore/util/ZoneInfo;->setID(Ljava/lang/String;)V

    #@40
    .line 259
    const/4 v12, -0x1

    #@41
    .line 260
    .local v12, "lastStd":I
    const/4 v7, -0x1

    #@42
    .line 261
    .local v7, "lastDst":I
    move-object/from16 v0, p0

    #@44
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@46
    array-length v14, v14

    #@47
    add-int/lit8 v6, v14, -0x1

    #@49
    .local v6, "i":I
    :goto_0
    const/4 v14, -0x1

    #@4a
    if-eq v12, v14, :cond_1

    #@4c
    const/4 v14, -0x1

    #@4d
    if-ne v7, v14, :cond_4

    #@4f
    :cond_1
    if-ltz v6, :cond_4

    #@51
    .line 262
    move-object/from16 v0, p0

    #@53
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@55
    aget-byte v14, v14, v6

    #@57
    and-int/lit16 v13, v14, 0xff

    #@59
    .line 263
    .local v13, "type":I
    const/4 v14, -0x1

    #@5a
    if-ne v12, v14, :cond_2

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@60
    aget-byte v14, v14, v13

    #@62
    if-nez v14, :cond_2

    #@64
    .line 264
    move v12, v6

    #@65
    .line 266
    :cond_2
    const/4 v14, -0x1

    #@66
    if-ne v7, v14, :cond_3

    #@68
    move-object/from16 v0, p0

    #@6a
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@6c
    aget-byte v14, v14, v13

    #@6e
    if-eqz v14, :cond_3

    #@70
    .line 267
    move v7, v6

    #@71
    .line 261
    :cond_3
    add-int/lit8 v6, v6, -0x1

    #@73
    goto :goto_0

    #@74
    .line 272
    .end local v13    # "type":I
    :cond_4
    move-object/from16 v0, p0

    #@76
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@78
    array-length v14, v14

    #@79
    if-nez v14, :cond_7

    #@7b
    .line 274
    const/4 v14, 0x0

    #@7c
    aget v14, p4, v14

    #@7e
    move-object/from16 v0, p0

    #@80
    iput v14, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@82
    .line 284
    :goto_1
    const/4 v14, -0x1

    #@83
    if-eq v7, v14, :cond_5

    #@85
    .line 288
    move-object/from16 v0, p0

    #@87
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@89
    aget-wide v8, v14, v7

    #@8b
    .line 294
    .local v8, "lastDSTTransitionTime":J
    invoke-static/range {p6 .. p7}, Llibcore/util/ZoneInfo;->roundUpMillisToSeconds(J)J

    #@8e
    move-result-wide v2

    #@8f
    .line 302
    .local v2, "currentUnixTimeSeconds":J
    cmp-long v14, v8, v2

    #@91
    if-gez v14, :cond_5

    #@93
    .line 304
    const/4 v7, -0x1

    #@94
    .line 308
    .end local v2    # "currentUnixTimeSeconds":J
    .end local v8    # "lastDSTTransitionTime":J
    :cond_5
    const/4 v14, -0x1

    #@95
    if-ne v7, v14, :cond_9

    #@97
    .line 311
    const/4 v14, 0x0

    #@98
    move-object/from16 v0, p0

    #@9a
    iput v14, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    #@9c
    .line 312
    const/4 v14, 0x0

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput-boolean v14, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@a1
    .line 324
    :goto_2
    const/4 v5, -0x1

    #@a2
    .line 325
    .local v5, "firstStd":I
    const/4 v6, 0x0

    #@a3
    :goto_3
    move-object/from16 v0, p0

    #@a5
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@a7
    array-length v14, v14

    #@a8
    if-ge v6, v14, :cond_6

    #@aa
    .line 326
    move-object/from16 v0, p0

    #@ac
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@b2
    aget-byte v15, v15, v6

    #@b4
    and-int/lit16 v15, v15, 0xff

    #@b6
    aget-byte v14, v14, v15

    #@b8
    if-nez v14, :cond_a

    #@ba
    .line 327
    move v5, v6

    #@bb
    .line 331
    :cond_6
    const/4 v14, -0x1

    #@bc
    if-eq v5, v14, :cond_b

    #@be
    move-object/from16 v0, p0

    #@c0
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@c2
    aget-byte v14, v14, v5

    #@c4
    and-int/lit16 v14, v14, 0xff

    #@c6
    aget v4, p4, v14

    #@c8
    .line 335
    .local v4, "earliestRawOffset":I
    :goto_4
    move-object/from16 v0, p4

    #@ca
    move-object/from16 v1, p0

    #@cc
    iput-object v0, v1, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@ce
    .line 336
    const/4 v6, 0x0

    #@cf
    :goto_5
    move-object/from16 v0, p0

    #@d1
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@d3
    array-length v14, v14

    #@d4
    if-ge v6, v14, :cond_c

    #@d6
    .line 337
    move-object/from16 v0, p0

    #@d8
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@da
    aget v15, v14, v6

    #@dc
    move-object/from16 v0, p0

    #@de
    iget v0, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@e0
    move/from16 v16, v0

    #@e2
    sub-int v15, v15, v16

    #@e4
    aput v15, v14, v6

    #@e6
    .line 336
    add-int/lit8 v6, v6, 0x1

    #@e8
    goto :goto_5

    #@e9
    .line 276
    .end local v4    # "earliestRawOffset":I
    .end local v5    # "firstStd":I
    :cond_7
    const/4 v14, -0x1

    #@ea
    if-ne v12, v14, :cond_8

    #@ec
    .line 277
    new-instance v14, Ljava/lang/IllegalStateException;

    #@ee
    new-instance v15, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v16, "ZoneInfo requires at least one non-DST transition to be provided for each timezone that has at least one transition but could not find one for \'"

    #@f6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v15

    #@fa
    move-object/from16 v0, p1

    #@fc
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v15

    #@100
    .line 279
    const-string/jumbo v16, "\'"

    #@103
    .line 277
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v15

    #@107
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v15

    #@10b
    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10e
    throw v14

    #@10f
    .line 281
    :cond_8
    move-object/from16 v0, p0

    #@111
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@113
    aget-byte v14, v14, v12

    #@115
    and-int/lit16 v14, v14, 0xff

    #@117
    aget v14, p4, v14

    #@119
    move-object/from16 v0, p0

    #@11b
    iput v14, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@11d
    goto/16 :goto_1

    #@11f
    .line 316
    :cond_9
    move-object/from16 v0, p0

    #@121
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@123
    aget-byte v14, v14, v12

    #@125
    and-int/lit16 v14, v14, 0xff

    #@127
    aget v11, p4, v14

    #@129
    .line 317
    .local v11, "lastGmtOffset":I
    move-object/from16 v0, p0

    #@12b
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@12d
    aget-byte v14, v14, v7

    #@12f
    and-int/lit16 v14, v14, 0xff

    #@131
    aget v10, p4, v14

    #@133
    .line 318
    .local v10, "lastDstOffset":I
    sub-int v14, v11, v10

    #@135
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    #@138
    move-result v14

    #@139
    mul-int/lit16 v14, v14, 0x3e8

    #@13b
    move-object/from16 v0, p0

    #@13d
    iput v14, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    #@13f
    .line 319
    const/4 v14, 0x1

    #@140
    move-object/from16 v0, p0

    #@142
    iput-boolean v14, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@144
    goto/16 :goto_2

    #@146
    .line 325
    .end local v10    # "lastDstOffset":I
    .end local v11    # "lastGmtOffset":I
    .restart local v5    # "firstStd":I
    :cond_a
    add-int/lit8 v6, v6, 0x1

    #@148
    goto/16 :goto_3

    #@14a
    .line 331
    :cond_b
    move-object/from16 v0, p0

    #@14c
    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@14e
    .restart local v4    # "earliestRawOffset":I
    goto/16 :goto_4

    #@150
    .line 341
    :cond_c
    move-object/from16 v0, p0

    #@152
    iget v14, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@154
    mul-int/lit16 v14, v14, 0x3e8

    #@156
    move-object/from16 v0, p0

    #@158
    iput v14, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@15a
    .line 342
    mul-int/lit16 v14, v4, 0x3e8

    #@15c
    move-object/from16 v0, p0

    #@15e
    iput v14, v0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    #@160
    .line 248
    return-void
.end method

.method private static checkedAdd(JI)I
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    #@0
    .prologue
    .line 1273
    int-to-long v2, p2

    #@1
    add-long v0, p0, v2

    #@3
    .line 1274
    .local v0, "result":J
    long-to-int v2, v0

    #@4
    int-to-long v2, v2

    #@5
    cmp-long v2, v0, v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1275
    new-instance v2, Llibcore/util/ZoneInfo$CheckedArithmeticException;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-direct {v2, v3}, Llibcore/util/ZoneInfo$CheckedArithmeticException;-><init>(Llibcore/util/ZoneInfo$CheckedArithmeticException;)V

    #@f
    throw v2

    #@10
    .line 1277
    :cond_0
    long-to-int v2, v0

    #@11
    return v2
.end method

.method private static checkedSubtract(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    #@0
    .prologue
    .line 1287
    int-to-long v2, p0

    #@1
    int-to-long v4, p1

    #@2
    sub-long v0, v2, v4

    #@4
    .line 1288
    .local v0, "result":J
    long-to-int v2, v0

    #@5
    int-to-long v2, v2

    #@6
    cmp-long v2, v0, v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 1289
    new-instance v2, Llibcore/util/ZoneInfo$CheckedArithmeticException;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-direct {v2, v3}, Llibcore/util/ZoneInfo$CheckedArithmeticException;-><init>(Llibcore/util/ZoneInfo$CheckedArithmeticException;)V

    #@10
    throw v2

    #@11
    .line 1291
    :cond_0
    long-to-int v2, v0

    #@12
    return v2
.end method

.method public static makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;)Llibcore/util/ZoneInfo;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "it"    # Llibcore/io/BufferIterator;

    #@0
    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p0, p1, v0, v1}, Llibcore/util/ZoneInfo;->makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;J)Llibcore/util/ZoneInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;J)Llibcore/util/ZoneInfo;
    .locals 14
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "it"    # Llibcore/io/BufferIterator;
    .param p2, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 192
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    #@3
    move-result v0

    #@4
    const v1, 0x545a6966

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 193
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 197
    :cond_0
    const/16 v0, 0x1c

    #@d
    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    #@10
    .line 200
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    #@13
    move-result v11

    #@14
    .line 201
    .local v11, "tzh_timecnt":I
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    #@17
    move-result v12

    #@18
    .line 202
    .local v12, "tzh_typecnt":I
    const/16 v0, 0x100

    #@1a
    if-le v12, v0, :cond_1

    #@1c
    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v6, " has more than 256 different types"

    #@2a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 206
    :cond_1
    const/4 v0, 0x4

    #@37
    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    #@3a
    .line 214
    new-array v10, v11, [I

    #@3c
    .line 215
    .local v10, "transitions32":[I
    array-length v0, v10

    #@3d
    const/4 v1, 0x0

    #@3e
    invoke-virtual {p1, v10, v1, v0}, Llibcore/io/BufferIterator;->readIntArray([III)V

    #@41
    .line 217
    new-array v2, v11, [J

    #@43
    .line 218
    .local v2, "transitions64":[J
    const/4 v9, 0x0

    #@44
    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_2

    #@46
    .line 219
    aget v0, v10, v9

    #@48
    int-to-long v0, v0

    #@49
    aput-wide v0, v2, v9

    #@4b
    .line 218
    add-int/lit8 v9, v9, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 222
    :cond_2
    new-array v3, v11, [B

    #@50
    .line 223
    .local v3, "type":[B
    array-length v0, v3

    #@51
    const/4 v1, 0x0

    #@52
    invoke-virtual {p1, v3, v1, v0}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    #@55
    .line 225
    new-array v4, v12, [I

    #@57
    .line 226
    .local v4, "gmtOffsets":[I
    new-array v5, v12, [B

    #@59
    .line 227
    .local v5, "isDsts":[B
    const/4 v9, 0x0

    #@5a
    :goto_1
    if-ge v9, v12, :cond_4

    #@5c
    .line 228
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    #@5f
    move-result v0

    #@60
    aput v0, v4, v9

    #@62
    .line 229
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readByte()B

    #@65
    move-result v8

    #@66
    .line 230
    .local v8, "b":B
    if-eqz v8, :cond_3

    #@68
    const/4 v0, 0x1

    #@69
    if-eq v8, v0, :cond_3

    #@6b
    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6d
    new-instance v1, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    const-string/jumbo v6, " dst at "

    #@79
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    const-string/jumbo v6, " is not 0 or 1, is "

    #@84
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@93
    throw v0

    #@94
    .line 233
    :cond_3
    aput-byte v8, v5, v9

    #@96
    .line 241
    const/4 v0, 0x1

    #@97
    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    #@9a
    .line 227
    add-int/lit8 v9, v9, 0x1

    #@9c
    goto :goto_1

    #@9d
    .line 244
    .end local v8    # "b":B
    :cond_4
    new-instance v0, Llibcore/util/ZoneInfo;

    #@9f
    move-object v1, p0

    #@a0
    move-wide/from16 v6, p2

    #@a2
    invoke-direct/range {v0 .. v7}, Llibcore/util/ZoneInfo;-><init>(Ljava/lang/String;[J[B[I[BJ)V

    #@a5
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 350
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 351
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget v0, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 352
    iput v1, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    #@e
    .line 349
    :cond_0
    return-void
.end method

.method static roundDownMillisToSeconds(J)J
    .locals 4
    .param p0, "millis"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x3e8

    #@2
    .line 458
    const-wide/16 v0, 0x0

    #@4
    cmp-long v0, p0, v0

    #@6
    if-gez v0, :cond_0

    #@8
    .line 464
    const-wide/16 v0, 0x3e7

    #@a
    sub-long v0, p0, v0

    #@c
    div-long/2addr v0, v2

    #@d
    return-wide v0

    #@e
    .line 466
    :cond_0
    div-long v0, p0, v2

    #@10
    return-wide v0
.end method

.method static roundUpMillisToSeconds(J)J
    .locals 4
    .param p0, "millis"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x3e8

    #@2
    .line 485
    const-wide/16 v0, 0x0

    #@4
    cmp-long v0, p0, v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 491
    const-wide/16 v0, 0x3e7

    #@a
    add-long/2addr v0, p0

    #@b
    div-long/2addr v0, v2

    #@c
    return-wide v0

    #@d
    .line 493
    :cond_0
    div-long v0, p0, v2

    #@f
    return-wide v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 655
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 617
    instance-of v2, p1, Llibcore/util/ZoneInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 618
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 620
    check-cast v0, Llibcore/util/ZoneInfo;

    #@9
    .line 621
    .local v0, "other":Llibcore/util/ZoneInfo;
    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-virtual {p0, v0}, Llibcore/util/ZoneInfo;->hasSameRules(Ljava/util/TimeZone;)Z

    #@1a
    move-result v1

    #@1b
    :cond_1
    return v1
.end method

.method findOffsetIndexForTimeInMilliseconds(J)I
    .locals 3
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 440
    invoke-static {p1, p2}, Llibcore/util/ZoneInfo;->roundDownMillisToSeconds(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Llibcore/util/ZoneInfo;->findOffsetIndexForTimeInSeconds(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method findOffsetIndexForTimeInSeconds(J)I
    .locals 3
    .param p1, "seconds"    # J

    #@0
    .prologue
    .line 412
    invoke-virtual {p0, p1, p2}, Llibcore/util/ZoneInfo;->findTransitionIndex(J)I

    #@3
    move-result v0

    #@4
    .line 413
    .local v0, "transition":I
    if-gez v0, :cond_0

    #@6
    .line 414
    const/4 v1, -0x1

    #@7
    return v1

    #@8
    .line 417
    :cond_0
    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@a
    aget-byte v1, v1, v0

    #@c
    and-int/lit16 v1, v1, 0xff

    #@e
    return v1
.end method

.method public findTransitionIndex(J)I
    .locals 3
    .param p1, "seconds"    # J

    #@0
    .prologue
    .line 393
    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@2
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    #@5
    move-result v0

    #@6
    .line 394
    .local v0, "transition":I
    if-gez v0, :cond_0

    #@8
    .line 395
    not-int v1, v0

    #@9
    add-int/lit8 v0, v1, -0x1

    #@b
    .line 396
    if-gez v0, :cond_0

    #@d
    .line 397
    const/4 v1, -0x1

    #@e
    return v1

    #@f
    .line 401
    :cond_0
    return v0
.end method

.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 590
    iget v0, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    #@2
    return v0
.end method

.method public getOffset(IIIIII)I
    .locals 8
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    #@0
    .prologue
    .line 362
    div-int/lit16 v4, p2, 0x190

    #@2
    int-to-long v4, v4

    #@3
    const-wide v6, 0xb7af85d9c00L

    #@8
    mul-long v0, v4, v6

    #@a
    .line 363
    .local v0, "calc":J
    rem-int/lit16 p2, p2, 0x190

    #@c
    .line 365
    int-to-long v4, p2

    #@d
    const-wide v6, 0x757b12c00L

    #@12
    mul-long/2addr v4, v6

    #@13
    add-long/2addr v0, v4

    #@14
    .line 366
    add-int/lit8 v4, p2, 0x3

    #@16
    div-int/lit8 v4, v4, 0x4

    #@18
    int-to-long v4, v4

    #@19
    const-wide/32 v6, 0x5265c00

    #@1c
    mul-long/2addr v4, v6

    #@1d
    add-long/2addr v0, v4

    #@1e
    .line 368
    if-lez p2, :cond_0

    #@20
    .line 369
    add-int/lit8 v4, p2, -0x1

    #@22
    div-int/lit8 v4, v4, 0x64

    #@24
    int-to-long v4, v4

    #@25
    const-wide/32 v6, 0x5265c00

    #@28
    mul-long/2addr v4, v6

    #@29
    sub-long/2addr v0, v4

    #@2a
    .line 372
    :cond_0
    if-eqz p2, :cond_1

    #@2c
    rem-int/lit8 v4, p2, 0x4

    #@2e
    if-nez v4, :cond_2

    #@30
    rem-int/lit8 v4, p2, 0x64

    #@32
    if-eqz v4, :cond_2

    #@34
    :cond_1
    const/4 v2, 0x1

    #@35
    .line 373
    .local v2, "isLeap":Z
    :goto_0
    if-eqz v2, :cond_3

    #@37
    sget-object v3, Llibcore/util/ZoneInfo;->LEAP:[I

    #@39
    .line 375
    .local v3, "mlen":[I
    :goto_1
    aget v4, v3, p3

    #@3b
    int-to-long v4, v4

    #@3c
    const-wide/32 v6, 0x5265c00

    #@3f
    mul-long/2addr v4, v6

    #@40
    add-long/2addr v0, v4

    #@41
    .line 376
    add-int/lit8 v4, p4, -0x1

    #@43
    int-to-long v4, v4

    #@44
    const-wide/32 v6, 0x5265c00

    #@47
    mul-long/2addr v4, v6

    #@48
    add-long/2addr v0, v4

    #@49
    .line 377
    int-to-long v4, p6

    #@4a
    add-long/2addr v0, v4

    #@4b
    .line 379
    iget v4, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@4d
    int-to-long v4, v4

    #@4e
    sub-long/2addr v0, v4

    #@4f
    .line 380
    const-wide v4, 0x388a6f046000L

    #@54
    sub-long/2addr v0, v4

    #@55
    .line 382
    invoke-virtual {p0, v0, v1}, Llibcore/util/ZoneInfo;->getOffset(J)I

    #@58
    move-result v4

    #@59
    return v4

    #@5a
    .line 372
    .end local v2    # "isLeap":Z
    .end local v3    # "mlen":[I
    :cond_2
    const/4 v2, 0x0

    #@5b
    goto :goto_0

    #@5c
    .line 373
    .restart local v2    # "isLeap":Z
    :cond_3
    sget-object v3, Llibcore/util/ZoneInfo;->NORMAL:[I

    #@5e
    goto :goto_1
.end method

.method public getOffset(J)I
    .locals 3
    .param p1, "when"    # J

    #@0
    .prologue
    .line 558
    invoke-virtual {p0, p1, p2}, Llibcore/util/ZoneInfo;->findOffsetIndexForTimeInMilliseconds(J)I

    #@3
    move-result v0

    #@4
    .line 559
    .local v0, "offsetIndex":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 563
    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    #@9
    return v1

    #@a
    .line 565
    :cond_0
    iget v1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@c
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@e
    aget v2, v2, v0

    #@10
    mul-int/lit16 v2, v2, 0x3e8

    #@12
    add-int/2addr v1, v2

    #@13
    return v1
.end method

.method public getOffsetsByUtcTime(J[I)I
    .locals 11
    .param p1, "utcTimeInMillis"    # J
    .param p3, "offsets"    # [I

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 510
    invoke-static {p1, p2}, Llibcore/util/ZoneInfo;->roundDownMillisToSeconds(J)J

    #@5
    move-result-wide v6

    #@6
    invoke-virtual {p0, v6, v7}, Llibcore/util/ZoneInfo;->findTransitionIndex(J)I

    #@9
    move-result v3

    #@a
    .line 514
    .local v3, "transitionIndex":I
    if-ne v3, v9, :cond_0

    #@c
    .line 517
    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    #@e
    .line 518
    .local v1, "rawOffset":I
    const/4 v0, 0x0

    #@f
    .line 519
    .local v0, "dstOffset":I
    move v2, v1

    #@10
    .line 550
    .local v2, "totalOffset":I
    :goto_0
    aput v1, p3, v8

    #@12
    .line 551
    const/4 v5, 0x1

    #@13
    aput v0, p3, v5

    #@15
    .line 553
    return v2

    #@16
    .line 521
    .end local v0    # "dstOffset":I
    .end local v1    # "rawOffset":I
    .end local v2    # "totalOffset":I
    :cond_0
    iget-object v5, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@18
    aget-byte v5, v5, v3

    #@1a
    and-int/lit16 v4, v5, 0xff

    #@1c
    .line 524
    .local v4, "type":I
    iget v5, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@1e
    iget-object v6, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@20
    aget v6, v6, v4

    #@22
    mul-int/lit16 v6, v6, 0x3e8

    #@24
    add-int v2, v5, v6

    #@26
    .line 525
    .restart local v2    # "totalOffset":I
    iget-object v5, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@28
    aget-byte v5, v5, v4

    #@2a
    if-nez v5, :cond_1

    #@2c
    .line 527
    move v1, v2

    #@2d
    .line 528
    .restart local v1    # "rawOffset":I
    const/4 v0, 0x0

    #@2e
    .restart local v0    # "dstOffset":I
    goto :goto_0

    #@2f
    .line 532
    .end local v0    # "dstOffset":I
    .end local v1    # "rawOffset":I
    :cond_1
    const/4 v1, -0x1

    #@30
    .line 533
    .restart local v1    # "rawOffset":I
    add-int/lit8 v3, v3, -0x1

    #@32
    :goto_1
    if-ltz v3, :cond_2

    #@34
    .line 534
    iget-object v5, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@36
    aget-byte v5, v5, v3

    #@38
    and-int/lit16 v4, v5, 0xff

    #@3a
    .line 535
    iget-object v5, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@3c
    aget-byte v5, v5, v4

    #@3e
    if-nez v5, :cond_4

    #@40
    .line 536
    iget v5, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@42
    iget-object v6, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@44
    aget v6, v6, v4

    #@46
    mul-int/lit16 v6, v6, 0x3e8

    #@48
    add-int v1, v5, v6

    #@4a
    .line 541
    :cond_2
    if-ne v1, v9, :cond_3

    #@4c
    .line 542
    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    #@4e
    .line 546
    :cond_3
    sub-int v0, v2, v1

    #@50
    .restart local v0    # "dstOffset":I
    goto :goto_0

    #@51
    .line 533
    .end local v0    # "dstOffset":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    #@53
    goto :goto_1
.end method

.method public getRawOffset()I
    .locals 1

    #@0
    .prologue
    .line 582
    iget v0, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@2
    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 4
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 598
    instance-of v2, p1, Llibcore/util/ZoneInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 599
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 601
    check-cast v0, Llibcore/util/ZoneInfo;

    #@9
    .line 602
    .local v0, "other":Llibcore/util/ZoneInfo;
    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@b
    iget-boolean v3, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@d
    if-eq v2, v3, :cond_1

    #@f
    .line 603
    return v1

    #@10
    .line 605
    :cond_1
    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@12
    if-nez v2, :cond_3

    #@14
    .line 606
    iget v2, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@16
    iget v3, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@18
    if-ne v2, v3, :cond_2

    #@1a
    const/4 v1, 0x1

    #@1b
    :cond_2
    return v1

    #@1c
    .line 608
    :cond_3
    iget v2, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@1e
    iget v3, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@20
    if-ne v2, v3, :cond_4

    #@22
    .line 610
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@24
    iget-object v3, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@26
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@29
    move-result v2

    #@2a
    .line 608
    if-eqz v2, :cond_4

    #@2c
    .line 611
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@2e
    iget-object v3, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@30
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@33
    move-result v2

    #@34
    .line 608
    if-eqz v2, :cond_4

    #@36
    .line 612
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@38
    iget-object v3, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@3a
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@3d
    move-result v2

    #@3e
    .line 608
    if-eqz v2, :cond_4

    #@40
    .line 613
    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@42
    iget-object v2, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@44
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    #@47
    move-result v1

    #@48
    .line 608
    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 626
    const/16 v0, 0x1f

    #@2
    .line 628
    .local v0, "prime":I
    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v2

    #@a
    add-int/lit8 v1, v2, 0x1f

    #@c
    .line 629
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@e
    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@10
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    #@13
    move-result v3

    #@14
    add-int v1, v2, v3

    #@16
    .line 630
    mul-int/lit8 v2, v1, 0x1f

    #@18
    iget-object v3, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@1a
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    #@1d
    move-result v3

    #@1e
    add-int v1, v2, v3

    #@20
    .line 631
    mul-int/lit8 v2, v1, 0x1f

    #@22
    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@24
    add-int v1, v2, v3

    #@26
    .line 632
    mul-int/lit8 v2, v1, 0x1f

    #@28
    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@2a
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([J)I

    #@2d
    move-result v3

    #@2e
    add-int v1, v2, v3

    #@30
    .line 633
    mul-int/lit8 v2, v1, 0x1f

    #@32
    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@34
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    #@37
    move-result v3

    #@38
    add-int v1, v2, v3

    #@3a
    .line 634
    mul-int/lit8 v3, v1, 0x1f

    #@3c
    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@3e
    if-eqz v2, :cond_0

    #@40
    const/16 v2, 0x4cf

    #@42
    :goto_0
    add-int v1, v3, v2

    #@44
    .line 635
    return v1

    #@45
    .line 634
    :cond_0
    const/16 v2, 0x4d5

    #@47
    goto :goto_0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 6
    .param p1, "time"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 569
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@5
    move-result-wide v2

    #@6
    .line 570
    .local v2, "when":J
    invoke-virtual {p0, v2, v3}, Llibcore/util/ZoneInfo;->findOffsetIndexForTimeInMilliseconds(J)I

    #@9
    move-result v0

    #@a
    .line 571
    .local v0, "offsetIndex":I
    const/4 v5, -0x1

    #@b
    if-ne v0, v5, :cond_0

    #@d
    .line 576
    return v4

    #@e
    .line 578
    :cond_0
    iget-object v5, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@10
    aget-byte v5, v5, v0

    #@12
    if-ne v5, v1, :cond_1

    #@14
    :goto_0
    return v1

    #@15
    :cond_1
    move v1, v4

    #@16
    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0
    .param p1, "off"    # I

    #@0
    .prologue
    .line 586
    iput p1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@2
    .line 585
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "[id=\""

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "\""

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 641
    const-string/jumbo v1, ",mRawOffset="

    #@2a
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 641
    iget v1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@30
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 642
    const-string/jumbo v1, ",mEarliestRawOffset="

    #@37
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 642
    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    #@3d
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 643
    const-string/jumbo v1, ",mUseDst="

    #@44
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 643
    iget-boolean v1, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@4a
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 644
    const-string/jumbo v1, ",mDstSavings="

    #@51
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 644
    iget v1, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    #@57
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 645
    const-string/jumbo v1, ",transitions="

    #@5e
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 645
    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@64
    array-length v1, v1

    #@65
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 646
    const-string/jumbo v1, "]"

    #@6c
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 594
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@2
    return v0
.end method
