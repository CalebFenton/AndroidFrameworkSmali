.class final Landroid/media/internal/exo/extractor/mp4/TrackFragment;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public blacklist atomPosition:J

.field public blacklist auxiliaryDataPosition:J

.field public blacklist dataPosition:J

.field public blacklist definesEncryptionData:Z

.field public blacklist header:Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

.field public blacklist nextFragmentDecodeTime:J

.field public blacklist nextFragmentDecodeTimeIncludesMoov:Z

.field public blacklist sampleCount:I

.field public final blacklist sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

.field public blacklist sampleEncryptionDataNeedsFill:Z

.field public blacklist sampleHasSubsampleEncryptionTable:[Z

.field public blacklist sampleIsSyncFrameTable:[Z

.field public blacklist samplePresentationTimesUs:[J

.field public blacklist sampleSizeTable:[I

.field public blacklist trackEncryptionBox:Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

.field public blacklist trunCount:I

.field public blacklist trunDataPosition:[J

.field public blacklist trunLength:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunDataPosition:[J

    .line 79
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunLength:[I

    .line 80
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 81
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    .line 82
    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 83
    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 84
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public blacklist fillEncryptionData(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 150
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 151
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void
.end method

.method public blacklist fillEncryptionData(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 5

    .line 160
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 161
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 162
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void
.end method

.method public blacklist getSamplePresentationTimeUs(I)J
    .registers 2

    .line 172
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public blacklist initEncryptionData(I)V
    .registers 3

    .line 138
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 140
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void
.end method

.method public blacklist initTables(II)V
    .registers 4

    .line 112
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunCount:I

    .line 113
    iput p2, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleCount:I

    .line 114
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunLength:[I

    array-length v0, v0

    if-ge v0, p1, :cond_11

    .line 115
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunDataPosition:[J

    .line 116
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunLength:[I

    .line 118
    :cond_11
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    array-length p1, p1

    if-ge p1, p2, :cond_2a

    mul-int/lit8 p2, p2, 0x7d

    .line 121
    div-int/lit8 p2, p2, 0x64

    .line 122
    new-array p1, p2, [I

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 123
    new-array p1, p2, [J

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    .line 124
    new-array p1, p2, [Z

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 125
    new-array p1, p2, [Z

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    :cond_2a
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunCount:I

    const-wide/16 v1, 0x0

    .line 96
    iput-wide v1, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 97
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 98
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 99
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    return-void
.end method

.method public blacklist sampleHasSubsampleEncryptionTable(I)Z
    .registers 3

    .line 177
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
