.class final Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlacOggSeeker"
.end annotation


# instance fields
.field private blacklist firstFrameOffset:J

.field private blacklist pendingSeekGranule:J

.field private blacklist seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

.field private blacklist streamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;)V
    .registers 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->streamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    .line 127
    iput-object p2, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    const-wide/16 p1, -0x1

    .line 128
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 129
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method


# virtual methods
.method public blacklist createSeekMap()Landroid/media/internal/exo/extractor/SeekMap;
    .registers 5

    .line 157
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    .line 158
    new-instance v0, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->streamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    invoke-direct {v0, v1, v2, v3}, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;-><init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;J)V

    return-object v0
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;)J
    .registers 8

    .line 138
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_11

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 140
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-wide v0

    :cond_11
    return-wide v2
.end method

.method public blacklist setFirstFrameOffset(J)V
    .registers 3

    .line 133
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    return-void
.end method

.method public blacklist startSeek(J)V
    .registers 5

    .line 148
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    const/4 v1, 0x1

    .line 150
    invoke-static {v0, p1, p2, v1, v1}, Landroid/media/internal/exo/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    .line 152
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method
