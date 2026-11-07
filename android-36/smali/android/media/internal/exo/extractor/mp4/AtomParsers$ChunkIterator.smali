.class final Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkIterator"
.end annotation


# instance fields
.field private final blacklist chunkOffsets:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist chunkOffsetsAreLongs:Z

.field public blacklist index:I

.field public final blacklist length:I

.field private blacklist nextSamplesPerChunkChangeIndex:I

.field public blacklist numSamples:I

.field public blacklist offset:J

.field private blacklist remainingSamplesPerChunkChanges:I

.field private final blacklist stsc:Landroid/media/internal/exo/util/ParsableByteArray;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/util/ParsableByteArray;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1859
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1860
    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1861
    iput-boolean p3, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    const/16 p3, 0xc

    .line 1862
    invoke-virtual {p2, p3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1863
    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    .line 1864
    invoke-virtual {p1, p3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1865
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    .line 1866
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const/4 p1, -0x1

    .line 1867
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    return-void
.end method


# virtual methods
.method public blacklist moveNext()Z
    .registers 5

    .line 1871
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v2, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    if-ne v0, v2, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1875
    :cond_c
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    if-eqz v0, :cond_17

    .line 1876
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_1d

    .line 1877
    :cond_17
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_1d
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 1878
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v2, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    if-ne v0, v2, :cond_45

    .line 1879
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    .line 1880
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1882
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    if-lez v0, :cond_42

    .line 1883
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_43

    :cond_42
    const/4 v0, -0x1

    .line 1884
    :goto_43
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    :cond_45
    return v1
.end method
