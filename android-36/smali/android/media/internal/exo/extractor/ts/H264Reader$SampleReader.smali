.class final Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# instance fields
.field private final blacklist allowNonIdrKeyframes:Z

.field private final blacklist bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

.field private blacklist buffer:[B

.field private blacklist bufferLength:I

.field private final blacklist detectAccessUnits:Z

.field private blacklist isFilling:Z

.field private blacklist nalUnitStartPosition:J

.field private blacklist nalUnitTimeUs:J

.field private blacklist nalUnitType:I

.field private final blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private final blacklist pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/util/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist previousSliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private blacklist readingSample:Z

.field private blacklist sampleIsKeyframe:Z

.field private blacklist samplePosition:J

.field private blacklist sampleTimeUs:J

.field private blacklist sliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final blacklist sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/util/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/TrackOutput;ZZ)V
    .registers 4

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 299
    iput-boolean p2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 300
    iput-boolean p3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 301
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 302
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 303
    new-instance p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Landroid/media/internal/exo/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 304
    new-instance p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Landroid/media/internal/exo/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/16 p1, 0x80

    .line 305
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 306
    new-instance p2, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    .line 307
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->reset()V

    return-void
.end method

.method private blacklist outputSample(I)V
    .registers 10

    .line 502
    iget-wide v1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    return-void

    .line 505
    :cond_c
    iget-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 506
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v6, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 507
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public blacklist appendToNalUnit([BII)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 355
    iget-boolean v2, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v2, :cond_a

    goto/16 :goto_184

    :cond_a
    sub-int v2, p3, v1

    .line 359
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v4, v3

    iget v5, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1e

    add-int/2addr v5, v2

    mul-int/2addr v5, v7

    .line 360
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 362
    :cond_1e
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v4, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    iget v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 365
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->reset([BII)V

    .line 366
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_40

    goto/16 :goto_184

    .line 369
    :cond_40
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 370
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1, v7}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 371
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 375
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_5b

    goto/16 :goto_184

    .line 378
    :cond_5b
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 379
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_6a

    goto/16 :goto_184

    .line 382
    :cond_6a
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 383
    iget-boolean v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v1, :cond_7c

    .line 385
    iput-boolean v4, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 386
    iget-object v0, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0, v11}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    return-void

    .line 389
    :cond_7c
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_86

    goto/16 :goto_184

    .line 392
    :cond_86
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 393
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_97

    .line 395
    iput-boolean v4, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void

    .line 398
    :cond_97
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/internal/exo/util/NalUnitUtil$PpsData;

    .line 399
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v5, v1, Landroid/media/internal/exo/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    .line 400
    iget-boolean v3, v9, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v3, :cond_bd

    .line 401
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_b8

    goto/16 :goto_184

    .line 404
    :cond_b8
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 406
    :cond_bd
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    iget v5, v9, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_c9

    goto/16 :goto_184

    .line 412
    :cond_c9
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    iget v5, v9, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 413
    iget-boolean v3, v9, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v5, 0x1

    if-nez v3, :cond_102

    .line 414
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v5}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_e0

    goto/16 :goto_184

    .line 417
    :cond_e0
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 419
    iget-object v6, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v6, v5}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-nez v6, :cond_f2

    goto/16 :goto_184

    .line 422
    :cond_f2
    iget-object v6, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    move v14, v3

    move v15, v5

    move/from16 v16, v6

    goto :goto_105

    :cond_fd
    move v14, v3

    move v15, v4

    :goto_ff
    move/from16 v16, v15

    goto :goto_105

    :cond_102
    move v14, v4

    move v15, v14

    goto :goto_ff

    .line 426
    :goto_105
    iget v3, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v3, v2, :cond_10c

    move/from16 v17, v5

    goto :goto_10e

    :cond_10c
    move/from16 v17, v4

    :goto_10e
    if-eqz v17, :cond_123

    .line 429
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_11a

    goto/16 :goto_184

    .line 432
    :cond_11a
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v18, v2

    goto :goto_125

    :cond_123
    move/from16 v18, v4

    .line 438
    :goto_125
    iget v2, v9, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v2, :cond_161

    .line 439
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    iget v3, v9, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v2

    if-nez v2, :cond_134

    goto :goto_184

    .line 442
    :cond_134
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    iget v3, v9, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 443
    iget-boolean v1, v1, Landroid/media/internal/exo/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_15a

    if-nez v14, :cond_15a

    .line 444
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_14b

    goto :goto_184

    .line 447
    :cond_14b
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    move/from16 v21, v4

    :goto_157
    move/from16 v22, v21

    goto :goto_1a2

    :cond_15a
    move/from16 v19, v2

    move/from16 v20, v4

    :goto_15e
    move/from16 v21, v20

    goto :goto_157

    :cond_161
    if-ne v2, v5, :cond_19d

    .line 449
    iget-boolean v2, v9, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v2, :cond_19d

    .line 450
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_170

    goto :goto_184

    .line 453
    :cond_170
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v2

    .line 454
    iget-boolean v1, v1, Landroid/media/internal/exo/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_194

    if-nez v14, :cond_194

    .line 455
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_185

    :goto_184
    return-void

    .line 458
    :cond_185
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bitArray:Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v20, v19

    goto :goto_1a2

    :cond_194
    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v20, v19

    move/from16 v22, v20

    goto :goto_1a2

    :cond_19d
    move/from16 v19, v4

    move/from16 v20, v19

    goto :goto_15e

    .line 461
    :goto_1a2
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual/range {v8 .. v22}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Landroid/media/internal/exo/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 476
    iput-boolean v4, v0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void
.end method

.method public blacklist endNalUnit(JIZZ)Z
    .registers 10

    .line 481
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_16

    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 482
    # invokes: Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isFirstVclNalUnitOfPicture(Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    invoke-static {v0, v1}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_16
    if-eqz p4, :cond_24

    .line 484
    iget-boolean p4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_24

    .line 485
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p3, p1

    .line 486
    invoke-direct {p0, p3}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    .line 488
    :cond_24
    iget-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 489
    iget-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    .line 490
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 491
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 494
    :cond_30
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz p1, :cond_3a

    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result p5

    .line 495
    :cond_3a
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget p2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_45

    if-eqz p5, :cond_46

    if-ne p2, v3, :cond_46

    :cond_45
    move v2, v3

    :cond_46
    or-int/2addr p1, v2

    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    return p1
.end method

.method public blacklist needsSpsPps()Z
    .registers 1

    .line 311
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return p0
.end method

.method public blacklist putPps(Landroid/media/internal/exo/util/NalUnitUtil$PpsData;)V
    .registers 3

    .line 319
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v0, p1, Landroid/media/internal/exo/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist putSps(Landroid/media/internal/exo/util/NalUnitUtil$SpsData;)V
    .registers 3

    .line 315
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v0, p1, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 324
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 325
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    return-void
.end method

.method public blacklist startNalUnit(JIJ)V
    .registers 6

    .line 329
    iput p3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 330
    iput-wide p4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 331
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 332
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_d

    if-eq p3, p2, :cond_19

    :cond_d
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz p1, :cond_29

    const/4 p1, 0x5

    if-eq p3, p1, :cond_19

    if-eq p3, p2, :cond_19

    const/4 p1, 0x2

    if-ne p3, p1, :cond_29

    .line 338
    :cond_19
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 339
    iget-object p3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 340
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 341
    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    const/4 p1, 0x0

    .line 342
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 343
    iput-boolean p2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    :cond_29
    return-void
.end method
