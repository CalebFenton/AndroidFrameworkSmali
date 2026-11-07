.class public final Landroid/media/internal/exo/extractor/FlacFrameReader;
.super Ljava/lang/Object;
.source "FlacFrameReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;
    }
.end annotation


# direct methods
.method private static blacklist checkAndReadBlockSizeSamples(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;I)Z
    .registers 3

    .line 277
    invoke-static {p0, p2}, Landroid/media/internal/exo/extractor/FlacFrameReader;->readFrameBlockSizeSamplesFromKey(Landroid/media/internal/exo/util/ParsableByteArray;I)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_d

    .line 278
    iget p1, p1, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-gt p0, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist checkAndReadCrc(Landroid/media/internal/exo/util/ParsableByteArray;I)Z
    .registers 6

    .line 326
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 327
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 329
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3}, Landroid/media/internal/exo/util/Util;->crc8([BIII)I

    move-result p0

    if-ne v0, p0, :cond_16

    return v2

    :cond_16
    return v3
.end method

.method private static blacklist checkAndReadFirstSampleNumber(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;ZLandroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .registers 6

    .line 252
    :try_start_0
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUtf8EncodedLong()J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_f

    if-eqz p2, :cond_7

    goto :goto_b

    .line 258
    :cond_7
    iget p0, p1, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    int-to-long p0, p0

    mul-long/2addr v0, p0

    :goto_b
    iput-wide v0, p3, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    const/4 p0, 0x1

    return p0

    :catch_f
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist checkAndReadFrameHeader(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;ILandroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 55
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 57
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const/16 v5, 0x10

    ushr-long v5, v3, v5

    move/from16 v7, p2

    int-to-long v7, v7

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    if-eqz v7, :cond_19

    return v8

    :cond_19
    const-wide/16 v9, 0x1

    and-long/2addr v5, v9

    cmp-long v5, v5, v9

    const/4 v6, 0x1

    if-nez v5, :cond_23

    move v5, v6

    goto :goto_24

    :cond_23
    move v5, v8

    :goto_24
    const/16 v7, 0xc

    shr-long v11, v3, v7

    const-wide/16 v13, 0xf

    and-long/2addr v11, v13

    long-to-int v7, v11

    const/16 v11, 0x8

    shr-long v11, v3, v11

    and-long/2addr v11, v13

    long-to-int v11, v11

    const/4 v12, 0x4

    shr-long v15, v3, v12

    and-long v12, v15, v13

    long-to-int v12, v12

    shr-long v13, v3, v6

    const-wide/16 v15, 0x7

    and-long/2addr v13, v15

    long-to-int v13, v13

    and-long/2addr v3, v9

    cmp-long v3, v3, v9

    if-nez v3, :cond_45

    move v3, v6

    goto :goto_46

    :cond_45
    move v3, v8

    .line 68
    :goto_46
    invoke-static {v12, v1}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkChannelAssignment(ILandroid/media/internal/exo/extractor/FlacStreamMetadata;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 69
    invoke-static {v13, v1}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkBitsPerSample(ILandroid/media/internal/exo/extractor/FlacStreamMetadata;)Z

    move-result v4

    if-eqz v4, :cond_6f

    if-nez v3, :cond_6f

    move-object/from16 v3, p3

    .line 71
    invoke-static {v0, v1, v5, v3}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkAndReadFirstSampleNumber(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;ZLandroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 73
    invoke-static {v0, v1, v7}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkAndReadBlockSizeSamples(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;I)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 74
    invoke-static {v0, v1, v11}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkAndReadSampleRate(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 75
    invoke-static {v0, v2}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkAndReadCrc(Landroid/media/internal/exo/util/ParsableByteArray;I)Z

    move-result v0

    if-eqz v0, :cond_6f

    return v6

    :cond_6f
    return v8
.end method

.method private static blacklist checkAndReadSampleRate(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;I)Z
    .registers 7

    .line 295
    iget v0, p1, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    const/4 v1, 0x1

    if-nez p2, :cond_6

    return v1

    :cond_6
    const/16 v2, 0xb

    const/4 v3, 0x0

    if-gt p2, v2, :cond_11

    .line 299
    iget p0, p1, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    if-ne p2, p0, :cond_10

    return v1

    :cond_10
    return v3

    :cond_11
    const/16 p1, 0xc

    if-ne p2, p1, :cond_1f

    .line 301
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    if-ne p0, v0, :cond_1e

    return v1

    :cond_1e
    return v3

    :cond_1f
    const/16 p1, 0xe

    if-gt p2, p1, :cond_2e

    .line 303
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    if-ne p2, p1, :cond_2b

    mul-int/lit8 p0, p0, 0xa

    :cond_2b
    if-ne p0, v0, :cond_2e

    return v1

    :cond_2e
    return v3
.end method

.method private static blacklist checkBitsPerSample(ILandroid/media/internal/exo/extractor/FlacStreamMetadata;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 227
    :cond_4
    iget p1, p1, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    if-ne p0, p1, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist checkChannelAssignment(ILandroid/media/internal/exo/extractor/FlacStreamMetadata;)Z
    .registers 5

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_c

    .line 207
    iget p1, p1, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->channels:I

    sub-int/2addr p1, v2

    if-ne p0, p1, :cond_b

    return v2

    :cond_b
    return v1

    :cond_c
    const/16 v0, 0xa

    if-gt p0, v0, :cond_16

    .line 209
    iget p0, p1, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->channels:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_16

    return v2

    :cond_16
    return v1
.end method

.method public static blacklist checkFrameHeaderFromPeek(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/FlacStreamMetadata;ILandroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    const/4 v2, 0x2

    .line 99
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 100
    invoke-interface {p0, v3, v4, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 101
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    if-eq v5, p2, :cond_26

    .line 103
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 104
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    return v4

    .line 108
    :cond_26
    new-instance v5, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 110
    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v6

    .line 109
    invoke-static {v3, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/16 v4, 0xe

    .line 113
    invoke-static {p0, v3, v2, v4}, Landroid/media/internal/exo/extractor/ExtractorUtil;->peekToLength(Landroid/media/internal/exo/extractor/ExtractorInput;[BII)I

    move-result v2

    .line 115
    invoke-virtual {v5, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 117
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 118
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 120
    invoke-static {v5, p1, p2, p3}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkAndReadFrameHeader(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;ILandroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result p0

    return p0
.end method

.method public static blacklist getFirstSampleNumber(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/FlacStreamMetadata;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 v0, 0x1

    .line 140
    invoke-interface {p0, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 141
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 142
    invoke-interface {p0, v1, v2, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 143
    aget-byte v1, v1, v2

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    const/4 v1, 0x2

    .line 144
    invoke-interface {p0, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    if-eqz v0, :cond_1c

    const/4 v1, 0x7

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x6

    .line 147
    :goto_1d
    new-instance v3, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v3, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 149
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {p0, v4, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorUtil;->peekToLength(Landroid/media/internal/exo/extractor/ExtractorInput;[BII)I

    move-result v1

    .line 150
    invoke-virtual {v3, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 151
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 153
    new-instance p0, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p0}, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    .line 154
    invoke-static {v3, p1, v0, p0}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkAndReadFirstSampleNumber(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;ZLandroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 159
    iget-wide p0, p0, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p0

    :cond_3e
    const/4 p0, 0x0

    .line 156
    invoke-static {p0, p0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist readFrameBlockSizeSamplesFromKey(Landroid/media/internal/exo/util/ParsableByteArray;I)I
    .registers 2

    packed-switch p1, :pswitch_data_22

    const/4 p0, -0x1

    return p0

    :pswitch_5
    add-int/lit8 p1, p1, -0x8

    const/16 p0, 0x100

    shl-int/2addr p0, p1

    return p0

    .line 182
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 180
    :pswitch_12
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_19
    add-int/lit8 p1, p1, -0x2

    const/16 p0, 0x240

    shl-int/2addr p0, p1

    return p0

    :pswitch_1f
    const/16 p0, 0xc0

    return p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_12
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
