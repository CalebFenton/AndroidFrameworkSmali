.class public final Landroid/media/internal/exo/video/HevcConfig;
.super Ljava/lang/Object;
.source "HevcConfig.java"


# instance fields
.field public final blacklist codecs:Ljava/lang/String;

.field public final blacklist height:I

.field public final blacklist initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final blacklist nalUnitLengthFieldLength:I

.field public final blacklist pixelWidthHeightRatio:F

.field public final blacklist width:I


# direct methods
.method private constructor blacklist <init>(Ljava/util/List;IIIFLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroid/media/internal/exo/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 145
    iput p2, p0, Landroid/media/internal/exo/video/HevcConfig;->nalUnitLengthFieldLength:I

    .line 146
    iput p3, p0, Landroid/media/internal/exo/video/HevcConfig;->width:I

    .line 147
    iput p4, p0, Landroid/media/internal/exo/video/HevcConfig;->height:I

    .line 148
    iput p5, p0, Landroid/media/internal/exo/video/HevcConfig;->pixelWidthHeightRatio:F

    .line 149
    iput-object p6, p0, Landroid/media/internal/exo/video/HevcConfig;->codecs:Ljava/lang/String;

    return-void
.end method

.method public static blacklist parse(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/video/HevcConfig;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x15

    .line 40
    :try_start_4
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 41
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 44
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 46
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_18
    const/4 v7, 0x1

    if-ge v5, v2, :cond_35

    .line 48
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 49
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    move v8, v4

    :goto_23
    if-ge v8, v7, :cond_32

    .line 51
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    add-int/lit8 v10, v9, 0x4

    add-int/2addr v6, v10

    .line 53
    invoke-virtual {v0, v9}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 58
    :cond_35
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 59
    new-array v3, v6, [B

    const/4 v5, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v13, v5

    move v14, v13

    move v15, v8

    move-object/from16 v16, v9

    move v5, v4

    move v8, v5

    :goto_45
    if-ge v5, v2, :cond_ba

    .line 66
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit8 v9, v9, 0x7f

    .line 67
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    move v11, v4

    :goto_52
    if-ge v11, v10, :cond_b0

    .line 69
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    move/from16 v17, v7

    .line 70
    sget-object v7, Landroid/media/internal/exo/util/NalUnitUtil;->NAL_START_CODE:[B

    move/from16 v18, v1

    array-length v1, v7

    invoke-static {v7, v4, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    array-length v1, v7

    add-int/2addr v8, v1

    .line 78
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 77
    invoke-static {v1, v7, v3, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x21

    if-ne v9, v1, :cond_a0

    if-nez v11, :cond_a0

    add-int v1, v8, v12

    .line 81
    invoke-static {v3, v8, v1}, Landroid/media/internal/exo/util/NalUnitUtil;->parseH265SpsNalUnit([BII)Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;

    move-result-object v1

    .line 83
    iget v13, v1, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->width:I

    .line 84
    iget v14, v1, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->height:I

    .line 85
    iget v15, v1, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 86
    iget v7, v1, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    iget-boolean v4, v1, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    move/from16 v25, v2

    iget v2, v1, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    move/from16 v21, v2

    iget v2, v1, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    move/from16 v22, v2

    iget-object v2, v1, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->constraintBytes:[I

    iget v1, v1, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    move/from16 v24, v1

    move-object/from16 v23, v2

    move/from16 v20, v4

    move/from16 v19, v7

    .line 87
    invoke-static/range {v19 .. v24}, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v16

    goto :goto_a2

    :cond_a0
    move/from16 v25, v2

    :goto_a2
    add-int/2addr v8, v12

    .line 96
    invoke-virtual {v0, v12}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v17

    move/from16 v1, v18

    move/from16 v2, v25

    const/4 v4, 0x0

    goto :goto_52

    :cond_b0
    move/from16 v18, v1

    move/from16 v25, v2

    move/from16 v17, v7

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_45

    :cond_ba
    move/from16 v18, v1

    move/from16 v17, v7

    if-nez v6, :cond_c4

    .line 101
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_c2
    move-object v11, v0

    goto :goto_c9

    :cond_c4
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_c2

    .line 102
    :goto_c9
    new-instance v10, Landroid/media/internal/exo/video/HevcConfig;

    add-int/lit8 v12, v18, 0x1

    invoke-direct/range {v10 .. v16}, Landroid/media/internal/exo/video/HevcConfig;-><init>(Ljava/util/List;IIIFLjava/lang/String;)V
    :try_end_d0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_d0} :catch_d1

    return-object v10

    :catch_d1
    move-exception v0

    .line 105
    const-string v1, "Error parsing HEVC config"

    invoke-static {v1, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0
.end method
