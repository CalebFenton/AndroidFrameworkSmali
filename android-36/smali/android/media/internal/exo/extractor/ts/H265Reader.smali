.class public final Landroid/media/internal/exo/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# instance fields
.field private blacklist formatId:Ljava/lang/String;

.field private blacklist hasOutputFormat:Z

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist pesTimeUs:J

.field private final blacklist pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

.field private final blacklist prefixFlags:[Z

.field private final blacklist prefixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

.field private blacklist sampleReader:Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;

.field private final blacklist seiReader:Landroid/media/internal/exo/extractor/ts/SeiReader;

.field private final blacklist seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

.field private final blacklist suffixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

.field private blacklist totalBytesWritten:J

.field private final blacklist vps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/ts/SeiReader;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiReader:Landroid/media/internal/exo/extractor/ts/SeiReader;

    const/4 p1, 0x3

    .line 82
    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 83
    new-instance p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->vps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    .line 84
    new-instance p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    .line 85
    new-instance p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    .line 86
    new-instance p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->prefixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    .line 87
    new-instance p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->suffixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pesTimeUs:J

    .line 89
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method

.method private blacklist assertTracksCreated()V
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;

    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist endNalUnit(JIIJ)V
    .registers 9

    .line 206
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;

    iget-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->hasOutputFormat:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->endNalUnit(JIZ)V

    .line 207
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez p1, :cond_46

    .line 208
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->vps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 209
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 210
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 211
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->vps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 212
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    iget-object p3, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->vps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-static {p2, p3, v0, v1}, Landroid/media/internal/exo/extractor/ts/H265Reader;->parseMediaFormat(Ljava/lang/String;Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;)Landroid/media/internal/exo/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->hasOutputFormat:Z

    .line 216
    :cond_46
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->prefixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_6e

    .line 217
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->prefixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object p3, p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget p1, p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p3, p1}, Landroid/media/internal/exo/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    .line 218
    iget-object p3, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->prefixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, v0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    .line 221
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 222
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiReader:Landroid/media/internal/exo/extractor/ts/SeiReader;

    iget-object p3, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, p5, p6, p3}, Landroid/media/internal/exo/extractor/ts/SeiReader;->consume(JLandroid/media/internal/exo/util/ParsableByteArray;)V

    .line 224
    :cond_6e
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->suffixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 225
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->suffixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object p3, p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget p1, p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p3, p1}, Landroid/media/internal/exo/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    .line 226
    iget-object p3, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object p4, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->suffixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object p4, p4, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, p4, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    .line 229
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 230
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiReader:Landroid/media/internal/exo/extractor/ts/SeiReader;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, p5, p6, p0}, Landroid/media/internal/exo/extractor/ts/SeiReader;->consume(JLandroid/media/internal/exo/util/ParsableByteArray;)V

    :cond_95
    return-void
.end method

