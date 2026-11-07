.class public final Landroid/media/internal/exo/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# instance fields
.field private final blacklist allowNonIdrKeyframes:Z

.field private final blacklist detectAccessUnits:Z

.field private blacklist formatId:Ljava/lang/String;

.field private blacklist hasOutputFormat:Z

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist pesTimeUs:J

.field private final blacklist pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

.field private final blacklist prefixFlags:[Z

.field private blacklist randomAccessIndicator:Z

.field private blacklist sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

.field private final blacklist sei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

.field private final blacklist seiReader:Landroid/media/internal/exo/extractor/ts/SeiReader;

.field private final blacklist seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

.field private blacklist totalBytesWritten:J


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/ts/SeiReader;ZZ)V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->seiReader:Landroid/media/internal/exo/extractor/ts/SeiReader;

    .line 83
    iput-boolean p2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    .line 84
    iput-boolean p3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->detectAccessUnits:Z

    const/4 p1, 0x3

    .line 85
    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 86
    new-instance p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    .line 87
    new-instance p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    .line 88
    new-instance p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pesTimeUs:J

    .line 90
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method

.method private blacklist assertTracksCreated()V
    .registers 2

    .line 258
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist endNalUnit(JIIJ)V
    .registers 14

    .line 199
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 200
    :cond_c
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 201
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 202
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->hasOutputFormat:Z

    const/4 v1, 0x3

    if-nez v0, :cond_b4

    .line 203
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_ed

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v1, v2}, Landroid/media/internal/exo/util/NalUnitUtil;->parseSpsNalUnit([BII)Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    move-result-object v2

    .line 208
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v3, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v3, v3, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v1, v3}, Landroid/media/internal/exo/util/NalUnitUtil;->parsePpsNalUnit([BII)Landroid/media/internal/exo/util/NalUnitUtil$PpsData;

    move-result-object v1

    .line 209
    iget v3, v2, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->profileIdc:I

    iget v4, v2, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget v5, v2, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 210
    invoke-static {v3, v4, v5}, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v3

    .line 214
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    new-instance v5, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v5}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 216
    invoke-virtual {v5, v6}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v5

    const-string v6, "video/avc"

    .line 217
    invoke-virtual {v5, v6}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v5

    .line 218
    invoke-virtual {v5, v3}, Landroid/media/internal/exo/Format$Builder;->setCodecs(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    iget v5, v2, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->width:I

    .line 219
    invoke-virtual {v3, v5}, Landroid/media/internal/exo/Format$Builder;->setWidth(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    iget v5, v2, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->height:I

    .line 220
    invoke-virtual {v3, v5}, Landroid/media/internal/exo/Format$Builder;->setHeight(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    iget v5, v2, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 221
    invoke-virtual {v3, v5}, Landroid/media/internal/exo/Format$Builder;->setPixelWidthHeightRatio(F)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    .line 222
    invoke-virtual {v3, v0}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    .line 214
    invoke-interface {v4, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 225
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->putSps(Landroid/media/internal/exo/util/NalUnitUtil$SpsData;)V

    .line 226
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->putPps(Landroid/media/internal/exo/util/NalUnitUtil$PpsData;)V

    .line 227
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 228
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_ed

    .line 230
    :cond_b4
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 231
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v1, v0}, Landroid/media/internal/exo/util/NalUnitUtil;->parseSpsNalUnit([BII)Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    move-result-object v0

    .line 232
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v1, v0}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->putSps(Landroid/media/internal/exo/util/NalUnitUtil$SpsData;)V

    .line 233
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_ed

    .line 234
    :cond_d1
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 235
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v1, v0}, Landroid/media/internal/exo/util/NalUnitUtil;->parsePpsNalUnit([BII)Landroid/media/internal/exo/util/NalUnitUtil$PpsData;

    move-result-object v0

    .line 236
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v1, v0}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->putPps(Landroid/media/internal/exo/util/NalUnitUtil$PpsData;)V

    .line 237
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 240
    :cond_ed
    :goto_ed
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p4

    if-eqz p4, :cond_115

    .line 241
    iget-object p4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, p4, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget p4, p4, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, p4}, Landroid/media/internal/exo/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p4

    .line 242
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v0, v1, p4}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    .line 243
    iget-object p4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 244
    iget-object p4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->seiReader:Landroid/media/internal/exo/extractor/ts/SeiReader;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->seiWrapper:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p4, p5, p6, v0}, Landroid/media/internal/exo/extractor/ts/SeiReader;->consume(JLandroid/media/internal/exo/util/ParsableByteArray;)V

    .line 246
    :cond_115
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    iget-boolean v5, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->hasOutputFormat:Z

    iget-boolean v6, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->randomAccessIndicator:Z

    move-wide v2, p1

    move v4, p3

    .line 247
    invoke-virtual/range {v1 .. v6}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->endNalUnit(JIZZ)Z

    move-result p1

    if-eqz p1, :cond_126

    const/4 p1, 0x0

    .line 252
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->randomAccessIndicator:Z

    :cond_126
    return-void
