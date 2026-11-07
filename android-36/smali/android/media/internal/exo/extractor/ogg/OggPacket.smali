.class final Landroid/media/internal/exo/extractor/ogg/OggPacket;
.super Ljava/lang/Object;
.source "OggPacket.java"


# instance fields
.field private blacklist currentSegmentIndex:I

.field private final blacklist packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

.field private blacklist populated:Z

.field private blacklist segmentCount:I


# direct methods
.method constructor blacklist <init>()V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    .line 33
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->currentSegmentIndex:I

    return-void
.end method

.method private blacklist calculatePacketSize(I)I
    .registers 7

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->segmentCount:I

    .line 143
    :cond_3
    iget v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->segmentCount:I

    add-int v2, p1, v1

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget v4, v3, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v2, v4, :cond_1b

    .line 144
    iget-object v2, v3, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    :cond_1b
    return v0
.end method


# virtual methods
.method public blacklist getPageHeader()Landroid/media/internal/exo/extractor/ogg/OggPageHeader;
    .registers 1

    .line 115
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    return-object p0
.end method

.method public blacklist getPayload()Landroid/media/internal/exo/util/ParsableByteArray;
    .registers 1

    .line 120
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    return-object p0
.end method

.method public blacklist populate(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 60
    :goto_7
    invoke-static {v2}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    .line 62
    iget-boolean v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->populated:Z

    if-eqz v2, :cond_15

    .line 63
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->populated:Z

    .line 64
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 67
    :cond_15
    :goto_15
    iget-boolean v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->populated:Z

    if-nez v2, :cond_a3

    .line 68
    iget v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->currentSegmentIndex:I

    if-gez v2, :cond_53

    .line 70
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    invoke-virtual {v2, p1}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->skipToNextPage(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    invoke-virtual {v2, p1, v0}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->populate(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_52

    .line 74
    :cond_2e
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget v3, v2, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->headerSize:I

    .line 75
    iget v2, v2, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->type:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_47

    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v2

    if-nez v2, :cond_47

    .line 78
    invoke-direct {p0, v1}, Landroid/media/internal/exo/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 79
    iget v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->segmentCount:I

    goto :goto_48

    :cond_47
    move v2, v1

    .line 81
    :goto_48
    invoke-static {p1, v3}, Landroid/media/internal/exo/extractor/ExtractorUtil;->skipFullyQuietly(Landroid/media/internal/exo/extractor/ExtractorInput;I)Z

    move-result v3

    if-nez v3, :cond_4f

    return v1

    .line 84
    :cond_4f
    iput v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto :goto_53

    :cond_52
    :goto_52
    return v1

    .line 87
    :cond_53
    :goto_53
    iget v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->currentSegmentIndex:I

    invoke-direct {p0, v2}, Landroid/media/internal/exo/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v2

    .line 88
    iget v3, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iget v4, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v3, v4

    if-lez v2, :cond_98

    .line 90
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v4}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->ensureCapacity(I)V

    .line 91
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v4}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    iget-object v5, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-static {p1, v4, v5, v2}, Landroid/media/internal/exo/extractor/ExtractorUtil;->readFullyQuietly(Landroid/media/internal/exo/extractor/ExtractorInput;[BII)Z

    move-result v4

    if-nez v4, :cond_7d

    return v1

    .line 94
    :cond_7d
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v4}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 95
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget-object v2, v2, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_95

    move v2, v0

    goto :goto_96

    :cond_95
    move v2, v1

    :goto_96
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->populated:Z

    .line 99
    :cond_98
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget v2, v2, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ne v3, v2, :cond_9f

    const/4 v3, -0x1

    :cond_9f
    iput v3, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto/16 :goto_15

    :cond_a3
    return v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 42
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->reset()V

    .line 43
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->currentSegmentIndex:I

    .line 45
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->populated:Z

    return-void
.end method

.method public blacklist trimPayload()V
    .registers 5

    .line 125
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xfe01

    if-ne v0, v1, :cond_d

    return-void

    .line 128
    :cond_d
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 130
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 129
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object p0, p0, Landroid/media/internal/exo/extractor/ogg/OggPacket;->packetArray:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 131
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p0

    .line 128
    invoke-virtual {v0, v1, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    return-void
.end method
