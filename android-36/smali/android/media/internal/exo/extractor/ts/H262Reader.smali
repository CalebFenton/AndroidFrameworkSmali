.class public final Landroid/media/internal/exo/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final blacklist FRAME_RATE_VALUES:[D


# instance fields
.field private final blacklist csdBuffer:Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;

.field private blacklist formatId:Ljava/lang/String;

.field private blacklist frameDurationUs:J

.field private blacklist hasOutputFormat:Z

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist pesTimeUs:J

.field private final blacklist prefixFlags:[Z

.field private blacklist sampleHasPicture:Z

.field private blacklist sampleIsKeyframe:Z

.field private blacklist samplePosition:J

.field private blacklist sampleTimeUs:J

.field private blacklist startedFirstSample:Z

.field private blacklist totalBytesWritten:J

.field private final blacklist userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

.field private final blacklist userDataParsable:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist userDataReader:Landroid/media/internal/exo/extractor/ts/UserDataReader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 49
    new-array v0, v0, [D

    fill-array-data v0, :array_a

    sput-object v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_a
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/H262Reader;-><init>(Landroid/media/internal/exo/extractor/ts/UserDataReader;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/internal/exo/extractor/ts/UserDataReader;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userDataReader:Landroid/media/internal/exo/extractor/ts/UserDataReader;

    const/4 v0, 0x4

    .line 81
    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 82
    new-instance v0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;

    if-eqz p1, :cond_26

    .line 84
    new-instance p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    .line 85
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userDataParsable:Landroid/media/internal/exo/util/ParsableByteArray;

    goto :goto_2b

    :cond_26
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    .line 88
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userDataParsable:Landroid/media/internal/exo/util/ParsableByteArray;

    :goto_2b
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 90
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->pesTimeUs:J

    .line 91
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleTimeUs:J

    return-void
.end method

.method private static blacklist parseCsdBuffer(Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/media/internal/exo/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/4 v1, 0x4

    .line 233
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    .line 234
    aget-byte v4, v0, v3

    and-int/lit16 v5, v4, 0xff

    const/4 v6, 0x6

    .line 235
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v2, v1

    shr-int/2addr v5, v1

    or-int/2addr v2, v5

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v6

    const/4 v5, 0x7

    .line 240
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xf0

    shr-int/2addr v6, v1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3e

    const/4 v7, 0x3

    if-eq v6, v7, :cond_38

    if-eq v6, v1, :cond_30

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_44

    :cond_30
    mul-int/lit8 v1, v4, 0x79

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x64

    :goto_35
    int-to-float v6, v6

    div-float/2addr v1, v6

    goto :goto_44

    :cond_38
    mul-int/lit8 v1, v4, 0x10

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x9

    goto :goto_35

    :cond_3e
    mul-int/lit8 v1, v4, 0x4

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x3

    goto :goto_35

    .line 256
    :goto_44
    new-instance v6, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v6}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 258
    invoke-virtual {v6, p1}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    const-string v6, "video/mpeg2"

    .line 259
    invoke-virtual {p1, v6}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 260
    invoke-virtual {p1, v2}, Landroid/media/internal/exo/Format$Builder;->setWidth(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 261
    invoke-virtual {p1, v4}, Landroid/media/internal/exo/Format$Builder;->setHeight(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 262
    invoke-virtual {p1, v1}, Landroid/media/internal/exo/Format$Builder;->setPixelWidthHeightRatio(F)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 263
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    .line 267
    aget-byte v1, v0, v5

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_98

    .line 268
    sget-object v2, Landroid/media/internal/exo/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v4, v2

    if-ge v1, v4, :cond_98

    .line 269
    aget-wide v1, v2, v1

    .line 270
    iget p0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    add-int/lit8 p0, p0, 0x9

    .line 271
    aget-byte p0, v0, p0

    and-int/lit8 v0, p0, 0x60

    shr-int/2addr v0, v3

    and-int/lit8 p0, p0, 0x1f

    if-eq v0, p0, :cond_90

    int-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    add-int/lit8 p0, p0, 0x1

    int-to-double v5, p0

    div-double/2addr v3, v5

    mul-double/2addr v1, v3

    :cond_90
    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v1

    double-to-long v0, v3

    goto :goto_9a

    :cond_98
    const-wide/16 v0, 0x0

    .line 279
    :goto_9a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 21

    move-object/from16 v0, p0

    .line 125
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v1}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v2

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 131
    iget-wide v4, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 132
    iget-object v4, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 135
    :goto_28
    iget-object v4, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v3, v1, v2, v4}, Landroid/media/internal/exo/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_41

    .line 139
    iget-boolean v4, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v4, :cond_39

    .line 140
    iget-object v4, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v4, v3, v1, v2}, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 142
    :cond_39
    iget-object v0, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_40

    .line 143
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_40
    return-void

    .line 149
    :cond_41
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    .line 154
    iget-boolean v9, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->hasOutputFormat:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_8a

    if-lez v8, :cond_5a

    .line 156
    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v9, v3, v1, v4}, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    :cond_5a
    if-gez v8, :cond_5e

    neg-int v9, v8

    goto :goto_5f

    :cond_5e
    move v9, v10

    .line 161
    :goto_5f
    iget-object v12, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v12, v5, v9}, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 163
    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;

    iget-object v12, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    invoke-static {v12}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v9, v12}, Landroid/media/internal/exo/extractor/ts/H262Reader;->parseCsdBuffer(Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 164
    iget-object v12, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/media/internal/exo/Format;

    invoke-interface {v12, v13}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 165
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->frameDurationUs:J

    .line 166
    iput-boolean v11, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 169
    :cond_8a
    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    if-eqz v9, :cond_d9

    if-lez v8, :cond_95

    .line 172
    invoke-virtual {v9, v3, v1, v4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    move v1, v10

    goto :goto_96

    :cond_95
    neg-int v1, v8

    .line 177
    :goto_96
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v8, v1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 178
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v8, v1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, v1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v8, v1}, Landroid/media/internal/exo/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v1

    .line 179
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userDataParsable:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v8}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v9, v9, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v8, v9, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    .line 180
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userDataReader:Landroid/media/internal/exo/extractor/ts/UserDataReader;

    invoke-static {v1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/internal/exo/extractor/ts/UserDataReader;

    iget-wide v8, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-object v12, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userDataParsable:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1, v8, v9, v12}, Landroid/media/internal/exo/extractor/ts/UserDataReader;->consume(JLandroid/media/internal/exo/util/ParsableByteArray;)V

    :cond_c6
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_d9

    .line 183
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    add-int/lit8 v8, v4, 0x2

    aget-byte v1, v1, v8

    if-ne v1, v11, :cond_d9

    .line 184
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v5}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_d9
    if-eqz v5, :cond_e8

    const/16 v1, 0xb3

    if-ne v5, v1, :cond_e0

    goto :goto_e8

    :cond_e0
    const/16 v1, 0xb8

    if-ne v5, v1, :cond_e6

    .line 210
    iput-boolean v11, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    :cond_e6
    move v4, v2

    goto :goto_145

    :cond_e8
    :goto_e8
    sub-int v17, v2, v4

    .line 189
    iget-boolean v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleHasPicture:Z

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_112

    iget-boolean v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v1, :cond_112

    iget-wide v13, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v1, v13, v8

    if-eqz v1, :cond_112

    .line 191
    iget-boolean v15, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 192
    iget-wide v11, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->totalBytesWritten:J

    move v4, v2

    iget-wide v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->samplePosition:J

    sub-long/2addr v11, v1

    long-to-int v1, v11

    sub-int v16, v1, v17

    .line 193
    iget-object v12, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/16 v18, 0x0

    invoke-interface/range {v12 .. v18}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    :goto_10f
    move/from16 v2, v17

    goto :goto_114

    :cond_112
    move v4, v2

    goto :goto_10f

    .line 195
    :goto_114
    iget-boolean v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v1, :cond_11f

    iget-boolean v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v1, :cond_11d

    goto :goto_11f

    :cond_11d
    const/4 v1, 0x1

    goto :goto_140

    .line 197
    :cond_11f
    :goto_11f
    iget-wide v11, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v1, v2

    sub-long/2addr v11, v1

    iput-wide v11, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->samplePosition:J

    .line 199
    iget-wide v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->pesTimeUs:J

    cmp-long v11, v1, v8

    if-eqz v11, :cond_12c

    goto :goto_137

    .line 201
    :cond_12c
    iget-wide v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v11, v1, v8

    if-eqz v11, :cond_136

    .line 202
    iget-wide v11, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->frameDurationUs:J

    add-long/2addr v1, v11

    goto :goto_137

    :cond_136
    move-wide v1, v8

    .line 203
    :goto_137
    iput-wide v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 204
    iput-boolean v10, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 205
    iput-wide v8, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->pesTimeUs:J

    const/4 v1, 0x1

    .line 206
    iput-boolean v1, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->startedFirstSample:Z

    :goto_140
    if-nez v5, :cond_143

    move v10, v1

    .line 208
    :cond_143
    iput-boolean v10, v0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleHasPicture:Z

    :goto_145
    move v2, v4

    move v1, v7

    goto/16 :goto_28
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 109
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 110
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 112
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userDataReader:Landroid/media/internal/exo/extractor/ts/UserDataReader;

    if-eqz p0, :cond_1b

    .line 113
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/ts/UserDataReader;->createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_1b
    return-void
.end method

.method public blacklist packetFinished()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist packetStarted(JI)V
    .registers 4

    .line 120
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->pesTimeUs:J

    return-void
.end method

.method public blacklist seek()V
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroid/media/internal/exo/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 97
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 98
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_11

    .line 99
    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_11
    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->startedFirstSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 103
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->pesTimeUs:J

    .line 104
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H262Reader;->sampleTimeUs:J

    return-void
.end method
