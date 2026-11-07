.class public interface abstract Landroid/media/internal/exo/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;
    }
.end annotation


# virtual methods
.method public abstract blacklist format(Landroid/media/internal/exo/Format;)V
.end method

.method public blacklist sampleData(Landroid/media/internal/exo/upstream/DataReader;IZ)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/upstream/DataReader;IZI)I

    move-result p0

    return p0
.end method

.method public abstract blacklist sampleData(Landroid/media/internal/exo/upstream/DataReader;IZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V
    .registers 4

    const/4 v0, 0x0

    .line 161
    invoke-interface {p0, p1, p2, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V

    return-void
.end method

.method public abstract blacklist sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V
.end method

.method public abstract blacklist sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V
.end method
