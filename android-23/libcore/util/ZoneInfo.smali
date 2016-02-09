.class public final Llibcore/util/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/ZoneInfo$WallTime;,
        Llibcore/util/ZoneInfo$OffsetInterval;,
        Llibcore/util/ZoneInfo$CheckedArithmeticException;
    }
.end annotation


# static fields
.field private static final LEAP:[I

.field private static final MILLISECONDS_PER_400_YEARS:J = 0xb7af85d9c00L

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field private static final NORMAL:[I

.field private static final UNIX_OFFSET:J = 0x388a6f046000L


# instance fields
.field private final mDstSavings:I

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
    .line 44
    new-array v0, v1, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Llibcore/util/ZoneInfo;->NORMAL:[I

    #@9
    .line 48
    new-array v0, v1, [I

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Llibcore/util/ZoneInfo;->LEAP:[I

    #@10
    .line 37
    return-void

    #@11
    .line 44
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
    .line 48
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

.method private constructor <init>(Ljava/lang/String;[J[B[I[B)V
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transitions"    # [J
    .param p3, "types"    # [B
    .param p4, "gmtOffsets"    # [I
    .param p5, "isDsts"    # [B

    #@0
    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/util/TimeZone;-><init>()V

    #@3
    .line 115
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@9
    .line 116
    move-object/from16 v0, p3

    #@b
    move-object/from16 v1, p0

    #@d
    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTypes:[B

    #@f
    .line 117
    move-object/from16 v0, p5

    #@11
    move-object/from16 v1, p0

    #@13
    iput-object v0, v1, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@15
    .line 118
    invoke-virtual/range {p0 .. p1}, Llibcore/util/ZoneInfo;->setID(Ljava/lang/String;)V

    #@18
    .line 121
    const/4 v10, 0x0

    #@19
    .line 122
    .local v10, "lastStd":I
    const/4 v7, 0x0

    #@1a
    .line 123
    .local v7, "haveStd":Z
    const/4 v9, 0x0

    #@1b
    .line 124
    .local v9, "lastDst":I
    const/4 v6, 0x0

    #@1c
    .line 125
    .local v6, "haveDst":Z
    move-object/from16 v0, p0

    #@1e
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@20
    array-length v13, v13

    #@21
    add-int/lit8 v8, v13, -0x1

    #@23
    .local v8, "i":I
    :goto_0
    if-eqz v7, :cond_2

    #@25
    if-eqz v6, :cond_2

    #@27
    .line 138
    :cond_0
    move-object/from16 v0, p0

    #@29
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@2b
    array-length v13, v13

    #@2c
    if-lt v10, v13, :cond_5

    #@2e
    .line 139
    const/4 v13, 0x0

    #@2f
    aget v13, p4, v13

    #@31
    move-object/from16 v0, p0

    #@33
    iput v13, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@35
    .line 146
    :goto_1
    move-object/from16 v0, p0

    #@37
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@39
    array-length v13, v13

    #@3a
    if-lt v9, v13, :cond_6

    #@3c
    .line 147
    const/4 v13, 0x0

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput v13, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    #@41
    .line 154
    :goto_2
    const/4 v5, -0x1

    #@42
    .line 155
    .local v5, "firstStd":I
    const/4 v8, 0x0

    #@43
    :goto_3
    move-object/from16 v0, p0

    #@45
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@47
    array-length v13, v13

    #@48
    if-ge v8, v13, :cond_1

    #@4a
    .line 156
    move-object/from16 v0, p0

    #@4c
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@4e
    move-object/from16 v0, p0

    #@50
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@52
    aget-byte v14, v14, v8

    #@54
    and-int/lit16 v14, v14, 0xff

    #@56
    aget-byte v13, v13, v14

    #@58
    if-nez v13, :cond_7

    #@5a
    .line 157
    move v5, v8

    #@5b
    .line 161
    :cond_1
    const/4 v13, -0x1

    #@5c
    if-eq v5, v13, :cond_8

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@62
    aget-byte v13, v13, v5

    #@64
    and-int/lit16 v13, v13, 0xff

    #@66
    aget v4, p4, v13

    #@68
    .line 165
    .local v4, "earliestRawOffset":I
    :goto_4
    move-object/from16 v0, p4

    #@6a
    move-object/from16 v1, p0

    #@6c
    iput-object v0, v1, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@6e
    .line 166
    const/4 v8, 0x0

    #@6f
    :goto_5
    move-object/from16 v0, p0

    #@71
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@73
    array-length v13, v13

    #@74
    if-ge v8, v13, :cond_9

    #@76
    .line 167
    move-object/from16 v0, p0

    #@78
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@7a
    aget v14, v13, v8

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget v15, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@80
    sub-int/2addr v14, v15

    #@81
    aput v14, v13, v8

    #@83
    .line 166
    add-int/lit8 v8, v8, 0x1

    #@85
    goto :goto_5

    #@86
    .line 125
    .end local v4    # "earliestRawOffset":I
    .end local v5    # "firstStd":I
    :cond_2
    if-ltz v8, :cond_0

    #@88
    .line 126
    move-object/from16 v0, p0

    #@8a
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@8c
    aget-byte v13, v13, v8

    #@8e
    and-int/lit16 v11, v13, 0xff

    #@90
    .line 127
    .local v11, "type":I
    if-nez v7, :cond_3

    #@92
    move-object/from16 v0, p0

    #@94
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@96
    aget-byte v13, v13, v11

    #@98
    if-nez v13, :cond_3

    #@9a
    .line 128
    const/4 v7, 0x1

    #@9b
    .line 129
    move v10, v8

    #@9c
    .line 131
    :cond_3
    if-nez v6, :cond_4

    #@9e
    move-object/from16 v0, p0

    #@a0
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@a2
    aget-byte v13, v13, v11

    #@a4
    if-eqz v13, :cond_4

    #@a6
    .line 132
    const/4 v6, 0x1

    #@a7
    .line 133
    move v9, v8

    #@a8
    .line 125
    :cond_4
    add-int/lit8 v8, v8, -0x1

    #@aa
    goto/16 :goto_0

    #@ac
    .line 141
    .end local v11    # "type":I
    :cond_5
    move-object/from16 v0, p0

    #@ae
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@b0
    aget-byte v13, v13, v10

    #@b2
    and-int/lit16 v13, v13, 0xff

    #@b4
    aget v13, p4, v13

    #@b6
    move-object/from16 v0, p0

    #@b8
    iput v13, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@ba
    goto/16 :goto_1

    #@bc
    .line 149
    :cond_6
    move-object/from16 v0, p0

    #@be
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@c0
    aget-byte v13, v13, v10

    #@c2
    and-int/lit16 v13, v13, 0xff

    #@c4
    aget v13, p4, v13

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@ca
    aget-byte v14, v14, v9

    #@cc
    and-int/lit16 v14, v14, 0xff

    #@ce
    aget v14, p4, v14

    #@d0
    sub-int/2addr v13, v14

    #@d1
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    #@d4
    move-result v13

    #@d5
    mul-int/lit16 v13, v13, 0x3e8

    #@d7
    move-object/from16 v0, p0

    #@d9
    iput v13, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    #@db
    goto/16 :goto_2

    #@dd
    .line 155
    .restart local v5    # "firstStd":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@df
    goto/16 :goto_3

    #@e1
    .line 161
    :cond_8
    move-object/from16 v0, p0

    #@e3
    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@e5
    .restart local v4    # "earliestRawOffset":I
    goto :goto_4

    #@e6
    .line 176
    :cond_9
    const/4 v12, 0x0

    #@e7
    .line 177
    .local v12, "usesDst":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@ea
    move-result-wide v14

    #@eb
    const-wide/16 v16, 0x3e8

    #@ed
    div-long v2, v14, v16

    #@ef
    .line 178
    .local v2, "currentUnixTimeSeconds":J
    move-object/from16 v0, p0

    #@f1
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@f3
    array-length v13, v13

    #@f4
    add-int/lit8 v8, v13, -0x1

    #@f6
    .line 179
    :goto_6
    if-ltz v8, :cond_a

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@fc
    aget-wide v14, v13, v8

    #@fe
    cmp-long v13, v14, v2

    #@100
    if-ltz v13, :cond_a

    #@102
    .line 180
    move-object/from16 v0, p0

    #@104
    iget-object v13, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@106
    move-object/from16 v0, p0

    #@108
    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@10a
    aget-byte v14, v14, v8

    #@10c
    aget-byte v13, v13, v14

    #@10e
    if-lez v13, :cond_b

    #@110
    .line 181
    const/4 v12, 0x1

    #@111
    .line 186
    :cond_a
    move-object/from16 v0, p0

    #@113
    iput-boolean v12, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@115
    .line 189
    move-object/from16 v0, p0

    #@117
    iget v13, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@119
    mul-int/lit16 v13, v13, 0x3e8

    #@11b
    move-object/from16 v0, p0

    #@11d
    iput v13, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@11f
    .line 190
    mul-int/lit16 v13, v4, 0x3e8

    #@121
    move-object/from16 v0, p0

    #@123
    iput v13, v0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    #@125
    .line 114
    return-void

    #@126
    .line 184
    :cond_b
    add-int/lit8 v8, v8, -0x1

    #@128
    goto :goto_6
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
    .line 968
    int-to-long v2, p2

    #@1
    add-long v0, p0, v2

    #@3
    .line 969
    .local v0, "result":J
    long-to-int v2, v0

    #@4
    int-to-long v2, v2

    #@5
    cmp-long v2, v0, v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 970
    new-instance v2, Llibcore/util/ZoneInfo$CheckedArithmeticException;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-direct {v2, v3}, Llibcore/util/ZoneInfo$CheckedArithmeticException;-><init>(Llibcore/util/ZoneInfo$CheckedArithmeticException;)V

    #@f
    throw v2

    #@10
    .line 972
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
    .line 982
    int-to-long v2, p0

    #@1
    int-to-long v4, p1

    #@2
    sub-long v0, v2, v4

    #@4
    .line 983
    .local v0, "result":J
    long-to-int v2, v0

    #@5
    int-to-long v2, v2

    #@6
    cmp-long v2, v0, v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 984
    new-instance v2, Llibcore/util/ZoneInfo$CheckedArithmeticException;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-direct {v2, v3}, Llibcore/util/ZoneInfo$CheckedArithmeticException;-><init>(Llibcore/util/ZoneInfo$CheckedArithmeticException;)V

    #@10
    throw v2

    #@11
    .line 986
    :cond_0
    long-to-int v2, v0

    #@12
    return v2
.end method

.method public static makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;)Llibcore/util/ZoneInfo;
    .locals 11
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "it"    # Llibcore/io/BufferIterator;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 66
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    #@4
    move-result v0

    #@5
    const v1, 0x545a6966

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 67
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 71
    :cond_0
    const/16 v0, 0x1c

    #@e
    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    #@11
    .line 74
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    #@14
    move-result v8

    #@15
    .line 75
    .local v8, "tzh_timecnt":I
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    #@18
    move-result v9

    #@19
    .line 77
    .local v9, "tzh_typecnt":I
    const/4 v0, 0x4

    #@1a
    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    #@1d
    .line 85
    new-array v7, v8, [I

    #@1f
    .line 86
    .local v7, "transitions32":[I
    array-length v0, v7

    #@20
    invoke-virtual {p1, v7, v10, v0}, Llibcore/io/BufferIterator;->readIntArray([III)V

    #@23
    .line 88
    new-array v2, v8, [J

    #@25
    .line 89
    .local v2, "transitions64":[J
    const/4 v6, 0x0

    #@26
    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    #@28
    .line 90
    aget v0, v7, v6

    #@2a
    int-to-long v0, v0

    #@2b
    aput-wide v0, v2, v6

    #@2d
    .line 89
    add-int/lit8 v6, v6, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 93
    :cond_1
    new-array v3, v8, [B

    #@32
    .line 94
    .local v3, "type":[B
    array-length v0, v3

    #@33
    invoke-virtual {p1, v3, v10, v0}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    #@36
    .line 96
    new-array v4, v9, [I

    #@38
    .line 97
    .local v4, "gmtOffsets":[I
    new-array v5, v9, [B

    #@3a
    .line 98
    .local v5, "isDsts":[B
    const/4 v6, 0x0

    #@3b
    :goto_1
    if-ge v6, v9, :cond_2

    #@3d
    .line 99
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    #@40
    move-result v0

    #@41
    aput v0, v4, v6

    #@43
    .line 100
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readByte()B

    #@46
    move-result v0

    #@47
    aput-byte v0, v5, v6

    #@49
    .line 108
    const/4 v0, 0x1

    #@4a
    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    #@4d
    .line 98
    add-int/lit8 v6, v6, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 111
    :cond_2
    new-instance v0, Llibcore/util/ZoneInfo;

    #@52
    move-object v1, p0

    #@53
    invoke-direct/range {v0 .. v5}, Llibcore/util/ZoneInfo;-><init>(Ljava/lang/String;[J[B[I[B)V

    #@56
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 329
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
    .line 291
    instance-of v2, p1, Llibcore/util/ZoneInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 292
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 294
    check-cast v0, Llibcore/util/ZoneInfo;

    #@9
    .line 295
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

.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 264
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
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
    .line 199
    div-int/lit16 v4, p2, 0x190

    #@2
    int-to-long v4, v4

    #@3
    const-wide v6, 0xb7af85d9c00L

    #@8
    mul-long v0, v4, v6

    #@a
    .line 200
    .local v0, "calc":J
    rem-int/lit16 p2, p2, 0x190

    #@c
    .line 202
    int-to-long v4, p2

    #@d
    const-wide v6, 0x757b12c00L

    #@12
    mul-long/2addr v4, v6

    #@13
    add-long/2addr v0, v4

    #@14
    .line 203
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
    .line 205
    if-lez p2, :cond_0

    #@20
    .line 206
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
    .line 209
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
    .line 210
    .local v2, "isLeap":Z
    :goto_0
    if-eqz v2, :cond_3

    #@37
    sget-object v3, Llibcore/util/ZoneInfo;->LEAP:[I

    #@39
    .line 212
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
    .line 213
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
    .line 214
    int-to-long v4, p6

    #@4a
    add-long/2addr v0, v4

    #@4b
    .line 216
    iget v4, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@4d
    int-to-long v4, v4

    #@4e
    sub-long/2addr v0, v4

    #@4f
    .line 217
    const-wide v4, 0x388a6f046000L

    #@54
    sub-long/2addr v0, v4

    #@55
    .line 219
    invoke-virtual {p0, v0, v1}, Llibcore/util/ZoneInfo;->getOffset(J)I

    #@58
    move-result v4

    #@59
    return v4

    #@5a
    .line 209
    .end local v2    # "isLeap":Z
    .end local v3    # "mlen":[I
    :cond_2
    const/4 v2, 0x0

    #@5b
    .restart local v2    # "isLeap":Z
    goto :goto_0

    #@5c
    .line 210
    :cond_3
    sget-object v3, Llibcore/util/ZoneInfo;->NORMAL:[I

    #@5e
    .restart local v3    # "mlen":[I
    goto :goto_1
.end method

.method public getOffset(J)I
    .locals 7
    .param p1, "when"    # J

    #@0
    .prologue
    .line 224
    const-wide/16 v4, 0x3e8

    #@2
    div-long v2, p1, v4

    #@4
    .line 225
    .local v2, "unix":J
    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@6
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    #@9
    move-result v0

    #@a
    .line 226
    .local v0, "transition":I
    if-gez v0, :cond_0

    #@c
    .line 227
    not-int v1, v0

    #@d
    add-int/lit8 v0, v1, -0x1

    #@f
    .line 228
    if-gez v0, :cond_0

    #@11
    .line 232
    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    #@13
    return v1

    #@14
    .line 235
    :cond_0
    iget v1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@16
    iget-object v4, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@18
    iget-object v5, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@1a
    aget-byte v5, v5, v0

    #@1c
    and-int/lit16 v5, v5, 0xff

    #@1e
    aget v4, v4, v5

    #@20
    mul-int/lit16 v4, v4, 0x3e8

    #@22
    add-int/2addr v1, v4

    #@23
    return v1
.end method

.method public getRawOffset()I
    .locals 1

    #@0
    .prologue
    .line 256
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
    .line 272
    instance-of v2, p1, Llibcore/util/ZoneInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 273
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 275
    check-cast v0, Llibcore/util/ZoneInfo;

    #@9
    .line 276
    .local v0, "other":Llibcore/util/ZoneInfo;
    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@b
    iget-boolean v3, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@d
    if-eq v2, v3, :cond_1

    #@f
    .line 277
    return v1

    #@10
    .line 279
    :cond_1
    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@12
    if-nez v2, :cond_3

    #@14
    .line 280
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
    .line 282
    :cond_3
    iget v2, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@1e
    iget v3, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@20
    if-ne v2, v3, :cond_4

    #@22
    .line 284
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@24
    iget-object v3, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    #@26
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@29
    move-result v2

    #@2a
    .line 282
    if-eqz v2, :cond_4

    #@2c
    .line 285
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@2e
    iget-object v3, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@30
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@33
    move-result v2

    #@34
    .line 282
    if-eqz v2, :cond_4

    #@36
    .line 286
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@38
    iget-object v3, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@3a
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@3d
    move-result v2

    #@3e
    .line 282
    if-eqz v2, :cond_4

    #@40
    .line 287
    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@42
    iget-object v2, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@44
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    #@47
    move-result v1

    #@48
    .line 282
    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 300
    const/16 v0, 0x1f

    #@2
    .line 302
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
    .line 303
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
    .line 304
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
    .line 305
    mul-int/lit8 v2, v1, 0x1f

    #@22
    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@24
    add-int v1, v2, v3

    #@26
    .line 306
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
    .line 307
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
    .line 308
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
    .line 309
    return v1

    #@45
    .line 308
    :cond_0
    const/16 v2, 0x4d5

    #@47
    goto :goto_0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 10
    .param p1, "time"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 239
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@5
    move-result-wide v4

    #@6
    .line 240
    .local v4, "when":J
    const-wide/16 v8, 0x3e8

    #@8
    div-long v2, v4, v8

    #@a
    .line 241
    .local v2, "unix":J
    iget-object v7, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@c
    invoke-static {v7, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    #@f
    move-result v0

    #@10
    .line 242
    .local v0, "transition":I
    if-gez v0, :cond_0

    #@12
    .line 243
    not-int v7, v0

    #@13
    add-int/lit8 v0, v7, -0x1

    #@15
    .line 244
    if-gez v0, :cond_0

    #@17
    .line 249
    return v6

    #@18
    .line 252
    :cond_0
    iget-object v7, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    #@1a
    iget-object v8, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    #@1c
    aget-byte v8, v8, v0

    #@1e
    and-int/lit16 v8, v8, 0xff

    #@20
    aget-byte v7, v7, v8

    #@22
    if-ne v7, v1, :cond_1

    #@24
    :goto_0
    return v1

    #@25
    :cond_1
    move v1, v6

    #@26
    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0
    .param p1, "off"    # I

    #@0
    .prologue
    .line 260
    iput p1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@2
    .line 259
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 314
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
    .line 315
    const-string/jumbo v1, ",mRawOffset="

    #@2a
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 315
    iget v1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    #@30
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 316
    const-string/jumbo v1, ",mEarliestRawOffset="

    #@37
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 316
    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    #@3d
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 317
    const-string/jumbo v1, ",mUseDst="

    #@44
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 317
    iget-boolean v1, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@4a
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 318
    const-string/jumbo v1, ",mDstSavings="

    #@51
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 318
    iget v1, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    #@57
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 319
    const-string/jumbo v1, ",transitions="

    #@5e
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 319
    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    #@64
    array-length v1, v1

    #@65
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 320
    const-string/jumbo v1, "]"

    #@6c
    .line 314
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
    .line 268
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    #@2
    return v0
.end method
