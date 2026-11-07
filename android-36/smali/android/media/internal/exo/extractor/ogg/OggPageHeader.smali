.class final Landroid/media/internal/exo/extractor/ogg/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# instance fields
.field public blacklist bodySize:I

.field public blacklist granulePosition:J

.field public blacklist headerSize:I

.field public final blacklist laces:[I

.field public blacklist pageChecksum:J

.field public blacklist pageSegmentCount:I

.field public blacklist pageSequenceNumber:J

.field public blacklist revision:I

.field private final blacklist scratch:Landroid/media/internal/exo/util/ParsableByteArray;

.field public blacklist streamSerialNumber:J

.field public blacklist type:I


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 58
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->laces:[I

    .line 60
    new-instance v1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public blacklist populate(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->reset()V

    .line 133
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 134
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, p2}, Landroid/media/internal/exo/extractor/ExtractorUtil;->peekFullyQuietly(Landroid/media/internal/exo/extractor/ExtractorInput;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 135
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v3, 0x4f676753

    cmp-long v0, v0, v3

    if-eqz v0, :cond_26

    goto/16 :goto_9e

    .line 139
    :cond_26
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->revision:I

    if-eqz v0, :cond_3a

    if-eqz p2, :cond_33

    return v2

    .line 144
    :cond_33
    const-string p0, "unsupported bit stream revision"

    invoke-static {p0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 148
    :cond_3a
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->type:I

    .line 150
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 151
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 152
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 153
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 154
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    add-int/lit8 v1, v0, 0x1b

    .line 155
    iput v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->headerSize:I

    .line 158
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 159
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    invoke-static {p1, v0, v2, v1, p2}, Landroid/media/internal/exo/extractor/ExtractorUtil;->peekFullyQuietly(Landroid/media/internal/exo/extractor/ExtractorInput;[BIIZ)Z

    move-result p1

    if-nez p1, :cond_82

    return v2

    .line 162
    :cond_82
    :goto_82
    iget p1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v2, p1, :cond_9c

    .line 163
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->laces:[I

    iget-object p2, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    aput p2, p1, v2

    .line 164
    iget p1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->bodySize:I

    iget-object p2, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->laces:[I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_9c
    const/4 p0, 0x1

    return p0

    :cond_9e
    :goto_9e
    return v2
.end method

.method public blacklist reset()V
    .registers 4

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->revision:I

    .line 65
    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->type:I

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 67
    iput-wide v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 68
    iput-wide v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 69
    iput-wide v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 70
    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    .line 71
    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->headerSize:I

    .line 72
    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->bodySize:I

    return-void
.end method

.method public blacklist skipToNextPage(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 82
    invoke-virtual {p0, p1, v0, v1}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->skipToNextPage(Landroid/media/internal/exo/extractor/ExtractorInput;J)Z

    move-result p0

    return p0
.end method

.method public blacklist skipToNextPage(Landroid/media/internal/exo/extractor/ExtractorInput;J)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    .line 104
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    :goto_1a
    const-wide/16 v4, -0x1

    cmp-long v0, p2, v4

    if-eqz v0, :cond_2b

    .line 105
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-gez v4, :cond_51

    :cond_2b
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 107
    invoke-virtual {v4}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 106
    invoke-static {p1, v4, v1, v3, v2}, Landroid/media/internal/exo/extractor/ExtractorUtil;->peekFullyQuietly(Landroid/media/internal/exo/extractor/ExtractorInput;[BIIZ)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 108
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 109
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v4, v6

    if-nez v0, :cond_4d

    .line 110
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    return v2

    .line 114
    :cond_4d
    invoke-interface {p1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1a

    :cond_51
    :goto_51
    if-eqz v0, :cond_5b

    .line 117
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    cmp-long p0, v3, p2

    if-gez p0, :cond_63

    .line 118
    :cond_5b
    invoke-interface {p1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->skip(I)I

    move-result p0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_63

    goto :goto_51

    :cond_63
    return v1
.end method
