.class public final Landroid/media/internal/exo/extractor/FlacStreamMetadata;
.super Ljava/lang/Object;
.source "FlacStreamMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;
    }
.end annotation


# instance fields
.field public final blacklist bitsPerSample:I

.field public final blacklist bitsPerSampleLookupKey:I

.field public final blacklist channels:I

.field public final blacklist maxBlockSizeSamples:I

.field public final blacklist maxFrameSize:I

.field private final blacklist metadata:Landroid/media/internal/exo/metadata/Metadata;

.field public final blacklist minBlockSizeSamples:I

.field public final blacklist minFrameSize:I

.field public final blacklist sampleRate:I

.field public final blacklist sampleRateLookupKey:I

.field public final blacklist seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

.field public final blacklist totalSamples:J


# direct methods
.method private constructor blacklist <init>(IIIIIIIJLandroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;Landroid/media/internal/exo/metadata/Metadata;)V
    .registers 12

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 167
    iput p2, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 168
    iput p3, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 169
    iput p4, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 170
    iput p5, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    .line 171
    invoke-static {p5}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    .line 172
    iput p6, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->channels:I

    .line 173
    iput p7, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 174
    invoke-static {p7}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    .line 175
    iput-wide p8, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->totalSamples:J

    .line 176
    iput-object p10, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    .line 177
    iput-object p11, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-direct {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    .line 115
    invoke-virtual {v0, p2}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 116
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 117
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    const/16 p1, 0x18

    .line 118
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 119
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxFrameSize:I

    const/16 p1, 0x14

    .line 120
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    .line 121
    invoke-static {p1}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    const/4 p1, 0x3

    .line 122
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->channels:I

    const/4 p1, 0x5

    .line 123
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 124
    invoke-static {p1}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    const/16 p1, 0x24

    .line 125
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->totalSamples:J

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    .line 127
    iput-object p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    return-void
.end method

.method private static blacklist buildMetadata(Ljava/util/List;Ljava/util/List;)Landroid/media/internal/exo/metadata/Metadata;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/metadata/flac/PictureFrame;",
            ">;)",
            "Landroid/media/internal/exo/metadata/Metadata;"
        }
    .end annotation

    .line 360
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v1

    .line 364
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 365
    :goto_15
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_52

    .line 366
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 367
    const-string v5, "="

    invoke-static {v4, v5}, Landroid/media/internal/exo/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 368
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_42

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse Vorbis comment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FlacStreamMetadata"

    invoke-static {v5, v4}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 371
    :cond_42
    new-instance v4, Landroid/media/internal/exo/metadata/flac/VorbisComment;

    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-direct {v4, v6, v5}, Landroid/media/internal/exo/metadata/flac/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 375
    :cond_52
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5c

    return-object v1

    :cond_5c
    new-instance p0, Landroid/media/internal/exo/metadata/Metadata;

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static blacklist getBitsPerSampleLookupKey(I)I
    .registers 2

    .line 0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1e

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x14

    if-eq p0, v0, :cond_18

    const/16 v0, 0x18

    if-eq p0, v0, :cond_16

    const/4 p0, -0x1

    return p0

    :cond_16
    const/4 p0, 0x6

    return p0

    :cond_18
    const/4 p0, 0x5

    return p0

    :cond_1a
    const/4 p0, 0x4

    return p0

    :cond_1c
    const/4 p0, 0x2

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist getSampleRateLookupKey(I)I
    .registers 1

    .line 0
    sparse-switch p0, :sswitch_data_20

    const/4 p0, -0x1

    return p0

    :sswitch_5
    const/4 p0, 0x3

    return p0

    :sswitch_7
    const/4 p0, 0x2

    return p0

    :sswitch_9
    const/16 p0, 0xb

    return p0

    :sswitch_c
    const/4 p0, 0x1

    return p0

    :sswitch_e
    const/16 p0, 0xa

    return p0

    :sswitch_11
    const/16 p0, 0x9

    return p0

    :sswitch_14
    const/16 p0, 0x8

    return p0

    :sswitch_17
    const/4 p0, 0x7

    return p0

    :sswitch_19
    const/4 p0, 0x6

    return p0

    :sswitch_1b
    const/4 p0, 0x5

    return p0

    :sswitch_1d
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_20
    .sparse-switch
        0x1f40 -> :sswitch_1d
        0x3e80 -> :sswitch_1b
        0x5622 -> :sswitch_19
        0x5dc0 -> :sswitch_17
        0x7d00 -> :sswitch_14
        0xac44 -> :sswitch_11
        0xbb80 -> :sswitch_e
        0x15888 -> :sswitch_c
        0x17700 -> :sswitch_9
        0x2b110 -> :sswitch_7
        0x2ee00 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public blacklist copyWithPictureFrames(Ljava/util/List;)Landroid/media/internal/exo/extractor/FlacStreamMetadata;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/metadata/flac/PictureFrame;",
            ">;)",
            "Landroid/media/internal/exo/extractor/FlacStreamMetadata;"
        }
    .end annotation

    .line 297
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->buildMetadata(Ljava/util/List;Ljava/util/List;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object v11

    .line 298
    new-instance v0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget v1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->channels:I

    iget v7, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v10, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    invoke-direct/range {v0 .. v11}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;Landroid/media/internal/exo/metadata/Metadata;)V

    return-object v0
