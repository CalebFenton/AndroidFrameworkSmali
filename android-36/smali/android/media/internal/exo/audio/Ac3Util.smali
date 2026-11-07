.class public final Landroid/media/internal/exo/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field private static final blacklist BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final blacklist BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final blacklist CHANNEL_COUNT_BY_ACMOD:[I

.field private static final blacklist SAMPLE_RATE_BY_FSCOD:[I

.field private static final blacklist SAMPLE_RATE_BY_FSCOD2:[I

.field private static final blacklist SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 117
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    const v0, 0xac44

    const/16 v1, 0x7d00

    const v2, 0xbb80

    .line 119
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    const/16 v0, 0x5622

    const/16 v1, 0x3e80

    const/16 v2, 0x5dc0

    .line 121
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/16 v0, 0x8

    .line 123
    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Landroid/media/internal/exo/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/16 v0, 0x13

    .line 125
    new-array v1, v0, [I

    fill-array-data v1, :array_52

    sput-object v1, Landroid/media/internal/exo/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 130
    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    sput-object v0, Landroid/media/internal/exo/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    :array_3e
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_52
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_7c
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private static blacklist getAc3SyncframeSize(II)I
    .registers 6

    .line 545
    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_2e

    .line 546
    sget-object v1, Landroid/media/internal/exo/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v2, v1

    if-ge p0, v2, :cond_2e

    if-ltz p1, :cond_2e

    sget-object v2, Landroid/media/internal/exo/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v2

    if-lt v0, v3, :cond_11

    goto :goto_2e

    .line 553
    :cond_11
    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_20

    .line 555
    aget p0, v2, v0

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    return p0

    .line 557
    :cond_20
    sget-object p1, Landroid/media/internal/exo/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2b

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2b
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist parseAc3AnnexFFormat(Landroid/media/internal/exo/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format;
    .registers 7

    .line 148
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 149
    sget-object v1, Landroid/media/internal/exo/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v0, v1, v0

    .line 150
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    .line 151
    sget-object v1, Landroid/media/internal/exo/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v2, p0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1e

    add-int/lit8 v1, v1, 0x1

    .line 155
    :cond_1e
    new-instance p0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {p0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 156
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    const-string p1, "audio/ac3"

    .line 157
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 158
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 160
    invoke-virtual {p0, p3}, Landroid/media/internal/exo/Format$Builder;->setDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 161
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseAc3SyncframeInfo(Landroid/media/internal/exo/util/ParsableBitArray;)Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;
    .registers 28

    move-object/from16 v0, p0

    .line 224
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->getPosition()I

    move-result v1

    const/16 v2, 0x28

    .line 225
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x5

    .line 227
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v5, 0x1

    const/16 v6, 0xa

    if-le v3, v6, :cond_17

    move v3, v5

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    .line 228
    :goto_18
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    const/4 v1, -0x1

    const/16 v7, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_21c

    const/16 v3, 0x10

    .line 239
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 240
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v11

    if-eqz v11, :cond_36

    if-eq v11, v5, :cond_34

    if-eq v11, v10, :cond_32

    goto :goto_37

    :cond_32
    move v1, v10

    goto :goto_37

    :cond_34
    move v1, v5

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    .line 254
    :goto_37
    invoke-virtual {v0, v9}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    const/16 v11, 0xb

    .line 255
    invoke-virtual {v0, v11}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v5

    mul-int/2addr v11, v10

    .line 256
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v12

    if-ne v12, v9, :cond_54

    .line 261
    sget-object v13, Landroid/media/internal/exo/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v14

    aget v13, v13, v14

    move v15, v13

    const/4 v14, 0x6

    move v13, v9

    goto :goto_60

    .line 264
    :cond_54
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 265
    sget-object v14, Landroid/media/internal/exo/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v14, v14, v13

    .line 266
    sget-object v15, Landroid/media/internal/exo/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v15, v15, v12

    :goto_60
    mul-int/lit16 v4, v14, 0x100

    .line 269
    invoke-virtual {v0, v9}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 270
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    .line 271
    sget-object v18, Landroid/media/internal/exo/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v18, v18, v8

    add-int v18, v18, v17

    .line 272
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 273
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 274
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_7c
    if-nez v8, :cond_8a

    .line 277
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 278
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 279
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_8a
    if-ne v1, v5, :cond_95

    .line 282
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 283
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 285
    :cond_95
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v6, 0x4

    if-eqz v3, :cond_1b2

    if-le v8, v10, :cond_a1

    .line 287
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_a1
    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_ac

    if-le v8, v10, :cond_ac

    const/4 v3, 0x6

    .line 290
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    goto :goto_ad

    :cond_ac
    const/4 v3, 0x6

    :goto_ad
    and-int/lit8 v16, v8, 0x4

    if-eqz v16, :cond_b4

    .line 293
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_b4
    if-eqz v17, :cond_bf

    .line 295
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 296
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_bf
    if-nez v1, :cond_1b2

    .line 299
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_cc

    const/4 v3, 0x6

    .line 300
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    goto :goto_cd

    :cond_cc
    const/4 v3, 0x6

    :goto_cd
    if-nez v8, :cond_d8

    .line 302
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_d8

    .line 303
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 305
    :cond_d8
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_e1

    .line 306
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 308
    :cond_e1
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-ne v3, v5, :cond_ec

    .line 310
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_17f

    :cond_ec
    if-ne v3, v10, :cond_f5

    const/16 v3, 0xc

    .line 312
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_17f

    :cond_f5
    if-ne v3, v9, :cond_17f

    .line 314
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 315
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_15b

    .line 316
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 317
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_10d

    .line 318
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 320
    :cond_10d
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_116

    .line 321
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 323
    :cond_116
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_11f

    .line 324
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 326
    :cond_11f
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_128

    .line 327
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 329
    :cond_128
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_131

    .line 330
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 332
    :cond_131
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_13a

    .line 333
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 335
    :cond_13a
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_143

    .line 336
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 338
    :cond_143
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_15b

    .line 339
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_152

    .line 340
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 342
    :cond_152
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_15b

    .line 343
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 347
    :cond_15b
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_177

    .line 348
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 349
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_177

    const/4 v5, 0x7

    .line 350
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 351
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_177

    .line 352
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_177
    add-int/2addr v3, v10

    mul-int/2addr v3, v7

    .line 356
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 357
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->byteAlign()V

    :cond_17f
    :goto_17f
    if-ge v8, v10, :cond_197

    .line 360
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/16 v5, 0xe

    if-eqz v3, :cond_18c

    .line 361
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_18c
    if-nez v8, :cond_197

    .line 364
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_197

    .line 365
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 369
    :cond_197
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1b2

    if-nez v13, :cond_1a3

    .line 371
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1b2

    :cond_1a3
    const/4 v3, 0x0

    :goto_1a4
    if-ge v3, v14, :cond_1b2

    .line 374
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1af

    .line 375
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_1af
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a4

    .line 382
    :cond_1b2
    :goto_1b2
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1df

    .line 383
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    if-ne v8, v10, :cond_1c0

    .line 385
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_1c0
    const/4 v3, 0x6

    if-lt v8, v3, :cond_1c6

    .line 388
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 390
    :cond_1c6
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1cf

    .line 391
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_1cf
    if-nez v8, :cond_1da

    .line 393
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 394
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_1da
    if-ge v12, v9, :cond_1df

    .line 397
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    :cond_1df
    if-nez v1, :cond_1e6

    if-eq v13, v9, :cond_1e6

    .line 401
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    :cond_1e6
    if-ne v1, v10, :cond_1f2

    if-eq v13, v9, :cond_1f0

    .line 404
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1f2

    :cond_1f0
    const/4 v3, 0x6

    goto :goto_1f4

    :cond_1f2
    const/4 v3, 0x6

    goto :goto_1f7

    .line 405
    :goto_1f4
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 408
    :goto_1f7
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_20d

    .line 409
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20d

    .line 410
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ne v0, v3, :cond_20d

    .line 411
    const-string v0, "audio/eac3-joc"

    goto :goto_20f

    .line 414
    :cond_20d
    const-string v0, "audio/eac3"

    :goto_20f
    move-object/from16 v20, v0

    :goto_211
    move/from16 v21, v1

    move/from16 v25, v4

    move/from16 v24, v11

    move/from16 v23, v15

    move/from16 v22, v18

    goto :goto_26b

    :cond_21c
    const/16 v2, 0x20

    .line 416
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 417
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-ne v2, v9, :cond_22a

    const/4 v3, 0x0

    :goto_228
    const/4 v4, 0x6

    goto :goto_22d

    .line 418
    :cond_22a
    const-string v3, "audio/ac3"

    goto :goto_228

    .line 423
    :goto_22d
    invoke-virtual {v0, v4}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 424
    invoke-static {v2, v4}, Landroid/media/internal/exo/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v11

    .line 425
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 426
    invoke-virtual {v0, v9}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_246

    const/4 v5, 0x1

    if-eq v4, v5, :cond_246

    .line 428
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_246
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_24d

    .line 431
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_24d
    if-ne v4, v10, :cond_252

    .line 434
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 437
    :cond_252
    sget-object v5, Landroid/media/internal/exo/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v6, v5

    if-ge v2, v6, :cond_25b

    aget v2, v5, v2

    move v15, v2

    goto :goto_25c

    :cond_25b
    move v15, v1

    .line 439
    :goto_25c
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 440
    sget-object v2, Landroid/media/internal/exo/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v2, v2, v4

    add-int v18, v2, v0

    const/16 v4, 0x600

    move-object/from16 v20, v3

    goto :goto_211

    .line 442
    :goto_26b
    new-instance v19, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;

    const/16 v26, 0x0

    invoke-direct/range {v19 .. v26}, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIILandroid/media/internal/exo/audio/Ac3Util$1;)V

    return-object v19
.end method

.method public static blacklist parseAc3SyncframeSize([B)I
    .registers 5

    .line 453
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x5

    .line 457
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    if-le v0, v3, :cond_21

    const/4 v0, 0x2

    .line 459
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x8

    .line 460
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, v0

    return p0

    :cond_21
    const/4 v0, 0x4

    .line 463
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    shr-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x3f

    .line 465
    invoke-static {v0, p0}, Landroid/media/internal/exo/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result p0

    return p0
.end method

.method public static blacklist parseEAc3AnnexFFormat(Landroid/media/internal/exo/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format;
    .registers 9

    const/4 v0, 0x2

    .line 177
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 180
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    .line 181
    sget-object v2, Landroid/media/internal/exo/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v2, v1

    .line 182
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 183
    sget-object v3, Landroid/media/internal/exo/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v4, v2, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_22

    add-int/lit8 v3, v3, 0x1

    .line 189
    :cond_22
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    shr-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_35

    .line 192
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_35

    add-int/lit8 v3, v3, 0x2

    .line 200
    :cond_35
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_46

    .line 201
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_46

    .line 203
    const-string p0, "audio/eac3-joc"

    goto :goto_48

    .line 206
    :cond_46
    const-string p0, "audio/eac3"

    :goto_48
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 207
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 208
    invoke-virtual {p1, p0}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 209
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 210
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 211
    invoke-virtual {p0, p3}, Landroid/media/internal/exo/Format$Builder;->setDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 212
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseTrueHdSyncframeAudioSampleCount([B)I
    .registers 7

    const/4 v0, 0x4

    .line 520
    aget-byte v1, p0, v0

    const/4 v2, -0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_36

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_36

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_36

    const/4 v1, 0x7

    aget-byte v2, p0, v1

    and-int/lit16 v4, v2, 0xfe

    const/16 v5, 0xba

    if-eq v4, v5, :cond_1f

    goto :goto_36

    :cond_1f
    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_26

    const/4 v3, 0x1

    :cond_26
    if-eqz v3, :cond_2b

    const/16 v2, 0x9

    goto :goto_2d

    :cond_2b
    const/16 v2, 0x8

    .line 527
    :goto_2d
    aget-byte p0, p0, v2

    shr-int/2addr p0, v0

    and-int/2addr p0, v1

    const/16 v0, 0x28

    shl-int p0, v0, p0

    return p0

    :cond_36
    :goto_36
    return v3
.end method