.method private blacklist nalUnitData([BII)V
    .registers 5

    .line 194
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    .line 195
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_18

    .line 196
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->vps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 197
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 198
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 200
    :cond_18
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->prefixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 201
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->suffixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    return-void
.end method

.method private static blacklist parseMediaFormat(Ljava/lang/String;Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;)Landroid/media/internal/exo/Format;
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 240
    iget v3, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v4, v1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v4, v3

    iget v5, v2, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 241
    iget-object v5, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget-object v3, v1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v7, v1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v3, v2, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v5, v1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v0, v5

    iget v2, v2, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v6, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    new-instance v0, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    iget-object v2, v1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, v1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-direct {v0, v2, v6, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x2c

    .line 247
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v1, 0x3

    .line 248
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 249
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    const/4 v3, 0x2

    .line 250
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 251
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    const/4 v5, 0x5

    .line 252
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    move v10, v6

    move v11, v10

    :goto_51
    const/16 v12, 0x20

    const/4 v13, 0x1

    if-ge v10, v12, :cond_62

    .line 255
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_5f

    shl-int v12, v13, v10

    or-int/2addr v11, v12

    :cond_5f
    add-int/lit8 v10, v10, 0x1

    goto :goto_51

    :cond_62
    const/4 v10, 0x6

    move v12, v11

    .line 259
    new-array v11, v10, [I

    move v14, v6

    :goto_67
    const/16 v15, 0x8

    if-ge v14, v10, :cond_74

    .line 261
    invoke-virtual {v0, v15}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    aput v15, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_67

    .line 263
    :cond_74
    invoke-virtual {v0, v15}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    move/from16 p1, v5

    move v5, v6

    move v14, v5

    :goto_7c
    if-ge v14, v2, :cond_91

    .line 266
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_86

    add-int/lit8 v5, v5, 0x59

    .line 269
    :cond_86
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_8e

    add-int/lit8 v5, v5, 0x8

    :cond_8e
    add-int/lit8 v14, v14, 0x1

    goto :goto_7c

    .line 273
    :cond_91
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    if-lez v2, :cond_9c

    rsub-int/lit8 v5, v2, 0x8

    mul-int/2addr v5, v3

    .line 275
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 278
    :cond_9c
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 279
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    if-ne v5, v1, :cond_a8

    .line 281
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 283
    :cond_a8
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 284
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    .line 285
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_de

    .line 286
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 287
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 288
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 289
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    if-eq v5, v13, :cond_ce

    if-ne v5, v3, :cond_cb

    goto :goto_ce

    :cond_cb
    move/from16 v20, v13

    goto :goto_d0

    :cond_ce
    :goto_ce
    move/from16 v20, v3

    :goto_d0
    if-ne v5, v13, :cond_d3

    move v13, v3

    :cond_d3
    add-int v16, v16, v17

    mul-int v20, v20, v16

    sub-int v1, v1, v20

    add-int v18, v18, v19

    mul-int v13, v13, v18

    sub-int/2addr v14, v13

    .line 296
    :cond_de
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 297
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 298
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 300
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_f0

    move v13, v6

    goto :goto_f1

    :cond_f0
    move v13, v2

    :goto_f1
    if-gt v13, v2, :cond_ff

    .line 301
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 302
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 303
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v13, v13, 0x1

    goto :goto_f1

    .line 305
    :cond_ff
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 306
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 307
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 308
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 309
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 310
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 312
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 313
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 314
    invoke-static {v0}, Landroid/media/internal/exo/extractor/ts/H265Reader;->skipScalingList(Landroid/media/internal/exo/util/ParsableNalUnitBitArray;)V

    .line 316
    :cond_120
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 317
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_135

    .line 319
    invoke-virtual {v0, v15}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 320
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 321
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 322
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 325
    :cond_135
    invoke-static {v0}, Landroid/media/internal/exo/extractor/ts/H265Reader;->skipShortTermRefPicSets(Landroid/media/internal/exo/util/ParsableNalUnitBitArray;)V

    .line 326
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 328
    :goto_13e
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    if-ge v6, v2, :cond_14c

    add-int/lit8 v2, v5, 0x5

    .line 331
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_13e

    .line 334
    :cond_14c
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 336
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1ca

    .line 337
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_195

    .line 338
    invoke-virtual {v0, v15}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/16 v5, 0xff

    if-ne v2, v5, :cond_177

    const/16 v2, 0x10

    .line 340
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 341
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    if-eqz v5, :cond_195

    if-eqz v2, :cond_195

    int-to-float v3, v5

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_195

    .line 345
    :cond_177
    sget-object v5, Landroid/media/internal/exo/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v6, v5

    if-ge v2, v6, :cond_17f

    .line 346
    aget v3, v5, v2

    goto :goto_195

    .line 348
    :cond_17f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "H265Reader"

    invoke-static {v5, v2}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_195
    :goto_195
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 352
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 354
    :cond_19e
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1b3

    const/4 v2, 0x4

    .line 355
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 356
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1b3

    const/16 v2, 0x18

    .line 358
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 361
    :cond_1b3
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 362
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 363
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 365
    :cond_1bf
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 366
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1ca

    mul-int/lit8 v14, v14, 0x2

    :cond_1ca
    move/from16 v21, v12

    move v12, v10

    move/from16 v10, v21

    .line 374
    invoke-static/range {v7 .. v12}, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v2, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v2}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    move-object/from16 v5, p0

    .line 383
    invoke-virtual {v2, v5}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    const-string v5, "video/hevc"

    .line 384
    invoke-virtual {v2, v5}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    .line 385
    invoke-virtual {v2, v0}, Landroid/media/internal/exo/Format$Builder;->setCodecs(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setWidth(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v14}, Landroid/media/internal/exo/Format$Builder;->setHeight(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/Format$Builder;->setPixelWidthHeightRatio(F)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 389
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist skipScalingList(Landroid/media/internal/exo/util/ParsableNalUnitBitArray;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    move v3, v0

    :goto_6
    const/4 v4, 0x6

    if-ge v3, v4, :cond_33

    .line 397
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_14

    .line 399
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_2d

    :cond_14
    shl-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    shl-int v4, v5, v4

    const/16 v6, 0x40

    .line 401
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_24

    .line 404
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_24
    move v6, v0

    :goto_25
    if-ge v6, v4, :cond_2d

    .line 407
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2d
    :goto_2d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_31

    move v5, v4

    :cond_31
    add-int/2addr v3, v5

    goto :goto_6

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method

.method private static blacklist skipShortTermRefPicSets(Landroid/media/internal/exo/util/ParsableNalUnitBitArray;)V
    .registers 9

    .line 419
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v2, v0, :cond_4d

    if-eqz v2, :cond_10

    .line 429
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    :cond_10
    if-eqz v3, :cond_27

    .line 432
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 433
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move v5, v1

    :goto_19
    if-gt v5, v4, :cond_4a

    .line 435
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 436
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 440
    :cond_27
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 441
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int v6, v4, v5

    move v7, v1

    :goto_32
    if-ge v7, v4, :cond_3d

    .line 444
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 445
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_3d
    move v4, v1

    :goto_3e
    if-ge v4, v5, :cond_49

    .line 448
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 449
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_49
    move v4, v6

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4d
    return-void
.end method

.method private blacklist startNalUnit(JIIJ)V
    .registers 15

    .line 182
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;

    iget-boolean v7, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->hasOutputFormat:Z

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJZ)V

    .line 183
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez p1, :cond_1e

    .line 184
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->vps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 185
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 186
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 188
    :cond_1e
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->prefixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 189
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->suffixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p0, v4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    return-void
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 15

    .line 126
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/H265Reader;->assertTracksCreated()V

    .line 128
    :cond_3
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_5f

    .line 129
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 130
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v7

    .line 131
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v8

    .line 134
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 135
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    :goto_28
    if-ge v1, v7, :cond_3

    .line 139
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v8, v1, v7, v2}, Landroid/media/internal/exo/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v9

    if-ne v9, v7, :cond_36

    .line 143
    invoke-direct {p0, v8, v1, v7}, Landroid/media/internal/exo/extractor/ts/H265Reader;->nalUnitData([BII)V

    return-void

    .line 148
    :cond_36
    invoke-static {v8, v9}, Landroid/media/internal/exo/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v10

    sub-int v2, v9, v1

    if-lez v2, :cond_41

    .line 154
    invoke-direct {p0, v8, v1, v9}, Landroid/media/internal/exo/extractor/ts/H265Reader;->nalUnitData([BII)V

    :cond_41
    sub-int v3, v7, v9

    .line 158
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v11, v3

    sub-long/2addr v4, v11

    if-gez v2, :cond_4c

    neg-int v1, v2

    :goto_4a
    move-wide v11, v4

    goto :goto_4e

    :cond_4c
    const/4 v1, 0x0

    goto :goto_4a

    .line 165
    :goto_4e
    iget-wide v5, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pesTimeUs:J

    move-object v0, p0

    move v4, v1

    move-wide v1, v11

    .line 162
    invoke-direct/range {v0 .. v6}, Landroid/media/internal/exo/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 168
    iget-wide v5, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pesTimeUs:J

    move v4, v10

    invoke-direct/range {v0 .. v6}, Landroid/media/internal/exo/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    add-int/lit8 v1, v9, 0x3

    goto :goto_28

    :cond_5f
    return-void
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 109
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 110
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 112
    new-instance v1, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v1, v0}, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;-><init>(Landroid/media/internal/exo/extractor/TrackOutput;)V

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;

    .line 113
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->seiReader:Landroid/media/internal/exo/extractor/ts/SeiReader;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/ts/SeiReader;->createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public blacklist packetFinished()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist packetStarted(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    .line 120
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pesTimeUs:J

    :cond_b
    return-void
.end method

.method public blacklist seek()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 95
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pesTimeUs:J

    .line 96
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroid/media/internal/exo/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 97
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->vps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 98
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 99
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 100
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->prefixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 101
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->suffixSei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 102
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;

    if-eqz p0, :cond_30

    .line 103
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->reset()V

    :cond_30
    return-void
.end method
