.class final Landroid/media/MediaParser$ExtractorOutputAdapter;
.super Ljava/lang/Object;
.source "MediaParser.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtractorOutputAdapter"
.end annotation


# instance fields
.field private final blacklist mTrackOutputAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/TrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTracksEnded:Z

.field final synthetic blacklist this$0:Landroid/media/MediaParser;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1620
    iput-object p1, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1621
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->mTrackOutputAdapters:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaParser;Landroid/media/MediaParser-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaParser$ExtractorOutputAdapter;-><init>(Landroid/media/MediaParser;)V

    return-void
.end method


# virtual methods
.method public blacklist endTracks()V
    .registers 2

    .line 1643
    iget-object v0, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v0}, Landroid/media/MediaParser;->-$$Nest$fgetmOutputConsumer(Landroid/media/MediaParser;)Landroid/media/MediaParser$OutputConsumer;

    move-result-object v0

    iget-object p0, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->mTrackOutputAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/MediaParser$OutputConsumer;->onTrackCountFound(I)V

    return-void
.end method

.method public blacklist seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V
    .registers 7

    .line 1648
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_16

    .line 1650
    iget-object v2, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v0, v1}, Landroid/media/internal/exo/C;->usToMs(J)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Landroid/media/MediaParser;->-$$Nest$fputmDurationMillis(Landroid/media/MediaParser;J)V

    .line 1652
    :cond_16
    iget-object v0, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v0}, Landroid/media/MediaParser;->-$$Nest$fgetmExposeChunkIndexAsMediaFormat(Landroid/media/MediaParser;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    instance-of v0, p1, Landroid/media/internal/exo/extractor/ChunkIndex;

    if-eqz v0, :cond_66

    .line 1653
    move-object v0, p1

    check-cast v0, Landroid/media/internal/exo/extractor/ChunkIndex;

    .line 1654
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 1655
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ChunkIndex;->sizes:[I

    invoke-static {v3}, Landroid/media/MediaParser;->-$$Nest$smtoByteBuffer([I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "chunk-index-int-sizes"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1656
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ChunkIndex;->offsets:[J

    .line 1657
    invoke-static {v3}, Landroid/media/MediaParser;->-$$Nest$smtoByteBuffer([J)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1656
    const-string v4, "chunk-index-long-offsets"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1658
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ChunkIndex;->durationsUs:[J

    .line 1659
    invoke-static {v3}, Landroid/media/MediaParser;->-$$Nest$smtoByteBuffer([J)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1658
    const-string v4, "chunk-index-long-us-durations"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1660
    iget-object v0, v0, Landroid/media/internal/exo/extractor/ChunkIndex;->timesUs:[J

    .line 1661
    invoke-static {v0}, Landroid/media/MediaParser;->-$$Nest$smtoByteBuffer([J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1660
    const-string v3, "chunk-index-long-us-times"

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1662
    iget-object v0, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v0}, Landroid/media/MediaParser;->-$$Nest$fgetmOutputConsumer(Landroid/media/MediaParser;)Landroid/media/MediaParser$OutputConsumer;

    move-result-object v0

    new-instance v3, Landroid/media/MediaParser$TrackData;

    invoke-direct {v3, v2, v1, v1}, Landroid/media/MediaParser$TrackData;-><init>(Landroid/media/MediaFormat;Landroid/media/DrmInitData;Landroid/media/MediaParser-IA;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v3}, Landroid/media/MediaParser$OutputConsumer;->onTrackDataFound(ILandroid/media/MediaParser$TrackData;)V

    .line 1665
    :cond_66
    iget-object p0, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {p0}, Landroid/media/MediaParser;->-$$Nest$fgetmOutputConsumer(Landroid/media/MediaParser;)Landroid/media/MediaParser$OutputConsumer;

    move-result-object p0

    new-instance v0, Landroid/media/MediaParser$SeekMap;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaParser$SeekMap;-><init>(Landroid/media/internal/exo/extractor/SeekMap;Landroid/media/MediaParser-IA;)V

    invoke-interface {p0, v0}, Landroid/media/MediaParser$OutputConsumer;->onSeekMapFound(Landroid/media/MediaParser$SeekMap;)V

    return-void
.end method

.method public blacklist track(II)Landroid/media/internal/exo/extractor/TrackOutput;
    .registers 7

    .line 1626
    iget-object v0, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->mTrackOutputAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/TrackOutput;

    if-nez v0, :cond_42

    .line 1628
    iget-object v0, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->mTrackOutputAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1629
    new-instance v1, Landroid/media/MediaParser$TrackOutputAdapter;

    iget-object v2, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->this$0:Landroid/media/MediaParser;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/media/MediaParser$TrackOutputAdapter;-><init>(Landroid/media/MediaParser;ILandroid/media/MediaParser-IA;)V

    .line 1630
    iget-object v2, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->mTrackOutputAdapters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1631
    iget-object p1, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {p1}, Landroid/media/MediaParser;->-$$Nest$fgetmEagerlyExposeTrackType(Landroid/media/MediaParser;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 1632
    new-instance p1, Landroid/media/MediaFormat;

    invoke-direct {p1}, Landroid/media/MediaFormat;-><init>()V

    .line 1633
    const-string v2, "track-type-string"

    invoke-static {p2}, Landroid/media/MediaParser;->-$$Nest$smtoTypeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    iget-object p0, p0, Landroid/media/MediaParser$ExtractorOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {p0}, Landroid/media/MediaParser;->-$$Nest$fgetmOutputConsumer(Landroid/media/MediaParser;)Landroid/media/MediaParser$OutputConsumer;

    move-result-object p0

    new-instance p2, Landroid/media/MediaParser$TrackData;

    invoke-direct {p2, p1, v3, v3}, Landroid/media/MediaParser$TrackData;-><init>(Landroid/media/MediaFormat;Landroid/media/DrmInitData;Landroid/media/MediaParser-IA;)V

    invoke-interface {p0, v0, p2}, Landroid/media/MediaParser$OutputConsumer;->onTrackDataFound(ILandroid/media/MediaParser$TrackData;)V

    :cond_41
    return-object v1

    :cond_42
    return-object v0
.end method