.end method

.method public blacklist copyWithSeekTable(Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;)Landroid/media/internal/exo/extractor/FlacStreamMetadata;
    .registers 14

    .line 260
    new-instance v0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget v1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->channels:I

    iget v7, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;Landroid/media/internal/exo/metadata/Metadata;)V

    return-object v0
.end method

.method public blacklist copyWithVorbisComments(Ljava/util/List;)Landroid/media/internal/exo/extractor/FlacStreamMetadata;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/internal/exo/extractor/FlacStreamMetadata;"
        }
    .end annotation

    .line 278
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p1, v0}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->buildMetadata(Ljava/util/List;Ljava/util/List;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object p1

    .line 277
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object v11

    .line 279
    new-instance v0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget v1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->channels:I

    iget v7, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v10, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    invoke-direct/range {v0 .. v11}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;Landroid/media/internal/exo/metadata/Metadata;)V

    return-object v0
.end method

.method public blacklist getApproxBytesPerFrame()J
    .registers 5

    .line 212
    iget v0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_10

    int-to-long v0, v0

    .line 213
    iget p0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minFrameSize:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    :goto_e
    add-long/2addr v0, v2

    return-wide v0

    .line 218
    :cond_10
    iget v0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-ne v0, v1, :cond_1a

    if-lez v0, :cond_1a

    int-to-long v0, v0

    goto :goto_1c

    :cond_1a
    const-wide/16 v0, 0x1000

    .line 221
    :goto_1c
    iget v2, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->channels:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget p0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->bitsPerSample:I

    int-to-long v2, p0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x40

    goto :goto_e
.end method

.method public blacklist getDurationUs()J
    .registers 5

    .line 195
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_e
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget p0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getFormat([BLandroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/Format;
    .registers 6

    const/4 v0, 0x4

    const/16 v1, -0x80

    .line 239
    aput-byte v1, p1, v0

    .line 240
    iget v0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, -0x1

    .line 241
    :goto_b
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object p2

    .line 242
    new-instance v1, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v1}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v2, "audio/flac"

    .line 243
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v0}, Landroid/media/internal/exo/Format$Builder;->setMaxInputSize(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->channels:I

    .line 245
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    iget p0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    .line 246
    invoke-virtual {v0, p0}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 247
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 248
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/Format$Builder;->setMetadata(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMetadataCopyWithAppendedEntriesFrom(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/metadata/Metadata;
    .registers 2

    .line 255
    iget-object p0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    if-nez p0, :cond_5

    return-object p1

    :cond_5
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/metadata/Metadata;->copyWithAppendedEntriesFrom(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSampleNumber(J)J
    .registers 11

    .line 205
    iget v0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    .line 206
    iget-wide p0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v0, 0x1

    sub-long v6, p0, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/media/internal/exo/util/Util;->constrainValue(JJJ)J

    move-result-wide p0

    return-wide p0
.end method