.end method

.method private blacklist nalUnitData([BII)V
    .registers 5

    .line 189
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 190
    :cond_c
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 191
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 193
    :cond_16
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 194
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->appendToNalUnit([BII)V

    return-void
.end method

.method private blacklist startNalUnit(JIJ)V
    .registers 7

    .line 179
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 180
    :cond_c
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 181
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 183
    :cond_16
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 184
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    invoke-virtual/range {p0 .. p5}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->startNalUnit(JIJ)V

    return-void
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 16

    .line 126
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/H264Reader;->assertTracksCreated()V

    .line 128
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 129
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    .line 130
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 133
    iget-wide v3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 134
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-interface {v3, p1, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 138
    :goto_22
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v2, v0, v1, p1}, Landroid/media/internal/exo/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_2e

    .line 142
    invoke-direct {p0, v2, v0, v1}, Landroid/media/internal/exo/extractor/ts/H264Reader;->nalUnitData([BII)V

    return-void

    .line 147
    :cond_2e
    invoke-static {v2, p1}, Landroid/media/internal/exo/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_39

    .line 153
    invoke-direct {p0, v2, v0, p1}, Landroid/media/internal/exo/extractor/ts/H264Reader;->nalUnitData([BII)V

    :cond_39
    sub-int v10, v1, p1

    .line 156
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_44

    neg-int v0, v3

    :goto_42
    move v11, v0

    goto :goto_46

    :cond_44
    const/4 v0, 0x0

    goto :goto_42

    .line 163
    :goto_46
    iget-wide v12, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pesTimeUs:J

    move-object v7, p0

    move-wide v8, v4

    .line 160
    invoke-direct/range {v7 .. v13}, Landroid/media/internal/exo/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    move-object v3, v7

    .line 166
    iget-wide v7, v3, Landroid/media/internal/exo/extractor/ts/H264Reader;->pesTimeUs:J

    invoke-direct/range {v3 .. v8}, Landroid/media/internal/exo/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    add-int/lit8 v0, p1, 0x3

    move-object p0, v3

    goto :goto_22
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 7

    .line 109
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 110
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 112
    new-instance v1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    iget-boolean v2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->detectAccessUnits:Z

    invoke-direct {v1, v0, v2, v3}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;-><init>(Landroid/media/internal/exo/extractor/TrackOutput;ZZ)V

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    .line 113
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->seiReader:Landroid/media/internal/exo/extractor/ts/SeiReader;

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

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    .line 119
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pesTimeUs:J

    .line 121
    :cond_b
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->randomAccessIndicator:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->randomAccessIndicator:Z

    return-void
.end method

.method public blacklist seek()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->randomAccessIndicator:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pesTimeUs:J

    .line 98
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroid/media/internal/exo/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 99
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 100
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->pps:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 101
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sei:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 102
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;

    if-eqz p0, :cond_29

    .line 103
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;->reset()V

    :cond_29
    return-void
.end method
