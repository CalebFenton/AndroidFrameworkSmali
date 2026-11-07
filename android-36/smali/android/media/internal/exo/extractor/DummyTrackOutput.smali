.class public final Landroid/media/internal/exo/extractor/DummyTrackOutput;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/TrackOutput;


# instance fields
.field private final blacklist readBuffer:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 37
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/internal/exo/extractor/DummyTrackOutput;->readBuffer:[B

    return-void
.end method


# virtual methods
.method public blacklist format(Landroid/media/internal/exo/Format;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist sampleData(Landroid/media/internal/exo/upstream/DataReader;IZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object p4, p0, Landroid/media/internal/exo/extractor/DummyTrackOutput;->readBuffer:[B

    array-length p4, p4

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 50
    iget-object p0, p0, Landroid/media/internal/exo/extractor/DummyTrackOutput;->readBuffer:[B

    const/4 p4, 0x0

    invoke-interface {p1, p0, p4, p2}, Landroid/media/internal/exo/upstream/DataReader;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1a

    if-eqz p3, :cond_14

    return p1

    .line 55
    :cond_14
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1a
    return p0
.end method

.method public blacklist sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V
    .registers 4

    .line 62
    invoke-virtual {p1, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    return-void
.end method

.method public blacklist sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V
    .registers 7

    .line 0
    return-void
.end method
